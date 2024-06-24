; A tool to automate the boilerplate stuff that a transformation does.
;
; Copyright (C) 2017-2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: DRAFT

;; For a transformation called XXX, deftransformation expects a function to
;; exist called XXX-event, which takes the following arguments:
;; - the transformation's required args (in the order given in the call to deftransformation)
;; - and transformation's keyword args (in the order given in the call to deftransformation)
;; - a verbose arg, if deftransformation is called with :pass-print t)
;; - a ctx, if deftransformation is called with :pass-context t
;;
;; The XXX-event function must return an error triple including the generated
;; event (usually an encapsulate or progn).
;;
;; Deftransformation builds:
;;
;; 1. XXX-fn, which wraps XXX-event and handles redundancy, show-only, etc.
;;
;; 2. The XXX macro.
;;
;; 3. The show-XXX macro.
;;
;; 4. The XXX-programmatic macro.

;; TODO: Add support for including xdoc in the generated forms.

(include-book "kestrel/utilities/defmacrodoc" :dir :system) ; for xdoc-for-macro-general-form
(include-book "kestrel/utilities/make-cons-nest" :dir :system)
(include-book "transformation-table2")
(include-book "generate-print-events")
(include-book "print-specifiers")

(defun add-prefix (str sym)

; This is based on ACL2 source function add-suffix.

  (declare (xargs :guard (and (symbolp sym)
                              (stringp str))))
  (intern-in-package-of-symbol
   (concatenate 'string str (symbol-name sym))
   sym))

(defun maybe-wrap-with-revert-world (revert-world form)
  (if revert-world
      `(revert-world ,form)
    form))

(defund keyword-args-and-defaultsp (keyword-args-and-defaults)
  (declare (xargs :guard t))
  (and (doublet-listp keyword-args-and-defaults)
       (let ((names (strip-cars keyword-args-and-defaults)))
         (and (symbol-listp names) ; todo: should these be keywords, or not?
              (no-duplicatesp names)
              ;; default values are all quoted:
              (quote-listp (strip-cadrs keyword-args-and-defaults))))))

;; So we can call things like strip-cars
(defthm keyword-args-and-defaultsp-forward-to-alistp
  (implies (keyword-args-and-defaultsp keyword-args-and-defaults)
           (alistp keyword-args-and-defaults))
  :rule-classes :forward-chaining
  :hints (("Goal" :in-theory (enable keyword-args-and-defaultsp))))

;; Returns a progn.
(defun deftransformation-fn (name ;the name of the transformation
                             required-args
                             keyword-args-and-defaults
                             pass-print ;whether to pass the print arg to the -event function (will come after the keyword args)
                             pass-context ;whether to pass the context arg to the -event function (will come just before state)
                             revert-world
                             suppress-xdoc ; todo: drop this?  just look at whether any of the xdoc-related args are given?
                             parents
                             short ; a form that evaluates to a string or to nil
                             arg-descriptions ; todo: can we allow these to contain forms to be evaluated?
                             description ; a form that evaluates to a string or to nil
                             )
  (declare (xargs :guard (and (symbolp name)
                              (symbol-listp required-args)
                              (keyword-args-and-defaultsp keyword-args-and-defaults)
                              (booleanp pass-print)
                              (booleanp pass-context)
                              (booleanp revert-world)
                              (booleanp suppress-xdoc)
                              (symbol-listp parents)
                              (macro-arg-descriptionsp arg-descriptions))
                  :mode :program))
  (b* (((when (not (consp required-args))) ;seems sensible, for printing the context
        (er hard? 'deftransformation "A transformation must have at least one required argument."))
       (event-generator-name (add-suffix name "-EVENT"))
       (some-xdoc-arg-given (or (not (eq :auto short))
                                description
                                arg-descriptions))
       (short (if (eq :auto short)
                  "A transformation in the APT toolkit."
                short))
       ;; TODO: maybe also a :preamble that comes before the general form.
       ;; TODO: maybe also have it generate xdoc for the programmatic variant, the show macro, etc.
       (xdoc-forms
        (and some-xdoc-arg-given
             (not suppress-xdoc)
             (list `(defxdoc-for-macro
                      ,name
                      ,(append required-args
                               '(&key)
                               '((show-only 'nil) (print ':result)) ; keyword args that are always present
                               keyword-args-and-defaults)
                      ,parents
                      ,short
                      ,(append arg-descriptions
                               '((show-only "Whether to simply show the result, not create it.")
                                 (print "How much detail to print.")))
                      ,description)))))

    `(progn
       ;; This is the boilerplate wrapper function.  It wraps a call of EVENT-GENERATOR-NAME:
       (defun ,(add-suffix name "-FN") (,@required-args
                                        ,@(strip-cars keyword-args-and-defaults)
                                        show-only
                                        print
                                        num-required-args
                                        whole-form
                                        ctx-symbol
                                        state)
         (declare (xargs :stobjs state
                         :mode :program) ;because of the call to XXX-event
                  )
         (b* ( ;; Check inputs that are not / may not be passed through:
              (ctx (cons ctx-symbol ,(first required-args))) ;odd format for this
              ((when (not (apt::print-specifier-p print)))
               (er-soft+ ctx :bad-input nil
                         "The :PRINT option must satisfy apt::print-specifier-p, but it is ~x0."
                         print))
              ;; (print-errorsp (member-eq print '(:error :result :info :all)))
              (print-resultp (member-eq print '(:result :info :all)))
              (print-infop (member-eq print '(:info :all)))
              (print-proof-outputp (member-eq print '(:all)))
              (print-generated-eventp (member-eq print '(:all)))

              ((when (not (booleanp show-only))) ;todo: use an error-checker?
               (er-soft+ ctx
                         :bad-input nil
                         "The :show-only option should be a boolean, but it is ~x0." show-only))
              ((when (not (natp num-required-args))) ;todo: use an error-checker?
               (er-soft+ ctx
                         :implementation-error nil
                         "num-required-args should be a natural number, but it is ~x0." num-required-args))
              ;; Check for redundancy (have to remove :show-only and :print):
              (form-for-redundancy-checking ;(form-for-redundancy-checking whole-form num-required-args)
               (list ',name
                     ,@required-args
                     ,@(strip-cars keyword-args-and-defaults)
                     ))
              ;;todo: rename previous-transformation-expansion to previous-transformation-result?
              (previous-transformation-expansion (previous-transformation-expansion2 form-for-redundancy-checking whole-form state))
              ((when previous-transformation-expansion)
               ;; it's redundant:
               (mv nil
                   (if show-only
                       `(progn (print-event ,previous-transformation-expansion)
                               (value-triple :invisible))
                     ;;return invisible since previous-transformation-expansion already printed a message above
                     '(value-triple :invisible))
                   state))
              (- (and print-infop
                      (cw "Invoking (~x0 ~x1 ...).~%" ctx-symbol ,(first required-args))))
              ;; This does most of the work:
              ((er event)
               (if print-proof-outputp ;;(member-eq :expand print)
                   ;; Re-enable printing (of proofs, etc.) during expansion:
                   (with-output! :stack :pop
                     (,event-generator-name
                      ,@required-args
                      ,@(strip-cars keyword-args-and-defaults)
                      ,@(and pass-print '((if (member-eq print '(:info :all)) t nil)))
                      ,@(and pass-context '(ctx))
                      state))
                 ;; Printing (of proofs, etc.) remains suppressed during expansion:
                 (,event-generator-name
                  ,@required-args
                  ,@(strip-cars keyword-args-and-defaults)
                  ,@(and pass-print '((if (member-eq print '(:info :all)) t nil)))
                  ,@(and pass-context '(ctx))
                  state)))
              (- (and print-generated-eventp (cw "~%Generated event:~%~X01~%" event nil)))
              ;; Extract things to be printed for the :result:
;              (result-print-specifier (get-result-print-specifier print))
              ((er print-events)
               (generate-print-events ctx (if print-resultp t nil) ;result-print-specifier
                                      event state))
              ;; Print a line break before the result if needed to separate it
              ;; from info or proof output:
              (print-events
               (if print-infop
                   (cons '(cw-event "~%")
                         print-events)
                 print-events))
              ;; Re-enable printing of proof output if appropriate
              (event (if print-proof-outputp ;(member-eq :submit print)
                         `(with-output :stack :pop ,event)
                       event)))
           (if show-only
               (mv nil ;no error
                   `(progn (print-event ,event) ;just print the event (don't submit it, don't store in the table)
                           (value-triple :invisible))
                   state)
             (mv nil                ;; no error
                 `(progn ,event     ;; actually submit the event
                         ;; store the transformation result (output for this remains suppressed):
                         ;; TODO: Consider calling record-transformation-call-event here, but that expects the form with the keywords still present:
                         (table apt::transformation-table
                                ',form-for-redundancy-checking ; :show-only (which might be an explicit nil) and :print have been removed
                                ',event)
                         ;; Print the events (submission output for this remains suppressed, but not the CW printing done by print-event):
                         ,@print-events
                         (value-triple :invisible))
                 state))))

       ;; This is the main macro for the transformation called NAME:
       (defmacroq ,name (&whole whole-form
                                ,@required-args
                                &key
                                ,@keyword-args-and-defaults
                                (show-only 'nil)
                                (print ':result) ;;This argument doesn't get evaluated?
                                )
         (let ((form (cons ',(add-suffix name "-FN")
                           ,(make-cons-nest (append required-args
                                                    (strip-cars keyword-args-and-defaults)
                                                    (list 'show-only 'print (list 'quote (len required-args)) 'whole-form
                                                          `'',name
                                                          ''state))))))
           (if (equal print ''nil)
               ;; Suppress errors and ACL2 proof output:
               `(with-output
                  ;; :stack :push ;; will actually never be popped
                  :off (error proof-tree warning! warning observation prove event summary proof-builder history)
                  :gag-mode nil
                  (make-event ,form :on-behalf-of :quiet!) ;; :quiet! means suppress make-event noise upon error
                  )
             ;; Suppress ACL2 proof output but not errors (printing of proof output may be re-enabled later):
             `(with-output
                :stack :push
                :off (proof-tree warning! warning observation prove event summary proof-builder history)
                :gag-mode nil
                (make-event ,form :on-behalf-of :quiet!) ;; :quiet! means suppress make-event noise upon error
                ))))

       (defun ,(add-suffix name "-PROGRAMMATIC-FN") (,@required-args
                                                     ,@(strip-cars keyword-args-and-defaults)
                                                     show-only
                                                     print
                                                     num-required-args
                                                     whole-form
                                                     ctx-symbol ;todo: don't pass in?
                                                     state)
         (declare (xargs :stobjs state :guard t :mode :program))
         (if (not (apt::print-specifier-p print))
             (er-soft+ (cons ctx-symbol ,(first required-args)) ;odd format for contexts
                       :bad-input nil
                       "The :PRINT option must satisfy apt::print-specifier-p, but it is ~x0."
                       print)
           (let ( ;(print (desugar-apt-print-arg print))
                 ;;(print-errorsp (member-eq print '(:error :result :info :all)))
                 ;;(print-resultp (member-eq print '(:result :info :all)))
                 (print-infop (member-eq print '(:info :all)))
                 ;;(print-proof-outputp (member-eq print '(:all)))
                 )
             ;; Call the boilerplate function, passing it all args, possibly turning off output first
             (if print-infop ;(member-eq :expand print)
                 ,(maybe-wrap-with-revert-world
                   revert-world
                   `(,(add-suffix name "-FN")
                     ,@required-args
                     ,@(strip-cars keyword-args-and-defaults)
                     show-only
                     print
                     num-required-args
                     whole-form
                     ctx-symbol
                     state))
               (with-output! :off (proof-tree warning! warning observation prove event summary proof-builder history) ;everything but error and comment
                 :gag-mode nil
                 ,(maybe-wrap-with-revert-world
                   revert-world
                   `(,(add-suffix name "-FN")
                     ,@required-args
                     ,@(strip-cars keyword-args-and-defaults)
                     show-only
                     print
                     num-required-args
                     whole-form
                     ctx-symbol
                     state)))))))

       ;; This is the macro for the programmatic interface. Note that it
       ;; doesn't call make-event, and it doesn't use defmacroq, so the
       ;; arguments are evaluated.  TODO: Think about whether to set/check the
       ;; transformation-table.
       (defmacro ,(add-suffix name "-PROGRAMMATIC") (&whole whole-form
                                                            ,@required-args
                                                            &key
                                                            ,@keyword-args-and-defaults
                                                            (show-only 'nil)
                                                            (print 'nil)
                                                            )
         (cons
          ',(add-suffix name "-PROGRAMMATIC-FN")
          ,(make-cons-nest (append required-args
                                   (strip-cars keyword-args-and-defaults)
                                   (list 'show-only 'print `',(len required-args) '(list 'quote whole-form)
                                         `'',(add-suffix name "-PROGRAMMATIC")
                                         ''state)))))

       ;; This is the "show-" macro:
       ;; Show what the transformation would generate but do not submit it to ACL2:
       (defmacro ,(add-prefix "SHOW-" name) (&rest args)
         ;; We set the :show-only option and then call the main macro:
         (cons ',name
               (append args
                       (cons ':show-only (cons 't 'nil)))))

       ,@xdoc-forms)))

;; Expects there to be a function called <name>-event.  It's params should be:
;; ...required-args...
;; ...keyword-args...
;; verbose (if :pass-print is true)
;; ctx (if :pass-context is true)
;; state
(defmacro deftransformation (name ; name of the transformation (e.g., expand-lets)
                             required-args ; a list of symbols, usually contains at least FN for the name of the function being transformed
                             keyword-args-and-defaults ; a list of doublets (keyword arg names and their quoted default values)
                             &key
                             (pass-print 'nil) ;whether to pass the print arg to the -event function (will come after the keyword args)
                             (pass-context 'nil) ;whether to pass the context arg to the -event function (will come just before state)
                             (revert-world 'nil) ;whether the programmatic function should revert the world (used by simplify)
                             (suppress-xdoc 'nil) ;whether to suppress automatic xdoc generation
                             (parents '(apt::apt))
                             (short ':auto)
                             (arg-descriptions 'nil)
                             (description 'nil))
  ;; This previously used make-event to avoid a problem with calling FLPR in safe mode via fmt1-to-string.
  (deftransformation-fn
    name required-args keyword-args-and-defaults pass-print pass-context revert-world suppress-xdoc
    parents short arg-descriptions description))

;; TODO: Update this:
;; TODO: Add this to the xdoc: If the :print option is t, all non-local events
;; (except some that we exclude) are printed.  If it is nil, nothing is
;; printed.  Otherwise, the :print option should be either a list of
;; event-names and/or the special symbols :defuns and :defthms, or a single
;; symbol which stands for the singleton list of that symbol.  The symbols in
;; this list are processed in order.  :defuns means print all
;; defun/defund/mutual-recursion forms (in the order that they appear).
;; :defthms means print all defthm/defthmd events (in the order in which they
;; appear). Any other symbol means print any events with that name (e.g.,
;; defun, defthm, or verify-guards).  The default for :print is t for the
;; normal use of a transformation but nil for its programmatic interface.
