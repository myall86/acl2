; A tool to generate verify-guards forms after transforming a defun
;
; Copyright (C) 2013-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "kestrel/alists-light/lookup-eq-safe" :dir :system)
(include-book "make-becomes-theorem")
(include-book "kestrel/utilities/verify-guards-dollar" :dir :system) ; only needed for verify-guards-for-defun?
(include-book "kestrel/std/system/guard-verified-p" :dir :system)
(include-book "becomes-theorem-names")
(include-book "kestrel/clause-processors/simplify-after-using-conjunction" :dir :system)
(include-book "kestrel/terms-light/drop-clearly-implied-conjuncts" :dir :system)

;; Generate a verify-guards form for the new version of FN.  Returns an event.
;; The verify-guards form assumes the new function and the "becomes" theorem
;; have already been admitted.  TODO: What if the "becomes" theorem has
;; assumptions?  todo: rename to verify-guards-form-for-new-defun
(defun verify-guards-for-defun (old-fn            ;the old function
                                function-renaming ;maps old-fn to new-fn, etc.
                                guard-hints       ;; :auto or a list of hints
                                guard-enables ;; used when guard-hints is :auto
                                )
  (declare (xargs :guard (and (symbolp old-fn)
                              (function-renamingp function-renaming)
                              (or (eq :auto guard-hints)
                                  (true-listp guard-hints))
                              (true-listp guard-enables))))
  (let ((new-fn (lookup-eq-safe old-fn function-renaming))
        (guard-hints (if (eq :auto guard-hints)
                         `(("Goal" :use (:instance (:guard-theorem ,old-fn :limited))  ; matches the :guard-simplify :limited below
                            :do-not '(generalize eliminate-destructors) ;;TODO; Turn off more stuff:
                            ;; we use the becomes lemma(s):
                            :in-theory '(,@(becomes-theorem-names function-renaming)
                                         ,@guard-enables
                                         ;; because untranslate can
                                         ;; introduce CASE, which will have
                                         ;; EQLABLEP guard obligations that
                                         ;; may not be in the original
                                         ;; function:
                                         (:e eqlablep)
                                         (:e eqlable-listp) ; not sure whether this is needed, depends on what kinds of CASE untranslate can put in
                                         ))
                           ;; This can speed things up greatly.  It may not prove the whole clause, due to
                           ;; the need to replace recursive calls using the becomes-theorem(s).
                           ;; We tried having this flatten literals, but I think that caused problems with a letify call
                           ;; in flex/spec-answer/regex-new/domain-regex-well-formed-terms.lisp:
                           ("goal'" :clause-processor (simplify-after-using-conjunction-clause-processor clause)))
                       guard-hints)))
    `(verify-guards$ ,new-fn
                     :hints ,guard-hints
                     :guard-simplify :limited ;; avoid simplification based on the current theory
                     :otf-flg t)))

;; Maybe generate a verify-guards form for the new version of OLD-FN.  Returns a
;; (possibly empty) list of events.
(defun maybe-verify-guards-for-defun (old-fn            ;the old function
                                      function-renaming ;maps old-fn to new-fn, etc.
                                      verify-guards     ;; t, nil, or :auto
                                      guard-hints ;; :auto or a list of hints
                                      ;; guard-enables ;; used when guard-hints is :auto
                                      wrld)
  (declare (xargs :guard (and (symbolp old-fn)
                              (member-eq verify-guards '(t nil :auto))
                              (function-renamingp function-renaming)
                              (or (eq :auto guard-hints)
                                  (true-listp guard-hints))
                              (plist-worldp wrld))))
  (let* ((verify-guards (if (eq :auto verify-guards)
                            (guard-verified-p old-fn wrld)
                          verify-guards)))
    (if (not verify-guards)
        nil ;; empty list of events
      (list (verify-guards-for-defun old-fn function-renaming guard-hints
                                     nil ;;guard-enables
                                     )))))
