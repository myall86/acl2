; ACL2 Version 4.1 -- A Computational Logic for Applicative Common Lisp
; Copyright (C) 2010  University of Texas at Austin

; This version of ACL2 is a descendent of ACL2 Version 1.9, Copyright
; (C) 1997 Computational Logic, Inc.  See the documentation topic NOTE-2-0.

; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.

; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.

; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

; Written by:  Matt Kaufmann               and J Strother Moore
; email:       Kaufmann@cs.utexas.edu      and Moore@cs.utexas.edu
; Department of Computer Sciences
; University of Texas at Austin
; Austin, TX 78712-1188 U.S.A.

(in-package "ACL2")

(defmacro qfuncall (fn &rest args)

; Avoid noise in CCL about undefined functions, not avoided by funcall alone.
; But this doesn't help in CMU CL 19e on Linux and even breaks CMU CL 18d on
; Solaris, so we just punt on this trick for CUCL.

  (if (not (symbolp fn))
      (error "~s requires a symbol, not ~s" 'qfuncall fn)
    #-(and cltl2 (not cmu))
    `(funcall ',fn ,@args)
    #+(and cltl2 (not cmu))
    `(let () (declare (ftype function ,fn)) (,fn ,@args))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            SUPPORT FOR NON-STANDARD ANALYSIS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Amazingly, some lisps do not have a definition for realp.  In those
; implementations (apparently including at least one early version of GCL), we
; will use rationalp as a poor substitute which however suffices for ACL2
; objects.

#+:non-standard-analysis
(defun acl2-realp (x)                                                   
  (rationalp x))                                                        
                                                                        
#+(and :non-standard-analysis CLTL2)
(if (not (fboundp 'common-lisp::realp))
    (setf (symbol-function 'common-lisp::realp) (symbol-function 'acl2-realp)))

#+(and :non-standard-analysis (not CLTL2))
(if (not (fboundp 'lisp::realp))
    (setf (symbol-function 'lisp::realp) (symbol-function 'acl2-realp)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                         GCL VERSION QUERIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#+gcl
(defun gcl-version-> (major minor extra &optional weak)

; When true, this guarantees that the current GCL version is greater than
; major.minor.extra (or if weak is non-nil, than greater than or equal to).
; The converse holds for versions of GCL past perhaps 2.0.

  (and (boundp 'si::*gcl-major-version*)
       (integerp si::*gcl-major-version*)
       (if (= si::*gcl-major-version* major)
           (and (boundp 'si::*gcl-minor-version*)
                (integerp si::*gcl-minor-version*)
                (if (= si::*gcl-minor-version* minor)
                    (and (boundp 'si::*gcl-extra-version*)
                         (integerp si::*gcl-extra-version*)
                         (if weak
                             (>= si::*gcl-extra-version* extra)
                           (> si::*gcl-extra-version* extra)))
                  (if weak
                      (>= si::*gcl-minor-version* minor)
                    (> si::*gcl-minor-version* minor))))
         (if weak
             (>= si::*gcl-major-version* major)
           (> si::*gcl-major-version* major)))))

#+gcl
(defun gcl-version->= (major minor extra)
  (gcl-version-> major minor extra t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                         COMPILED LISP FIXES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Fix for GCL compiler.
; Small example:
; (defmacro my-mac (b)
;   (list 'list (if (and (consp b) (stringp (car b))) (list 'quote b) b)))
; (defun foo () (my-mac ("Guards")))
; (compile 'foo)

#+(and gcl (not ansi-cl))
(when (and (fboundp 'compiler::wrap-literals)
           (not (gcl-version-> 2 6 7)))
  (setf (symbol-function 'compiler::wrap-literals)
        (symbol-function 'identity)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            PROCLAIMING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The variable acl2::*do-proclaims* determines whether or not we proclaim ACL2
; functions before compiling them.  Normally this seems to improve performance,
; though we believe that such proclaiming had the opposite effect for some
; combination of ACL2 and Allegro CL; see comment in proclaim-file.

; The constant acl2::*suppress-compile-build-time* determines whether or not we
; avoid calling the compiler.  If this variable is false, then in compile-acl2
; we load each source file, then proclaim it, and finally compile it.  But we
; skip all that when acl2::*suppress-compile-build-time* is true; we can't
; proclaim before loading because macros may not all have been defined, and it
; seems dicey to do the sequence load,proclaim,load because the second load
; redefines functions.  So in this case, we instead do the build by first
; optionally (though required in GCL) calling generate-acl2-proclaims to do the
; entire load/initialization sequence and write out file acl2-proclaims.lisp.
; At the makefile level (see GNUmakefile), this sequence is accomplished with
; target "large" as follows: target "full" does a compile (basically a no-op if
; *suppress-compile-build-time* is true), then target "init" first invokes
; target "make-acl2-proclaims" to do the load/initialization and writing out of
; file acl2-proclaims.lisp, and finally "init" does a new load/initialization
; but this time loading the existing acl2-proclaims.lisp to proclaim functions.

; At one time we proclaimed for CCL, but one profiling run of a
; compute-intensive include-book form showed that this was costing us some 10%
; of the time.  After checking with Gary Byers we decided that there was little
; if any benefit in CCL for proclaiming functions, so we no longer do it.
; Perhaps we should reconsider some time.

; We considered adding &OPTIONAL to the end of every VALUES form (see comments
; below), based on output (since forgotten) from SBCL.  But GCL issued several
; dozen warnings during the build when this happened, so for now, since we are
; only proclaiming functions for GCL, we'll remove the &optional and be happy.

(defvar *do-proclaims*
  #+gcl t
  #-gcl nil)

(defmacro defun-one-output (&rest args)

; Use this for raw Lisp functions that are known to return a single value in
; raw Lisp, since make-defun-declare-form uses that assumption to make an
; appropriate declaration.

  (cons 'defun args))

(defun macroexpand-till (form sym)

; In order to find the THEs that we want to find to do automatic
; proclaiming of the output types of functions, we need to do
; macroexpansion at proclaim-time.  It is possible that a given
; implementation of Common Lisp will macroexpand THE forms further.
; Hence we gently do the macroexpansion we need, one expansion at a
; time, looking for the THE we want to find.

  (loop (cond ((and (consp form) (eq (car form) sym))
               (return form))
              (t (multiple-value-bind
                  (new-form flg)
                  (macroexpand-1 form)
                  (cond ((null flg) (return form))
                        (t (setq form new-form))))))))

(defun get-type-from-dcls (var dcls)
  (cond ((endp dcls) t)
        ((and (consp (car dcls))
              (eq 'type (caar dcls))
              (member var (cddr (car dcls))))
         (cadr (car dcls)))
        (t (get-type-from-dcls var (cdr dcls)))))

(defun arg-declarations (formals dcls)
  (cond ((endp formals) nil)
        (t (cons (get-type-from-dcls (car formals) dcls)
                 (arg-declarations (cdr formals) dcls)))))

(defun collect-types (l)
  (cond ((null (cdr l)) nil)
        ((stringp (car l))
         (collect-types (cdr l)))
        ((consp (car l))
         (let ((exp (car l)))
           (cond ((and (consp exp) (eq (car exp) 'declare))
                  (append (cdr exp) (collect-types (cdr l))))
                 (t nil))))
        (t nil)))

(defun convert-type-to-integer-pair (typ)

; Typ is (integer i j), (signed-byte i), or (unsigned-byte i).  We return an
; equivalent type (integer i' j').

  (case (car typ)
    (integer (cdr typ))
    (signed-byte (let ((n (expt 2 (1- (cadr typ)))))
                   (list (- n) (1- n))))
    (unsigned-byte (list 0 (1- (expt 2 (cadr typ)))))
    (t (error
        "Unexpected type for convert-to-integer-type ~s"
        typ))))

(defparameter *lisp-fns-with-mv-output-type*

; We have used the following form in an ANSI version of GCL to compute the list
; of functions that return multiple values.  Presumably this is the correct
; list for the main Lisp package in other Common Lisp implementations as well.

#||
 (let (ans)
    (do-symbols (sym (find-package "LISP"))
                (let ((tp (get sym 'compiler::return-type)))
                  (when (and (consp tp)
                             (member (car tp)
                                     '(values system::returns-exactly)))
                    (setq ans (cons sym ans)))))
    ans)
||#

  '(INTERN DECODE-FLOAT
           GET-MACRO-CHARACTER ; ansi only
           READ-LINE MACROEXPAND ROUND GETHASH
           GET-PROPERTIES PARSE-INTEGER PARSE-NAMESTRING ; these 3 ansi only
           CEILING MACROEXPAND-1 INTEGER-DECODE-FLOAT TRUNCATE FIND-SYMBOL
           FLOOR))

(defvar *acl2-output-type-abort* nil)

(defun min-integer-* (x y)
  (cond ((and (integerp x) (integerp y))
         (min x y))
        (t '*)))

(defun max-integer-* (x y)
  (cond ((and (integerp x) (integerp y))
         (max x y))
        (t '*)))

(defun max-output-type-for-declare-form (type1 type2)

; We return a supertype of type1 and type2, preferably as small as possible,
; else nil.  We assume that each typei that is not null is (values ...) or is
; some sort of integer type.

  (cond
   ((equal type1 type2)
    type1)
   ((or (eq type1 '*)
        (eq type2 '*))
    '*)
   #+acl2-mv-as-values
   ((not (equal (and (consp type1)
                     (eq (car type1) 'values))
                (and (consp type2)
                     (eq (car type2) 'values))))
    '*)
   ((and (or (eq type1 'integer)
             (and (consp type1)
                  (eq (car type1) 'integer)
                  (or (null (cddr type1))
                      (member '* (cdr type1) :test 'eq))))
         (or (eq type2 'integer)
             (and (consp type2)
                  (eq (car type2) 'integer)
                  (or (null (cddr type2))
                      (member '* (cdr type2) :test 'eq)))))
    'integer)
   ((or (atom type1) (atom type2)) ; so, type is t since neither is *
    t)
   ((cdr (last type1)) ; (not (true-listp type1))
    (error
     "Non-atom, non-true-listp type for max-output-type-for-declare-form: ~s"
     type1))
   ((cdr (last type2)) ; (not (true-listp type2))
    (error
     "Non-atom, non-true-listp type for max-output-type-for-declare-form: ~s"
     type2))
   (t (let ((sym1 (car type1))
            (sym2 (car type2)))
        (cond
         ((eq sym1 sym2)
          (case sym1
            ((signed-byte unsigned-byte)
             (if (< (cadr type1) (cadr type2))
                 type2
               type1))
            (integer
             (list 'integer
                   (min-integer-*  (cadr type1)  (cadr type2))
                   (max-integer-* (caddr type1) (caddr type2))))
            #+acl2-mv-as-values
            (values
             (cons 'values (max-output-type-for-declare-form-lst (cdr type1)
                                                                 (cdr type2))))
            (otherwise
             (error
              "Unexpected type for max-output-type-for-declare-form: ~s"
              type1))))
         #+acl2-mv-as-values
         ((or (eq sym1 'values) (eq sym2 'values)) ; but not both
          '*)
         (t (let* ((pair1 (convert-type-to-integer-pair type1))
                   (pair2 (convert-type-to-integer-pair type2))
                   (lower1 (car pair1))
                   (upper1 (cadr pair1))
                   (lower2 (car pair2))
                   (upper2 (cadr pair2))
                   (lower-min (min-integer-* lower1 lower2))
                   (upper-max (max-integer-* upper1 upper2)))
              (cond
               ((and (eql lower1 lower-min) (eql upper1 upper-max))
                type1)
               ((and (eql lower2 lower-min) (eql upper2 upper-max))
                type2)
               (t
                (list 'integer lower-min upper-max))))))))))

#+acl2-mv-as-values
(defun max-output-type-for-declare-form-lst (type-list1 type-list2)

; Type-list1 and type-list2 are known to be true lists (null-terminated
; lists).

  (cond ((or (null type-list1) (null type-list2))
         (cond
          ((and (null type-list1) (null type-list2))
           nil)
          ((and *acl2-output-type-abort*
                (or (atom type-list1) (atom type-list2)))
           (cons '*
                 (max-output-type-for-declare-form-lst
                  (cdr type-list1) (cdr type-list2))))
          (t
           (error "Implementation error:~%~
                   max-output-type-for-declare-form-lst called on lists of~%~
                   different length:~%~
                   ~s~%  ~s~%~
                   Please contact the ACL2 implementors."
                  type-list1 type-list2))))
        (t (cons (max-output-type-for-declare-form
                  (car type-list1) (car type-list2))
                 (max-output-type-for-declare-form-lst
                  (cdr type-list1) (cdr type-list2))))))

(declaim (ftype (function (t t)
                          (values t) ; see comment above about &optional
                          )
                output-type-for-declare-form-rec))
(declaim (ftype (function (t t)
                          (values t) ; see comment above about &optional
                          )
                output-type-for-declare-form-rec-list))

(defun output-type-for-declare-form-rec (form flet-alist)

; We return either nil or *, or else a type for form that ideally is as small
; as possible.

  (cond
   ((integerp form)
    `(integer ,form ,form))
   ((characterp form)
    'character)
   ((atom form)
    t)
   ((eq (car form) 'return-last)
    (output-type-for-declare-form-rec (cadr (last form)) flet-alist))
   ((assoc (car form) flet-alist :test 'eq)
    (cdr (assoc (car form) flet-alist :test 'eq)))
   ((member (car form) '(flet labels)
            :test 'eq) ; (flet bindings val)
    (let ((temp flet-alist))
      (dolist (binding (cadr form))
        (let ((fn (car binding))
              (body (car (last binding)))
              *acl2-output-type-abort*)
          (let ((typ (output-type-for-declare-form-rec body flet-alist)))
            (push (cons fn
                        (if *acl2-output-type-abort*
                            '*
                          typ))
                  temp))))
      (output-type-for-declare-form-rec (car (last form)) temp)))
   ((eq (car form) 'the)
    (let ((typ (cadr form)))
      (cond ((member typ '(integer fixnum character) :test 'eq)
             typ)
            ((and (consp typ)
                  (member (car typ)
                          '(integer signed-byte unsigned-byte
                                    #+acl2-mv-as-values
                                    values)
                          :test 'eq))
             typ)
            (t t))))
   ((eq (car form) 'if)
    (cond
     ((eq (cadr form) t) ; as generated for final cond branch in CCL
      (output-type-for-declare-form-rec (caddr form) flet-alist))
     ((eq (cadr form) nil) ; perhaps not necessary
      (output-type-for-declare-form-rec (cadddr form) flet-alist))
     (t (let ((type1 (output-type-for-declare-form-rec (caddr form) flet-alist)))
          (if (eq type1 '*) ; optimization
              '*
            (max-output-type-for-declare-form
             type1
             (output-type-for-declare-form-rec (cadddr form) flet-alist)))))))
   ((eq (car form) 'values)
    (cond ((null (cdr form))
           (setq *acl2-output-type-abort* '*))
          ((null (cddr form)) ; e.g., from (cond (a))
           (output-type-for-declare-form-rec (cadr form) flet-alist))
          (t
           (cons 'values (output-type-for-declare-form-rec-list (cdr form)
                                                                flet-alist)))))
   ((member (car form) '(let let*) :test 'eq)
    (cond ((cddr form)
           (output-type-for-declare-form-rec (car (last form)) flet-alist))
          (t t)))
   #+acl2-mv-as-values
   ((eq (car form) 'multiple-value-bind)
    (cond ((cdddr form)
           (output-type-for-declare-form-rec (car (last form)) flet-alist))
          (t t)))
   ((eq (car form) 'unwind-protect)
    (output-type-for-declare-form-rec (cadr form) flet-alist))
   ((member (car form) '(time progn ec-call) :test 'eq)
    (output-type-for-declare-form-rec (car (last form)) flet-alist))
   ((member (car form)
            '(tagbody ; e.g., ld-fn
              throw-raw-ev-fncall ; e.g., from defchoose
              )
            :test 'eq)
    (setq *acl2-output-type-abort* '*))
   ((eq (car form) 'mv-list)
    t)
   (t (multiple-value-bind
       (new-form flg)
       (macroexpand-1 form)
       (cond ((null flg)
              (cond ((atom form) t)
                    ((eq (car form) 'multiple-value-prog1)
                     (and (consp (cdr form))
                          (output-type-for-declare-form-rec (cadr form) flet-alist)))
; Note: We don't expect multiple-value-setq to show up in ACL2.
                    ((and (consp (car form))
                          (eq (caar form) 'lambda))
                     (output-type-for-declare-form-rec (caddr (car form)) flet-alist))
                    ((or (not (symbolp (car form))) ; should always be false
                         (member (car form)
                                 *lisp-fns-with-mv-output-type*
                                 :test 'eq))
                     '*)
                    #-acl2-mv-as-values
                    (t t)
                    #+acl2-mv-as-values
                    (t (let ((x (and (eval '(f-get-global 'current-acl2-world
                                                          *the-live-state*))
                                     (qfuncall get-stobjs-out-for-declare-form
                                               (car form)))))
                         (cond ((consp (cdr x))
                                (cons 'values
                                      (make-list (length x)
                                                 :initial-element
                                                 t)))
                               (t t))))))
             (t (output-type-for-declare-form-rec new-form flet-alist)))))))
       
(defun output-type-for-declare-form-rec-list (forms flet-alist)
  (cond ((atom forms)
         nil)
        (t (cons (let ((tp (output-type-for-declare-form-rec (car forms)
                                                             flet-alist)))
                   (if (member tp '(nil *) :test 'eq)
                       t
                     tp))
                 (output-type-for-declare-form-rec-list (cdr forms)
                                                        flet-alist)))))

(defun output-type-for-declare-form (fn form)

; We return a list of output types, one per value.  So if #-acl2-mv-as-values,
; then we always return a list of length one.

  (when (eq fn 'return-last)
    (return-from output-type-for-declare-form '*))
  #-acl2-mv-as-values
  (let* ((*acl2-output-type-abort* nil) ; protect for call on next line
         (result (output-type-for-declare-form-rec form nil)))
    (cond
     (*acl2-output-type-abort*
      '*)
     (t
      (list 'values result))))
  #+acl2-mv-as-values
  (let* ((*acl2-output-type-abort* nil) ; protect for call on next line
         (result (output-type-for-declare-form-rec form nil))
         (stobjs-out (and (eval '(f-get-global 'current-acl2-world
                                               *the-live-state*))
                          (qfuncall get-stobjs-out-for-declare-form fn))))
    (when (and stobjs-out
               (not (eq (and (consp result)
                             (eq (car result) 'values))
                        (consp (cdr stobjs-out))))
               (not *acl2-output-type-abort*))
      (error "Implementation error in ~s:~%~
              stobjs-out and result don't mesh.~%~
              Stobjs-out = ~s~%~
              Result = ~s~%~
              Please contact the ACL2 implementors."
             (list 'output-type-for-declare-form fn '|defun...|)
             stobjs-out result))
    (cond
     ((and (consp result)
           (eq (car result) 'values))
      result ; see comment above about &optional
      )
     ((or *acl2-output-type-abort*
          (eq result '*))
      '*)
     (t
      (list 'values result) ; see comment above about &optional
      ))))

(defun make-defun-declare-form (fn form
                                   &optional
                                   (output-type nil output-type-p))

; See the comment in proclaim-file for why we don't proclaim in more lisps.

  (when *do-proclaims*
    (let* ((output-type
            (if output-type-p
                output-type
              (output-type-for-declare-form fn (car (last form))))))
      (let ((formals (caddr form)))
        (cond
         ((null (intersection formals lambda-list-keywords
                              :test 'eq))
          `(declaim (ftype (function
                            ,(arg-declarations
                              formals
                              (collect-types (cdddr form)))
                            ,output-type)

; WARNING: Do not replace (cadr form) by fn below.  These can differ!  Fn is
; passed to output-type-for-declare-form in order to get its 'stobjs-out, but
; (cadr form) can be the *1* function for fn.  The mistaken placement of fn
; below caused a factor of 4 slowdown in GCL in the first lemma5 in
; books/unicode/utf8-decode.lisp, because the proclaim for function
; utf8-combine4-guard was overwritten by a subsequent weaker proclaimed type
; that was supposed to be generated for the *1* function, but instead was
; generated for utf8-combine4-guard.

                           ,(cadr form))))
         (t nil))))))

(defun make-defconst-declare-form (form)

; We assume that the form has already been evaluated.

  (when *do-proclaims*
    (let* ((output (macroexpand-till (caddr form) 'the))
           (output-type (cond ((and (consp output)
                                    (eq 'the (car output)))
                               (cadr output))
                              (t nil))))
      (cond
       (output-type
        `(declaim (type ,output-type ,(cadr form))))
       (t (let ((val (symbol-value (cadr form))))
            (if (integerp val)
                `(declaim (type (integer ,val ,val) ,(cadr form)))
              nil)))))))

(defun make-defstobj-declare-form (form)
  (when *do-proclaims*
    (let* ((name (cadr form))
           (args (cddr form))

; The loss of efficiency caused by using symbol-value below should be more than
; compensated for by the lack of a warning here when building the system.

           (template (qfuncall defstobj-template name args))
           (raw-defs (qfuncall defstobj-raw-defs name template

; We do not want to rely on having the world available here, so we pass in nil
; for the final argument of defstobj-raw-defs.  The only effect of using nil
; instead of a world in such a context is that additional checking by
; translate-declaration-to-guard is missing.

                               nil)))
      (cons 'progn
            (mapcar (function
                     (lambda (def) (if (member (symbol-value
                                                '*stobj-inline-declare*)
                                               def
                                               :test (function equal))
                                       nil
                                     (make-defun-declare-form
                                      (car def)
                                      (cons 'defun def)))))
                    raw-defs)))))

(defmacro eval-or-print (form stream)
  `(let ((form ,form))
     (when form
       (if ,stream
           (format stream "~s~%" form)
         (eval form)))))

(defun proclaim-form (form &optional stream)
  (when *do-proclaims*
    (cond ((consp form)
           (case (car form)
             ((in-package) (eval-or-print form stream) nil)
             ((defmacro defvar defparameter) nil)
             ((defconst)
              (eval-or-print (make-defconst-declare-form form) stream)
              nil)
             ((defstobj)
              (eval-or-print (make-defstobj-declare-form form) stream))
             ((eval-when)
              (dolist (x (cddr form))
                (proclaim-form x stream))
              nil)
             ((progn mutual-recursion)
              (dolist (x (cdr form))
                (proclaim-form x stream))
              nil)
             ((defun defund)
              (eval-or-print (make-defun-declare-form (cadr form) form)
                             stream)
              nil)
             (defun-one-output
               (eval-or-print (make-defun-declare-form
                               (cadr form)
                               form
                               '(values t) ; see comment above about &optional
                               )
                              stream)
               nil)
             (otherwise nil)))
          (t nil))))

(defun proclaim-file (name &optional stream)

; Proclaims the functions in the file name that are either at the top-level, or
; within a progn, mutual-recursion, or eval-when.  IMPORTANT: This function
; assumes that the defconst forms in the given file have already been
; evaluated.  One way to achieve this state of affairs, of course, is to load
; the file first.

; Just before releasing Version_2.5 we decided to consider proclaiming for
; Lisps other than GCL.  However, our tests in Allegro suggested that this may
; not help.  The comment below gives some details.  Perhaps we will proclaim
; for MCL in the future.  At any rate, CCL (OpenMCL) is supported starting with
; Version_2.8, and we proclaim there since Warren Hunt thought that might be
; useful.

#|
Here is a summary of three comparable user times from certifying all the ACL2
books in June 2000, just before Release 2.5 is complete.  The first column,
labeled "Comp", is the one to be looked at for comparison purposes.  These are
all done on the same Sun workstation, using Allegro 5.0.1.  The meanings of
these numbers are explained below.

                               Comp     Actual   Comments
Recent ACL2 without proclaim:  5:41     5:36:42  no meta
Recent ACL2 *with*  proclaim:  5:54     5:53:58
April ACL2 (before non-std.):  5:48     5:35:58  missing some pipeline and ~40
                                                 sec. user time on powerlists

The "Comp" column estimates how long the run would have taken if all books had
certified, except that no run gets past book batcher-sort in the powerlists/
directory.  (The April run bogs down even slightly earlier.)  The first row is
adjusted by about 4 minutes because the run started with book meta-plus-lessp.
The April run broke on book basic-def from case-studies/pipeline and hence
missed the rest of that directory's books.  The above points account for the
addition of time from "Actual" to the appropriate comparison time in the first
column.
|#

  (when *do-proclaims*
    (with-open-file
     (file name :direction :input)
     (let ((eof (cons nil nil))
           (*package* *package*))
       (loop
        (let ((form (read file nil eof)))
          (cond ((eq eof form) (return nil))
                (t (proclaim-form form stream)))))
       nil))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;          ACL2's Implementation of the Backquote Readmacro
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter *comma* (make-symbol "COMMA")
  "*comma* is used by the backquote reader.  When the reader
encounters <,foo>, it returns (list *comma* read:<foo>>).")

(defparameter *comma-atsign* (make-symbol "COMMA-ATSIGN")
  "*comma-atsign* is used by the backquote reader.  When the reader
encounters <,@foo>, it returns (list *comma-atsign* read:<foo>).")

(defparameter *backquote-counter* 0
  "READ cannot handle a comma or comma-atsign unless there is a
pending backquote that will eliminate the *comma* or *comma-atsign*.
In the SPECIAL variable *backquote-counter* we keep track of the number of
backquotes that are currently pending.  It is crucial that this variable
be SPECIAL.")

(defun backquote (x)

  "The two functions BACKQUOTE and BACKQUOTE-LST implement backquote
as described on pp. 349-350 of CLTL1 except that (a) use of vector
notation causes an error and (b) the use of ,. is not permitted."

; It must be emphasized that the ACL2 implementation of backquote is
; only one of many implementations that are consistent with the Common
; Lisp specification of backquote.  That spec requires only that
; backquote produce a form that when evaluated will produce a
; designated object.  We impose the requirement that *acl2-readtable*
; be used both when checking files with ACL2 and when later compiling
; or using those files.  This requirement guarantees that we obtain
; the same behavior of backquote across all Common Lisps.  For
; example, it is an ACL2 theorem, across all Common Lisps that

;   (equal (car '`(,a)) 'cons)

; This theorem is definitely not true about the implementation of
; backquote provided by the implementors of each Common Lisp.  In
; fact, the lefthand side of this theorem represents an informal
; misuse of the backquote notation because one is intended to consider
; the effects of evaluating backquoted forms, not the forms
; themselves.  (In some Common Lisps, the lefthand side might even
; evaluate to a symbol in a nonstandard package.)  Nevertheless,
; because we inflict our definition of backquote on the ACL2 user at
; all times, the above equation is a theorem throughout, so no harm is
; done.  On the other hand, if we used the local implementation of
; backquote of each particular Common Lisp, we would get different
; ACL2 theorems in different Common Lisps, which would be bad.

; Unlike most implementors of backquote, we do no serious
; optimization.  We feel this inattention to efficiency is justified
; at the moment because in the usage we expect, the only serious costs
; will be small ones, during compilation.

  (cond ((and (vectorp x) (not (stringp x)))
         (error "ACL2 does not handle vectors in backquote."))
        ((atom x) (list 'quote x))
        ((eq (car x) *comma*) (cadr x))
        ((eq (car x) *comma-atsign*) (error "`,@ is an error"))
        (t (backquote-lst x))))

(defun backquote-lst (l)
  (cond ((atom l) (list 'quote l))
        ((eq (car l) *comma*)
         (cadr l))
        ((eq (car l) *comma-atsign*)
         (error ". ,@ is illegal."))
        ((and (consp (car l))
              (eq (caar l) *comma*))
         (list 'cons
               (cadr (car l))
               (backquote-lst (cdr l))))
        ((and (consp (car l))
              (eq (caar l) *comma-atsign*))
         (list 'append (cadr (car l)) (backquote-lst (cdr l))))
        (t
         (list 'cons
               (backquote (car l))
               (backquote-lst (cdr l))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            SUPPORT FOR ACL2 CHARACTER READER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun rev1@ (x acc)

; A strange version of linear reverse, which treats the final cdr of x
; as the final element of x.

  (cond
   ((atom x)
    (cons x acc))
   (t (rev1@ (cdr x) (cons (car x) acc)))))

(defun acl2-read-character-string (s acc)

; The reason we're so picky about what we allow as readable character notation
; is the existence of certain restrictions imposed by dpANS.  From the
; documentation for Sharpsign Backslash in dpANS:

;   When the token x is more than one character long, the x must have
;   the syntax of a symbol with no embedded package markers.  In this
;   case, the sharpsign backslash notation parses as the character
;   whose name is (string-upcase x); see *See Character Names::.

; And from the documentation for char-name in dpANS:

;   Returns a string that is the name of the character, or nil if the
;   character has no name.

; However, in akcl for example, (char-name #\\346) evaluates to NIL.  Even if
; it didn't, surely different lisps will define char-name differently.  So,
; we can't allow notation such as #\\346.

  (let ((ch (read-char s)))
    (cond ((member ch *acl2-read-character-terminators*)
           (unread-char ch s)
           (cond
            ((characterp acc)
             acc)
            (t (let ((x (coerce (rev1@ acc nil) 'string)))
                 (cond
                  ((string-equal x "SPACE")
                   #\Space)
                  ((string-equal x "TAB")
                   #\Tab)
                  ((string-equal x "NEWLINE")
                   #\Newline)
                  ((string-equal x "PAGE")
                   #\Page)
                  ((string-equal x "RUBOUT")
                   #\Rubout)
                  #+clisp

; Currently we only allow #\Null in CLISP.  We have to allow it there in some
; fashion because it is written to compiled (.fas) files.  The current approach
; seems to avoid any soundness issue: presumably #\Null is the same in every
; CLISP, and if one tries then to use a book containing #\Null that was
; certified using CLISP, then one will simply get an error.

                  ((string-equal x "NULL")
                   #\Null)
                  #+(and cmu18 solaris)

; We have seen code with #\Newline generate #\Linefeed in CMU CL 18d on
; Sun/Solaris, so here we allow #\Linefeed in order to avoid an error during
; the ACL2 build.  This would seem a harmless fix, for the sort of reason
; described above in the case of NULL.

                  ((and (string-equal x "LINEFEED")
                        (eql #\Newline #\Linefeed))
                   #\Newline)
                  (t (funcall
                      (if (fboundp 'interface-er)
                          'interface-er
                        'error)
                      "When the ACL2 reader tries to read #\\x, then ~
                       x must either be a single character followed ~
                       by a character in the list ~x0, ~
                       or else x must be one of Space, Tab, Newline, ~
                       Page, or Rubout (where case is ignored). ~
                       However, ~s1 is none of these."
                      *acl2-read-character-terminators*
                      x)))))))
          (t (acl2-read-character-string s (cons ch acc))))))

(defun acl2-character-reader (s c n)
  (declare (ignore n c))
  (let ((ch (read-char s)))
    (acl2-read-character-string s ch)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            SUPPORT FOR #,
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar *inside-sharp-dot-read* nil)

(defvar *inhibit-sharp-comma-warning* nil)

(defun sharp-comma-read (stream char n)
  (or *inhibit-sharp-comma-warning*
      (format t
              "WARNING: The sharp-comma read macro (#,) has been replaced~%~
               by sharp-dot (#.).  To inhibit this warning, submit the~%~
               following form to raw Lisp:~%~s~%~
               Note that sharp-comma may be eliminated in future versions~%~
               of ACL2 unless perhaps there are strong objections.~%"
              '(setq *inhibit-sharp-comma-warning* t)))
  (sharp-dot-read stream char n))

(defun sharp-dot-read (stream char n)
  (declare (ignore char n))
  (let ((whitespace-chars '(#\Backspace #\Tab #\Newline #\Linefeed #\Page
                            #\Return #\Space)))
    (when (member (peek-char nil stream nil nil t)
                  whitespace-chars)
      (error "#. must be followed immediately by a non-whitespace character.~%~
              See :DOC sharp-dot-reader.")))
  (let* ((*inside-sharp-dot-read*
          (or (not *inside-sharp-dot-read*)
              (error "Recursive attempt to read a sharp-dot (#.)~%expression ~
                      while inside a sharp-dot expression.  This is not~%~
                      allowed in ACL2.")))
         (sym (read stream t nil t))
         (val (and (symbolp sym)
                   (qfuncall fgetprop sym 'const nil
                             (qfuncall w *the-live-state*)))))
    (if val
        (cond ((and (consp val)
                    (eq (car val) 'quote)
                    (consp (cdr val))
                    (null (cddr val)))
               (cadr val))
              (t (error "(Implementation error) Found non-quotep 'const ~%~
                         property for ~s."
                        sym)))
      (error "ACL2 supports #. syntax only for #.*a*, where *a* has been ~%~
              defined by ~s." 
             'defconst))))

(defun sharp-bang-read (stream char n)

; Thanks to Pascal J. Bourguignon for suggesting this approach.
  
  (declare (ignore char n))
  (let* ((package-name (read stream))
         (package-string (cond ((symbolp package-name)
                                (symbol-name package-name))
                               ((stringp package-name)
                                package-name)
                               (t nil)))
         (*package* (if (assoc package-string
                               (qfuncall known-package-alist *the-live-state*)
                               :test 'equal)
                        (qfuncall find-package-fast package-string)
                      (error "There is no package named ~S that is known to ~
                              ACL2 in this context."
                             package-name))))
    (read stream)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            SUPPORT FOR #@
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro sharp-atsign-read-er (str &rest format-args)
  `(progn (loop (when (null (read-char-no-hang stream nil nil t))
                  (return)))
          (error (concatenate 'string ,str ".  See :DOC set-iprint.")
                 ,@format-args)))

(defun sharp-atsign-read (stream char n)
  (declare (ignore char n))
  (let (ch
        bad-ch
        (zero-code (char-code #\0))
        (index 0))
    (loop
     (when (eql (setq ch (read-char stream t nil t))
                #\#)
       (return))
     (let ((digit (- (char-code ch) zero-code)))
       (cond ((or (< digit 0)
                  (> digit 9))
              (when (not bad-ch)
                (setq bad-ch ch))
              (return))
             (t
              (setq index (+ digit (* 10 index)))))))
    (cond (bad-ch
           (sharp-atsign-read-er
            "Non-digit character ~s following #@~s"
            bad-ch index))
          ((eval '(f-get-global 'certify-book-info *the-live-state*))
           (sharp-atsign-read-er
            "Illegal reader macro during certify-book, #@~s#"
            index))
          ((qfuncall iprint-ar-illegal-index index *the-live-state*)
           (sharp-atsign-read-er
            "Out-of-bounds index in #@~s#"
            index))
          (t (qfuncall iprint-ar-aref1 index *the-live-state*)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            SUPPORT FOR FAST #n= and #n#
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The handling of #n= in CCL 1.4, and we suspect some other Lisp
; implementations as well, can be quite slow because of the need to handle
; circular objects and to check for illegal use of #n=(... #n=... ...).  But
; ACL2 controls how it writes out certain files, notably expansion files (see
; the Essay on Hash Table Support for Compilation).  In those cases, we are
; willing to take responsibility that such illegal uses of #n= do not occur,
; and that #n# is used only after the "definition" of n with #n=.  (It is easy
; to take such responsibility, since we print each form of the file in a legal
; manner.  We cannot similarly take responsibility for user books, which can be
; hand-edited.)

(defvar *sharp-reader-array-size*

; While this is initially 65536, it may increase, each time by a factor of
; *sharp-reader-array-size-multiplier*.  It never decreases.

  (expt 2 16))

(defvar *sharp-reader-array*
  (make-array *sharp-reader-array-size*))

(defvar *sharp-reader-array-size-multiplier*

; Resize *sharp-reader-array* by this factor each time its size limit is hit,
; but never to a size past most-positive-fixnum.

  2)

(defconstant *sharp-reader-max-array-size*

; We keep this a fixnum in all reasonable Lisps, to guarantee in particular
; that the expression (1+ *sharp-reader-max-index*) in with-reckless-read will
; always evaluate to a fixnum.

  (1- (expt 2 29)))

(defvar *sharp-reader-max-index*

; We hold the maximum index assigned to *sharp-reader-array* in this variable.
; (It is also OK if this variable exceeds that index; initially, its value is 0
; even though no index has been assigned.)  We use this value to wipe clean the
; *sharp-reader-array* after its use (see with-reckless-read), so that it
; doesn't defeat potential garbage collection of its elements.  We were tempted
; to use a one-element array so that Lisps like GCL can avoid boxing, but a
; little experimentation seems to suggest that GC for even 1,000,000 fixnums is
; very fast compared to what we might expect from reading that many objects.

  0)

(defun update-sharp-reader-max-index (index)
  (when (< *sharp-reader-max-index* index)
    (when (>= index *sharp-reader-array-size*)

; Grow the array.

      (when (>= index *sharp-reader-max-array-size*)
        (error "Lisp reader encountered #=~s (maximum index is ~s)."
               index
               (1- *sharp-reader-max-array-size*)))
      (let* ((new-sharp-reader-array-size
              (max (1+ index)
                   (min (* *sharp-reader-array-size-multiplier*
                           *sharp-reader-array-size*)
                        *sharp-reader-max-array-size*)))
             (new-sharp-reader-array
              (make-array new-sharp-reader-array-size))
             (bound (the (unsigned-byte 29) (1+ *sharp-reader-max-index*))))
        (do ((i 0 (the (unsigned-byte 29) (1+ i)))) ((eql i bound))
          (declare (type (unsigned-byte 29) i))
          (setf (svref new-sharp-reader-array i)
                (svref *sharp-reader-array* i)))
        (setq *sharp-reader-array* new-sharp-reader-array
              *sharp-reader-array-size* new-sharp-reader-array-size)))

; End growing of the array.

    (setq *sharp-reader-max-index* index)))

(defun reckless-sharp-sharp-read (stream char arg)
  (declare (ignore stream char))
  (cond
   (*read-suppress* nil)
   (t (svref *sharp-reader-array* arg))))

(defun reckless-sharp-equal-read (stream char arg)
  (declare (ignore char))
  (cond (*read-suppress* (values)) ; as for CCL, but unlikely to arise in ACL2
        (t (let ((val (read stream t nil t)))
             (update-sharp-reader-max-index arg)
             (setf (svref *sharp-reader-array* arg)
                   val)))))

(defmacro with-reckless-read (&rest forms)

; To experiment with disabling the reckless reader, replace the body below
; simply with `(progn ,@forms).

  `(let ((*readtable* *reckless-acl2-readtable*))
     (unwind-protect
         ,@forms
       (let ((bound (the (unsigned-byte 29) (1+ *sharp-reader-max-index*))))
         (declare (type (unsigned-byte 29) bound))
         (do ((i 0 (the (unsigned-byte 29) (1+ i)))) ((eql i bound))
           (declare (type (unsigned-byte 29) i))
           (setf (svref *sharp-reader-array* i) nil))
         (setq *sharp-reader-max-index* 0)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            DUAL PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The following function used to be defined in axioms.lisp (with
; #-acl2-loop-only), but we need it here.

(defconstant *main-lisp-package*
  (find-package "COMMON-LISP"))

(defun symbol-package-name (x)
  (cond ((get x *initial-lisp-symbol-mark*))
        ((let ((p (symbol-package x)))

; The following code should be kept in sync with the gcl-only code in the
; vicinity of the calls of rename-package in acl2.lisp, and with the definition
; of *main-lisp-package-name*.  The point is that the low-level package name
; for Lisp symbols is "LISP" in GCL but we want to treat it as "COMMON-LISP" in
; all Lisp implementations.  Thus, the extra test for the *main-lisp-package*
; is probably not necessary except for GCL, but we go ahead for the sake of
; uniformity and robustness.

           (if (eq p *main-lisp-package*)
               (setf (get x *initial-lisp-symbol-mark*)
                     "COMMON-LISP")
             (and p (package-name p)))))

; We use ERROR now because we cannot print symbols without packages
; with ACL2 functions.

        (t (error
            "The symbol ~a, which has no package, was encountered~%~
             by ACL2.  This is an inconsistent state of affairs, one that~%~
             may have arisen by undoing a defpkg but holding onto a symbol~%~
             in the package being flushed, contrary to warnings printed.~%~%"
            x))))

(defmacro gv (fn args val)
  (sublis `((funny-fn . ,fn)
            (funny-args . ,args))
          `(let ((gc-on (not (gc-off *the-live-state*))))
             (if (or gc-on
                     (f-get-global 'safe-mode *the-live-state*))
                 (throw-raw-ev-fncall
                  (list 'ev-fncall-guard-er
                        'funny-fn
                        ,(cons 'list 'funny-args)
                        (untranslate* (guard 'funny-fn nil (w *the-live-state*))
                                      t
                                      (w *the-live-state*))
                        (stobjs-in 'funny-fn (w *the-live-state*))
                        (not gc-on)))
               ,val))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            ENVIRONMENT SUPPORT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The following is first used in acl2-init.lisp, so we define it here.

(defun getenv$-raw (string)

; The following either returns the value of the given environment variable or
; returns nil (in lisps where we do not yet know how to get that value).

; WARNING: Keep this in sync with the #-acl2-loop-only definition of setenv$.

  #+cmu
  (and (boundp ext::*environment-list*)
       (cdr (assoc-eq (intern string :keyword)
                      ext::*environment-list*)))
  #+(or gcl allegro lispworks ccl sbcl clisp)
  (let ((fn
         #+gcl       'si::getenv
         #+allegro   'sys::getenv
         #+lispworks 'cl::getenv
         #+ccl       'ccl::getenv
         #+sbcl      'sb-ext::posix-getenv
         #+clisp     'ext:getenv))
    (and (fboundp fn)
         (funcall fn string))))

(defun get-os ()

; The following are in priority order.

  #+unix (return-from get-os :unix)
  #+mswindows (return-from get-os :mswindows)
  #+apple (return-from get-os :apple)
  #-(or unix apple mswindows) nil)

(defun our-pwd ()

; Warning: Do not be tempted to use (getenv$-raw "PWD").  The PWD environment
; variable is not necessarily maintained, for example in Solaris/SunOS as one
; make invokes another make in a different directory.

  (qfuncall pathname-os-to-unix
            (namestring (truename ""))
            (get-os)
            *the-live-state*))

(defun cancel-dot-dots (full-pathname)
  (let ((p (search "/.." full-pathname)))
    (cond (p (cancel-dot-dots
              (qfuncall merge-using-dot-dot
                        (subseq full-pathname 0 p)
                        (subseq full-pathname (1+ p) (length full-pathname)))))
          (t full-pathname))))

(defun unix-full-pathname (name &optional extension)

; We formerly used Common Lisp function merge-pathnames.  But in CCL,
; merge-pathnames can insert an extra backslash (\), as follows:

;  ? (MERGE-PATHNAMES "foo.xxx.lx86cl64" "/u/kaufmann/temp/")
;  #P"/u/kaufmann/temp/foo\\.xxx.lx86cl64"
;  ? 

; Gary Byers has explained that while this behavior may not be ideal, it is
; legal for Common Lisp.  So we avoid merge-pathnames here.

  (let* ((os (get-os))
         (state *the-live-state*)
         (name (qfuncall pathname-os-to-unix
                         (if extension
                             (concatenate 'string
                                          name
                                          "."
                                          extension)
                           name)
                         os state)))
    (cancel-dot-dots
     (cond ((qfuncall absolute-pathname-string-p name nil os)
            name)
           (t
            (concatenate 'string (our-pwd) name))))))

; It seems that GCL 2.7.0 has had problems with user-homedir-pathname in static
; versions because of how some system functions are relocated.  So we define
; our own version for use by all GCLs 2.7.0 and beyond.

#+gcl
(defun our-user-homedir-pathname (&optional host)
  (declare (ignore host))
  (pathname (concatenate 'string (si::getenv "HOME") "/")))

#+gcl
(when (gcl-version->= 2 7 0)
  (setf (symbol-function 'user-homedir-pathname)
        (symbol-function 'our-user-homedir-pathname)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                            MISCELLANY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The following definition was originally in interface-raw.lisp.  But it was
; also needed in hons-raw.lisp, which is compiled earlier, and CCL (at
; least) needs to know that we indeed have a macro here -- so the definition
; can't be put off until loading interface-raw.lisp.  As of Version_3.2,
; hons-raw.lisp is only included in special builds, so we don't want to put
; this definition there; thus, we are putting it here.

(defmacro special-form-or-op-p (name)

; This odd macro deals with the problem that the notion of special operator
; is defined differently in different lisps.

; Even though cmu lisp purports to be CLTL2, in fact it does not
; contain a defun for special-form-p and does contain a defun of
; special-operator-p.

; SBCL makes no claim to being CLTL2.  Unfortunately acl2.lisp helpfully
; pushes :CLTL2 to *FEATURES* anyway (for all :ANSI-CL implementations).

  #+(and (not DRAFT-ANSI-CL-2) CLTL2
         (not cmu) (not sbcl) (not clisp) (not ccl))
  `(common-lisp::special-form-p ,name)
  #+ccl
  `(common-lisp::special-operator-p ,name)
  #+(and (not DRAFT-ANSI-CL-2) (not CLTL2)
         (not cmu) (not sbcl) (not clisp) (not ccl))
  `(lisp::special-form-p ,name)
  #+(or (and DRAFT-ANSI-CL-2 (not ccl)) cmu sbcl clisp)
  `(special-operator-p ,name))

(defvar *startup-package-name* "ACL2")
