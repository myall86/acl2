(|itr_tmp_11|)
(|$itr_loop_iter_fibs_3|
 (97 97 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (36 2 (:REWRITE O<=-O-FINP-DEF))
 (28 28 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (20 13 (:REWRITE DEFAULT-+-2))
 (15 7 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (11 7 (:REWRITE DEFAULT-<-1))
 (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 1 (:REWRITE O-FIRST-EXPT-<))
 (8 2 (:REWRITE AC-<))
 (7 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE O-FIRST-COEFF-<))
 (4 4 (:REWRITE NATP-RW))
 (4 2 (:REWRITE O-INFP-O-FINP-O<=))
 (4 2 (:DEFINITION TRUE-LISTP))
 (2 2 (:REWRITE |a < b & b < c  =>  a < c|))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(|itr_iter_fibs_3|)
(|$itr_0_typep|)
(|itr_fib|)
