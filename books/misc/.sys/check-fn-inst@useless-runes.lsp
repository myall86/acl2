(SUBST-TO-TRIVIAL-FORMULAS
 (42 42 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-CDR))
 )
(F
 (1 1 (:TYPE-PRESCRIPTION F))
 )
(F-PRESERVES-LEN)
(G)
(LEN-REVAPPEND
 (54 26 (:REWRITE DEFAULT-+-2))
 (34 26 (:REWRITE DEFAULT-+-1))
 (21 15 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(MY-TEST
 (14 2 (:REWRITE DEFAULT-COERCE-3))
 (9 3 (:DEFINITION REVAPPEND))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(H)
