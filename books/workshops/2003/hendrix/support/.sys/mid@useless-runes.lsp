(MID
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ID-BOOTSTRAP
 (108 7 (:REWRITE ROW-CDR-EMPTY))
 (85 52 (:REWRITE DEFAULT-+-2))
 (64 8 (:DEFINITION VZERO))
 (52 52 (:REWRITE DEFAULT-+-1))
 (45 45 (:META CANCEL_PLUS-LESSP-CORRECT))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 (21 1 (:REWRITE COL-CDR-EMPTY))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (11 5 (:REWRITE EQUAL-CONSTANT-+))
 (6 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:TYPE-PRESCRIPTION COL-CDR))
 )
(MATRIX-ID)
(M-EMPTY-ID
 (24 3 (:DEFINITION VZERO))
 (21 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(ROW-COUNT-ID)
(COL-COUNT-ID)
(MID
 (74 2 (:DEFINITION MID))
 (34 25 (:REWRITE DEFAULT-+-2))
 (28 28 (:META CANCEL_PLUS-LESSP-CORRECT))
 (27 9 (:REWRITE FOLD-CONSTS-IN-+))
 (25 25 (:REWRITE DEFAULT-+-1))
 (24 3 (:DEFINITION VZERO))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-CAR))
 )
(ID-BY-COL-DEF
 (56 7 (:DEFINITION VZERO))
 (49 36 (:REWRITE DEFAULT-+-2))
 (39 13 (:REWRITE FOLD-CONSTS-IN-+))
 (36 36 (:REWRITE DEFAULT-+-1))
 (17 17 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-CAR))
 )
