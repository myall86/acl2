(MODAPP::BADGE)
(MODAPP::BADGE-TYPE
 (159 1 (:DEFINITION MODAPP::APPLY$-BADGEP))
 (73 43 (:REWRITE DEFAULT-CDR))
 (49 1 (:DEFINITION SUBSETP-EQUAL))
 (46 4 (:DEFINITION MEMBER-EQUAL))
 (24 4 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (24 2 (:DEFINITION NATP))
 (15 12 (:REWRITE DEFAULT-CAR))
 (12 2 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (11 1 (:DEFINITION LEN))
 (8 1 (:DEFINITION TRUE-LISTP))
 (6 1 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (4 1 (:DEFINITION MODAPP::WEAK-APPLY$-BADGE-P))
 (3 3 (:TYPE-PRESCRIPTION LEN))
 (3 1 (:DEFINITION ALL-NILS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:TYPE-PRESCRIPTION MODAPP::WEAK-APPLY$-BADGE-P))
 (1 1 (:TYPE-PRESCRIPTION ALL-NILS))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(MODAPP::TAMEP
 (688 310 (:REWRITE DEFAULT-+-2))
 (429 310 (:REWRITE DEFAULT-+-1))
 (200 50 (:DEFINITION INTEGER-ABS))
 (200 25 (:DEFINITION LENGTH))
 (174 174 (:REWRITE DEFAULT-CAR))
 (158 158 (:REWRITE DEFAULT-CDR))
 (125 25 (:DEFINITION LEN))
 (92 66 (:REWRITE DEFAULT-<-2))
 (82 66 (:REWRITE DEFAULT-<-1))
 (60 12 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (54 18 (:DEFINITION MODAPP::APPLY$-BADGEP))
 (50 50 (:REWRITE DEFAULT-UNARY-MINUS))
 (36 18 (:DEFINITION MODAPP::WEAK-APPLY$-BADGE-P))
 (30 6 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (25 25 (:TYPE-PRESCRIPTION LEN))
 (25 25 (:REWRITE DEFAULT-REALPART))
 (25 25 (:REWRITE DEFAULT-NUMERATOR))
 (25 25 (:REWRITE DEFAULT-IMAGPART))
 (25 25 (:REWRITE DEFAULT-DENOMINATOR))
 (25 25 (:REWRITE DEFAULT-COERCE-2))
 (25 25 (:REWRITE DEFAULT-COERCE-1))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (18 18 (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
 (8 8 (:REWRITE ZP-OPEN))
 )
(MODAPP::TAMEP
 (2916 54 (:DEFINITION MODAPP::TAMEP))
 (2497 2497 (:REWRITE DEFAULT-CDR))
 (1107 1107 (:REWRITE DEFAULT-CAR))
 (666 130 (:DEFINITION LEN))
 (378 126 (:DEFINITION SYMBOL-LISTP))
 (260 130 (:REWRITE DEFAULT-+-2))
 (142 4 (:DEFINITION SUBSETP-EQUAL))
 (130 130 (:REWRITE DEFAULT-+-1))
 (130 16 (:DEFINITION MEMBER-EQUAL))
 (64 16 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (63 63 (:REWRITE DEFAULT-COERCE-2))
 (63 63 (:REWRITE DEFAULT-COERCE-1))
 (42 13 (:DEFINITION TRUE-LISTP))
 (32 8 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (16 4 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (12 4 (:DEFINITION ALL-NILS))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 )
(MODAPP::SUITABLY-TAMEP-LISTP-INDUCTION)
(MODAPP::SUITABLY-TAMEP-LISTP-IMPLICANT-1
 (24 24 (:REWRITE DEFAULT-CAR))
 (15 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (11 5 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(MODAPP::TAMEP-IMPLICANT-1
 (274 274 (:REWRITE DEFAULT-CDR))
 (131 131 (:REWRITE DEFAULT-CAR))
 (108 5 (:DEFINITION MODAPP::SUITABLY-TAMEP-LISTP))
 (99 19 (:DEFINITION LEN))
 (44 5 (:REWRITE ZP-OPEN))
 (43 24 (:REWRITE DEFAULT-+-2))
 (37 1 (:DEFINITION SUBSETP-EQUAL))
 (34 4 (:DEFINITION MEMBER-EQUAL))
 (27 9 (:DEFINITION SYMBOL-LISTP))
 (24 24 (:REWRITE DEFAULT-+-1))
 (22 9 (:DEFINITION TRUE-LISTP))
 (16 4 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (13 7 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (8 2 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (3 1 (:DEFINITION ALL-NILS))
 (1 1 (:TYPE-PRESCRIPTION MODAPP::TAMEP-FUNCTIONP))
 )
(MODAPP::EV$-MEASURE)
(MODAPP::EV$-LIST-MEASURE)
(MODAPP::APPLY$-MEASURE)
(MODAPP::APPLY$-LAMBDA-MEASURE)
(MODAPP::APPLY$
 (22227 113 (:DEFINITION MODAPP::APPLY$-BADGEP))
 (15996 206 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (12136 148 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (6735 160 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (6586 74 (:DEFINITION TRUE-LISTP))
 (4834 2335 (:REWRITE DEFAULT-+-2))
 (4432 365 (:DEFINITION LENGTH))
 (3416 74 (:DEFINITION SUBSETP-EQUAL))
 (3022 2335 (:REWRITE DEFAULT-+-1))
 (2972 296 (:DEFINITION MEMBER-EQUAL))
 (2938 663 (:REWRITE O-P-O-INFP-CAR))
 (1674 149 (:DEFINITION NATP))
 (1634 170 (:DEFINITION SYMBOL-LISTP))
 (1576 394 (:DEFINITION INTEGER-ABS))
 (1242 1242 (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
 (949 663 (:REWRITE O-P-DEF-O-FINP-1))
 (947 744 (:REWRITE DEFAULT-<-1))
 (835 744 (:REWRITE DEFAULT-<-2))
 (762 762 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (592 296 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (544 166 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (458 113 (:DEFINITION MODAPP::WEAK-APPLY$-BADGE-P))
 (444 444 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (444 222 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (444 74 (:DEFINITION ALL-NILS))
 (399 3 (:DEFINITION MODAPP::EV$))
 (394 394 (:REWRITE DEFAULT-UNARY-MINUS))
 (370 370 (:TYPE-PRESCRIPTION ALL-NILS))
 (365 365 (:REWRITE DEFAULT-COERCE-2))
 (365 365 (:REWRITE DEFAULT-COERCE-1))
 (296 296 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (286 286 (:TYPE-PRESCRIPTION O-FINP))
 (197 197 (:REWRITE DEFAULT-REALPART))
 (197 197 (:REWRITE DEFAULT-NUMERATOR))
 (197 197 (:REWRITE DEFAULT-IMAGPART))
 (197 197 (:REWRITE DEFAULT-DENOMINATOR))
 (27 3 (:DEFINITION ASSOC-EQUAL))
 )
(MODAPP::APPLY$-LAMBDA-OPENER
 (270 2 (:DEFINITION MODAPP::EV$))
 (144 2 (:DEFINITION MODAPP::TAMEP))
 (129 105 (:REWRITE DEFAULT-CDR))
 (98 19 (:REWRITE O-P-O-INFP-CAR))
 (80 72 (:REWRITE DEFAULT-CAR))
 (41 19 (:REWRITE O-P-DEF-O-FINP-1))
 (38 38 (:TYPE-PRESCRIPTION O-P))
 (34 2 (:DEFINITION LENGTH))
 (33 3 (:DEFINITION PAIRLIS$))
 (28 4 (:DEFINITION LEN))
 (22 22 (:TYPE-PRESCRIPTION O-FINP))
 (22 2 (:DEFINITION ASSOC-EQUAL))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (4 4 (:TYPE-PRESCRIPTION PAIRLIS$))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::EV$-DEF-FACT
 (10338 2282 (:REWRITE O-P-O-INFP-CAR))
 (4053 579 (:DEFINITION LEN))
 (3588 2234 (:REWRITE O-P-DEF-O-FINP-1))
 (2646 378 (:DEFINITION SYMBOL-LISTP))
 (2265 257 (:DEFINITION ASSOC-EQUAL))
 (1318 1318 (:TYPE-PRESCRIPTION O-FINP))
 (1179 600 (:REWRITE DEFAULT-+-2))
 (1013 21 (:REWRITE ZP-OPEN))
 (925 15 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (915 5 (:DEFINITION MODAPP::APPLY$-BADGEP))
 (609 609 (:TYPE-PRESCRIPTION LEN))
 (600 600 (:REWRITE DEFAULT-+-1))
 (470 5 (:DEFINITION SUBSETP-EQUAL))
 (459 27 (:REWRITE MODAPP::APPLY$-LAMBDA-OPENER))
 (440 20 (:DEFINITION MEMBER-EQUAL))
 (297 27 (:DEFINITION PAIRLIS$))
 (287 287 (:REWRITE DEFAULT-COERCE-2))
 (287 287 (:REWRITE DEFAULT-COERCE-1))
 (186 186 (:TYPE-PRESCRIPTION MODAPP::EV$-LIST))
 (108 108 (:REWRITE MODAPP::UNTAME-APPLY$-TAKES-ARITY-ARGS))
 (90 10 (:DEFINITION NATP))
 (60 60 (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
 (55 5 (:DEFINITION TRUE-LISTP))
 (40 20 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (40 10 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (31 31 (:REWRITE DEFAULT-<-2))
 (31 31 (:REWRITE DEFAULT-<-1))
 (30 30 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (30 15 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (30 5 (:DEFINITION ALL-NILS))
 (27 27 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (27 27 (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
 (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (20 5 (:DEFINITION MODAPP::WEAK-APPLY$-BADGE-P))
 (10 5 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (10 5 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 )
(MODAPP::EV$-DEF)
(MODAPP::EV$-OPENER
 (3837 9 (:DEFINITION MODAPP::EV$))
 (1852 1690 (:REWRITE DEFAULT-CDR))
 (1298 267 (:REWRITE O-P-O-INFP-CAR))
 (1035 885 (:REWRITE DEFAULT-CAR))
 (938 2 (:DEFINITION MODAPP::APPLY$))
 (884 52 (:DEFINITION LENGTH))
 (728 104 (:DEFINITION LEN))
 (506 56 (:DEFINITION SYMBOL-LISTP))
 (497 267 (:REWRITE O-P-DEF-O-FINP-1))
 (214 214 (:TYPE-PRESCRIPTION MODAPP::EV$-LIST))
 (210 106 (:REWRITE DEFAULT-+-2))
 (208 208 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (182 182 (:TYPE-PRESCRIPTION O-FINP))
 (164 3 (:DEFINITION MODAPP::SUITABLY-TAMEP-LISTP))
 (144 4 (:DEFINITION MODAPP::TAMEP-FUNCTIONP))
 (134 2 (:REWRITE MODAPP::APPLY$-LAMBDA-OPENER))
 (119 12 (:DEFINITION ASSOC-EQUAL))
 (106 106 (:REWRITE DEFAULT-+-1))
 (92 2 (:DEFINITION MODAPP::EV$-LIST))
 (52 52 (:REWRITE DEFAULT-COERCE-2))
 (52 52 (:REWRITE DEFAULT-COERCE-1))
 (34 2 (:DEFINITION PAIRLIS$))
 (12 2 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::TAMEP-FUNCTIONP))
 (4 4 (:REWRITE MODAPP::UNTAME-APPLY$-TAKES-ARITY-ARGS))
 (2 2 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
 )
(MODAPP::EV$-LIST-DEF
 (268 2 (:DEFINITION MODAPP::EV$))
 (140 2 (:DEFINITION MODAPP::TAMEP))
 (119 95 (:REWRITE DEFAULT-CDR))
 (73 65 (:REWRITE DEFAULT-CAR))
 (72 16 (:REWRITE O-P-O-INFP-CAR))
 (34 2 (:DEFINITION LENGTH))
 (32 32 (:TYPE-PRESCRIPTION O-P))
 (28 4 (:DEFINITION LEN))
 (24 16 (:REWRITE O-P-DEF-O-FINP-1))
 (18 2 (:DEFINITION ASSOC-EQUAL))
 (15 15 (:REWRITE MODAPP::EV$-OPENER))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:TYPE-PRESCRIPTION O-FINP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::BETA-REDUCTION
 (15 3 (:DEFINITION PAIRLIS$))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE MODAPP::EV$-OPENER))
 )
(MODAPP::APPLY$-PRIMP-BADGE)
(MODAPP::BADGE-BADGE)
(MODAPP::BADGE-TAMEP)
(MODAPP::BADGE-TAMEP-FUNCTIONP)
(MODAPP::BADGE-SUITABLY-TAMEP-LISTP)
(MODAPP::BADGE-APPLY$)
(MODAPP::BADGE-EV$)
(MODAPP::APPLY$-PRIMITIVE
 (2 2 (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
 )
(MODAPP::APPLY$-BADGE
 (6 2 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (5 5 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 )
(MODAPP::APPLY$-TAMEP
 (150 2 (:DEFINITION MODAPP::TAMEP))
 (54 54 (:REWRITE DEFAULT-CDR))
 (36 8 (:REWRITE O-P-O-INFP-CAR))
 (34 2 (:DEFINITION LENGTH))
 (28 4 (:DEFINITION LEN))
 (26 26 (:REWRITE DEFAULT-CAR))
 (16 16 (:TYPE-PRESCRIPTION O-P))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (12 8 (:REWRITE O-P-DEF-O-FINP-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (5 5 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (4 4 (:TYPE-PRESCRIPTION O-FINP))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 )
(MODAPP::APPLY$-TAMEP-FUNCTIONP
 (68 2 (:DEFINITION MODAPP::TAMEP-FUNCTIONP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (20 4 (:REWRITE O-P-O-INFP-CAR))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION O-P))
 (8 4 (:REWRITE O-P-DEF-O-FINP-1))
 (6 2 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (5 5 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (4 4 (:TYPE-PRESCRIPTION O-FINP))
 (2 2 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 1 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 )
(MODAPP::APPLY$-SUITABLY-TAMEP-LISTP
 (104 2 (:DEFINITION MODAPP::SUITABLY-TAMEP-LISTP))
 (52 10 (:REWRITE O-P-O-INFP-CAR))
 (38 26 (:REWRITE DEFAULT-CDR))
 (30 18 (:REWRITE DEFAULT-CAR))
 (22 10 (:REWRITE O-P-DEF-O-FINP-1))
 (20 20 (:TYPE-PRESCRIPTION O-P))
 (12 12 (:TYPE-PRESCRIPTION O-FINP))
 (8 2 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (2 2 (:TYPE-PRESCRIPTION MODAPP::TAMEP-FUNCTIONP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:DEFINITION NOT))
 (2 1 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (1 1 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 )
(MODAPP::APPLY$-APPLY$
 (324 68 (:REWRITE O-P-O-INFP-CAR))
 (300 4 (:DEFINITION MODAPP::TAMEP))
 (249 229 (:REWRITE DEFAULT-CDR))
 (244 124 (:REWRITE DEFAULT-CAR))
 (136 60 (:REWRITE O-P-DEF-O-FINP-1))
 (120 120 (:TYPE-PRESCRIPTION O-P))
 (104 2 (:DEFINITION MODAPP::SUITABLY-TAMEP-LISTP))
 (76 76 (:TYPE-PRESCRIPTION O-FINP))
 (70 10 (:DEFINITION SYMBOL-LISTP))
 (68 4 (:DEFINITION LENGTH))
 (56 8 (:DEFINITION LEN))
 (50 2 (:REWRITE MODAPP::APPLY$-LAMBDA-OPENER))
 (37 37 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (36 12 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (36 2 (:DEFINITION PAIRLIS$))
 (18 10 (:REWRITE DEFAULT-+-2))
 (17 6 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 2 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE MODAPP::UNTAME-APPLY$-TAKES-ARITY-ARGS))
 (4 4 (:REWRITE MODAPP::EV$-OPENER))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
 )
(MODAPP::APPLY$-EV$
 (57 57 (:REWRITE DEFAULT-CDR))
 (36 8 (:REWRITE O-P-O-INFP-CAR))
 (32 32 (:REWRITE DEFAULT-CAR))
 (28 4 (:DEFINITION LEN))
 (16 16 (:TYPE-PRESCRIPTION O-P))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (12 8 (:REWRITE O-P-DEF-O-FINP-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (5 5 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (4 4 (:TYPE-PRESCRIPTION O-FINP))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE MODAPP::EV$-OPENER))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 )
(MODAPP::EXECUTABLE-BADGE)
(MODAPP::EXECUTABLE-TAMEP)
(MODAPP::QUICK-CHECK-FOR-TAMENESSP)
(MODAPP::ACCUMULATE-ILK)
(MODAPP::CONVERT-ILK-ALIST-TO-ILKS1)
(MODAPP::CONVERT-ILK-ALIST-TO-ILKS)
(MODAPP::EXPAND-ALL-LAMBDAS)
(MODAPP::CHANGED-FUNCTIONAL-OR-EXPRESSIONAL-FORMALP)
(MODAPP::WELL-FORMED-LAMBDAP)
(MODAPP::GUESS-ILKS-ALIST)
(MODAPP::NONSENSICAL-JUSTIFICATION-TERM)
(MODAPP::BAD-ANCESTOR1)
(MODAPP::BAD-ANCESTOR)
(MODAPP::NOT-PRE-APPLY$-DEFINABLE)
(MODAPP::LEX-MEASURE-TERMS)
(MODAPP::G2-JUSTIFICATION)
(MODAPP::BADGER)
(MODAPP::COUNT-TO-NIL)
(MODAPP::EXECUTABLE-BADGE)
(MODAPP::EXECUTABLE-TAMEP
 (646 290 (:REWRITE DEFAULT-+-2))
 (401 290 (:REWRITE DEFAULT-+-1))
 (256 14 (:REWRITE O<=-O-FINP-DEF))
 (184 46 (:DEFINITION INTEGER-ABS))
 (184 23 (:DEFINITION LENGTH))
 (152 152 (:REWRITE DEFAULT-CAR))
 (144 144 (:REWRITE DEFAULT-CDR))
 (115 23 (:DEFINITION LEN))
 (107 70 (:REWRITE DEFAULT-<-2))
 (104 26 (:REWRITE O-P-O-INFP-CAR))
 (94 70 (:REWRITE DEFAULT-<-1))
 (63 10 (:REWRITE O-FIRST-EXPT-<))
 (52 14 (:REWRITE AC-<))
 (50 10 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (48 16 (:DEFINITION MODAPP::APPLY$-BADGEP))
 (48 8 (:DEFINITION SYMBOL-LISTP))
 (46 46 (:REWRITE DEFAULT-UNARY-MINUS))
 (43 20 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (32 16 (:DEFINITION MODAPP::WEAK-APPLY$-BADGE-P))
 (30 6 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (28 14 (:REWRITE O-INFP-O-FINP-O<=))
 (26 26 (:REWRITE O-P-DEF-O-FINP-1))
 (23 23 (:TYPE-PRESCRIPTION LEN))
 (23 23 (:REWRITE DEFAULT-REALPART))
 (23 23 (:REWRITE DEFAULT-NUMERATOR))
 (23 23 (:REWRITE DEFAULT-IMAGPART))
 (23 23 (:REWRITE DEFAULT-DENOMINATOR))
 (23 23 (:REWRITE DEFAULT-COERCE-2))
 (23 23 (:REWRITE DEFAULT-COERCE-1))
 (23 10 (:REWRITE O-FIRST-COEFF-<))
 (16 16 (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
 (14 14 (:REWRITE |a < b & b < c  =>  a < c|))
 (6 6 (:REWRITE ZP-OPEN))
 )
(MODAPP::WELL-FORMED-LAMBDAP)
(MODAPP::CHANGED-FUNCTIONAL-OR-EXPRESSIONAL-FORMALP)
(MODAPP::ACCUMULATE-ILK)
(MODAPP::GUESS-ILKS-ALIST)
(MODAPP::FIND-BADGE-ILK)
(MODAPP::CHECK-ILKS)
(MODAPP::CHECKER
 (507 246 (:REWRITE DEFAULT-+-2))
 (342 246 (:REWRITE DEFAULT-+-1))
 (216 54 (:REWRITE COMMUTATIVITY-OF-+))
 (216 54 (:DEFINITION INTEGER-ABS))
 (216 27 (:DEFINITION LENGTH))
 (167 9 (:REWRITE O<=-O-FINP-DEF))
 (135 27 (:DEFINITION LEN))
 (82 64 (:REWRITE DEFAULT-<-2))
 (77 77 (:REWRITE DEFAULT-CDR))
 (74 64 (:REWRITE DEFAULT-<-1))
 (69 69 (:REWRITE FOLD-CONSTS-IN-+))
 (54 54 (:REWRITE DEFAULT-UNARY-MINUS))
 (53 53 (:REWRITE DEFAULT-CAR))
 (36 9 (:REWRITE O-P-O-INFP-CAR))
 (35 9 (:REWRITE AC-<))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (27 27 (:REWRITE DEFAULT-REALPART))
 (27 27 (:REWRITE DEFAULT-NUMERATOR))
 (27 27 (:REWRITE DEFAULT-IMAGPART))
 (27 27 (:REWRITE DEFAULT-DENOMINATOR))
 (27 27 (:REWRITE DEFAULT-COERCE-2))
 (27 27 (:REWRITE DEFAULT-COERCE-1))
 (18 9 (:REWRITE O-INFP-O-FINP-O<=))
 (9 9 (:REWRITE |a < b & b < c  =>  a < c|))
 (6 1 (:REWRITE O-FIRST-EXPT-<))
 (4 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (2 1 (:REWRITE O-FIRST-COEFF-<))
 )
; Omitting the following entry because the package of
; the event name is unknown in the certification world.
#|
(FLAG::FLAG-EQUIV-LEMMA)
|#
(MODAPP::CHECKER-EQUIVALENCES)
(MODAPP::ALIST-OKP)
(MODAPP::FLAG-LEMMA-FOR-GUESS-ILKS-ALIST-LEMMA
 (26010 306 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (25092 306 (:DEFINITION MODAPP::TAMEP))
 (15980 3648 (:REWRITE O-P-O-INFP-CAR))
 (13311 153 (:DEFINITION TRUE-LISTP))
 (7482 1158 (:DEFINITION LEN))
 (6111 679 (:DEFINITION ASSOC-EQUAL))
 (5036 3648 (:REWRITE O-P-DEF-O-FINP-1))
 (2316 1158 (:REWRITE DEFAULT-+-2))
 (1836 1836 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (1836 1836 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (1388 1388 (:TYPE-PRESCRIPTION O-FINP))
 (1170 78 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (1158 1158 (:REWRITE DEFAULT-+-1))
 (1092 78 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (1014 78 (:DEFINITION ARGLISTP1))
 (918 306 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (858 78 (:DEFINITION ALL-VARS1))
 (612 612 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (540 540 (:REWRITE DEFAULT-COERCE-2))
 (540 540 (:REWRITE DEFAULT-COERCE-1))
 (295 59 (:DEFINITION MODAPP::FIND-BADGE-ILK))
 (156 156 (:REWRITE LEGAL-VARIABLE-OR-CONSTANT-NAMEP-IMPLIES-SYMBOLP))
 (156 78 (:DEFINITION ADD-TO-SET-EQUAL))
 (78 78 (:REWRITE ARITIES-OKP-IMPLIES-ARITY))
 )
(MODAPP::GUESS-ILKS-ALIST-LEMMA)
(MODAPP::GUESS-ILKS-ALIST-LIST-LEMMA)
(MODAPP::BADGE-TABLE-OKP)
(MODAPP::APPLY$-BADGEP-HONS-GET-LEMMA
 (8960 112 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (8638 105 (:DEFINITION MODAPP::TAMEP))
 (8482 8452 (:REWRITE DEFAULT-CDR))
 (5188 56 (:DEFINITION TRUE-LISTP))
 (4713 4713 (:REWRITE DEFAULT-CAR))
 (4062 276 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (2827 134 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (2496 624 (:REWRITE O-P-O-INFP-CAR))
 (2299 136 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (1785 105 (:DEFINITION LENGTH))
 (1050 105 (:DEFINITION SYMBOL-LISTP))
 (630 630 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (630 630 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (624 624 (:REWRITE O-P-DEF-O-FINP-1))
 (584 292 (:REWRITE DEFAULT-+-2))
 (525 525 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (315 105 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (292 292 (:REWRITE DEFAULT-+-1))
 (210 210 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (105 105 (:REWRITE DEFAULT-COERCE-2))
 (105 105 (:REWRITE DEFAULT-COERCE-1))
 (100 100 (:REWRITE DEFAULT-<-2))
 (100 100 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::WEAK-APPLY$-BADGE-P))
 )
(MODAPP::APPLY$-BADGEP-EXECUTABLE-BADGE-LEMMA
 (3742 46 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (3608 44 (:DEFINITION MODAPP::TAMEP))
 (2696 2696 (:REWRITE DEFAULT-CDR))
 (2105 23 (:DEFINITION TRUE-LISTP))
 (1503 42 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (1437 40 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (1401 1237 (:REWRITE DEFAULT-CAR))
 (940 102 (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 3))
 (748 44 (:DEFINITION LENGTH))
 (736 184 (:REWRITE O-P-O-INFP-CAR))
 (440 44 (:DEFINITION SYMBOL-LISTP))
 (264 264 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (264 264 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (232 116 (:REWRITE DEFAULT-+-2))
 (220 220 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (184 184 (:REWRITE O-P-DEF-O-FINP-1))
 (132 44 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (132 22 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
 (116 116 (:REWRITE DEFAULT-+-1))
 (88 88 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (72 72 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (52 26 (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
 (44 44 (:REWRITE DEFAULT-COERCE-2))
 (44 44 (:REWRITE DEFAULT-COERCE-1))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (40 40 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-<-1))
 )
(MODAPP::APPLY$-BADGEP-EXECUTABLE-BADGE
 (138 6 (:DEFINITION FGETPROP))
 (132 68 (:REWRITE DEFAULT-CAR))
 (120 30 (:REWRITE O-P-O-INFP-CAR))
 (104 56 (:REWRITE DEFAULT-CDR))
 (90 10 (:DEFINITION ASSOC-EQUAL))
 (60 60 (:TYPE-PRESCRIPTION O-P))
 (30 30 (:REWRITE O-P-DEF-O-FINP-1))
 (22 2 (:DEFINITION MODAPP::BADGE-TABLE-OKP))
 )
(MODAPP::FLAG-LEMMA-FOR-GUESS-ILKS-ALIST-CORRECT
 (503039 6689 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (483310 6520 (:DEFINITION MODAPP::TAMEP))
 (172996 41370 (:REWRITE O-P-O-INFP-CAR))
 (48886 41370 (:REWRITE O-P-DEF-O-FINP-1))
 (37380 37380 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (36510 36510 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (32664 16332 (:REWRITE DEFAULT-+-2))
 (18690 6520 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (16332 16332 (:REWRITE DEFAULT-+-1))
 (12170 12170 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (7516 7516 (:TYPE-PRESCRIPTION O-FINP))
 (7067 7067 (:REWRITE DEFAULT-COERCE-2))
 (7067 7067 (:REWRITE DEFAULT-COERCE-1))
 (6945 463 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (6482 463 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (6019 463 (:DEFINITION ARGLISTP1))
 (5093 463 (:DEFINITION ALL-VARS1))
 (1581 1502 (:REWRITE DEFAULT-<-1))
 (1502 1502 (:REWRITE DEFAULT-<-2))
 (1023 1023 (:REWRITE LEGAL-VARIABLE-OR-CONSTANT-NAMEP-IMPLIES-SYMBOLP))
 (926 463 (:DEFINITION ADD-TO-SET-EQUAL))
 (510 510 (:REWRITE ARITIES-OKP-IMPLIES-ARITY))
 (64 64 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MODAPP::GUESS-ILKS-ALIST-CORRECT)
(MODAPP::GUESS-ILKS-ALIST-LIST-CORRECT)
(MODAPP::APPLY$-EQUIVALENCE)
(MODAPP::APPLY$-EQUIVALENCE-NECC)
(MODAPP::FN-EQUAL)
(MODAPP::APPLY$-EQUIVALENCE-NECC-REWRITER
 (8 4 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 )
(MODAPP::FN-EQUAL-IS-AN-EQUIVALENCE
 (208 208 (:REWRITE DEFAULT-CDR))
 (112 16 (:DEFINITION SYMBOL-LISTP))
 (64 64 (:REWRITE DEFAULT-CAR))
 (64 16 (:REWRITE O-P-O-INFP-CAR))
 (56 56 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (48 16 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (40 16 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (32 32 (:TYPE-PRESCRIPTION O-P))
 (16 16 (:REWRITE O-P-DEF-O-FINP-1))
 (8 8 (:REWRITE MODAPP::APPLY$-EQUIVALENCE-NECC))
 )
(MODAPP::FN-EQUAL-IMPLIES-EQUAL-APPLY$-1
 (56 2 (:DEFINITION MODAPP::TAMEP-FUNCTIONP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 2 (:REWRITE O-P-O-INFP-CAR))
 (6 6 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (6 2 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (4 4 (:TYPE-PRESCRIPTION O-P))
 (4 2 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (2 2 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE O-P-DEF-O-FINP-1))
 (2 2 (:REWRITE MODAPP::APPLY$-EQUIVALENCE-NECC-REWRITER))
 )
(MODAPP::DEFCONG-FN-EQUAL-EQUAL-EVENTS)
(MODAPP::WARRANT-NAME
 (30 30 (:REWRITE DEFAULT-SYMBOL-NAME))
 (30 30 (:REWRITE DEFAULT-COERCE-2))
 (30 30 (:REWRITE DEFAULT-COERCE-1))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 )
(MODAPP::WARRANT-FN
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(MODAPP::TAMENESS-CONDITIONS)
(MODAPP::SUCCESSIVE-CADRS)
(MODAPP::NECC-NAME-ARGS-INSTANCE)
(MODAPP::DEFWARRANT-EVENT)
(MODAPP::DEFWARRANT-FN1)
(MODAPP::DEFWARRANT-FN)
(MODAPP::LAMB)
(MODAPP::CONSP-LAMB)
(MODAPP::CONSP-CDR-LAMB)
(MODAPP::CONSP-CDDR-LAMB)
(MODAPP::CDDDR-LAMB)
(MODAPP::CAR-LAMB)
(MODAPP::LAMBDA-FORMALS-LAMB)
(MODAPP::LAMBDA-BODY-LAMB)
(MODAPP::LAMB-REDUCTION)
(MODAPP::XLAMB)
