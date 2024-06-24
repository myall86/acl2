; Tests of rewriter-basic
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2022 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; Tests of the basic rewriter

;; TODO: add more tests

;; TODO: Add tests of simplify-dag-basic

;; TODO: test xor normalization

(include-book "rewriter-basic")
(include-book "dag-to-term")
(include-book "std/testing/assert-bang-stobj" :dir :system)
(include-book "kestrel/utilities/deftest" :dir :system)

;;;
;;; tests of simp-term-basic
;;;

;; A simple test that applies the rewrite rule CAR-CONS to simplify a term:
(assert!
 (mv-let (erp term)
   (simp-term-basic '(car (cons (foo x) (foo y)))
                    nil     ; assumptions
                    (make-rule-alist! '(car-cons) (w state))
                    nil     ; interpreted-function-alist
                    nil     ; monitored-symbols
                    t       ; memoizep
                    t       ; count-hits
                    t       ; print
                    nil     ; normalize-xors
                    (w state))
   (and (not erp) ;no error
        ;; resulting term is (FOO X):
        (equal term '(foo x)))))

;; A test that computes a ground term
(assert!
 (mv-let (erp term)
   (simp-term-basic '(binary-+ '3 '4)
                    nil     ; assumptions
                    nil     ; rule-alist
                    nil     ; interpreted-function-alist
                    nil     ; monitored-symbols
                    t       ; memoizep
                    t       ; count-hits
                    t       ; print
                    nil     ; normalize-xors
                    (w state))
   (and (not erp)
        (equal term ''7))))

;; A test that uses an assumption
(assert!
 (mv-let (erp term)
   (simp-term-basic '(natp x)
                    '((natp x))     ; assumptions
                    nil     ; rule-alist
                    nil     ; interpreted-function-alist
                    nil     ; monitored-symbols
                    t       ; memoizep
                    t       ; count-hits
                    t       ; print
                    nil     ; normalize-xors
                    (w state))
   (and (not erp)
        (equal term ''t))))

;; A test that returns a variable
(assert!
 (mv-let (erp res)
   (simp-term-basic '(car (cons x y)) nil (make-rule-alist! '(car-cons) (w state)) nil nil nil nil t nil (w state))
   (and (not erp)
        (equal res 'x))))

;; A test that returns a constant
(assert!
 (mv-let (erp res)
   (simp-term-basic '(car (cons '2 y)) nil (make-rule-alist! '(car-cons) (w state)) nil nil nil nil t nil (w state))
   (and (not erp)
        (equal res ''2))))

;;;
;;; tests of simplify-term-basic
;;;

(assert!
 (mv-let (erp result) ;; result is always DAG or a quotep
   (simplify-term-basic '(binary-+ '0 '0)
                        nil ; assumptions
                        nil ; rule-alist
                        nil ; interpreted-function-alist
                        nil ; monitored-symbols
                        t   ; memoizep
                        t   ; count-hits
                        t       ; print
                        nil     ; normalize-xors
                        (w state))
   (and (not erp)
        (equal result ''0))))

(deftest
  (defthm if-same-branches
    (equal (if test x x)
           x))

  (defstub foo (x) t)

  (assert!
   (mv-let (erp res)
     ;; Returns (mv nil 't).
     (simplify-term-basic '(if (not (consp x))
                               (if (if (integer-listp x) (consp x) 'nil)
                                   (if (member-equal (foo x) x)
                                       (<=-all (foo x) x)
                                     'nil)
                                 't)
                             't)
                          nil
                          (make-rule-alist! '(if-same-branches)
                                           (w state))
                          nil nil nil nil t nil (w state))
     (and (not erp)
          (equal res *t*)))))

;;;
;;; Tests when not memoizing
;;;

;; Test that (non-negated) if tests rewrite to t in the then branch when boolean
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (natp x) (natp x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (natp x) 't y)))))

;; Test that (non-negated) if tests don't rewrite in the then branch when not boolean
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (foo x) (foo x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (foo x) (foo x) y)))))

;; Test that (non-negated) if tests rewrite to nil in the else branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if x y x)
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if x y 'nil)))))

;; Test that negated if tests rewrite to nil in the then branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) (natp x) y)
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) 'nil y)))))

;; Test that negated if tests rewrite to nil in the then branch, negated in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) (not (natp x)) y)
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) 't y)))))

;; Test that negated if tests rewrite to t in the else branch when boolean
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) y (natp x))
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) y 't)))))

;; Test that negated if tests rewrite to t in the else branch when boolean, negated in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) y (not (natp x)))
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) y 'nil)))))

;; Test that negated if tests don't rewrite in the else branch when not boolean
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) y (foo x))
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) y (foo x))))))

;; Special case: Test that negated if tests rewrite in the else branch when negated there, even when not boolean.
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) y (not (foo x)))
                        nil
                        nil
                        nil nil nil nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) y 'nil)))))

;;;
;;; Tests when not memoizing (no context info should be used)
;;;

;; Non-negated test in then-branch (boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (natp x) (natp x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (natp x) (natp x) y)))))

;; Non-negated test in else-branch (boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (natp x) y (natp x))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (natp x) y (natp x))))))

;; Non-negated test in then-branch (not boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (foo x) (foo x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (foo x) (foo x) y)))))

;; Non-negated test in else-branch (not boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (foo x) y (foo x))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (foo x) y (foo x))))))

;; Negated test in then-branch (boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) (not (natp x)) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) (not (natp x)) y)))))

;; Negated test in then-branch (boolean), no negation in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) (natp x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) (natp x) y)))))

;; Negated test in else-branch (boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) y (not (natp x)))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) y (not (natp x)))))))

;; Negated test in else-branch (boolean), no negation in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (natp x)) y (natp x))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (natp x)) y (natp x))))))

;; Negated test in then-branch (not boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) (not (foo x)) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) (not (foo x)) y)))))

;; Negated test in then-branch (not boolean), no negation in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) (foo x) y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) (foo x) y)))))

;; Negated test in else-branch (not boolean)
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) y (not (foo x)))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) y (not (foo x)))))))

;; Negated test in else-branch (not boolean), no negation in branch
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (foo x)) y (foo x))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (foo x)) y (foo x))))))

;; Test with a non-boolean assumption that appears in an IF test.  This works
;; because we store :non-nil for it in the node-replacement-array
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (member-equal x y) w z)
                        '((member-equal x y))
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) 'w))))

;; The known assumption appears in a call of NOT.
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (member-equal x y)) w z)
                        '((member-equal x y))
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) 'z))))

;; Test with a non-boolean assumption that appears in an IF test.  This works
;; because we store :non-nil for it in the node-replacement-array
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (member-equal x y) w z)
                        '((not (member-equal x y)))
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) 'z))))

;; The known assumption appears in a call of NOT.
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (member-equal x y)) w z)
                        '((not (member-equal x y)))
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t nil (w state))
   (and (not erp)
        (equal (dag-to-term res) 'w))))



;; Note that the IF-TEST is an equality that should be used for replacement
(deftest
  (defthm if-same (equal (if x y y) y))
  (assert!
   (mv-let (erp res)
     (simplify-term-basic '(if (equal x '3) (equal (binary-+ '1 x) '4) 't)
                          '()
                          (make-rule-alist! '(if-same)
                                            (w state))
                          nil nil
                          nil ; can't be memoizing if we want to use contexts
                          nil t nil (w state))
     (and (not erp)
          (equal (dag-to-term res) ''t)))))

;; Note that the IF-TEST has a term that is needed for free var matching
(deftest
  (defthmd <-trans-simple
    (implies (and (< x z) (< z y))
             (< x y)))
  (assert!
   (mv-let (erp res)
     (simplify-term-basic '(if (< x y) (if (< y z) (< x z) blah) blah2)
                          '()
                          (make-rule-alist! '(<-TRANS-simple)
                                            (w state))
                          nil
                          '(<-trans-simple)
                          nil nil t nil (w state))
     (and (not erp)
          (equal (dag-to-term res) '(if (< x y) (if (< y z) 't blah) blah2))))))

;;; test (DEF-SIMPLIFIED-DAG-BASIC *foo* '((2 if 1 0 '3) (1 . 't) (0 . x)))

;;; tests with xor:

(assert!
 (mv-let (erp res)
   (simplify-term-basic '(bvxor '32 x y)
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t t (w state))
   (and (not erp)
        (equal (dag-to-term res) '(bvxor '32 x y)))))

(assert!
 (mv-let (erp res)
   (simplify-term-basic '(bvxor '32 x (bvxor '32 y x))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t t (w state))
   (and (not erp)
        (equal (dag-to-term res) '(bvchop '32 y)))))

(assert!
 (mv-let (erp res)
   (simplify-term-basic '(bvxor '32 '16 (bvxor '32 x '1))
                        nil
                        (make-rule-alist! nil
                                         (w state))
                        nil nil t nil t t (w state))
   (and (not erp)
        (equal (dag-to-term res) '(bvxor '32 '17 x)))))

;; tests about the memoization:

;; no change, since memoizing prevents us from using the context
(assert!
 (mv-let (erp res)
   (simplify-term-basic '(if (not (consp x)) (equal '3 (car x)) (equal '4 (car x)))
                        nil
                        (make-rule-alist! '(default-car) (w state))
                        nil nil
                        t ;memoize=t
                        nil t t (w state))
   (and (not erp)
        (equal (dag-to-term res) '(if (not (consp x)) (equal '3 (car x)) (equal '4 (car x)))))))
