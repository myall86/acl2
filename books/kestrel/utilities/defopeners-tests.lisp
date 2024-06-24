; Tests of the defopeners utility
;
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "defopeners")
(include-book "deftest")

;;example:
(deftest
  (defun sum-list1 (lst)
    (if (endp lst)
        0
      (+ (first lst) (sum-list1 (rest lst)))))

  (defopeners sum-list1)

;expected result (these should be redundant):  FIXME would like to wrap these in a must-be-redundant...

  (must-be-redundant
   (defthm sum-list1-base
     (implies (endp lst)
              (equal (sum-list1 lst)
                     0))))

  (must-be-redundant
   (defthm sum-list1-unroll
     (implies (not (endp lst))
              (equal (sum-list1 lst)
                     (+ (first lst) (sum-list1 (rest lst))))))))

;test :verbose t
(deftest
  (defun sum-list1 (lst)
    (if (endp lst)
        0
      (+ (first lst) (sum-list1 (rest lst)))))

  (defopeners sum-list1 :verbose t))


;test :disable option
(deftest
  (defun sum-list1 (lst)
    (if (endp lst)
        0
      (+ (first lst) (sum-list1 (rest lst)))))

  (defopeners sum-list1 :disable t)

  (assert-event (disabledp 'SUM-LIST1-BASE))
  (assert-event (disabledp 'SUM-LIST1-UNROLL))
  )



;fixme make these tests local and simplify if possible:

(deftest
  (defun sum-pairs2 (lst)
    (if (endp lst)
        0
      (let ((pair (first lst)))
        (if (equal 0 (car pair)) ;dumb code; just to put an IF inside the let
            (+ (cdr pair) (sum-pairs2 (rest lst)))
          (+ (car pair) (cdr pair) (sum-pairs2 (rest lst)))))))

  (defopeners sum-pairs2))

(deftest
  (defun sum-pairs3 (lst)
    (if (endp lst)
        0
      (let ((rest-answer (sum-pairs3 (rest lst))))
        (+ (car (first lst)) (cdr (first lst)) rest-answer))))

  (defopeners sum-pairs3))

(set-ignore-ok t) ;TODO: Should not be needed

;;FIXME: Is the LET handled right?
(deftest
  (defun sum-list4 (lst)
    (if (endp lst)
        0
      (let ((rest (rest lst)))
        (if (endp rest) ;dumb, but this gets and IF with base case and recursive branches inside the LET
            (first lst)
          (+ (first lst) (sum-list4 (rest lst)))))))

  (defopeners sum-list4)

  (must-be-redundant
   (defthmd sum-list4-base-1
     (implies (endp lst)
              (equal (sum-list4 lst)
                     '0))))

  (must-be-redundant
   (DEFTHM SUM-LIST4-BASE-2
     (IMPLIES (AND (NOT (ENDP LST))
                   (LET ((REST (CDR LST))) (ENDP REST)))
              (EQUAL (SUM-LIST4 LST)
                     (CAR LST)))))

  (must-be-redundant
   (DEFTHM SUM-LIST4-UNROLL
     (IMPLIES (AND (NOT (ENDP LST))
                   (not (LET ((REST (CDR LST)))
                             (ENDP REST))))
              (EQUAL (SUM-LIST4 LST)
                     (BINARY-+ (CAR LST) (SUM-LIST4 (CDR LST))))))))

;test of the mutual recursion version
(deftest
  (include-book "kestrel/terms-light/sublis-var-simple" :dir :system)
  (defopeners sublis-var-simple)
  (must-be-redundant
   (defthm sublis-var-simple-base-1
     (implies (atom term)
              (equal (sublis-var-simple alist term)
                     ((lambda (res term) (if res (cdr res) term))
                      (assoc-equal term alist)
                      term))))
   (defthm sublis-var-simple-base-2
     (implies (and (not (atom term))
                   (eq 'quote (car term)))
              (equal (sublis-var-simple alist term) term)))
   (defthm sublis-var-simple-unroll
     (implies (if (not (atom term))
                  (not (eq 'quote (car term)))
                'nil)
              (equal (sublis-var-simple alist term)
                     (cons (car term)
                           (sublis-var-simple-lst alist (cdr term))))))))


;;test of the special handling for 0-ary functions (which get expanded during normalization)

(deftest
  (defun 0ary () t)

  (defun list-of-trues (n)
    (if (zp n)
        nil
      (cons (0ary)
            (list-of-trues (+ -1 n)))))

  (defopeners list-of-trues)
  )


;TODO: Get this to pass:
;; ;;test for non-0ary function that returns nil (which get expanded during normalization)

;; (deftest
;;   (defun const-function (x y) (declare (ignore x y)) nil)

;;   (defun list-of-nils (n)
;;     (if (zp n)
;;         nil
;;       (cons (const-function n n)
;;             (list-of-nils (+ -1 n)))))

;;   (defopeners list-of-nils)

;;   )


;; Test of the :suffix option:

(deftest
  (defun sum-list1 (lst)
    (if (endp lst)
        0
      (+ (first lst) (sum-list1 (rest lst)))))

  (defopeners sum-list1 :suffix -foo)

;expected result (these should be redundant):  FIXME would like to wrap these in a must-be-redundant...

  (must-be-redundant
   (defthm sum-list1-base-foo
     (implies (endp lst)
              (equal (sum-list1 lst)
                     0))))

  (must-be-redundant
   (defthm sum-list1-unroll-foo
     (implies (not (endp lst))
              (equal (sum-list1 lst)
                     (+ (first lst) (sum-list1 (rest lst))))))))

;; This gave a pretty bad result before we changed defopeners to remove
;; guard-holders.
(deftest
  (defund myrev (x)
    (mbe :logic (if (consp x)
                    (append (myrev (cdr x)) (list (car x)))
                  nil)
         :exec (revappend x nil)))
  (defopeners myrev)
  (must-be-redundant
   (DEFTHM
     MYREV-BASE
     (IMPLIES (NOT (CONSP X))
              (EQUAL (MYREV X) 'NIL)))
   (DEFTHM MYREV-UNROLL
     (IMPLIES (CONSP X)
              (EQUAL (MYREV X)
                     (BINARY-APPEND (MYREV (CDR X))
                                    (CONS (CAR X) 'NIL)))))))

;; Example showing repeated terms in the generated rules
(deftest
  (defun weird-len (x)
    (if (atom x)
        0
      (let ((res (len (cdr x))))
        (if (equal res 4)
            5
          (if (equal res 5)
              6
            ;; consider also a version where res is passed to the recursive call:
            (+ 1 (weird-len (cdr x))))))))
  (defopeners weird-len)

  (must-be-redundant
   ;; TODO: Note that (len (cdr x)) appears 3 times in this.  Improve
   ;; defopeners to avoid that, perhaps using a binding hyp (but consider that
   ;; you can't have more than one binding hyp for a var, but you can re-bind
   ;; a let var).  There is also repetition in some of the base case rules
   (DEFTHM WEIRD-LEN-UNROLL
     (IMPLIES (AND (NOT (ATOM X))
                   (not (LET ((RES (LEN (CDR X))))
                             (EQUAL RES '4)))
                   (not (LET ((RES (LEN (CDR X))))
                             (EQUAL RES '5))))
              (EQUAL (WEIRD-LEN X)
                     (BINARY-+ '1 (WEIRD-LEN (CDR X)))))
     :HINTS
     (("Goal"
       :EXPAND ((WEIRD-LEN X))
       :IN-THEORY (UNION-THEORIES '(WEIRD-LEN$NOT-NORMALIZED)
                                  (THEORY 'MINIMAL-THEORY)))))))

;; Test that uses :hyps (non-recursive function)
(deftest
  (defopeners natp :hyps ((syntaxp (quotep x))))
  (must-be-redundant
   (defthm natp-base
     (implies (syntaxp (quotep x))
              (equal (natp x)
                     (if (integerp x) (not (< x '0)) 'nil))))))

;; Test that uses :hyps (recursive function)
(deftest
  (defopeners binary-append :hyps ((syntaxp (quotep x))))
  (must-be-redundant
   (DEFTHM BINARY-APPEND-BASE
     (IMPLIES (AND (SYNTAXP (QUOTEP X))
                   (ENDP X))
              (EQUAL (BINARY-APPEND X Y) Y)))
   (DEFTHM BINARY-APPEND-UNROLL
     (IMPLIES (and (SYNTAXP (QUOTEP X))
                   (NOT (ENDP X)))
              (EQUAL (BINARY-APPEND X Y)
                     (CONS (CAR X)
                           (BINARY-APPEND (CDR X) Y))))
     :HINTS
     (("Goal"
       :EXPAND ((BINARY-APPEND X Y))
       :IN-THEORY (UNION-THEORIES '(BINARY-APPEND$NOT-NORMALIZED)
                                  (THEORY 'MINIMAL-THEORY)))))))

;; Test with uses :hyps with more than 1 hyp (non-recursive function)
(deftest
  (defopeners natp :hyps ((syntaxp (quotep x)) (< x 0)))
  (must-be-redundant
   (DEFTHM NATP-BASE
     (IMPLIES (and (SYNTAXP (QUOTEP X))
                   (< X 0))
                (EQUAL (NATP X)
                       (IF (INTEGERP X) (NOT (< X '0)) 'NIL))))))

;; Test that uses :hyps with more than 1 hyp (recursive function)
(deftest
  (defopeners binary-append :hyps ((syntaxp (quotep x)) (< x y)))
  (must-be-redundant
   (DEFTHM BINARY-APPEND-BASE
     (IMPLIES (and (SYNTAXP (QUOTEP X))
                   (< X Y)
                   (ENDP X))
              (EQUAL (BINARY-APPEND X Y) Y)))
   (DEFTHM BINARY-APPEND-UNROLL
     (IMPLIES (and (SYNTAXP (QUOTEP X))
                   (< X Y)
                   (NOT (ENDP X)))
              (EQUAL (BINARY-APPEND X Y)
                     (CONS (CAR X)
                           (BINARY-APPEND (CDR X) Y)))))))
