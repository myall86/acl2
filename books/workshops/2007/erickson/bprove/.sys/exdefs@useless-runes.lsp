(ILEN)
(ROT2)
(RV1)
(G0)
(IFN0)
(T0
 (37 29 (:REWRITE DEFAULT-CDR))
 (37 29 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE CDR-CONS))
 (9 9 (:REWRITE CAR-CONS))
 (4 2 (:DEFINITION TRUE-LISTP))
 )
(IFN1)
(T1
 (69 39 (:REWRITE CONS-AP))
 (42 6 (:DEFINITION BINARY-APPEND))
 (36 36 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 )
(G1)
(IFN2)
(T2
 (28 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 5 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(IFN3)
(T3
 (28 28 (:REWRITE DEFAULT-CDR))
 )
(G2)
(G3)
(IFN4)
(T4
 (167 91 (:REWRITE DEFAULT-CDR))
 (145 69 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE CDR-CONS))
 (9 9 (:REWRITE CAR-CONS))
 )
(IFN5)
(T5
 (49 9 (:DEFINITION BINARY-APPEND))
 (29 27 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE CONS-AP))
 (18 1 (:DEFINITION ROT2))
 (12 10 (:REWRITE DEFAULT-CAR))
 )
(IFN6)
(T6
 (36 33 (:REWRITE DEFAULT-CDR))
 (20 17 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE CONS-AP))
 )
(G4)
(IFN7)
(T7
 (204 132 (:REWRITE DEFAULT-CDR))
 (155 83 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE CDR-CONS))
 (24 24 (:REWRITE CAR-CONS))
 (10 10 (:REWRITE T4))
 )
