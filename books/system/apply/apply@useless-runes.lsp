(BADGE-TYPE
 (117 1 (:DEFINITION APPLY$-BADGEP))
 (73 43 (:REWRITE DEFAULT-CDR))
 (49 1 (:DEFINITION SUBSETP-EQUAL))
 (46 4 (:DEFINITION MEMBER-EQUAL))
 (15 12 (:REWRITE DEFAULT-CAR))
 (6 2 (:DEFINITION NATP))
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (3 3 (:TYPE-PRESCRIPTION LEN))
 (3 1 (:DEFINITION ALL-NILS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION WEAK-APPLY$-BADGE-P))
 (1 1 (:TYPE-PRESCRIPTION ALL-NILS))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(SUITABLY-TAMEP-LISTP-INDUCTION)
(SUITABLY-TAMEP-LISTP-IMPLICANT-1
 (24 24 (:REWRITE DEFAULT-CAR))
 (12 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (11 5 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(TAMEP-IMPLICANT-1
 (496 496 (:REWRITE DEFAULT-CDR))
 (140 140 (:REWRITE DEFAULT-CAR))
 (108 5 (:DEFINITION SUITABLY-TAMEP-LISTP))
 (95 19 (:DEFINITION LEN))
 (44 5 (:REWRITE ZP-OPEN))
 (43 24 (:REWRITE DEFAULT-+-2))
 (37 1 (:DEFINITION SUBSETP-EQUAL))
 (34 4 (:DEFINITION MEMBER-EQUAL))
 (30 15 (:DEFINITION TRUE-LISTP))
 (27 9 (:DEFINITION SYMBOL-LISTP))
 (24 24 (:REWRITE DEFAULT-+-1))
 (13 7 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (7 7 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION ALL-NILS))
 (1 1 (:TYPE-PRESCRIPTION TAMEP-FUNCTIONP))
 )
(EV$-MEASURE)
(EV$-LIST-MEASURE)
(APPLY$-MEASURE)
(APPLY$-LAMBDA-MEASURE)
(LEN-EV$-LIST
 (150 1 (:DEFINITION EV$))
 (119 106 (:REWRITE DEFAULT-CDR))
 (95 1 (:DEFINITION TAMEP))
 (52 26 (:REWRITE DEFAULT-+-2))
 (46 42 (:REWRITE DEFAULT-CAR))
 (28 6 (:REWRITE O-P-O-INFP-CAR))
 (26 26 (:REWRITE DEFAULT-+-1))
 (21 1 (:DEFINITION LAMBDA-OBJECT-BODY))
 (17 1 (:DEFINITION LENGTH))
 (15 1 (:DEFINITION LAMBDA-OBJECT-SHAPEP))
 (10 6 (:REWRITE O-P-DEF-O-FINP-1))
 (9 1 (:DEFINITION ASSOC-EQUAL))
 (7 1 (:DEFINITION SYMBOL-LISTP))
 (4 4 (:TYPE-PRESCRIPTION O-FINP))
 (4 1 (:DEFINITION LAMBDA-OBJECT-FORMALS))
 (2 2 (:TYPE-PRESCRIPTION TAMEP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(COUNT-TO-NIL)
(EXECUTABLE-BADGE)
(EXECUTABLE-TAMEP
 (893 412 (:REWRITE DEFAULT-+-2))
 (566 412 (:REWRITE DEFAULT-+-1))
 (374 21 (:REWRITE O<=-O-FINP-DEF))
 (338 338 (:REWRITE DEFAULT-CDR))
 (264 66 (:DEFINITION INTEGER-ABS))
 (264 33 (:DEFINITION LENGTH))
 (212 212 (:REWRITE DEFAULT-CAR))
 (168 42 (:REWRITE O-P-O-INFP-CAR))
 (165 33 (:DEFINITION LEN))
 (154 102 (:REWRITE DEFAULT-<-2))
 (138 102 (:REWRITE DEFAULT-<-1))
 (93 15 (:REWRITE O-FIRST-EXPT-<))
 (93 15 (:DEFINITION SYMBOL-LISTP))
 (76 21 (:REWRITE AC-<))
 (66 66 (:REWRITE DEFAULT-UNARY-MINUS))
 (63 30 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (42 42 (:REWRITE O-P-DEF-O-FINP-1))
 (42 21 (:REWRITE O-INFP-O-FINP-O<=))
 (33 33 (:TYPE-PRESCRIPTION LEN))
 (33 33 (:REWRITE DEFAULT-REALPART))
 (33 33 (:REWRITE DEFAULT-NUMERATOR))
 (33 33 (:REWRITE DEFAULT-IMAGPART))
 (33 33 (:REWRITE DEFAULT-DENOMINATOR))
 (33 33 (:REWRITE DEFAULT-COERCE-2))
 (33 33 (:REWRITE DEFAULT-COERCE-1))
 (33 15 (:REWRITE O-FIRST-COEFF-<))
 (21 21 (:REWRITE |a < b & b < c  =>  a < c|))
 (6 6 (:REWRITE ZP-OPEN))
 )
(WEAK-WELL-FORMED-LAMBDA-OBJECTP)
(CHANGED-FUNCTIONAL-OR-EXPRESSIONAL-FORMALP)
(ACCUMULATE-ILK)
(GUESS-ILKS-ALIST)
(FIND-BADGE-ILK)
(CHECK-ILKS)
(CHECKER
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
(FLAG::FLAG-EQUIV-LEMMA)
(CHECKER-EQUIVALENCES)
(ALIST-OKP)
(FLAG-LEMMA-FOR-GUESS-ILKS-ALIST-LEMMA
 (36470 34007 (:REWRITE DEFAULT-CDR))
 (33966 306 (:REWRITE TAMEP-IMPLICANT-1))
 (33048 306 (:DEFINITION TAMEP))
 (20337 16118 (:REWRITE DEFAULT-CAR))
 (17289 153 (:DEFINITION TRUE-LISTP))
 (16020 3695 (:REWRITE O-P-O-INFP-CAR))
 (7482 1158 (:DEFINITION LEN))
 (6111 679 (:DEFINITION ASSOC-EQUAL))
 (4935 3695 (:REWRITE O-P-DEF-O-FINP-1))
 (2316 1158 (:REWRITE DEFAULT-+-2))
 (1836 1836 (:TYPE-PRESCRIPTION TAMEP))
 (1836 1836 (:TYPE-PRESCRIPTION SUITABLY-TAMEP-LISTP))
 (1240 1240 (:TYPE-PRESCRIPTION O-FINP))
 (1170 78 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (1158 1158 (:REWRITE DEFAULT-+-1))
 (1092 78 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (1014 78 (:DEFINITION ARGLISTP1))
 (858 78 (:DEFINITION ALL-VARS1))
 (540 540 (:REWRITE DEFAULT-COERCE-2))
 (540 540 (:REWRITE DEFAULT-COERCE-1))
 (295 59 (:DEFINITION FIND-BADGE-ILK))
 (156 156 (:REWRITE LEGAL-VARIABLE-OR-CONSTANT-NAMEP-IMPLIES-SYMBOLP))
 (156 78 (:DEFINITION ADD-TO-SET-EQUAL))
 (78 78 (:REWRITE ARITIES-OKP-IMPLIES-ARITY))
 )
(GUESS-ILKS-ALIST-LEMMA)
(GUESS-ILKS-ALIST-LIST-LEMMA)
(BADGE-TABLE-OKP)
(APPLY$-BADGEP-HONS-GET-LEMMA
 (7340 66 (:REWRITE TAMEP-IMPLICANT-1))
 (7142 66 (:DEFINITION TAMEP))
 (6621 6591 (:REWRITE DEFAULT-CDR))
 (3736 33 (:DEFINITION TRUE-LISTP))
 (3015 3015 (:REWRITE DEFAULT-CAR))
 (1692 423 (:REWRITE O-P-O-INFP-CAR))
 (1386 66 (:DEFINITION LAMBDA-OBJECT-BODY))
 (1122 66 (:DEFINITION LENGTH))
 (1004 66 (:DEFINITION LAMBDA-OBJECT-SHAPEP))
 (660 66 (:DEFINITION SYMBOL-LISTP))
 (423 423 (:REWRITE O-P-DEF-O-FINP-1))
 (396 396 (:TYPE-PRESCRIPTION TAMEP))
 (396 396 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (396 396 (:TYPE-PRESCRIPTION SUITABLY-TAMEP-LISTP))
 (352 176 (:REWRITE DEFAULT-+-2))
 (264 66 (:DEFINITION LAMBDA-OBJECT-FORMALS))
 (176 176 (:REWRITE DEFAULT-+-1))
 (86 86 (:REWRITE DEFAULT-<-2))
 (86 86 (:REWRITE DEFAULT-<-1))
 (66 66 (:REWRITE DEFAULT-COERCE-2))
 (66 66 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION WEAK-APPLY$-BADGE-P))
 )
(APPLY$-BADGEP-EXECUTABLE-BADGE-LEMMA
 (2886 26 (:REWRITE TAMEP-IMPLICANT-1))
 (2808 26 (:DEFINITION TAMEP))
 (2191 2191 (:REWRITE DEFAULT-CDR))
 (1469 13 (:DEFINITION TRUE-LISTP))
 (815 747 (:REWRITE DEFAULT-CAR))
 (546 26 (:DEFINITION LAMBDA-OBJECT-BODY))
 (442 26 (:DEFINITION LENGTH))
 (424 106 (:REWRITE O-P-O-INFP-CAR))
 (390 26 (:DEFINITION LAMBDA-OBJECT-SHAPEP))
 (260 26 (:DEFINITION SYMBOL-LISTP))
 (156 156 (:TYPE-PRESCRIPTION TAMEP))
 (156 156 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (156 156 (:TYPE-PRESCRIPTION SUITABLY-TAMEP-LISTP))
 (136 68 (:REWRITE DEFAULT-+-2))
 (106 106 (:REWRITE O-P-DEF-O-FINP-1))
 (104 26 (:DEFINITION LAMBDA-OBJECT-FORMALS))
 (68 68 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE DEFAULT-COERCE-2))
 (26 26 (:REWRITE DEFAULT-COERCE-1))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 )
(APPLY$-BADGEP-EXECUTABLE-BADGE
 (1144 496 (:REWRITE DEFAULT-CDR))
 (1098 273 (:REWRITE O-P-O-INFP-CAR))
 (931 523 (:REWRITE DEFAULT-CAR))
 (546 546 (:TYPE-PRESCRIPTION O-P))
 (279 273 (:REWRITE O-P-DEF-O-FINP-1))
 (189 21 (:DEFINITION ASSOC-EQUAL))
 (90 6 (:DEFINITION BADGE-TABLE-OKP))
 (6 6 (:TYPE-PRESCRIPTION O-FINP))
 )
(FLAG-LEMMA-FOR-GUESS-ILKS-ALIST-CORRECT
 (605271 6308 (:REWRITE TAMEP-IMPLICANT-1))
 (586347 6308 (:DEFINITION TAMEP))
 (187792 44897 (:REWRITE O-P-O-INFP-CAR))
 (53101 44897 (:REWRITE O-P-DEF-O-FINP-1))
 (35666 35666 (:TYPE-PRESCRIPTION SUITABLY-TAMEP-LISTP))
 (34575 34575 (:TYPE-PRESCRIPTION TAMEP))
 (30494 15247 (:REWRITE DEFAULT-+-2))
 (15247 15247 (:REWRITE DEFAULT-+-1))
 (8204 8204 (:TYPE-PRESCRIPTION O-FINP))
 (7860 524 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (7336 524 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (6812 524 (:DEFINITION ARGLISTP1))
 (6806 6806 (:REWRITE DEFAULT-COERCE-2))
 (6806 6806 (:REWRITE DEFAULT-COERCE-1))
 (5764 524 (:DEFINITION ALL-VARS1))
 (1620 1620 (:REWRITE DEFAULT-<-2))
 (1620 1620 (:REWRITE DEFAULT-<-1))
 (1139 1139 (:REWRITE LEGAL-VARIABLE-OR-CONSTANT-NAMEP-IMPLIES-SYMBOLP))
 (1048 524 (:DEFINITION ADD-TO-SET-EQUAL))
 (733 733 (:REWRITE GUESS-ILKS-ALIST-LIST-LEMMA))
 (553 553 (:REWRITE ARITIES-OKP-IMPLIES-ARITY))
 )
(GUESS-ILKS-ALIST-CORRECT)
(GUESS-ILKS-ALIST-LIST-CORRECT)
(APPLY$-EQUIVALENCE-NECC-REWRITER)
(FN-EQUAL-IMPLIES-EQUAL-APPLY$-1
 (104 2 (:DEFINITION TAMEP-FUNCTIONP))
 (74 74 (:REWRITE DEFAULT-CDR))
 (42 2 (:DEFINITION LAMBDA-OBJECT-BODY))
 (30 2 (:DEFINITION LAMBDA-OBJECT-SHAPEP))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 2 (:REWRITE O-P-O-INFP-CAR))
 (8 2 (:DEFINITION LAMBDA-OBJECT-FORMALS))
 (4 4 (:TYPE-PRESCRIPTION O-P))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE O-P-DEF-O-FINP-1))
 (2 2 (:REWRITE APPLY$-EQUIVALENCE-NECC-REWRITER))
 )
