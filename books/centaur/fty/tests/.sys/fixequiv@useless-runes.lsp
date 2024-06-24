(__DEFFIXTYPE-NAT-EQUIV-MEANS-EQUAL-OF-NFIX)
(__DEFFIXTYPE-INT-EQUIV-MEANS-EQUAL-OF-IFIX)
(FTY::INT-TREE-P
 (242 80 (:REWRITE DEFAULT-+-2))
 (138 80 (:REWRITE DEFAULT-+-1))
 (80 16 (:REWRITE COMMUTATIVITY-OF-+))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (35 21 (:REWRITE DEFAULT-<-2))
 (34 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (31 21 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE FOLD-CONSTS-IN-+))
 (19 19 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FTY::INT-TREE-FLAG
 (288 96 (:REWRITE DEFAULT-+-2))
 (166 96 (:REWRITE DEFAULT-+-1))
 (133 1 (:DEFINITION O-P))
 (100 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (58 1 (:DEFINITION O<))
 (53 43 (:REWRITE DEFAULT-CAR))
 (50 10 (:DEFINITION LEN))
 (50 8 (:DEFINITION O-FIRST-EXPT))
 (46 46 (:TYPE-PRESCRIPTION TWO-NATS-MEASURE))
 (45 29 (:REWRITE DEFAULT-<-2))
 (45 29 (:REWRITE DEFAULT-<-1))
 (43 39 (:REWRITE DEFAULT-CDR))
 (35 17 (:DEFINITION O-FINP))
 (34 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (27 27 (:REWRITE FOLD-CONSTS-IN-+))
 (24 5 (:DEFINITION O-FIRST-COEFF))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:DEFINITION O-RST))
 (12 1 (:REWRITE POSP-REDEFINITION))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (6 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:REWRITE ZP-WHEN-GT-0))
 (4 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE ZP-WHEN-INTEGERP))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FTY::INT-TREE-FLAG-EQUIVALENCES)
(FTY::INT-TREELIST-P-OF-CONS
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(FTY::INT-TREE-P-WHEN-CONSP
 (8 2 (:DEFINITION FTY::INT-TREELIST-P))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(FTY::INT-TREE-P-WHEN-ATOM
 (1 1 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 )
(FTY::INT-TREELIST-P-WHEN-CONSP
 (13 13 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (7 7 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (7 7 (:REWRITE DEFAULT-CDR))
 )
(FTY::INT-TREELIST-P-WHEN-ATOM
 (1 1 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 )
(FTY::INT-TREE-FIX
 (722 18 (:DEFINITION ACL2-COUNT))
 (290 100 (:REWRITE DEFAULT-+-2))
 (176 100 (:REWRITE DEFAULT-+-1))
 (100 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (50 10 (:DEFINITION LEN))
 (35 25 (:REWRITE DEFAULT-<-2))
 (35 25 (:REWRITE DEFAULT-<-1))
 (33 33 (:REWRITE DEFAULT-CDR))
 (32 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (28 28 (:REWRITE FOLD-CONSTS-IN-+))
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FTY::INT-TREE-FIX-FLAG
 (844 20 (:DEFINITION ACL2-COUNT))
 (336 116 (:REWRITE DEFAULT-+-2))
 (204 116 (:REWRITE DEFAULT-+-1))
 (133 1 (:DEFINITION O-P))
 (120 24 (:REWRITE COMMUTATIVITY-OF-+))
 (96 24 (:DEFINITION INTEGER-ABS))
 (96 12 (:DEFINITION LENGTH))
 (60 12 (:DEFINITION LEN))
 (58 1 (:DEFINITION O<))
 (57 47 (:REWRITE DEFAULT-CAR))
 (50 46 (:REWRITE DEFAULT-CDR))
 (50 8 (:DEFINITION O-FIRST-EXPT))
 (49 33 (:REWRITE DEFAULT-<-1))
 (46 46 (:TYPE-PRESCRIPTION TWO-NATS-MEASURE))
 (45 33 (:REWRITE DEFAULT-<-2))
 (35 17 (:DEFINITION O-FINP))
 (32 32 (:REWRITE FOLD-CONSTS-IN-+))
 (32 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 5 (:DEFINITION O-FIRST-COEFF))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:REWRITE DEFAULT-REALPART))
 (12 12 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:REWRITE DEFAULT-IMAGPART))
 (12 12 (:REWRITE DEFAULT-DENOMINATOR))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 12 (:REWRITE DEFAULT-COERCE-1))
 (12 4 (:DEFINITION O-RST))
 (12 1 (:REWRITE POSP-REDEFINITION))
 (6 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:REWRITE ZP-WHEN-GT-0))
 (4 1 (:REWRITE ZP-OPEN))
 (2 2 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 (1 1 (:REWRITE ZP-WHEN-INTEGERP))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FTY::INT-TREE-FIX-FLAG-EQUIVALENCES)
(FTY::FLAG-LEMMA-FOR-RETURN-TYPE-OF-INT-TREE-FIX.ITREE
 (14 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (10 7 (:REWRITE DEFAULT-CDR))
 (10 7 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (1 1 (:REWRITE IFIX-WHEN-INTEGERP))
 )
(FTY::RETURN-TYPE-OF-INT-TREE-FIX.ITREE)
(FTY::RETURN-TYPE-OF-INT-TREELIST-FIX.ITREE)
(FTY::FLAG-LEMMA-FOR-INT-TREE-FIX-WHEN-INT-TREE-P
 (27 27 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 )
(FTY::INT-TREE-FIX-WHEN-INT-TREE-P)
(FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P)
(FTY::INT-TREE-EQUIV)
(FTY::INT-TREE-EQUIV-REFL)
(FTY::INT-TREE-EQUIV-SYMM)
(FTY::INT-TREE-EQUIV-TRANS)
(FTY::INT-TREE-EQUIV-IS-AN-EQUIVALENCE)
(__DEFFIXTYPE-INT-TREE-EQUIV-MEANS-EQUAL-OF-INT-TREE-FIX)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (26 2 (:DEFINITION FTY::INT-TREELIST-FIX))
 (10 2 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (4 4 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (3 3 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (3 3 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (2 2 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (2 2 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(FTY::INT-TREELIST-EQUIV$INLINE)
(FTY::INT-TREELIST-EQUIV-IS-AN-EQUIVALENCE)
(FTY::INT-TREELIST-EQUIV-IMPLIES-EQUAL-INT-TREELIST-FIX-1)
(FTY::INT-TREELIST-FIX-UNDER-INT-TREELIST-EQUIV)
(CDR-OF-INT-TREELIST-FIX-X-UNDER-INT-TREELIST-EQUIV
 (38 8 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (25 5 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (14 14 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (10 10 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (8 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (8 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (5 5 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (5 5 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (5 5 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE-QUOTED-CONSTANT FTY::INT-TREELIST-FIX-UNDER-INT-TREELIST-EQUIV))
 )
(CDR-INT-TREELIST-EQUIV-CONGRUENCE-ON-X-UNDER-INT-TREELIST-EQUIV)
(CONS-OF-INT-TREELIST-FIX-Y-UNDER-INT-TREELIST-EQUIV
 (35 7 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (33 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (20 20 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (10 10 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (10 10 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (9 7 (:REWRITE DEFAULT-CDR))
 (9 7 (:REWRITE DEFAULT-CAR))
 (8 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 )
(CONS-INT-TREELIST-EQUIV-CONGRUENCE-ON-Y-UNDER-INT-TREELIST-EQUIV)
(CONS-OF-INT-TREE-FIX-X-UNDER-INT-TREELIST-EQUIV
 (57 8 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (27 10 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (16 16 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (10 10 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (4 4 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 )
(CONS-INT-TREE-EQUIV-CONGRUENCE-ON-X-UNDER-INT-TREELIST-EQUIV)
(CAR-OF-INT-TREELIST-FIX-X-UNDER-INT-TREE-EQUIV
 (20 4 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (8 8 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (6 5 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (6 5 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (5 5 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-FIX))
 (4 4 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (4 4 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(CAR-INT-TREELIST-EQUIV-CONGRUENCE-ON-X-UNDER-INT-TREE-EQUIV)
(FTY::COUNT-LEAVES
 (722 18 (:DEFINITION ACL2-COUNT))
 (294 102 (:REWRITE DEFAULT-+-2))
 (180 102 (:REWRITE DEFAULT-+-1))
 (100 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (50 10 (:DEFINITION LEN))
 (40 40 (:REWRITE DEFAULT-CDR))
 (35 25 (:REWRITE DEFAULT-<-2))
 (35 25 (:REWRITE DEFAULT-<-1))
 (33 33 (:REWRITE DEFAULT-CAR))
 (32 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (28 28 (:REWRITE FOLD-CONSTS-IN-+))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 2 (:DEFINITION FTY::COUNT-LEAVES-LIST))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (9 9 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (6 6 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (2 2 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FTY::COUNT-LEAVES-FLAG
 (844 20 (:DEFINITION ACL2-COUNT))
 (336 116 (:REWRITE DEFAULT-+-2))
 (204 116 (:REWRITE DEFAULT-+-1))
 (133 1 (:DEFINITION O-P))
 (120 24 (:REWRITE COMMUTATIVITY-OF-+))
 (96 24 (:DEFINITION INTEGER-ABS))
 (96 12 (:DEFINITION LENGTH))
 (60 12 (:DEFINITION LEN))
 (58 1 (:DEFINITION O<))
 (57 47 (:REWRITE DEFAULT-CAR))
 (50 46 (:REWRITE DEFAULT-CDR))
 (50 8 (:DEFINITION O-FIRST-EXPT))
 (49 33 (:REWRITE DEFAULT-<-1))
 (46 46 (:TYPE-PRESCRIPTION TWO-NATS-MEASURE))
 (45 33 (:REWRITE DEFAULT-<-2))
 (35 17 (:DEFINITION O-FINP))
 (32 32 (:REWRITE FOLD-CONSTS-IN-+))
 (32 12 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 5 (:DEFINITION O-FIRST-COEFF))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:REWRITE DEFAULT-REALPART))
 (12 12 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:REWRITE DEFAULT-IMAGPART))
 (12 12 (:REWRITE DEFAULT-DENOMINATOR))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 12 (:REWRITE DEFAULT-COERCE-1))
 (12 4 (:DEFINITION O-RST))
 (12 1 (:REWRITE POSP-REDEFINITION))
 (6 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:REWRITE ZP-WHEN-GT-0))
 (4 1 (:REWRITE ZP-OPEN))
 (2 2 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 (1 1 (:REWRITE ZP-WHEN-INTEGERP))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FTY::COUNT-LEAVES-FLAG-EQUIVALENCES)
(FTY::FLAG-LEMMA-FOR-RETURN-TYPE-OF-COUNT-LEAVES.N)
(FTY::RETURN-TYPE-OF-COUNT-LEAVES.N)
(FTY::RETURN-TYPE-OF-COUNT-LEAVES-LIST.N)
(FTY::FLAG-LEMMA-FOR-COUNT-LEAVES-OF-INT-TREE-FIX-X
 (170 86 (:REWRITE DEFAULT-+-2))
 (170 31 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (163 86 (:REWRITE DEFAULT-+-1))
 (127 33 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (126 117 (:REWRITE DEFAULT-CAR))
 (120 37 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (118 109 (:REWRITE DEFAULT-CDR))
 (70 20 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (49 49 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (40 40 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (38 38 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (27 27 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (1 1 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (1 1 (:REWRITE IFIX-WHEN-INTEGERP))
 )
(FTY::COUNT-LEAVES-OF-INT-TREE-FIX-X)
(FTY::COUNT-LEAVES-LIST-OF-INT-TREELIST-FIX-X)
(FTY::COUNT-LEAVES-INT-TREE-EQUIV-CONGRUENCE-ON-X)
(FTY::COUNT-LEAVES-LIST-INT-TREELIST-EQUIV-CONGRUENCE-ON-X)
(FTY::NTH-LEAF
 (252 85 (:REWRITE DEFAULT-+-2))
 (146 85 (:REWRITE DEFAULT-+-1))
 (83 47 (:REWRITE DEFAULT-<-2))
 (80 16 (:REWRITE COMMUTATIVITY-OF-+))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (62 47 (:REWRITE DEFAULT-<-1))
 (60 30 (:REWRITE NFIX-WHEN-NOT-NATP))
 (40 8 (:DEFINITION LEN))
 (34 34 (:REWRITE DEFAULT-CDR))
 (30 30 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE FOLD-CONSTS-IN-+))
 (22 19 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 7 (:REWRITE NATP-WHEN-GTE-0))
 (9 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (7 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FTY::NTH-LEAF-FLAG
 (288 96 (:REWRITE DEFAULT-+-2))
 (166 96 (:REWRITE DEFAULT-+-1))
 (133 1 (:DEFINITION O-P))
 (100 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (58 1 (:DEFINITION O<))
 (54 44 (:REWRITE DEFAULT-CAR))
 (53 34 (:REWRITE DEFAULT-<-2))
 (52 34 (:REWRITE DEFAULT-<-1))
 (50 10 (:DEFINITION LEN))
 (50 8 (:DEFINITION O-FIRST-EXPT))
 (46 46 (:TYPE-PRESCRIPTION TWO-NATS-MEASURE))
 (44 14 (:REWRITE NFIX-WHEN-NOT-NATP))
 (43 39 (:REWRITE DEFAULT-CDR))
 (35 17 (:DEFINITION O-FINP))
 (27 27 (:REWRITE FOLD-CONSTS-IN-+))
 (24 5 (:DEFINITION O-FIRST-COEFF))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:DEFINITION O-RST))
 (12 1 (:REWRITE POSP-REDEFINITION))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (9 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:REWRITE ZP-WHEN-GT-0))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE ZP-WHEN-INTEGERP))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FTY::NTH-LEAF-FLAG-EQUIVALENCES)
(FTY::FLAG-LEMMA-FOR-RETURN-TYPE-OF-NTH-LEAF.LEAF)
(FTY::RETURN-TYPE-OF-NTH-LEAF.LEAF)
(FTY::RETURN-TYPE-OF-NTH-LEAF-LIST.LEAF)
(FTY::FLAG-LEMMA-FOR-NTH-LEAF-OF-NFIX-N
 (217 45 (:REWRITE NFIX-WHEN-NOT-NATP))
 (87 75 (:REWRITE NATP-WHEN-INTEGERP))
 (68 54 (:REWRITE DEFAULT-<-2))
 (68 54 (:REWRITE DEFAULT-<-1))
 (40 12 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (24 24 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (2 2 (:REWRITE IFIX-WHEN-INTEGERP))
 )
(FTY::NTH-LEAF-OF-NFIX-N)
(FTY::NTH-LEAF-LIST-OF-NFIX-N)
(FTY::NTH-LEAF-NAT-EQUIV-CONGRUENCE-ON-N)
(FTY::NTH-LEAF-LIST-NAT-EQUIV-CONGRUENCE-ON-N)
(FTY::FLAG-LEMMA-FOR-NTH-LEAF-OF-INT-TREE-FIX-X
 (1435 197 (:REWRITE NFIX-WHEN-NATP))
 (1210 197 (:REWRITE NFIX-WHEN-NOT-NATP))
 (810 344 (:REWRITE NATP-WHEN-GTE-0))
 (743 167 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (657 83 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (654 654 (:TYPE-PRESCRIPTION NATP))
 (651 331 (:REWRITE NATP-WHEN-INTEGERP))
 (600 56 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (523 113 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (495 304 (:REWRITE DEFAULT-<-1))
 (395 379 (:REWRITE DEFAULT-CAR))
 (394 304 (:REWRITE DEFAULT-<-2))
 (292 31 (:REWRITE COMMUTATIVITY-OF-+))
 (284 30 (:REWRITE IFIX-EQUAL-TO-NONZERO))
 (278 142 (:REWRITE DEFAULT-+-2))
 (265 142 (:REWRITE DEFAULT-+-1))
 (213 213 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (208 13 (:REWRITE COMMUTATIVITY-2-OF-+))
 (180 30 (:REWRITE ZIP-OPEN))
 (176 172 (:REWRITE DEFAULT-CDR))
 (171 171 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (164 82 (:REWRITE DEFAULT-UNARY-MINUS))
 (157 157 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (149 149 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (127 99 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (89 49 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (89 49 (:REWRITE IFIX-WHEN-INTEGERP))
 (58 29 (:REWRITE CAR-OF-INT-TREELIST-FIX-X-UNDER-INT-TREE-EQUIV))
 (30 30 (:REWRITE IFIX-EQUAL-TO-NONZERO-CONST))
 (27 27 (:TYPE-PRESCRIPTION ZIP))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (15 5 (:REWRITE IFIX-EQUAL-TO-0))
 )
(FTY::NTH-LEAF-OF-INT-TREE-FIX-X)
(FTY::NTH-LEAF-LIST-OF-INT-TREELIST-FIX-X)
(FTY::NTH-LEAF-INT-TREE-EQUIV-CONGRUENCE-ON-X)
(FTY::NTH-LEAF-LIST-INT-TREELIST-EQUIV-CONGRUENCE-ON-X)
(FTY::UPDATE-NTH-LEAF
 (252 85 (:REWRITE DEFAULT-+-2))
 (146 85 (:REWRITE DEFAULT-+-1))
 (85 51 (:REWRITE DEFAULT-<-2))
 (80 16 (:REWRITE COMMUTATIVITY-OF-+))
 (72 51 (:REWRITE DEFAULT-<-1))
 (64 34 (:REWRITE NFIX-WHEN-NOT-NATP))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (36 36 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE FOLD-CONSTS-IN-+))
 (22 19 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 7 (:REWRITE NATP-WHEN-GTE-0))
 (9 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (7 7 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (6 6 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FTY::UPDATE-NTH-LEAF-FLAG
 (288 96 (:REWRITE DEFAULT-+-2))
 (166 96 (:REWRITE DEFAULT-+-1))
 (133 1 (:DEFINITION O-P))
 (100 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (58 1 (:DEFINITION O<))
 (54 44 (:REWRITE DEFAULT-CAR))
 (53 34 (:REWRITE DEFAULT-<-2))
 (52 34 (:REWRITE DEFAULT-<-1))
 (50 10 (:DEFINITION LEN))
 (50 8 (:DEFINITION O-FIRST-EXPT))
 (46 46 (:TYPE-PRESCRIPTION TWO-NATS-MEASURE))
 (44 14 (:REWRITE NFIX-WHEN-NOT-NATP))
 (43 39 (:REWRITE DEFAULT-CDR))
 (35 17 (:DEFINITION O-FINP))
 (27 27 (:REWRITE FOLD-CONSTS-IN-+))
 (24 5 (:DEFINITION O-FIRST-COEFF))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:DEFINITION O-RST))
 (12 1 (:REWRITE POSP-REDEFINITION))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (9 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:REWRITE ZP-WHEN-GT-0))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE ZP-WHEN-INTEGERP))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FTY::UPDATE-NTH-LEAF-FLAG-EQUIVALENCES)
(FTY::FLAG-LEMMA-FOR-RETURN-TYPE-OF-UPDATE-NTH-LEAF.TREE
 (219 33 (:REWRITE NFIX-WHEN-NATP))
 (157 33 (:REWRITE NFIX-WHEN-NOT-NATP))
 (124 124 (:TYPE-PRESCRIPTION NATP))
 (124 62 (:REWRITE NATP-WHEN-GTE-0))
 (91 67 (:REWRITE DEFAULT-CAR))
 (79 56 (:REWRITE DEFAULT-<-2))
 (74 56 (:REWRITE DEFAULT-<-1))
 (67 18 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (66 42 (:REWRITE DEFAULT-CDR))
 (62 62 (:REWRITE NATP-WHEN-INTEGERP))
 (60 31 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (30 15 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 15 (:REWRITE DEFAULT-+-2))
 (30 15 (:REWRITE DEFAULT-+-1))
 (10 2 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (10 2 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (3 3 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (3 3 (:REWRITE IFIX-WHEN-INTEGERP))
 (2 2 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-FIX))
 )
(FTY::RETURN-TYPE-OF-UPDATE-NTH-LEAF.TREE)
(FTY::RETURN-TYPE-OF-UPDATE-NTH-LEAF-LIST.TREE)
(FTY::FLAG-LEMMA-FOR-UPDATE-NTH-LEAF-OF-NFIX-N
 (72 16 (:REWRITE NFIX-WHEN-NOT-NATP))
 (29 17 (:REWRITE NATP-WHEN-INTEGERP))
 (24 16 (:REWRITE DEFAULT-<-1))
 (21 16 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-CAR))
 (13 6 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 2 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (6 2 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (4 4 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (4 4 (:REWRITE IFIX-WHEN-INTEGERP))
 (2 2 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (2 2 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (1 1 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (1 1 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (1 1 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (1 1 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 )
(FTY::UPDATE-NTH-LEAF-OF-NFIX-N)
(FTY::UPDATE-NTH-LEAF-LIST-OF-NFIX-N)
(FTY::UPDATE-NTH-LEAF-NAT-EQUIV-CONGRUENCE-ON-N)
(FTY::UPDATE-NTH-LEAF-LIST-NAT-EQUIV-CONGRUENCE-ON-N)
(FTY::FLAG-LEMMA-FOR-UPDATE-NTH-LEAF-OF-INT-TREE-FIX-X
 (55 15 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (40 10 (:REWRITE NFIX-WHEN-NATP))
 (35 27 (:REWRITE DEFAULT-CAR))
 (30 10 (:REWRITE NFIX-WHEN-NOT-NATP))
 (25 19 (:REWRITE DEFAULT-CDR))
 (21 11 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (20 20 (:TYPE-PRESCRIPTION NATP))
 (20 10 (:REWRITE NATP-WHEN-GTE-0))
 (18 12 (:REWRITE DEFAULT-<-1))
 (17 12 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (13 6 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (12 12 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 (10 10 (:REWRITE NATP-WHEN-INTEGERP))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (5 5 (:REWRITE IFIX-WHEN-INTEGERP))
 )
(FTY::UPDATE-NTH-LEAF-OF-INT-TREE-FIX-X)
(FTY::UPDATE-NTH-LEAF-LIST-OF-INT-TREELIST-FIX-X)
(FTY::UPDATE-NTH-LEAF-INT-TREE-EQUIV-CONGRUENCE-ON-X)
(FTY::UPDATE-NTH-LEAF-LIST-INT-TREELIST-EQUIV-CONGRUENCE-ON-X)
(FTY::FLAG-LEMMA-FOR-UPDATE-NTH-LEAF-OF-IFIX-V
 (40 10 (:REWRITE NFIX-WHEN-NATP))
 (30 10 (:REWRITE NFIX-WHEN-NOT-NATP))
 (22 18 (:REWRITE DEFAULT-CAR))
 (20 20 (:TYPE-PRESCRIPTION NATP))
 (20 10 (:REWRITE NATP-WHEN-GTE-0))
 (18 12 (:REWRITE DEFAULT-<-1))
 (17 12 (:REWRITE DEFAULT-<-2))
 (14 12 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (14 10 (:REWRITE DEFAULT-CDR))
 (13 6 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (10 10 (:REWRITE NATP-WHEN-INTEGERP))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FTY::INT-TREELIST-FIX-WHEN-INT-TREELIST-P))
 (6 2 (:REWRITE FTY::INT-TREE-FIX-WHEN-INT-TREE-P))
 (2 2 (:TYPE-PRESCRIPTION FTY::INT-TREELIST-P))
 (2 2 (:TYPE-PRESCRIPTION FTY::INT-TREE-P))
 (1 1 (:REWRITE FTY::INT-TREELIST-P-WHEN-CONSP))
 (1 1 (:REWRITE FTY::INT-TREELIST-P-WHEN-ATOM))
 (1 1 (:REWRITE FTY::INT-TREE-P-WHEN-CONSP))
 (1 1 (:REWRITE FTY::INT-TREE-P-WHEN-ATOM))
 )
(FTY::UPDATE-NTH-LEAF-OF-IFIX-V)
(FTY::UPDATE-NTH-LEAF-LIST-OF-IFIX-V)
(FTY::UPDATE-NTH-LEAF-INT-EQUIV-CONGRUENCE-ON-V)
(FTY::UPDATE-NTH-LEAF-LIST-INT-EQUIV-CONGRUENCE-ON-V)
