(RP::WEAK-RP-CL-HINTS-P)
(RP::RP-CL-HINTS-P)
(RP::GET-META-RULES
 (47 22 (:REWRITE DEFAULT-+-2))
 (32 2 (:DEFINITION LENGTH))
 (31 22 (:REWRITE DEFAULT-+-1))
 (24 2 (:DEFINITION LEN))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (16 4 (:DEFINITION INTEGER-ABS))
 (14 8 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE STR::CONSP-OF-EXPLODE))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (7 5 (:REWRITE DEFAULT-<-2))
 (6 6 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
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
 (2 2 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 )
(RP::RP-CLAUSE-PROCESSOR-AUX)
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR-AUX
 (722050 317 (:DEFINITION PSEUDO-TERMP))
 (528480 4149 (:DEFINITION RP::RP-TERMP))
 (377121 217 (:DEFINITION RP::BETA-SEARCH-REDUCE))
 (357700 2013 (:DEFINITION RP::FALIST-CONSISTENT))
 (328940 754 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (302773 1711 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (288360 647 (:DEFINITION TRUE-LISTP))
 (271724 2001 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (245622 5647 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (211101 1690 (:DEFINITION RP::RP-TERM-LISTP))
 (180841 6273 (:DEFINITION QUOTEP))
 (163628 1522 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (162203 1020 (:DEFINITION APPLY$-BADGEP))
 (148338 5647 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (117676 530 (:DEFINITION SUBSETP-EQUAL))
 (113980 10755 (:REWRITE RP::IS-IF-RP-TERMP))
 (110786 7420 (:DEFINITION MEMBER-EQUAL))
 (102863 353 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (97466 5210 (:REWRITE RP::RP-TERMP-CADR))
 (70854 3710 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (47203 47203 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (26487 336 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (23142 23142 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (17185 17185 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (16430 16430 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (14496 4248 (:REWRITE RP::RP-TERMP-CADDR))
 (14496 4248 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (13354 2015 (:DEFINITION LEN))
 (11412 951 (:DEFINITION LENGTH))
 (11130 11130 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (10861 4248 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (10083 1060 (:DEFINITION NATP))
 (7420 7420 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (6780 6780 (:TYPE-PRESCRIPTION LEN))
 (6456 1297 (:REWRITE RP::RP-TERMP-CADDDR))
 (5961 5961 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (5954 5954 (:TYPE-PRESCRIPTION QUOTEP))
 (5716 5716 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (4724 3487 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (4030 2015 (:REWRITE DEFAULT-+-2))
 (3714 1020 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (3487 3487 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (3180 1590 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (3180 530 (:DEFINITION ALL-NILS))
 (3006 1503 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (2650 2650 (:TYPE-PRESCRIPTION ALL-NILS))
 (2387 217 (:DEFINITION LAMBDA-EXPR-P))
 (2139 367 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (2120 2120 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2015 2015 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (2015 2015 (:REWRITE DEFAULT-+-1))
 (1902 317 (:DEFINITION SYMBOL-LISTP))
 (1677 560 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (1590 1590 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (1504 1504 (:TYPE-PRESCRIPTION RP::EX-FROM-SYNP))
 (1268 634 (:REWRITE STR::CONSP-OF-EXPLODE))
 (1071 534 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (1062 1062 (:LINEAR LEN-WHEN-PREFIXP))
 (951 951 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (918 306 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (886 886 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (836 106 (:DEFINITION RP::INCLUDE-FNC))
 (754 754 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (713 713 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (634 634 (:REWRITE FN-CHECK-DEF-FORMALS))
 (634 317 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (530 530 (:REWRITE DEFAULT-<-2))
 (530 530 (:REWRITE DEFAULT-<-1))
 (504 168 (:DEFINITION ALISTP))
 (327 327 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (327 327 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (327 327 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (317 317 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (317 317 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (306 306 (:REWRITE RP::RP-EVL-OF-FNCALL-ARGS))
 (141 141 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (119 119 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-ALISTP))
 (118 103 (:REWRITE RP::NOT-INCLUDE-RP))
 (115 107 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-RP-STATEP))
 (84 84 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (35 35 (:TYPE-PRESCRIPTION RP::PREPROCESS-THEN-RP-RW))
 (21 21 (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
 (8 8 (:TYPE-PRESCRIPTION RP::RP-STATE-PRESERVEDP))
 (7 7 (:TYPE-PRESCRIPTION RP::RP-STATE-INIT-RULES-FN))
 (5 5 (:REWRITE RP::RP-EVL-CONJOIN-CLAUSES-ATOM))
 (4 4 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-VALID-RP-STATEP))
 )
(RP-REWRITER)
(RP-REWRITER)
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR-LEMMA
 (845 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (601 2 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (499 2 (:DEFINITION RP::RP-TERMP))
 (358 2 (:DEFINITION RP::FALIST-CONSISTENT))
 (338 2 (:DEFINITION RP::RP-TERM-LISTP))
 (321 321 (:REWRITE DEFAULT-CDR))
 (317 5 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (309 6 (:DEFINITION QUOTEP))
 (289 2 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (287 1 (:DEFINITION APPLY$-BADGEP))
 (272 2 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (261 5 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (255 1 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (197 1 (:DEFINITION SUBSETP-EQUAL))
 (184 14 (:DEFINITION MEMBER-EQUAL))
 (177 177 (:REWRITE DEFAULT-CAR))
 (117 7 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (65 65 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (59 59 (:TYPE-PRESCRIPTION RP::RP-TERMP))
 (31 31 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (30 2 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (26 2 (:DEFINITION RP::IS-SYNP$INLINE))
 (21 21 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (20 9 (:REWRITE RP::IS-IF-RP-TERMP))
 (19 2 (:DEFINITION NATP))
 (18 18 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (16 16 (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
 (16 16 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (14 14 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
 (14 14 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (12 5 (:REWRITE RP::RP-TERMP-CADR))
 (12 2 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (11 11 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (10 4 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (10 1 (:DEFINITION DISJOIN))
 (9 1 (:DEFINITION TRUE-LISTP))
 (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (8 4 (:REWRITE RP::RP-TERMP-CADDR))
 (8 4 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (8 4 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 1 (:DEFINITION LEN))
 (6 6 (:TYPE-PRESCRIPTION QUOTEP))
 (6 3 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (6 1 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (6 1 (:DEFINITION ALL-NILS))
 (5 5 (:TYPE-PRESCRIPTION ALL-NILS))
 (5 4 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (5 1 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (5 1 (:DEFINITION DISJOIN2))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (4 4 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (4 2 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (3 3 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (3 1 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (3 1 (:DEFINITION ALISTP))
 (2 2 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
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
 (1 1 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (1 1 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
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
 )
(RP::CORRECTNESS-OF-RP-CLAUSE-PROCESSOR
 (1690 2 (:DEFINITION PSEUDO-TERM-LISTP))
 (1202 4 (:REWRITE RP::RP-TERM-LIST-IMPLIES-PSEUDO-TERM-LISTP))
 (998 4 (:DEFINITION RP::RP-TERMP))
 (716 4 (:DEFINITION RP::FALIST-CONSISTENT))
 (676 4 (:DEFINITION RP::RP-TERM-LISTP))
 (644 644 (:REWRITE DEFAULT-CDR))
 (634 10 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (618 12 (:DEFINITION QUOTEP))
 (578 4 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (574 2 (:DEFINITION APPLY$-BADGEP))
 (544 4 (:DEFINITION RP::FALIST-CONSISTENT-AUX))
 (522 10 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (510 2 (:REWRITE RP::RP-TERMP-IMPLIES-PSEUDO-TERMP))
 (394 2 (:DEFINITION SUBSETP-EQUAL))
 (368 28 (:DEFINITION MEMBER-EQUAL))
 (345 345 (:REWRITE DEFAULT-CAR))
 (234 14 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (123 123 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (118 118 (:TYPE-PRESCRIPTION RP::RP-TERMP))
 (77 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (66 5 (:DEFINITION RP::IS-SYNP$INLINE))
 (62 62 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (42 42 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (40 18 (:REWRITE RP::IS-IF-RP-TERMP))
 (38 4 (:DEFINITION NATP))
 (36 36 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
 (32 32 (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
 (32 32 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (31 31 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
 (30 5 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (28 28 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (24 10 (:REWRITE RP::RP-TERMP-CADR))
 (22 22 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (20 8 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (18 2 (:DEFINITION TRUE-LISTP))
 (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (16 8 (:REWRITE RP::RP-TERMP-CADDR))
 (16 8 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (16 8 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (15 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 2 (:DEFINITION LEN))
 (13 11 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (12 12 (:TYPE-PRESCRIPTION QUOTEP))
 (12 6 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (12 2 (:REWRITE RP::CDR-PSEUDO-TERMP))
 (12 2 (:DEFINITION ALL-NILS))
 (11 11 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (10 10 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
 (10 2 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (8 4 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (7 7 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
 (6 6 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 2 (:DEFINITION ALISTP))
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
 (5 5 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
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
 (1 1 (:REWRITE RP::RP-EVL-CONJOIN-CLAUSES-ATOM))
 )
