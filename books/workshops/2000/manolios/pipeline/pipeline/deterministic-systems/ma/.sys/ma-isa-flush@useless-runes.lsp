(FLUSH-STEP-MA
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(FLUSHED-MA
 (1 1 (:TYPE-PRESCRIPTION FLUSHED-MA))
 )
(GOOD-MA)
(MA-TO-ISA)
(MA-RANK)
(WF-REL)
(B)
(RANK)
(R)
(WF-REL-FC)
(B-FC)
(RANK-FC)
(R-FC)
(B-IS-A-WF-BISIM-CORE
 (89118 89118 (:REWRITE NTH-CONS-OPEN))
 (7043 7043 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6399 6003 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5170 4721 (:REWRITE DEFAULT-CAR))
 (2525 2525 (:REWRITE UPDATE-NTH-CONS-OPEN))
 (2010 2010 (:REWRITE FOLD-CONSTS-IN-+))
 (1837 1837 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1633 1202 (:REWRITE DEFAULT-CDR))
 (265 265 (:TYPE-PRESCRIPTION FLUSHED-MA))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(CON-TO-ABS-TYPE
 (3089 3089 (:REWRITE NTH-CONS-OPEN))
 (405 287 (:REWRITE DEFAULT-+-2))
 (372 372 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (372 372 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (292 292 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (100 100 (:REWRITE UPDATE-NTH-CONS-OPEN))
 (88 82 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE FOLD-CONSTS-IN-+))
 (35 35 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (14 14 (:TYPE-PRESCRIPTION FLUSHED-MA))
 )
(ABS-STEP-TYPE
 (15 15 (:REWRITE NTH-CONS-OPEN))
 (9 5 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CON-STEP-TYPE
 (63 63 (:REWRITE NTH-CONS-OPEN))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE DEFAULT-+-2))
 (5 3 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE UPDATE-NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CON-NOT-ABS)
(ABS-NOT-CON)
(B-IS-AN-EQUIVALENCE)
(RANK-WELL-FOUNDED
 (12 12 (:REWRITE NTH-CONS-OPEN))
 (6 1 (:REWRITE ABS-NOT-CON))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 1 (:DEFINITION ISA-P))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:TYPE-PRESCRIPTION ISA-P))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(EXISTS-W-SUCC-FOR-U-WEAK-WITNESS-CONSTRAINT)
(EXISTS-W-SUCC-FOR-U-WEAK)
(EXISTS-W-SUCC-FOR-U-WEAK-SUFF)
(EXISTS-W-SUCC-FOR-S-WEAK-WITNESS-CONSTRAINT)
(EXISTS-W-SUCC-FOR-S-WEAK)
(EXISTS-W-SUCC-FOR-S-WEAK-SUFF)
(EXISTS-W-SUCC-FOR-U-WEAK-FC)
(EXISTS-W-SUCC-FOR-S-WEAK-FC)
(B-IS-A-WF-BISIM-WEAK)
(EXISTS-W-SUCC-FOR-U)
(EXISTS-W-SUCC-FOR-U-SUFF)
(EXISTS-W-SUCC-FOR-S)
(EXISTS-W-SUCC-FOR-S-SUFF)
(B-IS-A-WF-BISIM)
