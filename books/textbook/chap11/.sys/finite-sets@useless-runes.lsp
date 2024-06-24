(IN-COUNT)
(==-COUNT)
(IN
 (1639 774 (:REWRITE DEFAULT-+-2))
 (1108 774 (:REWRITE DEFAULT-+-1))
 (560 140 (:DEFINITION INTEGER-ABS))
 (560 70 (:DEFINITION LENGTH))
 (350 70 (:DEFINITION LEN))
 (195 195 (:REWRITE DEFAULT-CDR))
 (182 154 (:REWRITE DEFAULT-<-1))
 (181 154 (:REWRITE DEFAULT-<-2))
 (144 144 (:REWRITE DEFAULT-CAR))
 (140 140 (:REWRITE DEFAULT-UNARY-MINUS))
 (70 70 (:TYPE-PRESCRIPTION LEN))
 (70 70 (:REWRITE DEFAULT-REALPART))
 (70 70 (:REWRITE DEFAULT-NUMERATOR))
 (70 70 (:REWRITE DEFAULT-IMAGPART))
 (70 70 (:REWRITE DEFAULT-DENOMINATOR))
 (70 70 (:REWRITE DEFAULT-COERCE-2))
 (70 70 (:REWRITE DEFAULT-COERCE-1))
 )
(EXAMPLE-54)
(INDUCT-HINT1
 (258 124 (:REWRITE DEFAULT-+-2))
 (173 124 (:REWRITE DEFAULT-+-1))
 (104 26 (:REWRITE COMMUTATIVITY-OF-+))
 (104 26 (:DEFINITION INTEGER-ABS))
 (104 13 (:DEFINITION LENGTH))
 (65 13 (:DEFINITION LEN))
 (45 35 (:REWRITE DEFAULT-<-2))
 (44 35 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE DEFAULT-CDR))
 (36 36 (:REWRITE FOLD-CONSTS-IN-+))
 (26 26 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 24 (:REWRITE DEFAULT-CAR))
 (13 13 (:TYPE-PRESCRIPTION LEN))
 (13 13 (:REWRITE DEFAULT-REALPART))
 (13 13 (:REWRITE DEFAULT-NUMERATOR))
 (13 13 (:REWRITE DEFAULT-IMAGPART))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 (13 13 (:REWRITE DEFAULT-COERCE-2))
 (13 13 (:REWRITE DEFAULT-COERCE-1))
 )
(CONS-PRESERVES-SUBSET
 (28 28 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE DEFAULT-CAR))
 )
(SUBSET-REFLEXIVE
 (24 24 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE DEFAULT-CDR))
 )
(ACL2-COUNT-CONS
 (24 12 (:REWRITE DEFAULT-+-2))
 (16 12 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(IND-2
 (5951 2646 (:REWRITE DEFAULT-+-2))
 (3896 2646 (:REWRITE DEFAULT-+-1))
 (2024 506 (:DEFINITION INTEGER-ABS))
 (2024 253 (:DEFINITION LENGTH))
 (1265 253 (:DEFINITION LEN))
 (719 550 (:REWRITE DEFAULT-<-2))
 (670 550 (:REWRITE DEFAULT-<-1))
 (506 506 (:REWRITE DEFAULT-UNARY-MINUS))
 (253 253 (:TYPE-PRESCRIPTION LEN))
 (253 253 (:REWRITE DEFAULT-REALPART))
 (253 253 (:REWRITE DEFAULT-NUMERATOR))
 (253 253 (:REWRITE DEFAULT-IMAGPART))
 (253 253 (:REWRITE DEFAULT-DENOMINATOR))
 (253 253 (:REWRITE DEFAULT-COERCE-2))
 (253 253 (:REWRITE DEFAULT-COERCE-1))
 )
(SUBSET-TRANSITIVE
 (682 682 (:REWRITE DEFAULT-CAR))
 )
(==-IS-AN-EQUIVALENCE
 (40 7 (:DEFINITION =<))
 (9 9 (:TYPE-PRESCRIPTION IN))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 )
