(MA-=)
(GOOD-MA)
(MA-TO-ISA)
(MA-RANK)
(WF-REL)
(B)
(RANK)
(R-INT)
(R)
(R-SUFF)
(WF-REL-FC)
(B-FC)
(RANK-FC)
(R-INT-FC)
(R-FC)
(B-IS-A-WF-BISIM-CORE
 (1172 1122 (:REWRITE DEFAULT-+-2))
 (1166 1122 (:REWRITE DEFAULT-+-1))
 (1016 1008 (:REWRITE DEFAULT-CAR))
 (736 728 (:REWRITE DEFAULT-CDR))
 (577 577 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (276 276 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (100 100 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (53 28 (:REWRITE DEFAULT-*-2))
 (53 28 (:REWRITE DEFAULT-*-1))
 (20 20 (:TYPE-PRESCRIPTION ISA-STATE))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(CON-TO-ABS-TYPE
 (69 69 (:REWRITE NTH-CONS-OPEN))
 (17 11 (:REWRITE DEFAULT-+-2))
 (16 11 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE UPDATE-NTH-CONS-OPEN))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ABS-STEP-TYPE
 (19 19 (:REWRITE NTH-CONS-OPEN))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 1 (:REWRITE DEFAULT-*-2))
 (2 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CON-STEP-TYPE
 (83 83 (:REWRITE NTH-CONS-OPEN))
 (14 8 (:REWRITE DEFAULT-+-2))
 (11 8 (:REWRITE DEFAULT-+-1))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE UPDATE-NTH-CONS-OPEN))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:REWRITE DEFAULT-*-2))
 (2 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CON-NOT-ABS)
(ABS-NOT-CON)
(B-IS-AN-EQUIVALENCE)
(RANK-WELL-FOUNDED
 (6 1 (:REWRITE ABS-NOT-CON))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (4 1 (:DEFINITION ISA-P))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
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
