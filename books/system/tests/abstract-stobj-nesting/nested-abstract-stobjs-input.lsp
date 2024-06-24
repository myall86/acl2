; Copyright (C) 2021, ForrestHunt, Inc.
; Matt Kaufmann
; License: A 3-clause BSD license.  See the LICENSE file distributed with ACL2.

; This file illustrates some ACL2 protections against potential unsoundness
; with nested abstract stobjs.

; Examples 1 and 2 address aliasing when two child stobj fields of an abstract
; stobj are implemented by the same child stobj of a concrete stobj.  Thanks to
; Sol Swords for supplying the stobj-let form for the first example below,
; which provided critical guidance in the development of the appropriate check.

; Examples 3 and 4 deal with interrupts that put one into an :illegal-state.

; Example 5 isn't about nesting of stobjs, but is convenient to put into this
; file.  It deals with the requirement that the :logic and :exec functions have
; the same input and output arities even without having the stobjs-in and
; stobjs-out match.

; Example 6 shows an error when attempting to bind other than a child stobj.

; Example 7 illustrates some errors, including when the :updater isn't
; appropriate.

; Example 8 illustrates some errors not related to nesting of stobjs.  (So
; those probably belong in a different file and directory, but for now we are
; putting them here because it's convenient to do so.

; For a more complex example of nested abstract stobjs, see community book
; two-usuallyequal-nums-stobj.lisp.

(in-package "ACL2")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstobj sub$c fld0$c)
(defstobj top$c (sub0$c :type sub$c) misc$c)

(defun sub$ap (x)
  (declare (xargs :guard t))
  (and (consp x)
       (null (cdr x))
       (or (natp (car x))
           (null (car x)))))

(defun top$ap (x)
  (declare (xargs :guard t))
  (and (consp x)
       (consp (cdr x))
       (null (cddr x))
       (sub$ap (car x))))

(defun create-top$a ()
  (declare (xargs :guard t))
  (list (list nil) nil))

(defun sub0$a (x)
  (declare (xargs :guard (top$ap x)))
  (car x))

(defun-nx update-sub0$a (sub$c x)
  (declare (xargs :stobjs sub$c
                  :guard (and (top$ap x)
                              (natp (fld0$c sub$c)))))
  (list sub$c (cadr x)))

(defun misc$a (x)
  (declare (xargs :guard (top$ap x)))
  (cadr x))

(defun-nx top-corr (top$c x)
  (declare (xargs :stobjs top$c))
  (equal top$c x))

(DEFTHM CREATE-TOP{CORRESPONDENCE}
        (TOP-CORR (CREATE-TOP$C) (CREATE-TOP$A))
        :RULE-CLASSES NIL)

(DEFTHM CREATE-TOP{PRESERVED}
        (TOP$AP (CREATE-TOP$A))
        :RULE-CLASSES NIL)

(DEFTHM SUB0{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP$C TOP) (TOP$AP TOP))
                 (EQUAL (SUB0$C TOP$C) (SUB0$A TOP)))
        :RULE-CLASSES NIL)

(DEFTHM UPDATE-SUB0{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP$C TOP)
                      (SUB$CP SUB$C)
                      (TOP$AP TOP)
                      (NATP (FLD0$C SUB$C)))
                 (TOP-CORR (UPDATE-SUB0$C SUB$C TOP$C)
                           (UPDATE-SUB0$A SUB$C TOP)))
        :RULE-CLASSES NIL)

(defthm equal-len-1
  (equal (equal (len x) 1)
         (and (consp x)
              (atom (cdr x)))))

(DEFTHM UPDATE-SUB0{PRESERVED}
        (IMPLIES (AND (SUB$CP SUB$C)
                      (TOP$AP TOP)
                      (NATP (FLD0$C SUB$C)))
                 (TOP$AP (UPDATE-SUB0$A SUB$C TOP)))
        :RULE-CLASSES NIL)

(DEFTHM SUB0-AGAIN{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP$C TOP) (TOP$AP TOP))
                 (EQUAL (SUB0$C TOP$C) (SUB0$A TOP)))
        :RULE-CLASSES NIL)

(DEFTHM UPDATE-SUB0-AGAIN{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP$C TOP)
                      (SUB$CP SUB$C)
                      (TOP$AP TOP)
                      (NATP (FLD0$C SUB$C)))
                 (TOP-CORR (UPDATE-SUB0$C SUB$C TOP$C)
                           (UPDATE-SUB0$A SUB$C TOP)))
        :RULE-CLASSES NIL)

(DEFTHM UPDATE-SUB0-AGAIN{PRESERVED}
        (IMPLIES (AND (SUB$CP SUB$C)
                      (TOP$AP TOP)
                      (NATP (FLD0$C SUB$C)))
                 (TOP$AP (UPDATE-SUB0$A SUB$C TOP)))
        :RULE-CLASSES NIL)

(DEFTHM MISC{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP$C TOP) (TOP$AP TOP))
                 (EQUAL (MISC$C TOP$C) (MISC$A TOP)))
        :RULE-CLASSES NIL)

; The child stobj fields sub0 and sub0-again both correspond to the same stobj
; field, sub0$c, of a concrete stobj, top$c.
(defabsstobj top
  :recognizer (topp :logic top$ap :exec top$cp)
  :creator (create-top :logic create-top$a :exec create-top$c)
  :corr-fn top-corr
  :exports ((sub0 :logic sub0$a :exec sub0$c :updater update-sub0)
            (sub0-again :logic sub0$a :exec sub0$c :updater update-sub0)
            (update-sub0 :logic update-sub0$a :exec update-sub0$c)
            (misc :logic misc$a :exec misc$c)))

; Sol Swords supplied the following variant of top.  It checks that congruent
; stobjs can be accepted even with :updater fields (which will differ between
; the two abstract stobjs).  Since this was added after an earlier version of
; this file, we immediately undo it in order to avoid a name conflict with a
; later abstract stobj also named top2.
(defabsstobj top2 :foundation top$c
  :recognizer (top2p :logic top$ap :exec top$cp)
  :creator (create-top2 :logic create-top$a :exec create-top$c)
  :corr-fn top-corr
  :exports ((sub02 :logic sub0$a :exec sub0$c :updater update-sub02)
            (sub02-again :logic sub0$a :exec sub0$c :updater update-sub02)
            (update-sub02 :logic update-sub0$a :exec update-sub0$c)
            (misc2 :logic misc$a :exec misc$c))
  :congruent-to top)
(u) ; see comment above

; The following event succeeds; no surprises here.  But below we show how an
; attempt to update both stobj fields fails, as it should.
(defun foo (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top)))
	     (sub$c sub$c-val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-val (fld0$c sub$c)))
	       (mv sub$c sub$c-val))
	     (mv top sub$c-val)))

; Prepare to try to bind both child stobj fields of the abstract stobj.
(defstobj sub$c-cong fld0$c-cong :congruent-to sub$c)

; The following fails, as it should, with this message:
;   ACL2 Error in ( DEFUN FOO-BAD ...):  The stobj-let bindings [...]
;   ultimately access the same field SUB0$C of concrete stobj TOP$C....
; FAILS!
(defun foo-bad (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top))
	      (sub$c-cong (sub0-again top)
; The following isn't needed if we include update-sub0-again among the exports
; of top.
                       update-sub0))
	     (sub$c sub$c-val sub$c-cong sub$c-cong-val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-cong (update-fld0$c 2 sub$c-cong))
		    (sub$c-val (fld0$c sub$c))
		    (sub$c-cong-val (fld0$c sub$c-cong)))
	       (mv sub$c sub$c-val sub$c-cong sub$c-cong-val))
	     (mv top sub$c-val sub$c-cong-val)))

; Before the check was installed that caused the error above, the following
; could be admitted, in spite of contradiccting the evaluation shown below.
#||
(thm (implies (topp top)
              (mv-let (top sub$c-val sub$c-cong-val)
                (foo top)
                (declare (ignore top sub$c-cong-val))
                (equal sub$c-val 1))))


ACL2 !>(foo top)
(<top> 2 2)
ACL2 !>
||#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The following variant of Example 1 shows introduces abstract stobj top2 with
; foundational stobj top.  Top2 has two child stobj fields (sub02 and
; sub02-again) with different corresponding child stobj fields (sub0 and
; sub0-again) of the foundational stobj, top.  But those two fields, in turn,
; correspond to the same child stobj field of the foundational stobj top$c of
; top.

(DEFTHM CREATE-TOP2{CORRESPONDENCE}
        (TOP-CORR (CREATE-TOP) (CREATE-TOP$A))
        :RULE-CLASSES NIL)

(DEFTHM CREATE-TOP2{PRESERVED}
        (TOP$AP (CREATE-TOP$A))
        :RULE-CLASSES NIL)

(DEFTHM SUB02{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP TOP2) (TOP$AP TOP2))
                 (EQUAL (SUB0 TOP) (SUB0$A TOP2)))
        :RULE-CLASSES NIL)

(DEFTHM SUB02-AGAIN{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP TOP2) (TOP$AP TOP2))
                 (EQUAL (SUB0-AGAIN TOP) (SUB0$A TOP2)))
        :RULE-CLASSES NIL)

(DEFTHM UPDATE-SUB02{CORRESPONDENCE}
        (IMPLIES (AND (TOP-CORR TOP TOP2)
                      (SUB$CP SUB$C)
                      (TOP$AP TOP2)
                      (NATP (FLD0$C SUB$C)))
                 (TOP-CORR (UPDATE-SUB0 SUB$C TOP)
                           (UPDATE-SUB0$A SUB$C TOP2)))
        :RULE-CLASSES NIL)

(DEFTHM UPDATE-SUB02{PRESERVED}
        (IMPLIES (AND (SUB$CP SUB$C)
                      (TOP$AP TOP2)
                      (NATP (FLD0$C SUB$C)))
                 (TOP$AP (UPDATE-SUB0$A SUB$C TOP2)))
        :RULE-CLASSES NIL)

(defabsstobj top2
  :foundation top
  :recognizer (top2p :logic top$ap :exec topp)
  :creator (create-top2 :logic create-top$a :exec create-top)
  :corr-fn top-corr
  :exports ((sub02 :logic sub0$a :exec sub0 :updater update-sub02)
            (sub02-again :logic sub0$a :exec sub0-again :updater update-sub02)
            (update-sub02 :logic update-sub0$a :exec update-sub0)))

(defun foo2 (top2)
  (declare (xargs :stobjs top2))
  (stobj-let ((sub$c (sub02 top2)))
	     (sub$c sub$c-val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-val (fld0$c sub$c)))
	       (mv sub$c sub$c-val))
	     (mv top2 sub$c-val)))

; The following fails, as it should, with this message:
;   ACL2 Error in ( DEFUN FOO2-BAD ...):  The stobj-let bindings [...]
;   ultimately access the same field SUB0$C of concrete stobj TOP$C....
;;; FAILS!
(defun foo2-bad (top2)
  (declare (xargs :stobjs top2))
  (stobj-let ((sub$c (sub02 top2))
	      (sub$c-cong (sub02-again top2)
                        update-sub02))
             (sub$c sub$c-val sub$c-cong sub$c-cong-val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-cong (update-fld0$c 2 sub$c-cong))
		    (sub$c-val (fld0$c sub$c))
		    (sub$c-cong-val (fld0$c sub$c-cong)))
	       (mv sub$c sub$c-val sub$c-cong sub$c-cong-val))
	     (mv top2 sub$c-val sub$c-cong-val)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deflabel start-example-3)

(include-book "two-usuallyequal-nums-stobj")

(defun interrupt-0 (two-usuallyequal-nums)

; Unlike the two exampes below, there is no :illegal-state here: ACL2 knows
; that no update has been interrupted, since the producer variables are
; disjoint from those bound in the bindings.

  (declare (xargs :stobjs two-usuallyequal-nums))
  (stobj-let ((n$ (uenslot1 two-usuallyequal-nums)))
             (val) ; producer variable is not bound above
             (let* ((old (n$val n$))
                    (v (prog2$ (er hard? 'top "Interrupt!")
                               (n$val n$))))
		(declare (ignore old))
               v)
             (mv val two-usuallyequal-nums)))

; An interrupt is caused by the ER call above, but we are not left in an
; :illegal state.
(interrupt-0 two-usuallyequal-nums)

(value-triple (equal (fields-of-two-usuallyequal-nums two-usuallyequal-nums)
                     '(:N 0 :N2 0 :VALID NIL))
              :check t)

(update-two-usuallyequal-nums 3 two-usuallyequal-nums)

(value-triple (equal (fields-of-two-usuallyequal-nums two-usuallyequal-nums)
                     '(:N 3 :N2 3 :VALID t))
              :check t)

(defun interrupt-1 (two-usuallyequal-nums)
  (declare (xargs :stobjs two-usuallyequal-nums))
  (stobj-let ((n$ (uenslot1 two-usuallyequal-nums)))
             (n$)
             (let* ((old (n$val n$))
                    (n$ (prog2$ (er hard? 'top "Interrupt!")
                                (update-n$val old n$))))
               n$)
             two-usuallyequal-nums))

; Causes hard error and puts us into an :illegal-state:
(interrupt-1 two-usuallyequal-nums)

:continue-from-illegal-state

(defun interrupt-2 (two-usuallyequal-nums)
  (declare (xargs :stobjs two-usuallyequal-nums))
  (stobj-let ((n$ (uenslot1 two-usuallyequal-nums)))
             (n$)
             (let* ((old (n$val n$))
                    (n$ (update-n$val (1+ old) n$))
                    (n$ (prog2$ (er hard? 'top "Interrupt!")
                                (update-n$val old n$))))
               n$)
             two-usuallyequal-nums))

; Causes hard error and puts us into an :illegal-state:
(interrupt-2 two-usuallyequal-nums)

:continue-from-illegal-state

; Inconsistent state!
(assert-event (equal (fields-of-two-usuallyequal-nums two-usuallyequal-nums)
                     '(:N 4 :N2 3 :VALID T)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 4 (involving swap-stobjs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ubt 'start-example-3) ; avoid name conflict in included books

(include-book "two-ordered-nums-stobj")

(update-two-ordered-nums 3 5 two-ordered-nums)

(assert-event (equal (fields-of-two-ordered-nums two-ordered-nums)
                     '(:N 3 :N2 5 :VALID T)))

(defun interrupt-3 (two-ordered-nums)
  (declare (xargs :stobjs two-ordered-nums))
  (stobj-let ((n$ (uenslot1 two-ordered-nums))
              (n$2 (uenslot2 two-ordered-nums)))
             (n$ n$2)
             (mv-let (n$ n$2)
               (swap-stobjs n$ n$2)
               (let ((n$ (update-n$val (n$2val n$2) n$)))
                 (prog2$ (er hard? 'top "Stopping!")
                         (let ((n$ (update-n$val (1+ (n$2val n$2)) n$)))
                           (swap-stobjs n$ n$2)))))
             two-ordered-nums))

(interrupt-3 two-ordered-nums)

:continue-from-illegal-state

; Inconsistent state!
(assert-event (equal (fields-of-two-ordered-nums two-ordered-nums)
                     '(:N 3 :N2 3 :VALID T)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Example 5a below shows that we do not permit mismatches due to different
; input arities.  This is a variation of a test in the book
; input-signature-mismatch-with-logic-ok.lisp (and hence isn't really about
; stobj fields of abstract stobjs, in spite of being in this directory), which
; we place in this -input.lsp file simply so that we can check the error
; message.

; We do, however, permit stobj mismatches provided the input and arities match,
; as shown in Example 5b below.

;;; Example 5a

(defstobj st1 fld1)

(defstobj st3$c (fld3 :type (array t (8))))

(defun st3$ap (x)
  (declare (xargs :guard t))
  (declare (ignore x))
  t)

(defun create-st3$a ()
  (declare (xargs :guard t))
  nil)

(defun st3$corr (st3$c st3$a)
  (declare (xargs :stobjs st3$c
                  :guard t))
  (declare (ignore st3$c st3$a))
  t)

(defun bad3$a (x y st3$a)
  (declare (xargs :guard (and (natp x) (< x 8))))
  (mv x (and y st3$a nil)))

(defun bad3$c (x y st1 st3$c)
  (declare (xargs :stobjs (st1 st3$c)
                  :guard (and (natp x) (< x 8)))
           (ignore st1))
  (let ((st3$c (update-fld3i x y st3$c)))
    (mv x st3$c)))

; Fails due to mismatcch
(defabsstobj st3
  :exports ((bad3 :logic bad3$a :exec bad3$c)))

;;; Example 5b

(defstobj st3-aux fld3-aux)

(defun good3$a (x y st3$a)
  (declare (xargs :guard (and (natp x) (< x 8))))
  (mv x (and y st3$a nil) y))

(defun good3$c (x st3-aux st3$c)
  (declare (xargs :stobjs (st3$c st3-aux)
                  :guard (and (natp x) (< x 8))))
  (mv x st3$c st3-aux))

(DEFTHM CREATE-ST3{CORRESPONDENCE}
        (ST3$CORR (CREATE-ST3$C) (CREATE-ST3$A))
        :RULE-CLASSES NIL)

(DEFTHM CREATE-ST3{PRESERVED}
        (ST3$AP (CREATE-ST3$A))
        :RULE-CLASSES NIL)

(DEFTHM GOOD3{CORRESPONDENCE}
        (IMPLIES (AND (ST3$CORR ST3$C ST3)
                      (NATP X)
                      (< X 8))
                 (LET ((LHS (GOOD3$C X ST3-AUX ST3$C))
                       (RHS (GOOD3$A X ST3-AUX ST3)))
                      (AND (EQUAL (MV-NTH 0 LHS) (MV-NTH 0 RHS))
                           (ST3$CORR (MV-NTH 1 LHS) (MV-NTH 1 RHS))
                           (EQUAL (MV-NTH 2 LHS) (MV-NTH 2 RHS)))))
        :RULE-CLASSES NIL)

(DEFTHM GOOD3{PRESERVED}
        (IMPLIES (AND (ST3$AP ST3) (NATP X) (< X 8))
                 (ST3$AP (MV-NTH 1 (GOOD3$A X ST3-AUX ST3))))
        :RULE-CLASSES NIL)

(defabsstobj st3
  :exports ((good3 :logic good3$a :exec good3$c)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 6
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Here is a variant of foo, above, that attempts to bind to other than a child
; stobj.
; FAILS:
(defun bind-non-child-stobj-field (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top))
              (misc-val (misc top)))
	     (sub$c sub$c-val val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-val (fld0$c sub$c)))
	       (mv sub$c sub$c-val misc-val))
	     (mv top sub$c-val misc-val)))

; Here is a variant of foo, above, that attempts to bind to a non-field.
; FAILS:
(defun bind-non-function (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top))
              (misc-val (abc top)))
	     (sub$c sub$c-val val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-val (fld0$c sub$c)))
	       (mv sub$c sub$c-val misc-val))
	     (mv top sub$c-val misc-val)))

; As above, but try to bind to a function call,
; (foo (top) => (mv top sub$c-val)).

(defun sub0-val (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top)))
	     (sub$c-val)
	     (fld0$c sub$c)
	     sub$c-val))

; FAILS:
(defun bind-non-field-function (top)
  (declare (xargs :stobjs top))
  (stobj-let ((sub$c (sub0 top))
              (val (sub0-val top)))
	     (sub$c sub$c-val val)
	     (let* ((sub$c (update-fld0$c 1 sub$c))
		    (sub$c-val (fld0$c sub$c)))
	       (mv sub$c sub$c-val misc-val))
	     (mv top sub$c-val misc-val)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 7
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Some error checking....

(defstobj st4$c-fld fld4$c-sub)

(defstobj st4$c
  (fld4$c :type st4$c-fld)
  st4$c-misc)

(defun-nx st4$ap (x)
  (declare (xargs :guard t))
  (st4$cp x))

(defun-nx st4$corr (x y)
  (declare (xargs :guard t))
  (equal x y))

(defun-nx create-st4$a ()
  (declare (xargs :guard t))
  (create-st4$c))

(defun-nx fld4$a (x)
  (declare (xargs :guard (st4$cp x)))
  (fld4$c x))

(defun-nx update-fld4$a (v x)
  (declare (xargs :guard (and (st4$cp x)
                              (st4$c-fldp v))))
  (update-fld4$c v x))

; Error: The guard for fld4 is (ST4$CP ST4), which fails to respect
; single-threadedness in that ST4$CP should be applied to ST4$C, not ST4.
; We use skip-proofs to sidestep this having anything to do with the missing
; {CORRESPONDENCE} and {PRESERVED} theorems.
(skip-proofs
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater update-fld4)
            (update-fld4 :logic update-fld4$a :exec update-fld4$c)))
)

; So now let's undo and then do things right, by using non-exec to get around
; the problem reported above.
(ubt 'fld4$a)

(defun-nx fld4$a (x)
  (declare (xargs :guard (non-exec (st4$cp x))))
  (fld4$c x))

(defun-nx update-fld4$a (v x)
  (declare (xargs :guard (non-exec (and (st4$cp x)
                                        (st4$c-fldp v)))))
  (update-fld4$c v x))

(defun-nx st4$a-misc (x)
  (declare (xargs :guard (non-exec (st4$cp x))))
  (st4$c-misc x))

(defun-nx update-st4$a-misc (v x)
  (declare (xargs :guard (non-exec (st4$cp x))))
  (update-st4$c-misc v x))

(DEFTHM CREATE-ST4{CORRESPONDENCE}
        (ST4$CORR (CREATE-ST4$C) (CREATE-ST4$A))
        :RULE-CLASSES NIL)

(DEFTHM CREATE-ST4{PRESERVED}
        (ST4$AP (CREATE-ST4$A))
        :RULE-CLASSES NIL)

(DEFTHM FLD4{CORRESPONDENCE}
        (IMPLIES (AND (ST4$CORR ST4$C ST4)
                      (PROG2$ (THROW-NONEXEC-ERROR :NON-EXEC '(ST4$CP X))
                              (ST4$CP ST4)))
                 (EQUAL (FLD4$C ST4$C) (FLD4$A ST4)))
        :RULE-CLASSES NIL)

(DEFTHM
 UPDATE-FLD4{CORRESPONDENCE}
 (IMPLIES
  (AND
     (ST4$CORR ST4$C ST4)
     (PROG2$ (THROW-NONEXEC-ERROR :NON-EXEC '(AND (ST4$CP X) (ST4$C-FLDP V)))
             (AND (ST4$CP ST4)
                  (ST4$C-FLDP ST4$C-FLD))))
  (ST4$CORR (UPDATE-FLD4$C ST4$C-FLD ST4$C)
            (UPDATE-FLD4$A ST4$C-FLD ST4)))
 :RULE-CLASSES NIL)

(DEFTHM
 UPDATE-FLD4{PRESERVED}
 (IMPLIES
  (AND
     (ST4$AP ST4)
     (PROG2$ (THROW-NONEXEC-ERROR :NON-EXEC '(AND (ST4$CP X) (ST4$C-FLDP V)))
             (AND (ST4$CP ST4)
                  (ST4$C-FLDP ST4$C-FLD))))
  (ST4$AP (UPDATE-FLD4$A ST4$C-FLD ST4)))
 :RULE-CLASSES NIL)

; OK
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater update-fld4)
            (update-fld4 :logic update-fld4$a :exec update-fld4$c)))

; Now let's undo that and modify it to see some errors.
(u)

; "Symbols in the main Lisp package,such as NIL, may not be defined or
; constrained."
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater nil)
            (nil :logic update-fld4$a :exec update-fld4$c)))

; Redefinition error (system function)
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater nth)
            (nth :logic update-fld4$a :exec update-fld4$c)))

(defstub stub (x) t)

; Redefinition error (user-defined function)
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater stub)
            (stub :logic update-fld4$a :exec update-fld4$c)))

(ubt 'stub)

; OK; same as no :updater
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater nil)))

; More errors to come after undoing....
(u)

(defun-nx fld4$a-non-gv (x)
  (declare (xargs :guard (non-exec (st4$cp x))
                  :verify-guards nil))
  (fld4$c x))

; Error: :logic fn is not guard-verified
(defabsstobj st4
  :exports ((fld4 :logic fld4$a-non-gv :exec fld4$c)))

(ubt 'fld4$a-non-gv)

; "The name FLD4 is introduced more than once by a DEFABSSTOBJ event."
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater update-fld4)
            (fld4 :logic fld4$a :exec fld4$c :updater update-fld4)))

; "However, there is no function spec for FOO."
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater foo)
            (update-fld4 :logic update-fld4$a :exec update-fld4$c)))

; "However, there is no function spec for UPDATE-FLD4."
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater update-fld4)))

; Wrong :exec updater:
(defabsstobj st4
  :exports ((fld4 :logic fld4$a :exec fld4$c :updater update-fld4)
            (update-fld4 :logic fld4$a :exec fld4$c)))

; ST4$C-MISC is a non-stobj field accessor:
(defabsstobj st4
  :exports ((st4-misc :logic st4$a-misc :exec st4$c-misc
                      :updater update-st4-misc)
            (update-st4-misc :logic update-st4$a-misc :exec update-st4$c-misc)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Example 8
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Errors not involving :updater can go in this section.

(defstobj st5$c fld5$c)

(defun-nx st5$ap (x)
  (declare (xargs :guard t))
  (st5$cp x))

(defun-nx fld5$a (st5$c)
  (declare (xargs :stobjs st5$c))
  (fld5$c st5$c))

(defun-nx create-st5$a()
  (declare (xargs :guard t))
  (create-st5$c))

(defun-nx st5$corr (x y)
  (equal x y))

; Error: st5$c, the foundational stobj, is a stobj of fld5$a, the :logic fn.
; A comment about defabsstobj-axiomatic-defs in source function
; translate-absstobj-field explains this error, as an alternative to a much
; more confusing error that would occur during submission of the events
; supporting such a defabsstobj event.
(skip-proofs
(defabsstobj st5
  :exports ((fld5 :logic fld5$a :exec fld5$c)))
)

; The ACL2 sources mention the following comment a couple of times (as of June,
; 2021):
;
; Note that translate-absstobj-field guarantees that except for the creator
; function, the formals of an exec function must include the foundational
; stobj.
;
; Let's test that claim.

(defun-nx fld5$c-alt (x)
  (declare (xargs :guard (non-exec (st5$cp x))))
  (fld5$c x))

; Error: "The :FOUNDATIONAL stobj name, ST5$C, is not a known stobj parameter
; of :EXEC function FLD5$C-ALT for field (FLD5 :LOGIC FLD5$A :EXEC
; FLD5$C-ALT)."
(defabsstobj st5
  :exports ((fld5 :logic fld5$a :exec fld5$c-alt)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Use a trust tag to avoid certification failure.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defttag :bogus-cert)
(remove-untouchable illegal-to-certify-message nil)
(make-event (pprogn (f-put-global 'illegal-to-certify-message nil state)
                    (value '(value-triple :certification-made-ok))))
(defttag nil)

(value-triple "Completed")
