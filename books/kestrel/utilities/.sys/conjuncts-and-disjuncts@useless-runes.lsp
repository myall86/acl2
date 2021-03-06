(COMBINE-CONJUNCTS
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-UNION-EQUAL-TYPE))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(COMBINE-DISJUNCTS
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-UNION-EQUAL-TYPE))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(PSEUDO-TERM-LISTP-OF-COMBINE-CONJUNCTS
 (80 40 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (56 56 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (40 40 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (40 40 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (36 18 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (36 18 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (27 27 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-UNION-EQUAL-TYPE))
 )
(PSEUDO-TERM-LISTP-OF-COMBINE-DISJUNCTS
 (80 40 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (56 56 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (40 40 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (40 40 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (36 18 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (36 18 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (27 27 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-UNION-EQUAL-TYPE))
 )
(TRUE-LISTP-OF-COMBINE-CONJUNCTS
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(TRUE-LISTP-OF-COMBINE-DISJUNCTS
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(NEGATE-ALL)
(NEGATE-TERMS)
(PSEUDO-TERM-LISTP-OF-NEGATE-TERMS
 (154 77 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (134 132 (:REWRITE DEFAULT-CDR))
 (122 22 (:DEFINITION LEN))
 (106 106 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (70 35 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (58 29 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (48 6 (:DEFINITION SYMBOL-LISTP))
 (44 22 (:REWRITE DEFAULT-+-2))
 (42 21 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (35 35 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (29 29 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (22 22 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(NEGATE-TERM2
 (1254 586 (:REWRITE DEFAULT-+-2))
 (792 586 (:REWRITE DEFAULT-+-1))
 (561 69 (:DEFINITION LENGTH))
 (480 120 (:REWRITE COMMUTATIVITY-OF-+))
 (480 120 (:DEFINITION INTEGER-ABS))
 (366 72 (:DEFINITION LEN))
 (248 3 (:DEFINITION PSEUDO-TERMP))
 (190 146 (:REWRITE DEFAULT-<-2))
 (162 146 (:REWRITE DEFAULT-<-1))
 (120 120 (:REWRITE DEFAULT-UNARY-MINUS))
 (87 87 (:TYPE-PRESCRIPTION LEN))
 (63 63 (:REWRITE DEFAULT-COERCE-2))
 (63 63 (:REWRITE DEFAULT-COERCE-1))
 (60 60 (:REWRITE DEFAULT-REALPART))
 (60 60 (:REWRITE DEFAULT-NUMERATOR))
 (60 60 (:REWRITE DEFAULT-IMAGPART))
 (60 60 (:REWRITE DEFAULT-DENOMINATOR))
 (46 23 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (43 43 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (40 20 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (24 3 (:DEFINITION SYMBOL-LISTP))
 (18 6 (:DEFINITION TRUE-LISTP))
 (11 11 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (10 5 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 3 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (6 3 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (6 3 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (6 3 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (5 5 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(PSEUDO-TERM-LISTP-OF-NEGATE-TERM2
 (506 92 (:DEFINITION LEN))
 (454 454 (:REWRITE DEFAULT-CDR))
 (192 96 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (184 92 (:REWRITE DEFAULT-+-2))
 (184 23 (:DEFINITION SYMBOL-LISTP))
 (172 172 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (140 70 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (92 92 (:REWRITE DEFAULT-+-1))
 (66 33 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (55 55 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (40 20 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (40 20 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (30 2 (:DEFINITION PSEUDO-TERM-LISTP))
 (23 23 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (23 23 (:REWRITE DEFAULT-COERCE-2))
 (23 23 (:REWRITE DEFAULT-COERCE-1))
 (20 20 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (12 6 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 )
(NEGATE-TERMS2)
(PSEUDO-TERM-LISTP-OF-NEGATE-TERMS2
 (28 14 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (14 14 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (14 14 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (12 6 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (12 6 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(NEGATE-DISJUNCTS)
(PSEUDO-TERM-LISTP-OF-NEGATE-DISJUNCTS
 (32 2 (:DEFINITION PSEUDO-TERM-LISTP))
 (8 4 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 2 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION NEGATE-TERMS2))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(NEGATE-CONJUNCTS)
(PSEUDO-TERM-LISTP-OF-NEGATE-CONJUNCTS
 (32 2 (:DEFINITION PSEUDO-TERM-LISTP))
 (8 4 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 2 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION NEGATE-TERMS2))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(GET-CONJUNCTS-OF-TERM
 (6146 2939 (:REWRITE DEFAULT-+-2))
 (3946 2939 (:REWRITE DEFAULT-+-1))
 (2416 604 (:REWRITE COMMUTATIVITY-OF-+))
 (2416 604 (:DEFINITION INTEGER-ABS))
 (2416 302 (:DEFINITION LENGTH))
 (1510 302 (:DEFINITION LEN))
 (919 733 (:REWRITE DEFAULT-<-2))
 (849 733 (:REWRITE DEFAULT-<-1))
 (604 604 (:REWRITE DEFAULT-UNARY-MINUS))
 (302 302 (:TYPE-PRESCRIPTION LEN))
 (302 302 (:REWRITE DEFAULT-REALPART))
 (302 302 (:REWRITE DEFAULT-NUMERATOR))
 (302 302 (:REWRITE DEFAULT-IMAGPART))
 (302 302 (:REWRITE DEFAULT-DENOMINATOR))
 (302 302 (:REWRITE DEFAULT-COERCE-2))
 (302 302 (:REWRITE DEFAULT-COERCE-1))
 (174 87 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (87 87 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 )
(FLAG-GET-CONJUNCTS-OF-TERM
 (6614 3157 (:REWRITE DEFAULT-+-2))
 (4240 3157 (:REWRITE DEFAULT-+-1))
 (2592 648 (:REWRITE COMMUTATIVITY-OF-+))
 (2592 648 (:DEFINITION INTEGER-ABS))
 (2592 324 (:DEFINITION LENGTH))
 (1620 324 (:DEFINITION LEN))
 (986 785 (:REWRITE DEFAULT-<-2))
 (908 785 (:REWRITE DEFAULT-<-1))
 (648 648 (:REWRITE DEFAULT-UNARY-MINUS))
 (324 324 (:TYPE-PRESCRIPTION LEN))
 (324 324 (:REWRITE DEFAULT-REALPART))
 (324 324 (:REWRITE DEFAULT-NUMERATOR))
 (324 324 (:REWRITE DEFAULT-IMAGPART))
 (324 324 (:REWRITE DEFAULT-DENOMINATOR))
 (324 324 (:REWRITE DEFAULT-COERCE-2))
 (324 324 (:REWRITE DEFAULT-COERCE-1))
 (180 90 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (90 90 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FLAG-GET-CONJUNCTS-OF-TERM-EQUIVALENCES)
(FLAG-LEMMA-FOR-PSEUDO-TERM-LISTP-OF-GET-CONJUNCTS-OF-TERM
 (7238 7238 (:REWRITE DEFAULT-CDR))
 (6120 3060 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (3612 3612 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (1804 328 (:DEFINITION LEN))
 (1116 558 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (960 480 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (956 478 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (868 434 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (668 334 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (656 328 (:REWRITE DEFAULT-+-2))
 (656 82 (:DEFINITION SYMBOL-LISTP))
 (558 558 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (442 442 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (328 328 (:REWRITE DEFAULT-+-1))
 (236 118 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (144 144 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (82 82 (:REWRITE DEFAULT-COERCE-2))
 (82 82 (:REWRITE DEFAULT-COERCE-1))
 (28 14 (:TYPE-PRESCRIPTION COMBINE-DISJUNCTS))
 (28 14 (:TYPE-PRESCRIPTION COMBINE-CONJUNCTS))
 )
(PSEUDO-TERM-LISTP-OF-GET-CONJUNCTS-OF-TERM)
(PSEUDO-TERM-LISTP-OF-GET-DISJUNCTS-OF-TERM)
(FLAG-LEMMA-FOR-TRUE-LISTP-OF-GET-CONJUNCTS-OF-TERM
 (2640 1320 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (1958 1958 (:REWRITE DEFAULT-CDR))
 (1448 1448 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (136 68 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (120 60 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (120 30 (:DEFINITION TRUE-LISTP))
 )
(TRUE-LISTP-OF-GET-CONJUNCTS-OF-TERM)
(TRUE-LISTP-OF-GET-DISJUNCTS-OF-TERM)
(GET-CONJUNCTS-OF-TERM
 (3532 32 (:DEFINITION PSEUDO-TERMP))
 (1139 8 (:REWRITE PSEUDO-TERM-LISTP-OF-GET-DISJUNCTS-OF-TERM))
 (1139 8 (:REWRITE PSEUDO-TERM-LISTP-OF-GET-CONJUNCTS-OF-TERM))
 (864 96 (:DEFINITION LENGTH))
 (807 807 (:REWRITE DEFAULT-CDR))
 (784 392 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (704 128 (:DEFINITION LEN))
 (528 528 (:TYPE-PRESCRIPTION LEN))
 (518 518 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (384 64 (:DEFINITION TRUE-LISTP))
 (336 32 (:DEFINITION SYMBOL-LISTP))
 (316 18 (:DEFINITION PSEUDO-TERM-LISTP))
 (256 128 (:REWRITE DEFAULT-+-2))
 (252 126 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (170 1 (:REWRITE PSEUDO-TERM-LISTP-OF-NEGATE-DISJUNCTS))
 (170 1 (:REWRITE PSEUDO-TERM-LISTP-OF-NEGATE-CONJUNCTS))
 (160 80 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (136 68 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (128 128 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (128 128 (:REWRITE DEFAULT-+-1))
 (100 50 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP-CHEAP))
 (100 50 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERMP))
 (100 50 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (82 82 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (68 68 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (44 44 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (32 32 (:REWRITE DEFAULT-COERCE-2))
 (32 32 (:REWRITE DEFAULT-COERCE-1))
 (16 16 (:TYPE-PRESCRIPTION GET-DISJUNCTS-OF-TERM))
 (16 16 (:TYPE-PRESCRIPTION GET-CONJUNCTS-OF-TERM))
 (2 2 (:TYPE-PRESCRIPTION NEGATE-DISJUNCTS))
 (2 2 (:TYPE-PRESCRIPTION NEGATE-CONJUNCTS))
 )
(GET-CONJUNCTS-OF-TERMS)
