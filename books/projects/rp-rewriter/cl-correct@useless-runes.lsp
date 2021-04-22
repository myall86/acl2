(RP::WEAK-RP-CL-HINTS-P)
(RP::RP-CL-HINTS-P)
(RP::GET-META-RULES
 (47 22 (:REWRITE DEFAULT-+-2))
 (31 22 (:REWRITE DEFAULT-+-1))
 (30 2 (:DEFINITION LENGTH))
 (30 1 (:REWRITE O<=-O-FINP-DEF))
 (22 2 (:DEFINITION LEN))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (16 4 (:DEFINITION INTEGER-ABS))
 (14 8 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (7 5 (:REWRITE DEFAULT-<-2))
 (6 6 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 5 (:REWRITE DEFAULT-<-1))
 (6 4 (:REWRITE STR::CONSP-OF-EXPLODE))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (4 2 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (4 1 (:REWRITE O-P-O-INFP-CAR))
 (4 1 (:REWRITE AC-<))
 (3 3 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (2 2 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (2 2 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (2 2 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (2 2 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 (2 2 (:DEFINITION NOT))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE O-P-DEF-O-FINP-1))
 )
(RP::RP-CLAUSE-PROCESSOR-AUX)
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR-AUX
 (437648 153 (:DEFINITION PSEUDO-TERMP))
 (284175 2025 (:DEFINITION RP::RP-TERMP))
 (223097 105 (:DEFINITION RP::BETA-SEARCH-REDUCE))
 (205304 835 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (202695 993 (:DEFINITION RP::FALIST-CONSISTENT))
 (198863 317 (:DEFINITION TRUE-LISTP))
 (189887 2737 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (174995 374 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (171477 817 (:DEFINITION RP::RP-TERM-LISTP))
 (157584 981 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (156162 3068 (:DEFINITION QUOTEP))
 (149037 730 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (148097 470 (:DEFINITION APPLY$-BADGEP))
 (122744 1040 (:DEFINITION SUBSETP-EQUAL))
 (101944 7800 (:DEFINITION MEMBER-EQUAL))
 (99111 99091 (:REWRITE DEFAULT-CAR))
 (79505 2737 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (71485 189 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (66928 2600 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
 (64040 4160 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (58680 5216 (:REWRITE RP::IS-IF-RP-TERMP))
 (50742 2537 (:REWRITE RP::RP-TERMP-CADR))
 (48644 14753 (:REWRITE O-P-O-INFP-CAR))
 (21982 21982 (:TYPE-PRESCRIPTION O-P))
 (15600 15600 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (13968 172 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (13520 13520 (:REWRITE SUBSETP-IMPLIES-MEMBER))
 (12480 12480 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (11909 10991 (:REWRITE O-P-DEF-O-FINP-1))
 (11171 11171 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (8421 8421 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (8320 8320 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (7280 7280 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (7241 977 (:DEFINITION LEN))
 (7216 1743 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (7020 2067 (:REWRITE RP::RP-TERMP-CADDR))
 (7020 2067 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (6273 459 (:DEFINITION LENGTH))
 (5726 5726 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (4940 520 (:DEFINITION NATP))
 (3302 3302 (:TYPE-PRESCRIPTION LEN))
 (3060 612 (:REWRITE RP::RP-TERMP-CADDDR))
 (2909 2909 (:TYPE-PRESCRIPTION QUOTEP))
 (2773 2773 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (2600 2600 (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
 (2448 153 (:DEFINITION SYMBOL-LISTP))
 (1954 977 (:REWRITE DEFAULT-+-2))
 (1743 1743 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (1560 780 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (1560 260 (:DEFINITION ALL-NILS))
 (1486 743 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (1470 105 (:DEFINITION LAMBDA-EXPR-P))
 (1460 470 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (1300 1300 (:TYPE-PRESCRIPTION ALL-NILS))
 (1191 205 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (977 977 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (977 977 (:REWRITE DEFAULT-+-1))
 (918 918 (:TYPE-PRESCRIPTION O-FINP))
 (835 835 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
 (780 780 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (688 688 (:TYPE-PRESCRIPTION RP::EX-FROM-SYNP))
 (616 88 (:DEFINITION ALISTP))
 (546 170 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (520 520 (:LINEAR LEN-WHEN-PREFIXP))
 (520 260 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (520 260 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (459 459 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (459 306 (:REWRITE STR::CONSP-OF-EXPLODE))
 (446 446 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (397 397 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (374 374 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (327 183 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (318 54 (:DEFINITION RP::INCLUDE-FNC))
 (306 306 (:REWRITE FN-CHECK-DEF-FORMALS))
 (306 153 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (260 260 (:REWRITE DEFAULT-<-2))
 (260 260 (:REWRITE DEFAULT-<-1))
 (260 260 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
 (260 260 (:LINEAR BOUNDS-POSITION-EQUAL))
 (219 183 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (219 183 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (219 183 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (206 170 (:REWRITE RP::RP-EVL-OF-FNCALL-ARGS))
 (153 153 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (153 153 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (89 89 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (66 51 (:REWRITE RP::NOT-INCLUDE-RP))
 (65 57 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-RP-STATEP))
 (48 48 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (13 13 (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
 (8 8 (:TYPE-PRESCRIPTION RP::RP-STATE-PRESERVEDP))
 (7 7 (:TYPE-PRESCRIPTION RP::PREPROCESS-THEN-RP-RW))
 (2 2 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-VALID-RP-STATEP))
 (1 1 (:REWRITE RP::RP-EVL-CONJOIN-CLAUSES-ATOM))
 )
(RP-REWRITER)
(RP-REWRITER)
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR-LEMMA
 (1142 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (870 2 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (584 2 (:DEFINITION RP::RP-TERM-LISTP))
 (562 5 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (553 6 (:DEFINITION QUOTEP))
 (551 2 (:DEFINITION RP::RP-TERMP))
 (537 2 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (535 1 (:DEFINITION APPLY$-BADGEP))
 (430 4 (:DEFINITION SUBSETP-EQUAL))
 (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
 (373 373 (:REWRITE DEFAULT-CDR))
 (350 30 (:DEFINITION MEMBER-EQUAL))
 (322 2 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (285 5 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (283 1 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (239 10 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
 (220 16 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (194 194 (:REWRITE DEFAULT-CAR))
 (92 26 (:REWRITE O-P-O-INFP-CAR))
 (60 60 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (57 57 (:TYPE-PRESCRIPTION RP::RP-TERMP))
 (52 52 (:REWRITE SUBSETP-IMPLIES-MEMBER))
 (48 48 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (44 44 (:TYPE-PRESCRIPTION O-P))
 (32 32 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (28 28 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (28 2 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
 (22 22 (:REWRITE O-P-DEF-O-FINP-1))
 (20 9 (:REWRITE RP::IS-IF-RP-TERMP))
 (19 2 (:DEFINITION NATP))
 (18 18 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (16 16 (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
 (16 16 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (14 14 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (13 4 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (12 5 (:REWRITE RP::RP-TERMP-CADR))
 (12 2 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (11 11 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (10 10 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
 (10 10 (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
 (10 1 (:DEFINITION TRUE-LISTP))
 (8 4 (:REWRITE RP::RP-TERMP-CADDR))
 (8 4 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (8 4 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 1 (:DEFINITION LEN))
 (7 1 (:DEFINITION ALISTP))
 (6 6 (:TYPE-PRESCRIPTION QUOTEP))
 (6 3 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (6 1 (:DEFINITION DISJOIN))
 (6 1 (:DEFINITION ALL-NILS))
 (5 5 (:TYPE-PRESCRIPTION ALL-NILS))
 (5 1 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (4 4 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (4 2 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (4 1 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (3 3 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (3 1 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (2 2 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
 (2 2 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:LINEAR LEN-WHEN-PREFIXP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (2 1 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (1 1 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (1 1 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (1 1 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (1 1 (:REWRITE RP::RP-EVL-CONJOIN-ATOM))
 (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
 (1 1 (:LINEAR BOUNDS-POSITION-EQUAL))
 (1 1 (:DEFINITION DISJOIN2))
 )
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR
 (2284 2 (:DEFINITION PSEUDO-TERM-LISTP))
 (1740 4 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (1168 4 (:DEFINITION RP::RP-TERM-LISTP))
 (1124 10 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (1106 12 (:DEFINITION QUOTEP))
 (1102 4 (:DEFINITION RP::RP-TERMP))
 (1074 4 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (1070 2 (:DEFINITION APPLY$-BADGEP))
 (860 8 (:DEFINITION SUBSETP-EQUAL))
 (828 4 (:DEFINITION RP::FALIST-CONSISTENT))
 (748 748 (:REWRITE DEFAULT-CDR))
 (700 60 (:DEFINITION MEMBER-EQUAL))
 (644 4 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (570 10 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (566 2 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (478 20 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
 (440 32 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (379 379 (:REWRITE DEFAULT-CAR))
 (184 52 (:REWRITE O-P-O-INFP-CAR))
 (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (114 114 (:TYPE-PRESCRIPTION RP::RP-TERMP))
 (104 104 (:REWRITE SUBSETP-IMPLIES-MEMBER))
 (96 96 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (88 88 (:TYPE-PRESCRIPTION O-P))
 (72 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (64 64 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (61 5 (:DEFINITION RP::IS-SYNP$INLINE))
 (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (44 44 (:REWRITE O-P-DEF-O-FINP-1))
 (40 18 (:REWRITE RP::IS-IF-RP-TERMP))
 (38 4 (:DEFINITION NATP))
 (36 36 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (32 32 (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
 (32 32 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (30 5 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (29 11 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (28 28 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (24 10 (:REWRITE RP::RP-TERMP-CADR))
 (23 23 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
 (22 22 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (20 20 (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
 (20 2 (:DEFINITION TRUE-LISTP))
 (16 8 (:REWRITE RP::RP-TERMP-CADDR))
 (16 8 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (16 8 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (15 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 2 (:DEFINITION LEN))
 (14 2 (:DEFINITION ALISTP))
 (12 12 (:TYPE-PRESCRIPTION QUOTEP))
 (12 6 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (12 2 (:DEFINITION ALL-NILS))
 (11 11 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (10 10 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
 (10 2 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 4 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (8 2 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (7 7 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
 (6 6 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (5 5 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (5 5 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (4 4 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (4 2 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
 (2 2 (:LINEAR BOUNDS-POSITION-EQUAL))
 (1 1 (:REWRITE RP::RP-EVL-CONJOIN-CLAUSES-ATOM))
 )
