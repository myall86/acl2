(in-package "ACL2")

(program)

(include-book "std/util/bstar" :dir :system)
; (include-book "../../utilities/doublets")
; (include-book "std/lists/list-defuns" :dir :system) ;for repeat
; (include-book "../utilities") ;reduce?

(include-book "std/lists/repeat" :dir :system)

; (verify-termination er-cmp-fn) ; and guards

;; Build an alist whose keys are exactly KEYS, where each key is bound as it is
;; in ALIST.  This can be used to sort the keys of ALIST to match the order of
;; items in KEYS.  Returns (mv nil alist) or (mv error-context msg).
(defun alist-for-keys (keys alist ctx)
  (declare (xargs :guard (and ctx
                              (true-listp keys)
                              (alistp alist))))
  (if (endp keys)
      (value-cmp nil)
    (let* ((key (first keys))
           (pair (assoc-equal key alist)))
      (if (not pair)
          (er-cmp ctx
                  "No value for key ~x0 was found in the alist ~x1."
                  key alist)
        (er-let*-cmp ((alist (alist-for-keys (rest keys) alist ctx)))
                     (value-cmp (acons key (cdr pair) alist)))))))

;; Build an alist from function names in the clique to their values of the
;; option.  Returns (mv nil alist) or (mv error-context msg).
(defund elaborate-mut-rec-option-map (option-doublets clique-members-left option-name all-clique-members ctx)
  (declare (xargs :guard (and (symbol-listp clique-members-left)
                              (symbol-listp all-clique-members)
                              ;; no guard about option-doublets because this function checks them
                              (keywordp option-name)
                              ctx)))
  (if (atom option-doublets)
      (if (not (null option-doublets))
          (er-cmp ctx
                  "The ~x0 option is not a true list."
                  option-name)
        (if clique-members-left
            (er-cmp ctx
                    "The following functions were not given a value for the ~
                     ~x0 option: ~x1."
                    option-name clique-members-left)
          (value-cmp nil))) ;empty alist
    (b* ((doublet (first option-doublets))
         ((when (not (and (true-listp doublet)
                          (eql (length doublet) 2))))
          (er-cmp ctx
                  "~x0 (supplied as part of the ~x1 option) is not a doublet."
                  doublet option-name))
         (key (car doublet))
         (value (cadr doublet))
         ((when (eq :otherwise key))
          (if (rest option-doublets)
              (er-cmp ctx
                      "Error in ~x0 option: :otherwise must come last in the map"
                      option-name)
            (value-cmp (pairlis$ clique-members-left (repeat (len clique-members-left) value)))))
         ((when (not (or (symbolp key)
                         (symbol-listp key))))
          (er-cmp ctx
                  "Error in ~x0 option: The map key ~x1 is not a symbol or list of symbols"
                  option-name key))
         (keys (if (symbolp key)
                   (list key)
                 key))
         ((when (not (subsetp-eq keys all-clique-members)))
          (er-cmp ctx
                  "The following (supplied as part of the ~x0 option) are not members of the clique: ~x1"
                  option-name
                  (set-difference-eq keys all-clique-members)))
         ((when (not (subsetp-eq keys clique-members-left)))
          (er-cmp ctx
                  "The following (supplied as part of the ~x0 option) have already been given a value in the map: ~x1"
                  option-name
                  (set-difference-eq keys clique-members-left)))
         ((mv ctx msg-or-rest)
          (elaborate-mut-rec-option-map (rest option-doublets)
                                        ;; remove these keys from the list of clique members et to be bound
                                        (set-difference-eq clique-members-left keys)
                                        option-name all-clique-members ctx))
         ((when ctx)
          (mv ctx msg-or-rest)))
      (value-cmp
       (append (pairlis$ keys (repeat (len keys) value)) ;map all the keys to this value
               msg-or-rest)))))

;; Elaborate and check OPTION-VALUE, which is a :map option, yielding an alist
;; that binds all of the CLIQUE-MEMBERS, in order.  Returns (mv nil alist) or
;; (mv error-context msg).
(defun elaborate-mut-rec-map-option (option-value option-name clique-members ctx)
  (declare (xargs :guard (and (symbol-listp clique-members)
                              ;; very weak guard about option-value because this function checks it:
                              (consp option-value)
                              (eq :map (car option-value))
                              (keywordp option-name)
                              ctx)))
  ;; TODO: Use b* once we have a b* binder for context-message pairs.
  (er-let*-cmp ((alist (elaborate-mut-rec-option-map
                        (rest option-value) ;strip off :map
                        clique-members option-name clique-members ctx))
                (alist (alist-for-keys clique-members alist ctx)))
               (value-cmp alist)))

;; Builds an alist from function names in the clique to their values of the
;; option. Returns (mv nil alist) or (mv error-context msg).
(defun elaborate-mut-rec-option (option-value option-name clique-members ctx)
  (declare (xargs :guard (and (symbol-listp clique-members)
                              ;; no guard about option-value because this function checks it:
                              (keywordp option-name)
                              ctx)
;                  :mode :program ; error1 and silent-error
                  ))
  (if (and (consp option-value)
           (eq :map (car option-value)))
      ;; :map was used:
      (elaborate-mut-rec-map-option option-value option-name clique-members ctx)
    ;; No :map was used, so all functions get the same value (possibly the default):
    (value-cmp (pairlis$ clique-members (repeat (len clique-members) option-value)))))

;; Returns an error triple.  (Needlessly takes and returns state.)
(defun elaborate-mut-rec-option-with-state (option-value option-name clique-members ctx state)
  (declare (xargs :guard (and (symbol-listp clique-members)
                              ;; no guard about option-value because this function checks it:
                              (keywordp option-name))
                  :mode :program ; error1 and silent-error
                  :stobjs state))
  (cmp-to-error-triple (elaborate-mut-rec-option option-value option-name clique-members ctx)))
