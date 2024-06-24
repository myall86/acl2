(STEP-SK
 (2395 2395 (:REWRITE DEFAULT-CDR))
 (1328 1328 (:REWRITE DEFAULT-CAR))
 (540 9 (:DEFINITION EXISTS-COUNT))
 (422 202 (:REWRITE DEFAULT-+-2))
 (271 202 (:REWRITE DEFAULT-+-1))
 (112 28 (:DEFINITION INTEGER-ABS))
 (112 14 (:DEFINITION LENGTH))
 (90 30 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (70 14 (:DEFINITION LEN))
 (64 16 (:DEFINITION VAR-LIST))
 (58 41 (:REWRITE DEFAULT-<-2))
 (48 41 (:REWRITE DEFAULT-<-1))
 (29 29 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (5 5 (:TYPE-PRESCRIPTION SUBST-FREE))
 (3 1 (:DEFINITION BINARY-APPEND))
 (1 1 (:REWRITE WFT-LIST-2))
 )
(STEP-SK-PRESERVES-WFF
 (1808 1808 (:REWRITE DEFAULT-CDR))
 (1043 1043 (:REWRITE DEFAULT-CAR))
 (390 3 (:DEFINITION SUBST-FREE))
 (208 52 (:DEFINITION VAR-LIST))
 (150 3 (:DEFINITION SUBST-TERM-LIST))
 (132 12 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (111 37 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (96 12 (:DEFINITION DOMAIN-TERM-LIST))
 (87 3 (:DEFINITION WFATOMTOP))
 (84 3 (:DEFINITION WF-AP-TERM-TOP))
 (78 6 (:DEFINITION TRUE-LISTP))
 (60 60 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (56 28 (:REWRITE DEFAULT-+-2))
 (42 28 (:REWRITE DEFAULT-+-1))
 (18 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (9 3 (:DEFINITION BINARY-APPEND))
 (1 1 (:REWRITE WFT-LIST-2))
 )
(STEP-SK-PRESERVES-NNFP
 (4033 4033 (:REWRITE DEFAULT-CDR))
 (1464 1464 (:REWRITE DEFAULT-CAR))
 (390 3 (:DEFINITION SUBST-FREE))
 (150 3 (:DEFINITION SUBST-TERM-LIST))
 (132 12 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (96 12 (:DEFINITION DOMAIN-TERM-LIST))
 (87 3 (:DEFINITION WFATOMTOP))
 (84 3 (:DEFINITION WF-AP-TERM-TOP))
 (78 6 (:DEFINITION TRUE-LISTP))
 (60 60 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (56 28 (:REWRITE DEFAULT-+-2))
 (42 28 (:REWRITE DEFAULT-+-1))
 (27 27 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (18 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (6 3 (:DEFINITION RELATION-SYMBOL))
 (6 2 (:DEFINITION BINARY-APPEND))
 (3 3 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (3 3 (:DEFINITION LOGIC-SYMBOLP))
 (3 3 (:DEFINITION FUNCTION-SYMBOL))
 )
(STEP-SK-ARITY
 (2244 2244 (:REWRITE DEFAULT-CDR))
 (1232 1232 (:REWRITE DEFAULT-CAR))
 (600 10 (:DEFINITION EXISTS-COUNT))
 (426 204 (:REWRITE DEFAULT-+-2))
 (274 204 (:REWRITE DEFAULT-+-1))
 (112 28 (:DEFINITION INTEGER-ABS))
 (112 14 (:DEFINITION LENGTH))
 (110 10 (:DEFINITION WFEXISTS))
 (87 29 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (71 54 (:REWRITE DEFAULT-<-2))
 (70 14 (:DEFINITION LEN))
 (61 54 (:REWRITE DEFAULT-<-1))
 (29 29 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (29 29 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (29 29 (:DEFINITION FUNCTION-SYMBOL))
 (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 )
(VALIDATOR
 (272 4 (:DEFINITION WFF))
 (183 166 (:REWRITE DEFAULT-CDR))
 (167 150 (:REWRITE DEFAULT-CAR))
 (130 1 (:DEFINITION SUBST-FREE))
 (92 4 (:DEFINITION WFATOM))
 (75 5 (:DEFINITION WFQUANT))
 (72 12 (:DEFINITION BINARY-APPEND))
 (60 15 (:DEFINITION LIST2P))
 (60 10 (:DEFINITION LIST3P))
 (55 5 (:DEFINITION WFBINARY))
 (54 16 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (50 1 (:DEFINITION SUBST-TERM-LIST))
 (44 4 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (30 5 (:DEFINITION WFNOT))
 (29 1 (:DEFINITION WFATOMTOP))
 (28 1 (:DEFINITION WF-AP-TERM-TOP))
 (26 2 (:DEFINITION TRUE-LISTP))
 (10 5 (:DEFINITION RELATION-SYMBOL))
 (5 5 (:DEFINITION LOGIC-SYMBOLP))
 (5 5 (:DEFINITION FUNCTION-SYMBOL))
 (2 2 (:REWRITE WFT-LIST-2))
 (1 1 (:TYPE-PRESCRIPTION SUBST-FREE))
 )
(BUILD-SK
 (2043 2037 (:REWRITE DEFAULT-CDR))
 (1280 1260 (:REWRITE DEFAULT-CAR))
 (1077 490 (:REWRITE DEFAULT-+-2))
 (900 15 (:DEFINITION EXISTS-COUNT))
 (656 490 (:REWRITE DEFAULT-+-1))
 (144 36 (:REWRITE COMMUTATIVITY-OF-+))
 (144 36 (:DEFINITION INTEGER-ABS))
 (144 18 (:DEFINITION LENGTH))
 (133 133 (:REWRITE FOLD-CONSTS-IN-+))
 (116 73 (:REWRITE DEFAULT-<-2))
 (92 73 (:REWRITE DEFAULT-<-1))
 (90 18 (:DEFINITION LEN))
 (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:REWRITE DEFAULT-REALPART))
 (18 18 (:REWRITE DEFAULT-NUMERATOR))
 (18 18 (:REWRITE DEFAULT-IMAGPART))
 (18 18 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:TYPE-PRESCRIPTION SUBST-FREE))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(BUILD-SK-I
 (2271 2261 (:REWRITE DEFAULT-CDR))
 (1420 654 (:REWRITE DEFAULT-+-2))
 (1418 1383 (:REWRITE DEFAULT-CAR))
 (900 15 (:DEFINITION EXISTS-COUNT))
 (880 654 (:REWRITE DEFAULT-+-1))
 (264 66 (:REWRITE COMMUTATIVITY-OF-+))
 (264 66 (:DEFINITION INTEGER-ABS))
 (264 33 (:DEFINITION LENGTH))
 (178 178 (:REWRITE FOLD-CONSTS-IN-+))
 (165 33 (:DEFINITION LEN))
 (150 105 (:REWRITE DEFAULT-<-2))
 (124 105 (:REWRITE DEFAULT-<-1))
 (66 66 (:REWRITE DEFAULT-UNARY-MINUS))
 (33 33 (:TYPE-PRESCRIPTION LEN))
 (33 33 (:REWRITE DEFAULT-REALPART))
 (33 33 (:REWRITE DEFAULT-NUMERATOR))
 (33 33 (:REWRITE DEFAULT-IMAGPART))
 (33 33 (:REWRITE DEFAULT-DENOMINATOR))
 (33 33 (:REWRITE DEFAULT-COERCE-2))
 (33 33 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:TYPE-PRESCRIPTION SUBST-FREE))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(BUILD-SK-TRUE-LISTP-FLG)
(BUILD-SK-D-TRUE-LISTP)
(BUILD-SK-I-TRUE-LISTP)
(BUILD-SK
 (3099 2957 (:REWRITE DEFAULT-CDR))
 (1946 1804 (:REWRITE DEFAULT-CAR))
 (760 28 (:DEFINITION MEMBER-EQUAL))
 (604 186 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (437 46 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (429 72 (:DEFINITION BINARY-APPEND))
 (328 46 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (300 5 (:DEFINITION EXISTS-COUNT))
 (260 2 (:DEFINITION SUBST-FREE))
 (100 2 (:DEFINITION SUBST-TERM-LIST))
 (90 5 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (88 8 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (58 2 (:DEFINITION WFATOMTOP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (52 4 (:DEFINITION TRUE-LISTP))
 (46 46 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (46 46 (:REWRITE NOT-MEMBER-SUBSET))
 (33 33 (:DEFINITION FUNCTION-SYMBOL))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 10 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE WFT-LIST-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(BUILD-SK-I
 (618 585 (:REWRITE DEFAULT-CDR))
 (436 403 (:REWRITE DEFAULT-CAR))
 (165 49 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (130 1 (:DEFINITION SUBST-FREE))
 (123 21 (:DEFINITION BINARY-APPEND))
 (120 2 (:DEFINITION EXISTS-COUNT))
 (50 1 (:DEFINITION SUBST-TERM-LIST))
 (44 4 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (29 1 (:DEFINITION WFATOMTOP))
 (28 1 (:DEFINITION WF-AP-TERM-TOP))
 (26 2 (:DEFINITION TRUE-LISTP))
 (22 2 (:DEFINITION WFEXISTS))
 (9 9 (:DEFINITION FUNCTION-SYMBOL))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE WFT-LIST-2))
 )
(INSERT-FUNC-INTO-INTERP)
(BUILD-SK-ALISTP-FLG
 (7540 58 (:DEFINITION SUBST-FREE))
 (6466 25 (:DEFINITION VALIDATOR))
 (4881 4878 (:REWRITE DEFAULT-CDR))
 (3395 3392 (:REWRITE DEFAULT-CAR))
 (3079 25 (:DEFINITION FEVAL))
 (2900 58 (:DEFINITION SUBST-TERM-LIST))
 (2552 232 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (1856 232 (:DEFINITION DOMAIN-TERM-LIST))
 (1682 58 (:DEFINITION WFATOMTOP))
 (1624 58 (:DEFINITION WF-AP-TERM-TOP))
 (1508 116 (:DEFINITION TRUE-LISTP))
 (1370 83 (:DEFINITION WFQUANT))
 (1160 1160 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (736 736 (:TYPE-PRESCRIPTION SUBST-FREE))
 (522 522 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (366 183 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (300 25 (:DEFINITION WFIMP))
 (300 25 (:DEFINITION WFIFF))
 (275 275 (:TYPE-PRESCRIPTION FEVAL))
 (174 58 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (125 25 (:DEFINITION IFF))
 (116 58 (:DEFINITION RELATION-SYMBOL))
 (108 54 (:REWRITE DEFAULT-+-2))
 (81 54 (:REWRITE DEFAULT-+-1))
 (58 58 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (58 58 (:DEFINITION LOGIC-SYMBOLP))
 (58 58 (:DEFINITION FUNCTION-SYMBOL))
 (46 24 (:REWRITE DEFAULT-<-2))
 (29 25 (:REWRITE SUBST-FREE-TRUE))
 (24 24 (:REWRITE DEFAULT-<-1))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(BUILD-SK-ALISTP)
(BUILD-SK-D-ALISTP)
(STEP-EX)
(STEP-EX-D)
(STEP-SK-SYM-I2
 (2303 2303 (:REWRITE DEFAULT-CDR))
 (1267 1267 (:REWRITE DEFAULT-CAR))
 (600 10 (:DEFINITION EXISTS-COUNT))
 (426 204 (:REWRITE DEFAULT-+-2))
 (274 204 (:REWRITE DEFAULT-+-1))
 (112 28 (:DEFINITION INTEGER-ABS))
 (112 14 (:DEFINITION LENGTH))
 (110 10 (:DEFINITION WFEXISTS))
 (87 29 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (72 55 (:REWRITE DEFAULT-<-2))
 (70 14 (:DEFINITION LEN))
 (62 55 (:REWRITE DEFAULT-<-1))
 (56 14 (:DEFINITION VAR-LIST))
 (29 29 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (29 29 (:DEFINITION FUNCTION-SYMBOL))
 (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (3 1 (:DEFINITION BINARY-APPEND))
 )
(STEP-SK-WITHOUT-EXISTS
 (1438 1438 (:REWRITE DEFAULT-CDR))
 (444 444 (:REWRITE DEFAULT-CAR))
 (260 2 (:DEFINITION SUBST-FREE))
 (100 2 (:DEFINITION SUBST-TERM-LIST))
 (88 8 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (64 8 (:DEFINITION DOMAIN-TERM-LIST))
 (62 32 (:REWRITE DEFAULT-+-2))
 (58 2 (:DEFINITION WFATOMTOP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (52 4 (:DEFINITION TRUE-LISTP))
 (44 32 (:REWRITE DEFAULT-+-1))
 (40 40 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (30 2 (:DEFINITION WFQUANT))
 (18 18 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (14 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (6 2 (:DEFINITION BINARY-APPEND))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(NOT-VAR-OCCURRENCE-APPEND-LIST
 (423 279 (:REWRITE DEFAULT-CAR))
 (418 38 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (304 38 (:DEFINITION DOMAIN-TERM-LIST))
 (264 164 (:REWRITE DEFAULT-CDR))
 (247 19 (:DEFINITION TRUE-LISTP))
 (190 190 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (150 50 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 )
(NOT-VAR-OCCURRENCE-SUBST-TERM-LIST
 (66 6 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (64 8 (:DEFINITION DOMAIN-TERM-LIST))
 (50 1 (:DEFINITION SUBST-TERM-LIST))
 (45 1 (:REWRITE VAR-OCCURRENCE-TERM-LIST-LIST-CONS))
 (40 40 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (39 3 (:DEFINITION TRUE-LISTP))
 (38 38 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE DEFAULT-CDR))
 (24 24 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (24 1 (:DEFINITION MEMBER-EQUAL))
 (22 2 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (18 6 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (12 2 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 1 (:DEFINITION VAR-LIST))
 (3 1 (:REWRITE X-NOT-IN-Y))
 (3 1 (:REWRITE X-NOT-IN-E))
 (2 2 (:REWRITE NOT-MEMBER-SUBSET))
 )
(NOT-FREE-OCCURRENCE-SUBST-FREE
 (6619 6577 (:REWRITE DEFAULT-CDR))
 (5603 513 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (4069 513 (:DEFINITION DOMAIN-TERM-LIST))
 (4054 4054 (:REWRITE DEFAULT-CAR))
 (2545 2545 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (1650 33 (:DEFINITION SUBST-TERM-LIST))
 (573 191 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (351 351 (:TYPE-PRESCRIPTION SUBST-FREE))
 (330 165 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (277 32 (:REWRITE NOT-FREE-SUBST))
 (235 32 (:REWRITE FREE-SUBST))
 (21 21 (:REWRITE DOMAIN-TERM-IS-NOT-CONS))
 )
(NOT-VAR-OCOCURRENCE-LIST-TM
 (45 1 (:REWRITE VAR-OCCURRENCE-TERM-LIST-LIST-CONS))
 (32 4 (:DEFINITION DOMAIN-TERM-LIST))
 (24 1 (:DEFINITION MEMBER-EQUAL))
 (22 2 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (22 2 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (20 20 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (17 17 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE DEFAULT-CAR))
 (14 14 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (13 1 (:DEFINITION TRUE-LISTP))
 (12 4 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (12 2 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (5 5 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 1 (:DEFINITION VAR-LIST))
 (3 1 (:REWRITE X-NOT-IN-Y))
 (3 1 (:REWRITE X-NOT-IN-E))
 (2 2 (:REWRITE NOT-MEMBER-SUBSET))
 )
(NOT-FREE-OCCURRENCE-LIST-TM
 (4437 407 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (4204 4204 (:REWRITE DEFAULT-CDR))
 (3221 407 (:DEFINITION DOMAIN-TERM-LIST))
 (2526 2526 (:REWRITE DEFAULT-CAR))
 (2015 2015 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (1683 22 (:REWRITE NOT-FREE-SUBST))
 (1683 22 (:REWRITE FREE-SUBST))
 (471 157 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (176 176 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (176 88 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (165 165 (:TYPE-PRESCRIPTION SUBST-FREE))
 (59 1 (:REWRITE NOT-VAR-SUBST-TERM-LIST))
 (58 22 (:REWRITE NOT-FREE-OCCURRENCE-SUBST-FREE))
 (50 1 (:DEFINITION SUBST-TERM-LIST))
 (3 1 (:REWRITE NOT-VAR-OCCURRENCE-SUBST-TERM-LIST))
 )
(STEP-SK-PRESERVES-CLOSEDNESS-H1
 (8243 8235 (:REWRITE DEFAULT-CDR))
 (6354 594 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (4596 594 (:DEFINITION DOMAIN-TERM-LIST))
 (3968 3958 (:REWRITE DEFAULT-CAR))
 (2874 2874 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (808 202 (:DEFINITION VAR-LIST))
 (744 248 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (520 4 (:DEFINITION SUBST-FREE))
 (200 4 (:DEFINITION SUBST-TERM-LIST))
 (132 66 (:REWRITE DEFAULT-+-2))
 (99 66 (:REWRITE DEFAULT-+-1))
 (18 10 (:REWRITE DEFAULT-<-2))
 (15 5 (:DEFINITION BINARY-APPEND))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (12 12 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (10 10 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE UNICITY-OF-0))
 (4 2 (:DEFINITION FIX))
 )
(STEP-SK-PRESERVES-CLOSEDNESS-H2
 (543 1 (:DEFINITION STEP-SK))
 (360 6 (:DEFINITION EXISTS-COUNT))
 (270 6 (:REWRITE STEP-SK-WITHOUT-EXISTS))
 (259 259 (:REWRITE DEFAULT-CDR))
 (168 168 (:REWRITE DEFAULT-CAR))
 (156 26 (:DEFINITION LIST3P))
 (136 34 (:DEFINITION LIST2P))
 (130 1 (:DEFINITION SUBST-FREE))
 (121 1 (:DEFINITION FREE-OCCURRENCE))
 (88 8 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (88 8 (:DEFINITION WFBINARY))
 (77 7 (:DEFINITION WFEXISTS))
 (77 7 (:DEFINITION WFALL))
 (64 8 (:DEFINITION DOMAIN-TERM-LIST))
 (58 2 (:DEFINITION WFATOMTOP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (52 4 (:DEFINITION TRUE-LISTP))
 (50 1 (:DEFINITION SUBST-TERM-LIST))
 (48 48 (:TYPE-PRESCRIPTION EXISTS-COUNT))
 (48 8 (:DEFINITION WFNOT))
 (40 40 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (30 2 (:DEFINITION WFQUANT))
 (24 12 (:REWRITE DEFAULT-+-2))
 (22 22 (:DEFINITION VARIABLE-TERM))
 (18 18 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (18 12 (:REWRITE DEFAULT-+-1))
 (8 1 (:DEFINITION WFOR))
 (8 1 (:DEFINITION WFAND))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 (1 1 (:DEFINITION BINARY-APPEND))
 )
(STEP-SK-PRESERVES-CLOSEDNESS-H3
 (3260 2 (:DEFINITION FREE-VARS))
 (2715 5 (:DEFINITION STEP-SK))
 (2530 2 (:DEFINITION VARS-IN-TERM-LIST))
 (2228 22 (:REWRITE SUBSET-UNION-2))
 (2152 28 (:DEFINITION SUBSETP-EQUAL))
 (1680 28 (:DEFINITION EXISTS-COUNT))
 (1346 1346 (:REWRITE DEFAULT-CDR))
 (1218 30 (:REWRITE STEP-SK-WITHOUT-EXISTS))
 (905 905 (:REWRITE DEFAULT-CAR))
 (744 124 (:DEFINITION LIST3P))
 (650 5 (:DEFINITION SUBST-FREE))
 (648 162 (:DEFINITION LIST2P))
 (604 73 (:DEFINITION DOMAIN-TERM-LIST))
 (550 6 (:DEFINITION UNION-EQUAL))
 (440 40 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (418 38 (:DEFINITION WFBINARY))
 (413 3 (:DEFINITION FREE-OCCURRENCE))
 (365 365 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (363 33 (:DEFINITION WFEXISTS))
 (363 33 (:DEFINITION WFALL))
 (298 10 (:DEFINITION WFATOMTOP))
 (298 2 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (280 10 (:DEFINITION WF-AP-TERM-TOP))
 (266 20 (:DEFINITION TRUE-LISTP))
 (250 5 (:DEFINITION SUBST-TERM-LIST))
 (228 38 (:DEFINITION WFNOT))
 (222 222 (:TYPE-PRESCRIPTION EXISTS-COUNT))
 (182 182 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (181 15 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (157 3 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (156 16 (:REWRITE DOMAIN-TERM-LIST-HAS-NO-VARS))
 (150 10 (:DEFINITION WFQUANT))
 (130 15 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (121 121 (:DEFINITION VARIABLE-TERM))
 (112 56 (:REWRITE DEFAULT-+-2))
 (84 56 (:REWRITE DEFAULT-+-1))
 (78 78 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (75 25 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (45 45 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (40 5 (:DEFINITION WFOR))
 (40 5 (:DEFINITION WFAND))
 (32 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (27 27 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (25 25 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (20 10 (:REWRITE DEFAULT-<-2))
 (20 10 (:DEFINITION RELATION-SYMBOL))
 (14 2 (:DEFINITION REMOVE-EQUAL))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:DEFINITION LOGIC-SYMBOLP))
 (10 10 (:DEFINITION FUNCTION-SYMBOL))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 (5 5 (:DEFINITION BINARY-APPEND))
 )
(STEP-SK-PRESERVES-CLOSEDNESS
 (6824 4 (:DEFINITION VARS-IN-TERM-LIST))
 (6516 12 (:DEFINITION STEP-SK))
 (6220 44 (:REWRITE SUBSET-UNION-2))
 (6004 52 (:DEFINITION SUBSETP-EQUAL))
 (4020 67 (:DEFINITION EXISTS-COUNT))
 (3035 3035 (:REWRITE DEFAULT-CDR))
 (2910 72 (:REWRITE STEP-SK-WITHOUT-EXISTS))
 (2019 2019 (:REWRITE DEFAULT-CAR))
 (1560 12 (:DEFINITION SUBST-FREE))
 (1152 140 (:DEFINITION DOMAIN-TERM-LIST))
 (1100 12 (:DEFINITION UNION-EQUAL))
 (880 80 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (869 79 (:DEFINITION WFEXISTS))
 (869 79 (:DEFINITION WFALL))
 (701 701 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (600 12 (:DEFINITION SUBST-TERM-LIST))
 (596 4 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (584 4 (:DEFINITION FREE-OCCURRENCE))
 (560 20 (:DEFINITION WF-AP-TERM-TOP))
 (532 40 (:DEFINITION TRUE-LISTP))
 (531 531 (:TYPE-PRESCRIPTION EXISTS-COUNT))
 (344 344 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (312 32 (:REWRITE DOMAIN-TERM-LIST-HAS-NO-VARS))
 (293 25 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (268 134 (:REWRITE DEFAULT-+-2))
 (230 25 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (224 4 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (201 134 (:REWRITE DEFAULT-+-1))
 (156 156 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (152 152 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (136 46 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (96 12 (:DEFINITION WFOR))
 (96 12 (:DEFINITION WFAND))
 (80 80 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (64 4 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (52 52 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (48 48 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (48 24 (:REWRITE DEFAULT-<-2))
 (45 45 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (28 4 (:DEFINITION REMOVE-EQUAL))
 (25 25 (:REWRITE NOT-MEMBER-SUBSET))
 (24 24 (:REWRITE DEFAULT-<-1))
 (20 20 (:DEFINITION FUNCTION-SYMBOL))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:REWRITE CDR-CONS))
 (12 12 (:REWRITE CAR-CONS))
 (12 12 (:DEFINITION BINARY-APPEND))
 )
