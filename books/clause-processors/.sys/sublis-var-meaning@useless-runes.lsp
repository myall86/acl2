(APPLY-FOR-DEFEVALUATOR)
(CTERM-EV)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(CTERM-EV-OF-FNCALL-ARGS)
(CTERM-EV-OF-VARIABLE)
(CTERM-EV-OF-QUOTE)
(CTERM-EV-OF-LAMBDA)
(CTERM-EV-LST-OF-ATOM)
(CTERM-EV-LST-OF-CONS)
(CTERM-EV-OF-NONSYMBOL-ATOM)
(CTERM-EV-OF-BAD-FNCALL)
(CTERM-EV-OF-ACL2-NUMBERP-CALL)
(CTERM-EV-OF-BINARY-*-CALL)
(CTERM-EV-OF-BINARY-+-CALL)
(CTERM-EV-OF-UNARY---CALL)
(CTERM-EV-OF-UNARY-/-CALL)
(CTERM-EV-OF-<-CALL)
(CTERM-EV-OF-CAR-CALL)
(CTERM-EV-OF-CDR-CALL)
(CTERM-EV-OF-CHAR-CODE-CALL)
(CTERM-EV-OF-CHARACTERP-CALL)
(CTERM-EV-OF-CODE-CHAR-CALL)
(CTERM-EV-OF-COMPLEX-CALL)
(CTERM-EV-OF-COMPLEX-RATIONALP-CALL)
(CTERM-EV-OF-COERCE-CALL)
(CTERM-EV-OF-CONS-CALL)
(CTERM-EV-OF-CONSP-CALL)
(CTERM-EV-OF-DENOMINATOR-CALL)
(CTERM-EV-OF-EQUAL-CALL)
(CTERM-EV-OF-IMAGPART-CALL)
(CTERM-EV-OF-INTEGERP-CALL)
(CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL)
(CTERM-EV-OF-NUMERATOR-CALL)
(CTERM-EV-OF-RATIONALP-CALL)
(CTERM-EV-OF-REALPART-CALL)
(CTERM-EV-OF-STRINGP-CALL)
(CTERM-EV-OF-SYMBOL-NAME-CALL)
(CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL)
(CTERM-EV-OF-SYMBOLP-CALL)
(CTERM-EV-OF-IF-CALL)
(CTERM-EV-OF-NOT-CALL)
(CTERM-EV-CONS-TERM-CORRECT
 (1238 1238 (:REWRITE DEFAULT-CDR))
 (444 295 (:REWRITE CTERM-EV-OF-LAMBDA))
 (97 97 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (48 13 (:REWRITE DEFAULT-CODE-CHAR))
 (45 13 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (43 40 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-<-1))
 (33 33 (:REWRITE DEFAULT-CHAR-CODE))
 (28 13 (:REWRITE DEFAULT-UNARY-/))
 (23 23 (:REWRITE DEFAULT-COMPLEX-2))
 (23 23 (:REWRITE DEFAULT-COMPLEX-1))
 (22 22 (:REWRITE DEFAULT-COERCE-2))
 (19 19 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (18 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 6 (:DEFINITION CHARACTER-LISTP))
 (17 12 (:REWRITE DEFAULT-REALPART))
 (17 12 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (14 11 (:REWRITE DEFAULT-+-2))
 (14 11 (:REWRITE DEFAULT-*-2))
 (13 13 (:REWRITE DEFAULT-SYMBOL-NAME))
 (13 13 (:REWRITE DEFAULT-NUMERATOR))
 (13 13 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 (12 6 (:REWRITE DEFAULT-PKG-IMPORTS))
 (11 11 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-COERCE-3))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:REWRITE COMPLEX-EQUAL))
 )
(CTERM-EV-CONS-TERM1-MV2-CORRECT
 (1136 1136 (:REWRITE DEFAULT-CDR))
 (814 672 (:REWRITE CTERM-EV-OF-LAMBDA))
 (87 87 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (47 12 (:REWRITE DEFAULT-CODE-CHAR))
 (45 11 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (40 37 (:REWRITE DEFAULT-<-2))
 (37 37 (:REWRITE DEFAULT-<-1))
 (27 27 (:REWRITE DEFAULT-CHAR-CODE))
 (27 12 (:REWRITE DEFAULT-UNARY-/))
 (21 21 (:REWRITE DEFAULT-COMPLEX-2))
 (21 21 (:REWRITE DEFAULT-COMPLEX-1))
 (18 18 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (17 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 12 (:REWRITE DEFAULT-REALPART))
 (17 12 (:REWRITE DEFAULT-IMAGPART))
 (16 16 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (12 12 (:REWRITE DEFAULT-SYMBOL-NAME))
 (12 12 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:REWRITE DEFAULT-DENOMINATOR))
 (12 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-*-2))
 (12 6 (:REWRITE DEFAULT-PKG-IMPORTS))
 (12 4 (:DEFINITION CHARACTER-LISTP))
 (11 11 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE DEFAULT-COERCE-3))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(CONS-TERM1-MV2-WHEN-UNCHANGED
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 1 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION CHARACTER-LISTP))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (2 2 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 1 (:REWRITE DEFAULT-PKG-IMPORTS))
 (1 1 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COMPLEX-2))
 (1 1 (:REWRITE DEFAULT-COMPLEX-1))
 (1 1 (:REWRITE DEFAULT-COERCE-3))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CODE-CHAR))
 (1 1 (:REWRITE DEFAULT-CHAR-CODE))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(PSEUDO-TERMP-CONS-TERM
 (831 815 (:REWRITE DEFAULT-CAR))
 (730 722 (:REWRITE DEFAULT-CDR))
 (356 42 (:DEFINITION LENGTH))
 (284 56 (:DEFINITION LEN))
 (200 200 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (166 166 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (126 126 (:TYPE-PRESCRIPTION LEN))
 (114 58 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-+-1))
 (42 14 (:DEFINITION SYMBOL-LISTP))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 (14 14 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (12 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (10 8 (:REWRITE DEFAULT-<-1))
 (9 3 (:DEFINITION CHARACTER-LISTP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (4 2 (:REWRITE DEFAULT-PKG-IMPORTS))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COMPLEX-2))
 (2 2 (:REWRITE DEFAULT-COMPLEX-1))
 (2 2 (:REWRITE DEFAULT-COERCE-3))
 (2 2 (:REWRITE DEFAULT-CODE-CHAR))
 (2 2 (:REWRITE DEFAULT-CHAR-CODE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(PSEUDO-TERMP-CONS-TERM-LAMBDA
 (53 53 (:REWRITE DEFAULT-CDR))
 (38 38 (:REWRITE DEFAULT-CAR))
 (32 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (6 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (5 1 (:DEFINITION QUOTE-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 1 (:DEFINITION QUOTEP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(PSEUDO-TERMP-CONS-TERM1-MV2
 (1275 153 (:DEFINITION LENGTH))
 (1091 1091 (:REWRITE DEFAULT-CDR))
 (1020 204 (:DEFINITION LEN))
 (923 923 (:REWRITE DEFAULT-CAR))
 (459 459 (:TYPE-PRESCRIPTION LEN))
 (410 206 (:REWRITE DEFAULT-+-2))
 (248 113 (:DEFINITION TRUE-LISTP))
 (206 206 (:REWRITE DEFAULT-+-1))
 (180 180 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (153 51 (:DEFINITION SYMBOL-LISTP))
 (145 145 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (55 55 (:REWRITE DEFAULT-COERCE-2))
 (53 53 (:REWRITE DEFAULT-COERCE-1))
 (51 51 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION CHARACTER-LISTP))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (4 2 (:REWRITE DEFAULT-PKG-IMPORTS))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COMPLEX-2))
 (2 2 (:REWRITE DEFAULT-COMPLEX-1))
 (2 2 (:REWRITE DEFAULT-COERCE-3))
 (2 2 (:REWRITE DEFAULT-CODE-CHAR))
 (2 2 (:REWRITE DEFAULT-CHAR-CODE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(TERM-SUBST
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(TERM-SUBST-FLG
 (4 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(TERM-SUBST-FLG-EQUIVALENCES)
(FLAG-LEMMA-FOR-SUBLIS-VAR1-WHEN-UNCHANGED
 (119 119 (:REWRITE DEFAULT-CAR))
 (105 105 (:REWRITE DEFAULT-CDR))
 (55 11 (:DEFINITION QUOTE-LISTP))
 (22 11 (:DEFINITION QUOTEP))
 )
(SUBLIS-VAR1-WHEN-UNCHANGED)
(SUBLIS-VAR1-LST-WHEN-UNCHANGED)
(LEN-OF-SUBLIS-VAR1-LST
 (133 7 (:DEFINITION SUBLIS-VAR1))
 (114 114 (:REWRITE DEFAULT-CDR))
 (86 43 (:REWRITE DEFAULT-+-2))
 (81 81 (:REWRITE DEFAULT-CAR))
 (43 43 (:REWRITE DEFAULT-+-1))
 (35 7 (:DEFINITION QUOTE-LISTP))
 (35 7 (:DEFINITION ASSOC-EQUAL))
 (14 7 (:DEFINITION QUOTEP))
 (7 7 (:TYPE-PRESCRIPTION QUOTE-LISTP))
 )
(FLAG-LEMMA-FOR-PSEUDO-TERMP-OF-SUBLIS-VAR1
 (636 636 (:REWRITE DEFAULT-CDR))
 (591 591 (:REWRITE DEFAULT-CAR))
 (188 94 (:REWRITE DEFAULT-+-2))
 (129 129 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (99 9 (:REWRITE PSEUDO-TERMP-SUBLIS-VAR1-LST))
 (98 98 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (96 12 (:DEFINITION SYMBOL-ALISTP))
 (94 94 (:REWRITE DEFAULT-+-1))
 (80 20 (:DEFINITION STRIP-CDRS))
 (80 16 (:DEFINITION QUOTE-LISTP))
 (60 60 (:TYPE-PRESCRIPTION SYMBOL-ALISTP))
 (33 3 (:REWRITE PSEUDO-TERMP-SUBLIS-VAR1))
 (32 16 (:DEFINITION QUOTEP))
 (17 17 (:REWRITE DEFAULT-COERCE-2))
 (17 17 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE CONS-TERM1-MV2-WHEN-UNCHANGED))
 )
(PSEUDO-TERMP-OF-SUBLIS-VAR1)
(PSEUDO-TERM-LISTP-OF-SUBLIS-VAR1-LST)
(PSEUDO-TERMP-OF-SUBLIS-VAR
 (64 1 (:DEFINITION PSEUDO-TERMP))
 (38 2 (:DEFINITION SUBLIS-VAR1))
 (31 31 (:REWRITE DEFAULT-CDR))
 (29 29 (:REWRITE DEFAULT-CAR))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 1 (:REWRITE SUBLIS-VAR1-WHEN-UNCHANGED))
 (10 2 (:DEFINITION QUOTE-LISTP))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION TRUE-LISTP))
 (4 2 (:DEFINITION QUOTEP))
 (4 1 (:DEFINITION STRIP-CDRS))
 (3 3 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION QUOTE-LISTP))
 (2 2 (:REWRITE SUBLIS-VAR1-LST-WHEN-UNCHANGED))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(FLAG-LEMMA-FOR-SUBLIS-VAR1-IS-TERM-SUBST
 (1468 1340 (:REWRITE DEFAULT-CAR))
 (396 396 (:TYPE-PRESCRIPTION KWOTE-LST))
 (330 330 (:REWRITE DEFAULT-CDR))
 (131 65 (:REWRITE CTERM-EV-OF-UNARY-/-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-UNARY---CALL))
 (131 65 (:REWRITE CTERM-EV-OF-SYMBOLP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-SYMBOL-NAME-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-STRINGP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-REALPART-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-RATIONALP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-NUMERATOR-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-NOT-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-LAMBDA))
 (131 65 (:REWRITE CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-INTEGERP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-IMAGPART-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-IF-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-EQUAL-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-DENOMINATOR-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CONSP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CONS-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-COMPLEX-RATIONALP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-COMPLEX-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-COERCE-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CODE-CHAR-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CHARACTERP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CHAR-CODE-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CDR-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-CAR-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-BINARY-+-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-BINARY-*-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-ACL2-NUMBERP-CALL))
 (131 65 (:REWRITE CTERM-EV-OF-<-CALL))
 (110 22 (:DEFINITION QUOTE-LISTP))
 (71 63 (:REWRITE CTERM-EV-OF-VARIABLE))
 (44 22 (:DEFINITION QUOTEP))
 (32 8 (:DEFINITION KWOTE-LST))
 (8 8 (:DEFINITION KWOTE))
 (1 1 (:REWRITE CONS-TERM1-MV2-WHEN-UNCHANGED))
 )
(SUBLIS-VAR1-IS-TERM-SUBST)
(SUBLIS-VAR1-LST-IS-TERMLIST-SUBST)
(LEN-OF-TERMLIST-SUBST
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 1 (:DEFINITION TERM-SUBST))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(PSEUDO-TERMP-OF-LOOKUP
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (4 1 (:DEFINITION STRIP-CDRS))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(FLAG-LEMMA-FOR-PSEUDO-TERMP-OF-TERM-SUBST
 (410 410 (:REWRITE DEFAULT-CDR))
 (373 373 (:REWRITE DEFAULT-CAR))
 (148 74 (:REWRITE DEFAULT-+-2))
 (98 98 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (80 80 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (74 74 (:REWRITE DEFAULT-+-1))
 (52 13 (:DEFINITION STRIP-CDRS))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 )
(PSEUDO-TERMP-OF-TERM-SUBST)
(PSEUDO-TERM-LISTP-OF-TERMLIST-SUBST)
(CTERM-EV-ALIST)
(LOOKUP-IN-CTERM-EV-ALIST
 (116 112 (:REWRITE DEFAULT-CAR))
 (43 41 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE CTERM-EV-OF-VARIABLE))
 (16 16 (:REWRITE CTERM-EV-OF-UNARY-/-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-UNARY---CALL))
 (16 16 (:REWRITE CTERM-EV-OF-SYMBOLP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-SYMBOL-NAME-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-STRINGP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-REALPART-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-RATIONALP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-QUOTE))
 (16 16 (:REWRITE CTERM-EV-OF-NUMERATOR-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-NOT-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-LAMBDA))
 (16 16 (:REWRITE CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-INTEGERP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-IMAGPART-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-IF-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-EQUAL-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-DENOMINATOR-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CONSP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CONS-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-COMPLEX-RATIONALP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-COMPLEX-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-COERCE-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CODE-CHAR-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CHARACTERP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CHAR-CODE-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CDR-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-CAR-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-BINARY-+-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-BINARY-*-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-ACL2-NUMBERP-CALL))
 (16 16 (:REWRITE CTERM-EV-OF-<-CALL))
 )
(ASSOC-OF-APPEND-WHEN-ALISTP-X
 (124 112 (:REWRITE DEFAULT-CAR))
 (50 25 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (40 34 (:REWRITE DEFAULT-CDR))
 (25 25 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (25 25 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(ALISTP-OF-CTERM-EV-ALIST
 (14 13 (:REWRITE DEFAULT-CAR))
 (10 9 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE CTERM-EV-OF-VARIABLE))
 (3 3 (:REWRITE CTERM-EV-OF-UNARY-/-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-UNARY---CALL))
 (3 3 (:REWRITE CTERM-EV-OF-SYMBOLP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-SYMBOL-NAME-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-STRINGP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-REALPART-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-RATIONALP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-QUOTE))
 (3 3 (:REWRITE CTERM-EV-OF-NUMERATOR-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-NOT-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-LAMBDA))
 (3 3 (:REWRITE CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-INTEGERP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-IMAGPART-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-IF-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-EQUAL-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-DENOMINATOR-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CONSP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CONS-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-COMPLEX-RATIONALP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-COMPLEX-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-COERCE-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CODE-CHAR-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CHARACTERP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CHAR-CODE-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CDR-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-CAR-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-BINARY-+-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-BINARY-*-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-ACL2-NUMBERP-CALL))
 (3 3 (:REWRITE CTERM-EV-OF-<-CALL))
 )
(FLAG-LEMMA-FOR-EVAL-OF-TERM-SUBST
 (626 16 (:DEFINITION CTERM-EV-ALIST))
 (604 572 (:REWRITE DEFAULT-CAR))
 (250 250 (:REWRITE DEFAULT-CDR))
 (175 21 (:DEFINITION LENGTH))
 (140 28 (:DEFINITION LEN))
 (99 99 (:TYPE-PRESCRIPTION KWOTE-LST))
 (80 16 (:DEFINITION BINARY-APPEND))
 (63 63 (:TYPE-PRESCRIPTION LEN))
 (56 28 (:REWRITE DEFAULT-+-2))
 (55 38 (:REWRITE CTERM-EV-OF-UNARY-/-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-UNARY---CALL))
 (55 38 (:REWRITE CTERM-EV-OF-SYMBOLP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-SYMBOL-NAME-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-STRINGP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-REALPART-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-RATIONALP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-NUMERATOR-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-NOT-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-LAMBDA))
 (55 38 (:REWRITE CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-INTEGERP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-IMAGPART-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-IF-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-EQUAL-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-DENOMINATOR-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CONSP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CONS-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-COMPLEX-RATIONALP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-COMPLEX-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-COERCE-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CODE-CHAR-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CHARACTERP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CHAR-CODE-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CDR-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-CAR-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-BINARY-+-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-BINARY-*-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-ACL2-NUMBERP-CALL))
 (55 38 (:REWRITE CTERM-EV-OF-<-CALL))
 (32 32 (:TYPE-PRESCRIPTION CTERM-EV-ALIST))
 (29 29 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (29 29 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (28 28 (:REWRITE DEFAULT-+-1))
 (21 7 (:DEFINITION SYMBOL-LISTP))
 (8 2 (:DEFINITION KWOTE-LST))
 (7 7 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:DEFINITION KWOTE))
 )
(EVAL-OF-TERM-SUBST)
(EVAL-OF-TERMLIST-SUBST)
(EVAL-OF-SUBLIS-VAR
 (78 2 (:DEFINITION CTERM-EV-ALIST))
 (64 1 (:DEFINITION PSEUDO-TERMP))
 (29 29 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE DEFAULT-CDR))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (10 2 (:DEFINITION BINARY-APPEND))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (10 1 (:DEFINITION TERM-SUBST))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION CTERM-EV-ALIST))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE CTERM-EV-OF-VARIABLE))
 (4 4 (:REWRITE CTERM-EV-OF-UNARY-/-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-UNARY---CALL))
 (4 4 (:REWRITE CTERM-EV-OF-SYMBOLP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-SYMBOL-NAME-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-STRINGP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-REALPART-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-RATIONALP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-QUOTE))
 (4 4 (:REWRITE CTERM-EV-OF-NUMERATOR-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-NOT-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-LAMBDA))
 (4 4 (:REWRITE CTERM-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-INTEGERP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-IMAGPART-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-IF-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-EQUAL-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-DENOMINATOR-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CONSP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CONS-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-COMPLEX-RATIONALP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-COMPLEX-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-COERCE-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CODE-CHAR-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CHARACTERP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CHAR-CODE-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CDR-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-CAR-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-BINARY-+-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-BINARY-*-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-ACL2-NUMBERP-CALL))
 (4 4 (:REWRITE CTERM-EV-OF-<-CALL))
 (4 2 (:DEFINITION TRUE-LISTP))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(SUBCOR-VAR1-IN-TERMS-OF-CDR-ASSOC
 (78 74 (:REWRITE DEFAULT-CAR))
 (43 41 (:REWRITE DEFAULT-CDR))
 )
(CONS-TERM1-EQUALS-CONS-TERM1-MV2
 (233 233 (:REWRITE DEFAULT-CAR))
 (153 153 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (19 4 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (9 3 (:DEFINITION CHARACTER-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (6 3 (:REWRITE DEFAULT-PKG-IMPORTS))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE DEFAULT-SYMBOL-NAME))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COMPLEX-2))
 (4 4 (:REWRITE DEFAULT-COMPLEX-1))
 (4 4 (:REWRITE DEFAULT-COERCE-3))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:REWRITE DEFAULT-CODE-CHAR))
 (4 4 (:REWRITE DEFAULT-CHAR-CODE))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 )
(CONS-TERM1-MV2-WHEN-NOT-SYMBOLP
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(FLAG-LEMMA-FOR-SUBCOR-VAR-IS-SUBLIS-VAR1
 (489 489 (:REWRITE DEFAULT-CDR))
 (477 477 (:REWRITE DEFAULT-CAR))
 (300 36 (:DEFINITION LENGTH))
 (240 48 (:DEFINITION LEN))
 (200 40 (:DEFINITION PAIRLIS$))
 (115 17 (:DEFINITION ASSOC-EQUAL))
 (108 108 (:TYPE-PRESCRIPTION LEN))
 (96 48 (:REWRITE DEFAULT-+-2))
 (48 48 (:REWRITE DEFAULT-+-1))
 (42 42 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (40 40 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (36 12 (:DEFINITION SYMBOL-LISTP))
 (30 30 (:TYPE-PRESCRIPTION PAIRLIS$))
 (12 12 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 12 (:REWRITE DEFAULT-COERCE-1))
 (5 5 (:REWRITE CONS-TERM1-MV2-WHEN-UNCHANGED))
 )
(SUBCOR-VAR-IS-SUBLIS-VAR1)
(SUBCOR-VAR-LST-IS-SUBLIS-VAR1-LST)
