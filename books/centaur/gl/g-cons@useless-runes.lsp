(GL-SYM::|COMMON-LISP::CDR$|
 (233 5 (:DEFINITION ACL2-COUNT))
 (85 28 (:REWRITE DEFAULT-+-2))
 (50 28 (:REWRITE DEFAULT-+-1))
 (33 3 (:DEFINITION LENGTH))
 (30 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (24 3 (:DEFINITION LEN))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE-QUOTED-CONSTANT FIX-UNDER-NUMBER-EQUIV))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (3 3 (:TYPE-PRESCRIPTION LEN))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE GL::TAG-WHEN-ATOM))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-SYM::|COMMON-LISP::CDR$-PRESERVES-HYP|
 (322 322 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (184 92 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (159 53 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (106 106 (:TYPE-PRESCRIPTION BOOLEANP))
 (92 92 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (78 78 (:REWRITE GL::TAG-WHEN-ATOM))
 (30 30 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (28 14 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE ZP-OPEN))
 )
(GL-SYM::|COMMON-LISP::CDR$-OF-BFR-HYP-FIX|
 (462 231 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (263 89 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (231 231 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (170 170 (:TYPE-PRESCRIPTION BOOLEANP))
 (143 143 (:REWRITE GL::TAG-WHEN-ATOM))
 (72 36 (:REWRITE DEFAULT-CDR))
 (56 56 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (16 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE ZP-OPEN))
 )
(GL::|BFR-HYP-EQUIV-IMPLIES-EQUAL-COMMON-LISP::CDR$-2|)
(GL-SYM::|COMMON-LISP::CDR$|
 (624 624 (:TYPE-PRESCRIPTION GL::BFR-UNASSUME$A))
 (133 48 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (127 127 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (85 85 (:TYPE-PRESCRIPTION BOOLEANP))
 (55 55 (:TYPE-PRESCRIPTION GL::BFR-UNASSUME))
 (42 14 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (37 9 (:REWRITE GL::GLCP-CONFIG-P-WHEN-WRONG-TAG))
 (35 35 (:REWRITE GL::TAG-WHEN-ATOM))
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (18 6 (:REWRITE DEFAULT-CDR))
 (16 16 (:TYPE-PRESCRIPTION MK-G-ITE))
 (16 8 (:TYPE-PRESCRIPTION GL::MK-G-BDD-ITE))
 (14 7 (:REWRITE GL::TAG-WHEN-GLCP-CONFIG-P))
 (12 12 (:REWRITE GL::BFR-ASSUME-CORRECT))
 (10 2 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-THM::CDR-DEPENDENCIES
 (129 43 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (101 101 (:REWRITE GL::TAG-WHEN-ATOM))
 (92 92 (:TYPE-PRESCRIPTION BOOLEANP))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-G-INTEGER->BITS))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-G-BOOLEAN->BOOL))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-CAR-OF-GOBJ))
 (36 18 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (30 6 (:REWRITE GL::GOBJ-DEPENDS-ON-CAR-OF-GOBJ-LIST))
 (18 18 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (18 18 (:TYPE-PRESCRIPTION GL::GOBJ-LIST-DEPENDS-ON))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 6 (:REWRITE GL::PBFR-DEPENDS-ON-WHEN-BOOLEANP))
 (10 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (3 3 (:TYPE-PRESCRIPTION GL::GL-CONS))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-THM::|COMMON-LISP::CDR$-CORRECT|
 (2648 2648 (:REWRITE GL::TAG-WHEN-ATOM))
 (1342 1342 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (790 395 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT-FOR-EVAL-G-BASE))
 (790 395 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT-FOR-EVAL-G-BASE))
 (510 51 (:DEFINITION HONS-ASSOC-EQUAL))
 (401 401 (:TYPE-PRESCRIPTION GL::GENERAL-INTEGERP))
 (401 401 (:TYPE-PRESCRIPTION GL::GENERAL-BOOLEANP))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ZEROP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-TRUNCATE-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOLP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOL-NAME-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-STRINGP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-REM-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-REALPART-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-RATIONALP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-PLUSP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NUMERATOR-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NULL-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NOT-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MOD-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MINUSP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MAYBE-INTEGER-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGNOT-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGBITP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGAPP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LISTP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTEGERP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTEGER-LENGTH-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INT-SET-SIGN-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-IMPLIES-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-IMAGPART-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-HONS-ASSOC-EQUAL-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-FLOOR-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQUAL-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQL-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQ-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ENDP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CONSP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-COERCE-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CHARACTERP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CHAR-CODE-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CAR-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOLEANP-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL-FIX$INLINE-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL->SIGN-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL->BIT$INLINE-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-MINUS-FOR-GL-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGXOR-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGIOR-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGEQV-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGAND-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ATOM-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ASH-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-=-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-<-CALL))
 (222 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-/=-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-UNARY---CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-PKG-WITNESS-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-LAMBDA))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-IF-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-DENOMINATOR-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-CONS-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-COMPLEX-RATIONALP-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-CODE-CHAR-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-+-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-*-CALL))
 (210 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-ACL2-NUMBERP-CALL))
 (204 102 (:REWRITE GL::GENERAL-CONSP-CORRECT-FOR-EVAL-G-BASE))
 (204 102 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (156 156 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (138 69 (:REWRITE GL::BFR-EVAL-BOOLEANP))
 (132 6 (:REWRITE GL::GENERAL-CONCRETE-OBJ-CORRECT))
 (111 111 (:TYPE-PRESCRIPTION GL::GENERAL-CONSP))
 (102 51 (:REWRITE GL::EVAL-G-BASE-EV-OF-VARIABLE))
 (102 3 (:REWRITE GL::BFR-ASSUME-OF-GTESTS-POSSIBLY-TRUE))
 (102 3 (:REWRITE GL::BFR-ASSUME-OF-GTESTS-POSSIBLY-FALSE))
 (98 49 (:REWRITE GL::BFR-LIST->S-WHEN-S-ENDP))
 (92 23 (:REWRITE GL::CONSP-OF-GEVAL-FOR-EVAL-G-BASE))
 (84 42 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (69 69 (:TYPE-PRESCRIPTION BOOLEANP))
 (60 3 (:REWRITE GL::GENERAL-CONSP-WHEN-GENERAL-CONCRETEP))
 (51 51 (:DEFINITION HONS-EQUAL))
 (49 49 (:TYPE-PRESCRIPTION GL::S-ENDP$INLINE))
 (47 47 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (42 42 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (20 4 (:REWRITE GL::GTESTS-NONNIL-CORRECT-FOR-EVAL-G-BASE))
 (20 4 (:REWRITE GL::GTESTS-NONNIL-CORRECT))
 (15 15 (:REWRITE GL::TAG-OF-G-APPLY))
 (12 6 (:REWRITE GL::GENERIC-GEVAL-WHEN-CONCRETE-GOBJECTP))
 (12 6 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT))
 (12 6 (:REWRITE GL::GENERAL-CONSP-CORRECT))
 (12 6 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT))
 (12 6 (:REWRITE GL::BOOL-COND-ITEP-EVAL))
 (10 10 (:REWRITE ZP-OPEN))
 (6 6 (:TYPE-PRESCRIPTION GL::CONCRETE-GOBJECTP))
 (6 6 (:TYPE-PRESCRIPTION GL::BOOL-COND-ITEP))
 (6 6 (:REWRITE GL::GENERIC-GEVAL-NON-CONS))
 (6 3 (:REWRITE GL::BFR-ASSUME->HYP-CORRECT))
 (6 1 (:REWRITE GL::EVAL-G-BASE-CONS))
 (3 3 (:TYPE-PRESCRIPTION GL::G-APPLY))
 (3 3 (:REWRITE GL::BFR-ASSUME-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION GL::G-KEYWORD-SYMBOLP))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 (1 1 (:REWRITE GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL))
 )
(GL-SYM::|COMMON-LISP::CAR$|
 (233 5 (:DEFINITION ACL2-COUNT))
 (85 28 (:REWRITE DEFAULT-+-2))
 (50 28 (:REWRITE DEFAULT-+-1))
 (33 3 (:DEFINITION LENGTH))
 (30 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (24 3 (:DEFINITION LEN))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE-QUOTED-CONSTANT FIX-UNDER-NUMBER-EQUIV))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (3 3 (:TYPE-PRESCRIPTION LEN))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE GL::TAG-WHEN-ATOM))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-SYM::|COMMON-LISP::CAR$-PRESERVES-HYP|
 (322 322 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (184 92 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (159 53 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (106 106 (:TYPE-PRESCRIPTION BOOLEANP))
 (92 92 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (78 78 (:REWRITE GL::TAG-WHEN-ATOM))
 (30 30 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (28 14 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE ZP-OPEN))
 )
(GL-SYM::|COMMON-LISP::CAR$-OF-BFR-HYP-FIX|
 (462 231 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (263 89 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (231 231 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (170 170 (:TYPE-PRESCRIPTION BOOLEANP))
 (143 143 (:REWRITE GL::TAG-WHEN-ATOM))
 (72 36 (:REWRITE DEFAULT-CAR))
 (56 56 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (16 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE ZP-OPEN))
 )
(GL::|BFR-HYP-EQUIV-IMPLIES-EQUAL-COMMON-LISP::CAR$-2|)
(GL-SYM::|COMMON-LISP::CAR$|
 (624 624 (:TYPE-PRESCRIPTION GL::BFR-UNASSUME$A))
 (133 48 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (127 127 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (85 85 (:TYPE-PRESCRIPTION BOOLEANP))
 (55 55 (:TYPE-PRESCRIPTION GL::BFR-UNASSUME))
 (42 14 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (37 9 (:REWRITE GL::GLCP-CONFIG-P-WHEN-WRONG-TAG))
 (35 35 (:REWRITE GL::TAG-WHEN-ATOM))
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (18 6 (:REWRITE DEFAULT-CAR))
 (16 16 (:TYPE-PRESCRIPTION MK-G-ITE))
 (16 8 (:TYPE-PRESCRIPTION GL::MK-G-BDD-ITE))
 (14 7 (:REWRITE GL::TAG-WHEN-GLCP-CONFIG-P))
 (12 12 (:REWRITE GL::BFR-ASSUME-CORRECT))
 (10 2 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-THM::CAR-DEPENDENCIES
 (129 43 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (101 101 (:REWRITE GL::TAG-WHEN-ATOM))
 (92 92 (:TYPE-PRESCRIPTION BOOLEANP))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-G-INTEGER->BITS))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-G-BOOLEAN->BOOL))
 (63 6 (:REWRITE GL::GOBJ-DEPENDS-ON-CDR-OF-GOBJ))
 (36 18 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (30 6 (:REWRITE GL::GOBJ-DEPENDS-ON-CAR-OF-GOBJ-LIST))
 (18 18 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (18 18 (:TYPE-PRESCRIPTION GL::GOBJ-LIST-DEPENDS-ON))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 6 (:REWRITE GL::PBFR-DEPENDS-ON-WHEN-BOOLEANP))
 (10 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 (3 3 (:TYPE-PRESCRIPTION GL::GL-CONS))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 )
(GL-THM::|COMMON-LISP::CAR$-CORRECT|
 (10771 5660 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (5271 5271 (:TYPE-PRESCRIPTION BOOLEANP))
 (2648 2648 (:REWRITE GL::TAG-WHEN-ATOM))
 (1696 1696 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (1018 665 (:REWRITE DEFAULT-CDR))
 (867 51 (:DEFINITION HONS-ASSOC-EQUAL))
 (808 49 (:DEFINITION GL::BFR-LIST->S))
 (790 395 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT-FOR-EVAL-G-BASE))
 (790 395 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT-FOR-EVAL-G-BASE))
 (486 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-MINUS-FOR-GL-CALL))
 (401 401 (:TYPE-PRESCRIPTION GL::GENERAL-INTEGERP))
 (401 401 (:TYPE-PRESCRIPTION GL::GENERAL-BOOLEANP))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ZEROP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-TRUNCATE-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOLP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOL-NAME-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-STRINGP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-REM-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-REALPART-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-RATIONALP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-PLUSP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NUMERATOR-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NULL-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-NOT-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MOD-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MINUSP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-MAYBE-INTEGER-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGNOT-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGBITP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LOGAPP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-LISTP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTEGERP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTEGER-LENGTH-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-INT-SET-SIGN-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-IMPLIES-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-IMAGPART-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-HONS-ASSOC-EQUAL-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-FLOOR-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQUAL-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQL-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-EQ-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ENDP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CONSP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-COERCE-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CHARACTERP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-CHAR-CODE-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOLEANP-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL-FIX$INLINE-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL->SIGN-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BOOL->BIT$INLINE-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGXOR-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGIOR-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGEQV-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-LOGAND-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ATOM-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-ASH-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-=-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-<-CALL))
 (384 57 (:REWRITE GL::EVAL-G-BASE-EV-OF-/=-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-UNARY---CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-SYMBOL-PACKAGE-NAME-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-PKG-WITNESS-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-IF-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-DENOMINATOR-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-CONS-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-COMPLEX-RATIONALP-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-CODE-CHAR-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-CDR-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-+-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-BINARY-*-CALL))
 (366 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-ACL2-NUMBERP-CALL))
 (346 173 (:REWRITE GL::BFR-EVAL-BOOLEANP))
 (315 54 (:REWRITE GL::EVAL-G-BASE-EV-OF-LAMBDA))
 (294 49 (:DEFINITION GL::FIRST/REST/END))
 (246 6 (:REWRITE GL::GENERAL-CONCRETE-OBJ-CORRECT))
 (245 98 (:REWRITE GL::BFR-LIST->S-WHEN-S-ENDP))
 (210 105 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (204 102 (:REWRITE GL::GENERAL-CONSP-CORRECT-FOR-EVAL-G-BASE))
 (204 51 (:DEFINITION HONS-EQUAL))
 (159 3 (:REWRITE GL::BFR-ASSUME-OF-GTESTS-POSSIBLY-TRUE))
 (159 3 (:REWRITE GL::BFR-ASSUME-OF-GTESTS-POSSIBLY-FALSE))
 (156 156 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (147 147 (:TYPE-PRESCRIPTION GL::S-ENDP$INLINE))
 (116 49 (:DEFINITION GL::BOOL->SIGN))
 (113 23 (:REWRITE GL::CONSP-OF-GEVAL-FOR-EVAL-G-BASE))
 (111 111 (:TYPE-PRESCRIPTION GL::GENERAL-CONSP))
 (105 105 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (102 51 (:REWRITE GL::EVAL-G-BASE-EV-OF-VARIABLE))
 (98 49 (:REWRITE GL::SCDR-WHEN-S-ENDP))
 (84 42 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (63 3 (:REWRITE GL::GENERAL-CONSP-WHEN-GENERAL-CONCRETEP))
 (49 49 (:TYPE-PRESCRIPTION GL::TRUE-LISTP-OF-SCDR))
 (47 47 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (42 42 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (26 4 (:REWRITE GL::GTESTS-NONNIL-CORRECT-FOR-EVAL-G-BASE))
 (24 4 (:REWRITE GL::GTESTS-NONNIL-CORRECT))
 (15 15 (:REWRITE GL::TAG-OF-G-APPLY))
 (13 13 (:REWRITE GL::BOOLEANP-OF-GEVAL-FOR-EVAL-G-BASE))
 (12 6 (:REWRITE GL::GENERIC-GEVAL-WHEN-CONCRETE-GOBJECTP))
 (12 6 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT))
 (12 6 (:REWRITE GL::GENERAL-CONSP-CORRECT))
 (12 6 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT))
 (12 6 (:REWRITE GL::BOOL-COND-ITEP-EVAL))
 (10 10 (:REWRITE ZP-OPEN))
 (6 6 (:TYPE-PRESCRIPTION LOGCONS-TYPE))
 (6 6 (:TYPE-PRESCRIPTION GL::CONCRETE-GOBJECTP))
 (6 6 (:TYPE-PRESCRIPTION GL::BOOL-COND-ITEP))
 (6 6 (:REWRITE GL::GENERIC-GEVAL-NON-CONS))
 (6 3 (:REWRITE GL::BFR-ASSUME->HYP-CORRECT))
 (6 1 (:REWRITE GL::EVAL-G-BASE-CONS))
 (3 3 (:TYPE-PRESCRIPTION GL::G-APPLY))
 (3 3 (:REWRITE GL::BFR-ASSUME-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION GL::G-KEYWORD-SYMBOLP))
 (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE))
 (1 1 (:REWRITE GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL))
 )
(GL-SYM::|COMMON-LISP::CONS$|
 (2 2 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 )
(GL-SYM::|COMMON-LISP::CONS$-PRESERVES-HYP|
 (11 11 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (4 2 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (2 2 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
(GL-SYM::|COMMON-LISP::CONS$-OF-BFR-HYP-FIX|
 (8 4 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (4 4 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
(GL::|BFR-HYP-EQUIV-IMPLIES-EQUAL-COMMON-LISP::CONS$-3|)
(GL-SYM::|COMMON-LISP::CONS$|
 (57 57 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (6 2 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (5 1 (:REWRITE GL::GLCP-CONFIG-P-WHEN-WRONG-TAG))
 (2 1 (:REWRITE GL::TAG-WHEN-GLCP-CONFIG-P))
 (2 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (1 1 (:TYPE-PRESCRIPTION BOOLEANP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(GL-THM::CONS-DEPENDENCIES
 (72 24 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (50 50 (:TYPE-PRESCRIPTION BOOLEANP))
 (42 41 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-ATOM))
 (41 41 (:REWRITE GL::GOBJ-DEPENDS-ON-WHEN-G-VAR))
 (41 41 (:REWRITE GL::GOBJ-DEPENDS-ON-WHEN-G-CONCRETE))
 (24 24 (:REWRITE GL::TAG-WHEN-ATOM))
 (10 2 (:REWRITE GL::GOBJ-DEPENDS-ON-CAR-OF-GOBJ-LIST))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (6 6 (:TYPE-PRESCRIPTION GL::GOBJ-LIST-DEPENDS-ON))
 (6 6 (:REWRITE GL::GOBJ-LIST-DEPENDS-ON-OF-ATOM))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE GL::PBFR-DEPENDS-ON-WHEN-BOOLEANP))
 (2 1 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (1 1 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (1 1 (:TYPE-PRESCRIPTION GL::GL-CONS))
 )
(GL-THM::|COMMON-LISP::CONS$-CORRECT|
 (132 5 (:REWRITE GL::GENERAL-CONCRETE-OBJ-CORRECT-FOR-EVAL-G-BASE))
 (118 3 (:DEFINITION GL::GENERAL-CONCRETEP-DEF))
 (54 18 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (36 36 (:TYPE-PRESCRIPTION BOOLEANP))
 (24 24 (:TYPE-PRESCRIPTION GL::GENERAL-CONCRETEP))
 (24 18 (:REWRITE GL::TAG-WHEN-ATOM))
 (9 9 (:TYPE-PRESCRIPTION GL::GL-CONS))
 (9 9 (:REWRITE GL::GENERAL-CONCRETEP-OF-ATOMIC-CONSTANTS))
 (8 4 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT-FOR-EVAL-G-BASE))
 (8 4 (:REWRITE GL::GENERAL-CONSP-CORRECT-FOR-EVAL-G-BASE))
 (8 4 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT-FOR-EVAL-G-BASE))
 (7 4 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 4 (:TYPE-PRESCRIPTION GL::GENERAL-INTEGERP))
 (4 4 (:TYPE-PRESCRIPTION GL::GENERAL-CONSP))
 (4 4 (:TYPE-PRESCRIPTION GL::GENERAL-BOOLEANP))
 (4 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (1 1 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
