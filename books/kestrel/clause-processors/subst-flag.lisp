; A clause-processor for use by my-make-flag
;
; Copyright (C) 2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "kestrel/utilities/forms" :dir :system)
(include-book "kestrel/utilities/quote" :dir :system)
(include-book "kestrel/terms-light/free-vars-in-term" :dir :system)
(include-book "tools/flag" :dir :system)
(include-book "kestrel/evaluators/equality-eval" :dir :system)
(local (include-book "kestrel/lists-light/union-equal" :dir :system))
(local (include-book "kestrel/lists-light/len" :dir :system))
;(local (include-book "kestrel/typed-lists-light/pseudo-term-listp" :dir :system))
(local (include-book "kestrel/alists-light/symbol-alistp" :dir :system))
(local (include-book "kestrel/alists-light/strip-cdrs" :dir :system))
;(local (include-book "kestrel/alists-light/alistp" :dir :system))
(local (include-book "kestrel/utilities/pseudo-termp" :dir :system))
(local (include-book "kestrel/arithmetic-light/plus" :dir :system))

;; TODO: Need to learn disequalities from IFs...

(local (in-theory (enable pseudo-termp-when-symbolp)))

(local (in-theory (disable disjoin
                           symbol-alistp
                           strip-cdrs
                           assoc-equal
                           ;; member-equal
                           default-car ; for speed
                           default-cdr ; for speed
                           consp-from-len-cheap ; for speed
                           ;; pseudo-term-listp
                           )))

(in-theory (disable mv-nth))

(defthm pseudo-termp-of-cdr-of-assoc-equal
  (implies (pseudo-term-listp (strip-cdrs alist))
           (pseudo-termp (cdr (assoc-equal term alist))))
  :hints (("Goal" :in-theory (enable assoc-equal))))

;;Returns (mv var const) or (mv nil nil)
(defund equated-var-and-const-from-term (term)
  (declare (xargs :guard (pseudo-termp term)))
  (if (call-of 'equal term)
      (let ((farg1 (farg1 term))
            (farg2 (farg2 term)))
        (if (and (variablep farg1)
                 (quotep farg2))
            (mv farg1 farg2)
          (if (and (variablep farg2)
                   (quotep farg1))
              (mv farg2 farg1)
            (mv nil nil))))
    (mv nil nil)))

(defthm symbolp-of-mv-nth-0-of-equated-var-and-const-from-term
  (implies (pseudo-termp term)
           (symbolp (mv-nth 0 (equated-var-and-const-from-term term))))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-term))))

(defthm pseudo-termp-of-mv-nth-1-of-equated-var-and-const-from-term
  (implies (pseudo-termp term)
           (pseudo-termp (mv-nth 1 (equated-var-and-const-from-term term))))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-term))))

(defthm equated-var-and-const-from-term-helper
  (implies (equality-eval term a)
           (equal (equality-eval (mv-nth 0 (equated-var-and-const-from-term term)) a)
                  (equality-eval (mv-nth 1 (equated-var-and-const-from-term term)) a)))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-term))))

;;Returns (mv var const) or (mv nil nil)
(defund equated-var-and-const-from-negation-of-term (term)
  (declare (xargs :guard (pseudo-termp term)))
  (if (call-of 'not term)
      (equated-var-and-const-from-term (farg1 term))
    (mv nil nil)))

(defthm symbolp-of-mv-nth-0-of-equated-var-and-const-from-negation-of-term
  (implies (pseudo-termp term)
           (symbolp (mv-nth 0 (equated-var-and-const-from-negation-of-term term))))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-negation-of-term))))

(defthm pseudo-termp-of-mv-nth-1-of-equated-var-and-const-from-negation-of-term
  (implies (pseudo-termp term)
           (pseudo-termp (mv-nth 1 (equated-var-and-const-from-negation-of-term term))))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-negation-of-term))))

(defthm equated-var-and-const-from-negation-of-term-helper
  (implies (not (equality-eval term a))
           (equal (equality-eval (mv-nth 0 (equated-var-and-const-from-negation-of-term term)) a)
                  (equality-eval (mv-nth 1 (equated-var-and-const-from-negation-of-term term)) a)))
  :hints (("Goal" :in-theory (enable equated-var-and-const-from-negation-of-term))))

(mutual-recursion

 ;; Extends the lists of TRUE-TERMS and FALSE-TERMS with facts implied by TERM.
 ;; Returns (mv true-terms false-terms).
 (defund add-true-and-false-implications-of-term (term true-terms false-terms)
   (declare (xargs :guard (and (pseudo-termp term)
                               (pseudo-term-listp true-terms)
                               (pseudo-term-listp false-terms))))
   (if nil ; todo
       ;; (and (call-of 'equal term)
       ;;      (= 2 (len (fargs term))))
       (let ((farg1 (farg1 term))
             (farg2 (farg2 term)))
         (mv (cons `(equal ,farg1 ,farg2) ; include both orientations of the equal (TODO: Avoid this)
                   (cons `(equal ,farg2 ,farg1)
                         true-terms))
             false-terms))
     (if (and (call-of 'not term)
              (= 1 (len (fargs term))))
         (add-true-and-false-implications-of-negation-of-term (farg1 term) true-terms false-terms)
       ;; todo: extract conjuncts if possible?
       (mv (cons term true-terms) false-terms))))

 ;; Extends the lists of TRUE-TERMS and FALSE-TERMS with facts implied by (not TERM).
 ;; Returns (mv true-terms false-terms).
 (defund add-true-and-false-implications-of-negation-of-term (term true-terms false-terms)
   (declare (xargs :guard (and (pseudo-termp term)
                               (pseudo-term-listp true-terms)
                               (pseudo-term-listp false-terms))))
   (if (and (call-of 'not term)
            (= 1 (len (fargs term))))
       (add-true-and-false-implications-of-term (farg1 term) true-terms false-terms)
     ;; todo: extract disjuncts and negate?
     (mv true-terms (cons term false-terms)))))

(make-flag add-true-and-false-implications-of-term)

(defthm-flag-add-true-and-false-implications-of-term
  (defthm add-true-and-false-implications-of-term-type
    (implies (and (pseudo-term-listp true-terms)
                  (pseudo-term-listp false-terms)
                  (pseudo-termp term))
             (and (pseudo-term-listp (mv-nth 0 (add-true-and-false-implications-of-term term true-terms false-terms)))
                  (pseudo-term-listp (mv-nth 1 (add-true-and-false-implications-of-term term true-terms false-terms)))))
    :flag add-true-and-false-implications-of-term)
  (defthm add-true-and-false-implications-of-negation-of-term-type
    (implies (and (pseudo-term-listp true-terms)
                  (pseudo-term-listp false-terms)
                  (pseudo-termp term))
             (and (pseudo-term-listp (mv-nth 0 (add-true-and-false-implications-of-negation-of-term term true-terms false-terms)))
                  (pseudo-term-listp (mv-nth 1 (add-true-and-false-implications-of-negation-of-term term true-terms false-terms)))))
    :flag add-true-and-false-implications-of-negation-of-term)
  :hints (("Goal" :in-theory (enable add-true-and-false-implications-of-term
                                     add-true-and-false-implications-of-negation-of-term))))

(defthm-flag-add-true-and-false-implications-of-term
  ;; If the term is true, the new facts extracted by add-true-and-false-implications-of-term are (appropriately) true or false.
  (defthm add-true-and-false-implications-of-term-correct
    (implies (and (all-eval-to-true-with-equality-eval true-terms a)
                  (all-eval-to-false-with-equality-eval false-terms a)
                  (equality-eval term a))
             (and (all-eval-to-true-with-equality-eval (mv-nth 0 (add-true-and-false-implications-of-term term true-terms false-terms)) a)
                  (all-eval-to-false-with-equality-eval (mv-nth 1 (add-true-and-false-implications-of-term term true-terms false-terms)) a)))
    :flag add-true-and-false-implications-of-term)
  ;; If the term is false, the new facts extracted by add-true-and-false-implications-of-negation-of-term are (appropriately) true or false.
  (defthm add-true-and-false-implications-of-negation-of-term-correct
    (implies (and (all-eval-to-true-with-equality-eval true-terms a)
                  (all-eval-to-false-with-equality-eval false-terms a)
                  (not (equality-eval term a)))
             (and (all-eval-to-true-with-equality-eval (mv-nth 0 (add-true-and-false-implications-of-negation-of-term term true-terms false-terms)) a)
                  (all-eval-to-false-with-equality-eval (mv-nth 1 (add-true-and-false-implications-of-negation-of-term term true-terms false-terms)) a)))
    :flag add-true-and-false-implications-of-negation-of-term)
  :hints (("Goal" :in-theory (enable add-true-and-false-implications-of-term
                                     add-true-and-false-implications-of-negation-of-term))))

;; Check whether (equal X Y) or (equal Y X) is among the TERMS.
(defund equality-among-termsp (x y terms)
  (declare (xargs :guard (and (pseudo-termp x)
                              (pseudo-termp y)
                              (pseudo-term-listp terms))))
  (if (endp terms)
      nil
    (let ((term (first terms)))
      (if (and (call-of 'equal term)
               (= 2 (len (fargs term))))
          (let ((farg1 (farg1 term))
                (farg2 (farg2 term)))
            (or (and (equal x farg1) (equal y farg2))
                (and (equal x farg2) (equal y farg1))
                (equality-among-termsp x y (rest terms))))
        (equality-among-termsp x y (rest terms))))))

;; When the equality of X and Y is among the FALSE-TERMS, then the evaluations of X and Y differ.
(defthm not-equal-of-equality-eval-and-equality-eval-when-equality-among-termsp-1
  (implies (and (all-eval-to-false-with-equality-eval false-terms a)
                (equality-among-termsp x y false-terms)
                (pseudo-termp x)
                (pseudo-termp y))
           (not (equal (equality-eval x a)
                       (equality-eval y a))))
  :hints (("Goal" :in-theory (enable equality-among-termsp all-eval-to-false-with-equality-eval))))

;; When the equality of X and Y is among the TRUE-TERMS, then the evaluations of X and Y are equal.
(defthm equal-of-equality-eval-and-equality-eval-when-equality-among-termsp-2
  (implies (and (all-eval-to-true-with-equality-eval true-terms a)
                (equality-among-termsp x y true-terms)
                ;(pseudo-termp x)
                ;(pseudo-termp y)
                )
           (equal (equal (equality-eval x a)
                         (equality-eval y a))
                  t))
  :hints (("Goal" :in-theory (enable equality-among-termsp all-eval-to-true-with-equality-eval))))

;; Returns :true, :false, or :unknown
(defund resolve-test (term true-terms false-terms)
  (declare (xargs :guard (and (pseudo-termp term)
                              (pseudo-term-listp true-terms)
                              (pseudo-term-listp false-terms))))
  (if (quotep term)
      (if (unquote term) :true :false)
    (if (member-equal term true-terms)
        :true
      (if (member-equal term false-terms)
          :false
        (if (and (or (call-of 'eq term)
                     (call-of 'eql term)
                     (call-of 'equal term))
                 (= 2 (len (fargs term))))
            (if (equality-among-termsp (farg1 term) (farg2 term) true-terms)
                :true
              (if (equality-among-termsp (farg1 term) (farg2 term) false-terms)
                  :false
                :unknown))
          :unknown)))))

(defthm resolve-test-correct-1
  (implies (and (all-eval-to-true-with-equality-eval true-terms a)
                (all-eval-to-false-with-equality-eval false-terms a)
                (equal :false (resolve-test term true-terms false-terms))
                (pseudo-termp term))
           (not (equality-eval term a)))
  :hints (("Goal" :in-theory (e/d (resolve-test) (equality-eval-of-variable)))))

(defthm resolve-test-correct-2
  (implies (and (all-eval-to-true-with-equality-eval true-terms a)
                (all-eval-to-false-with-equality-eval false-terms a)
                (equal :true (resolve-test term true-terms false-terms)))
           (equality-eval term a))
  :hints (("Goal" :in-theory (e/d (resolve-test) (equality-eval-of-variable)))))

(mutual-recursion
 ;; Subst variables according to ALIST and also simplify certain calls of equal, eql, eq, and if.
 (defund sublis-var-and-simplify (alist term true-terms false-terms)
   (declare (xargs :measure (acl2-count term)
                   :guard (and (symbol-alistp alist) ; usually a symbol-term-alistp
                               (pseudo-termp term)
                               (pseudo-term-listp (strip-cdrs alist))
                               (pseudo-term-listp true-terms)
                               (pseudo-term-listp false-terms))
                   :verify-guards nil ; done below
                   ))
   (if (variablep term)
       (let ((res (assoc-eq term alist)))
         (if res (cdr res) term))
     (let ((fn (ffn-symb term)))
       (if (eq 'quote fn)
           term
         (if (and (eq 'if fn)
                  (= 3 (len (fargs term))))
             (let* ((new-test (sublis-var-and-simplify alist (farg1 term) true-terms false-terms))
                    (test-result (resolve-test new-test true-terms false-terms)))
               (if (eq :true test-result) ; can resolve the test to true, so use the then branch:
                   (sublis-var-and-simplify alist (farg2 term) true-terms false-terms)
                 (if (eq :false test-result) ; can resolve the test to false, so use the else branch:
                     (sublis-var-and-simplify alist (farg3 term) true-terms false-terms)
                   ;; couldn't resolve the test:
                   `(if ,new-test
                        ;; then branch:
                        ,(mv-let (true-terms false-terms)
                           (add-true-and-false-implications-of-term new-test true-terms false-terms)
                           (sublis-var-and-simplify
                            ;; If the test is (equal <var> <const>) we can
                            ;; replace <var> with <const> in the then branch:
                            (mv-let (var const)
                              (equated-var-and-const-from-term new-test)
                              (if var
                                  (acons var const alist)
                                alist))
                            (farg2 term)
                            true-terms false-terms))
                      ;; else branch:
                      ,(mv-let (true-terms false-terms)
                         (add-true-and-false-implications-of-negation-of-term new-test true-terms false-terms)
                         (sublis-var-and-simplify
                          ;; If the test is (not (equal <var> <const>)) we can
                          ;; replace <var> with <const> in the else branch:
                          (mv-let (var const)
                            (equated-var-and-const-from-negation-of-term new-test)
                            (if var
                                (acons var const alist)
                              alist))
                          (farg3 term)
                          true-terms false-terms))))))
           (let ((new-args (sublis-var-and-simplify-lst alist (fargs term) true-terms false-terms)))
             (if (and (member-eq fn '(equal eql eq))
                      (= 2 (len new-args)))
                 ;; Special handling for (equal x x) and (eq x x) and (eql x x):
                 (if (equal (first new-args) (second new-args))
                     *t*
                   ;; Special handling for equal of 2 different quoted
                   ;; constants (we know they are different because the equal
                   ;; test above failed):
                   (if (and (myquotep (first new-args)) ;change these to quoteps?
                            (myquotep (second new-args)))
                       *nil*
                     `(,fn ,(first new-args) ,(second new-args))))
               ;; regular function call or lambda:
               ;; Since lambdas are closed, we don't have to do anything to the lambda body:
               (cons fn new-args))))))))

 (defund sublis-var-and-simplify-lst (alist terms true-terms false-terms)
   (declare (xargs :measure (acl2-count terms)
                   :guard (and (symbol-alistp alist)
                               (pseudo-term-listp terms)
                               (pseudo-term-listp (strip-cdrs alist))
                               (pseudo-term-listp true-terms)
                               (pseudo-term-listp false-terms))))
   (if (endp terms)
       nil
     (cons (sublis-var-and-simplify alist (car terms) true-terms false-terms)
           (sublis-var-and-simplify-lst alist (cdr terms) true-terms false-terms)))))

(make-flag sublis-var-and-simplify)

(defthm len-of-sublis-var-and-simplify-lst
  (equal (len (sublis-var-and-simplify-lst alist terms true-terms false-terms))
         (len terms))
  :hints (("Goal" :in-theory (enable (:I len)
                                     sublis-var-and-simplify-lst))))

(defthm-flag-sublis-var-and-simplify
  (defthm pseudo-termp-of-sublis-var-and-simplify
    (implies (and (alistp alist) ; usually a symbol-term-alistp
                  ;(pseudo-term-listp (strip-cars alist))
                  (pseudo-term-listp (strip-cdrs alist))
                  (pseudo-termp term)
                  ;(not (member-equal nil (free-vars-in-term term))) ;needed?
                  )
             (pseudo-termp (sublis-var-and-simplify alist term true-terms false-terms)))
    :flag sublis-var-and-simplify)
  (defthm pseudo-term-listp-of-sublis-var-and-simplify-lst
    (implies (and (alistp alist) ; usually a symbol-term-alistp
                  ;(pseudo-term-listp (strip-cars alist))
                  (pseudo-term-listp (strip-cdrs alist))
                  (pseudo-term-listp terms)
                  ;(not (member-equal nil (free-vars-in-terms terms)))
                  )
             (pseudo-term-listp (sublis-var-and-simplify-lst alist terms true-terms false-terms)))
    :flag sublis-var-and-simplify-lst)
  :hints (("Goal" :expand ((PSEUDO-TERMP TERM)
                           (FREE-VARS-IN-TERMS TERMS)
                           ;;(SUBLIS-VAR-AND-SIMPLIFY-LST ALIST (CDDR TERM))
                           )
           :in-theory (e/d (sublis-var-and-simplify
                            sublis-var-and-simplify-lst
                            ;MEMBER-EQUAL-OF-STRIP-CARS-IFF
                            ;wrap-terms-in-lambdas
                            ;;wrap-term-in-lambda
                            alistp ;why?
                            )
                           (pairlis$
                            SET-DIFFERENCE-EQUAL)))))

(verify-guards sublis-var-and-simplify :hints (("Goal" :in-theory (enable SYMBOLP-WHEN-PSEUDO-TERMP))))

(defthm equality-eval-of-cdr-of-assoc-equal-when-alists-agree
  (implies (and (equal (equality-eval-list (strip-cars alist) a)
                       (equality-eval-list (strip-cdrs alist) a))
                (assoc-equal key alist))
           (equal (equality-eval (cdr (assoc-equal key alist)) a)
                  (equality-eval key a)))
  :hints (("Goal" :in-theory (enable assoc-equal))))

(defthm car-of-sublis-var-and-simplify-lst
  (implies (consp terms)
           (equal (car (sublis-var-and-simplify-lst alist terms true-terms false-terms))
                  (sublis-var-and-simplify alist (car terms) true-terms false-terms)))
  :hints (("Goal" :in-theory (enable sublis-var-and-simplify-lst))))

;; Applying sublis-var-and-simplify doesn't change the meaning of the term, of everything in the ALIST is correct.
(defthm-flag-sublis-var-and-simplify
  (defthm sublis-var-and-simplify-correct
    (implies (and (alistp alist) ; usually a symbol-term-alistp
                  (equal (equality-eval-list (strip-cars alist) a)
                         (equality-eval-list (strip-cdrs alist) a))
                  (pseudo-term-listp (strip-cars alist))
                  (pseudo-term-listp (strip-cdrs alist))
                  (pseudo-termp term)
                  ;;(not (member-equal nil (free-vars-in-term term))) ;needed?
                  (all-eval-to-true-with-equality-eval true-terms a)
                  (all-eval-to-false-with-equality-eval false-terms a))
             (equal (equality-eval (sublis-var-and-simplify alist term true-terms false-terms) a)
                    (equality-eval term a)))
    :flag sublis-var-and-simplify)
  (defthm sublis-var-and-simplify-lst-correct
    (implies (and (alistp alist) ; usually a symbol-term-alistp
                  (equal (equality-eval-list (strip-cars alist) a)
                         (equality-eval-list (strip-cdrs alist) a))
                  (pseudo-term-listp (strip-cars alist))
                  (pseudo-term-listp (strip-cdrs alist))
                  (pseudo-term-listp terms)
                  ;;(not (member-equal nil (free-vars-in-terms terms)))
                  (all-eval-to-true-with-equality-eval true-terms a)
                  (all-eval-to-false-with-equality-eval false-terms a))
             (equal (equality-eval-list (sublis-var-and-simplify-lst alist terms true-terms false-terms) a)
                    (equality-eval-list terms a)))
    :flag sublis-var-and-simplify-lst)
  :hints (("Goal" :expand ((pseudo-termp term)
                           (free-vars-in-terms terms)
                           ;;(sublis-var-and-simplify-lst alist (cddr term))
                           )
           :in-theory (e/d (sublis-var-and-simplify
                            sublis-var-and-simplify-lst
                            ;;member-equal-of-strip-cars-iff
                            ;;wrap-terms-in-lambdas
                            ;;wrap-term-in-lambda
                            equality-eval-of-fncall-args)
                           (pairlis$
                            equality-eval-of-variable
                            set-difference-equal
                            equality-eval-of-fncall-args-back)))))

;;; now map the term processor over every literal of the clause

(defthm equality-eval-of-disjoin-of-sublis-var-and-simplify-lst-special
  (implies (and (alistp a)
                (pseudo-term-listp clause))
           (iff (equality-eval (disjoin (sublis-var-and-simplify-lst nil clause nil nil)) a)
                (equality-eval (disjoin clause) a)))
  :hints (("Goal" :induct (len clause)
           :in-theory (enable (:i len) sublis-var-and-simplify-lst))))

;; Return a single, simplified clause
(defund sublis-var-and-simplify-clause-processor (clause)
  (declare (xargs :guard (pseudo-term-listp clause)))
  (progn$ ;(cw "(Original clause (~x0 literals):~% ~x1.)~%" (len clause) clause)
          (let* ( ;(clause (flatten-disjuncts clause))
                 (clause (sublis-var-and-simplify-lst nil clause nil nil)))
            (progn$ ;(cw "(One New clause (~x0 literals):~% ~x1.)~%" (len clause) clause)
             (list clause)))))

(defthm pseudo-term-list-listp-of-sublis-var-and-simplify-clause-processor
  (implies (pseudo-term-listp clause)
           (pseudo-term-list-listp (sublis-var-and-simplify-clause-processor clause)))
  :hints (("Goal" :in-theory (enable sublis-var-and-simplify-clause-processor))))

;todo: add :well-formedness proof
(defthm sublis-var-and-simplify-clause-processor-correct
  (implies (and (pseudo-term-listp clause)
                (alistp a)
                (equality-eval (conjoin-clauses (sublis-var-and-simplify-clause-processor clause)) a))
           (equality-eval (disjoin clause) a))
  :rule-classes :clause-processor
  :hints (("Goal" :in-theory (enable sublis-var-and-simplify-clause-processor))))
