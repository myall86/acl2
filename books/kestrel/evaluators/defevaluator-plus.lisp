; A nicer interface to defevaluator
;
; Copyright (C) 2014-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; See tests in defevaluator-plus-tests.lisp

(include-book "kestrel/utilities/pack" :dir :system) ; reduce?
(include-book "kestrel/utilities/make-function-calls-on-formals" :dir :system)

;; A nicer interface to defevaluator.  Improvements include:
;; 1. looks up the arities of the functions in the world.
;; 2. auto-generates the name of the -list function that will be mutually recursive with the term evaluator.
;; 3. always uses the :namedp t option to defevaluator, for nicer constraint names
;; 4. automatically generates various theorems
;; 5. generates improved versions of some constraints (currently, just one)

(defun defevaluator+-fn (name fns state)
  (declare (xargs :guard (and (symbolp name)
                              (symbol-listp fns))
                  :stobjs state))
  (let* ((list-name (add-suffix-to-fn name "-LIST"))
         (all-true-name (pack$ 'all-eval-to-true-with- name))
         (all-false-name (pack$ 'all-eval-to-false-with- name)))
    `(progn
       ;; The main defevaluator call generated:
       (defevaluator ,name ,list-name
         ,(make-function-calls-on-formals fns (w state))
         :namedp t)

       ;; Improved constraint(s):

       (defthm ,(pack$ name '-of-lambda-better)
         (implies (consp (car x)) ;; no need to assume (consp x) since it's implied by this
                  (equal (,name x a)
                         (,name (caddr (car x))
                                (pairlis$ (cadr (car x))
                                          (,list-name (cdr x) a))))))

       ;; Ours is better:
       (in-theory (disable ,(pack$ name '-of-lambda)))

       ;; Extra theorems:

       (defthm ,(add-suffix-to-fn list-name "-OF-APPEND")
         (equal (,list-name (append terms1 terms2) a)
                (append (,list-name terms1 a)
                        (,list-name terms2 a)))
         :hints (("Goal" :in-theory (enable append))))

       (defthm ,(pack$ 'len-of- list-name)
         (equal (len (,list-name terms a))
                (len terms))
         :hints (("Goal" :in-theory (enable append (:I len)))))

       (defthm ,(add-suffix-to-fn list-name "-OF-TRUE-LIST_FIX")
         (equal (,list-name (true-list-fix terms) a)
                (,list-name terms a))
         :hints (("Goal" :in-theory (enable append (:I len)))))

       ;; Helps prove the :functional-instance used to switch a theorem to a richer evaluator.
       ;; TODO: Consider disabling by default and instead providing a tool to lift a rule to a richer evaluator.
       (defthm ,(pack$ name '-of-fncall-args-back)
         (implies (and (consp x)
                       (not (equal (car x) 'quote)))
                  (equal (,name (cons (car x) (kwote-lst (,list-name (cdr x) a))) nil)
                         (,name x a)))
         :hints (("Goal" :use (:instance ,(pack$ name '-of-fncall-args))
                  :in-theory nil)))

       (theory-invariant (incompatible (:rewrite ,(pack$ name '-of-fncall-args))
                                       (:rewrite ,(pack$ name '-of-fncall-args-back))))

       ;; These help with clause-processors.  We only generate them if the
       ;; evaluator knows about IF:
       ,@(and (member-eq 'if fns)
              `((defthm ,(add-suffix-to-fn list-name "-OF-DISJOIN2-IFF")
                  (iff (,name (disjoin2 term1 term2) a)
                       (or (,name term1 a)
                           (,name term2 a)))
                  :hints (("Goal" :in-theory (enable disjoin2))))

                (defthm ,(add-suffix-to-fn list-name "-OF-DISJOIN-OF-CONS-IFF")
                  (iff (,name (disjoin (cons term terms)) a)
                       (or (,name term a)
                           (,name (disjoin terms) a)))
                  :hints (("Goal" :in-theory (enable disjoin))))


                ;;
                ;; "all eval to true"
                ;;

                (defund ,all-true-name (terms a)
                  (declare (xargs :guard (and (pseudo-term-listp terms)
                                              (alistp a))))
                  (if (endp terms)
                      t
                    (and (,name (first terms) a)
                         (,all-true-name (rest terms) a))))

                (defthm ,(pack$ all-true-name '-when-not-consp)
                  (implies (not (consp terms))
                           (,all-true-name terms a))
                  :hints (("Goal" :in-theory (enable ,all-true-name))))

                (defthm ,(pack$ all-true-name '-of-cons)
                  (equal (,all-true-name (cons term terms) a)
                         (and (,name term a)
                              (,all-true-name terms a)))
                  :hints (("Goal" :in-theory (enable ,all-true-name))))

                (defthm ,(pack$ all-true-name '-of-append)
                  (equal (,all-true-name (append terms1 terms2) a)
                         (and (,all-true-name terms1 a)
                              (,all-true-name terms2 a)))
                  :hints (("Goal" :in-theory (enable ,all-true-name))))

                (defthm ,(pack$ name '-of-conjoin)
                  (iff (,name (conjoin terms) a)
                       (,all-true-name terms a))
                  :hints (("Goal" :in-theory (enable ,all-true-name))))

                (defthm ,(pack$ name '-when- all-true-name '-and-member-equal)
                  (implies (and (,all-true-name terms a)
                                (member-equal term terms))
                           (,name term a))
                  :hints (("Goal" :in-theory (enable ,all-true-name))))

                ;;
                ;; "all eval to false"
                ;;

                (defund ,all-false-name (terms a)
                  (declare (xargs :guard (and (pseudo-term-listp terms)
                                              (alistp a))))
                  (if (endp terms)
                      t
                    (and (not (,name (first terms) a))
                         (,all-false-name (rest terms) a))))

                (defthm ,(pack$ all-false-name '-when-not-consp)
                  (implies (not (consp terms))
                           (,all-false-name terms a))
                  :hints (("Goal" :in-theory (enable ,all-false-name))))

                (defthm ,(pack$ all-false-name '-of-cons)
                  (equal (,all-false-name (cons term terms) a)
                         (and (not (,name term a))
                              (,all-false-name terms a)))
                  :hints (("Goal" :in-theory (enable ,all-false-name))))

                (defthm ,(pack$ all-false-name '-of-append)
                  (equal (,all-false-name (append terms1 terms2) a)
                         (and (,all-false-name terms1 a)
                              (,all-false-name terms2 a)))
                  :hints (("Goal" :in-theory (enable ,all-false-name))))

                (defthm ,(pack$ name '-of-disjoin)
                  (iff (,name (disjoin terms) a)
                       (not (,all-false-name terms a)))
                  :hints (("Goal" :in-theory (enable ,ALL-FALSE-NAME))))

                (defthm ,(pack$ 'not- name '-when- all-false-name '-and-member-equal)
                  (implies (and (,all-false-name terms a)
                                (member-equal term terms))
                           (not (,name term a)))
                  :hints (("Goal" :in-theory (enable ,all-false-name))))

                (defthm ,(pack$ all-false-name '-when-equal-of-disjoin-and-quote-nil)
                  (implies (equal (disjoin terms) *nil*)
                           (,all-false-name terms a))
                  :hints (("Goal" :in-theory (enable ,all-false-name
                                                     disjoin))))

                (defthm ,(pack$ 'not- all-false-name '-when-equal-of-disjoin-and-quote-t)
                  (implies (equal (disjoin terms) *t*)
                           (not (,all-false-name terms a)))
                  :hints (("Goal" :in-theory (enable ,all-false-name
                                                     disjoin)))))))))

;; Example call (defevaluator+ math-and-if-ev binary-+ binary-* if).
;; Takes the name of the evaluator to create, followed by the names of all the
;; functions it should "know" about.
(defmacro defevaluator+ (name &rest fns)
  `(make-event (defevaluator+-fn ',name ',fns state)))
