(MAKE-INSTANTIATIONS)
(MAKE-INST-THMS)
(MULTI-NTHPRED)
(MAKE-MULTI-NTHPRED)
(THIS-STREAM-HIST)
(MAKE-INV-HLP)
(MAKE-INVS)
(INV-DEFUN-EVENTS)
(MAKE-INV-EQUIVS-REC
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(MAKE-INV-EQUIVS)
(INST-MK-CASES
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(INST-HINT)
(MAKE-INV-INST-THMS)
(MAKE-UPDATE-HISTS)
(MAKE-IHS-NAMES)
(IND-INST-NAMES)
(MAIN-INV-EXPAND)
(INV-EXPAND)
(INV-INST-ALTS)
(INV-INSTS)
(IND-BLOCK-CALLS)
(MAKE-C-VEC-SPLIT-EXPAND
 (21 1 (:REWRITE O<=-O-FINP-DEF))
 (13 13 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (9 9 (:REWRITE USB-LINEAR-REWRITE))
 (9 9 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (9 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (2 1 (:REWRITE AC-<))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE <-+-CONSTANT-CONSTANT))
 )
(HINT-C-VEC-SPLIT)
(MAKE-CASES
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(HINT-SPLIT
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
