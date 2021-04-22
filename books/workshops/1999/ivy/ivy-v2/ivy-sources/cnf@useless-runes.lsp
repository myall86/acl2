(DIST-OR-AND-2
 (198 95 (:REWRITE DEFAULT-+-2))
 (128 95 (:REWRITE DEFAULT-+-1))
 (81 81 (:REWRITE DEFAULT-CDR))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (33 33 (:REWRITE DEFAULT-CAR))
 (28 21 (:REWRITE DEFAULT-<-2))
 (26 21 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(DIST-OR-AND
 (198 95 (:REWRITE DEFAULT-+-2))
 (129 129 (:REWRITE DEFAULT-CDR))
 (128 95 (:REWRITE DEFAULT-+-1))
 (73 73 (:REWRITE DEFAULT-CAR))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (36 2 (:DEFINITION WFT-LIST))
 (30 2 (:DEFINITION WFQUANT))
 (28 21 (:REWRITE DEFAULT-<-2))
 (26 21 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:DEFINITION VARIABLE-TERM))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (4 4 (:TYPE-PRESCRIPTION WFT-LIST))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(DIST-OR-AND-2-WFF
 (970 904 (:REWRITE DEFAULT-CDR))
 (654 606 (:REWRITE DEFAULT-CAR))
 (372 372 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 (81 27 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (27 27 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(DIST-OR-AND-WFF
 (1199 1133 (:REWRITE DEFAULT-CDR))
 (850 802 (:REWRITE DEFAULT-CAR))
 (372 372 (:TYPE-PRESCRIPTION DIST-OR-AND))
 (294 21 (:DEFINITION DIST-OR-AND-2))
 (114 38 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (38 38 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(CNF
 (2511 2511 (:REWRITE DEFAULT-CDR))
 (1768 1768 (:REWRITE DEFAULT-CAR))
 (504 244 (:REWRITE DEFAULT-+-2))
 (469 469 (:TYPE-PRESCRIPTION CNF))
 (396 11 (:DEFINITION DIST-OR-AND))
 (326 244 (:REWRITE DEFAULT-+-1))
 (242 22 (:DEFINITION WFAND))
 (201 67 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (198 11 (:DEFINITION DIST-OR-AND-2))
 (160 40 (:DEFINITION INTEGER-ABS))
 (160 20 (:DEFINITION LENGTH))
 (100 20 (:DEFINITION LEN))
 (68 52 (:REWRITE DEFAULT-<-2))
 (67 67 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (64 52 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:TYPE-PRESCRIPTION LEN))
 (20 20 (:REWRITE DEFAULT-REALPART))
 (20 20 (:REWRITE DEFAULT-NUMERATOR))
 (20 20 (:REWRITE DEFAULT-IMAGPART))
 (20 20 (:REWRITE DEFAULT-DENOMINATOR))
 (20 20 (:REWRITE DEFAULT-COERCE-2))
 (20 20 (:REWRITE DEFAULT-COERCE-1))
 )
(CNF-WFF
 (959 959 (:REWRITE DEFAULT-CDR))
 (642 642 (:REWRITE DEFAULT-CAR))
 (252 252 (:TYPE-PRESCRIPTION CNF))
 (108 3 (:DEFINITION DIST-OR-AND))
 (81 27 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (66 6 (:DEFINITION WFAND))
 (54 3 (:DEFINITION DIST-OR-AND-2))
 (27 27 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(DIST-OR-AND-2-CNFP
 (24578 24308 (:REWRITE DEFAULT-CDR))
 (1005 1005 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 )
(DIST-OR-AND-CNFP
 (9494 9386 (:REWRITE DEFAULT-CDR))
 (4536 4482 (:REWRITE DEFAULT-CAR))
 (1386 99 (:DEFINITION DIST-OR-AND-2))
 (402 402 (:TYPE-PRESCRIPTION DIST-OR-AND))
 )
(CNF-CNFP
 (1833 1833 (:REWRITE DEFAULT-CDR))
 (838 838 (:REWRITE DEFAULT-CAR))
 (144 144 (:TYPE-PRESCRIPTION CNF))
 (108 3 (:DEFINITION DIST-OR-AND))
 (54 3 (:DEFINITION DIST-OR-AND-2))
 )
(SUBST-DIST-DIST-2
 (12920 12671 (:REWRITE DEFAULT-CDR))
 (12730 254 (:DEFINITION SUBST-TERM-LIST))
 (11037 1007 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (9986 9795 (:REWRITE DEFAULT-CAR))
 (8021 1007 (:DEFINITION DOMAIN-TERM-LIST))
 (7112 254 (:DEFINITION WF-AP-TERM-TOP))
 (5015 5015 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (2258 2258 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (762 254 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (254 254 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (254 254 (:DEFINITION FUNCTION-SYMBOL))
 )
(SUBST-DIST-DIST
 (14218 13969 (:REWRITE DEFAULT-CDR))
 (12680 253 (:DEFINITION SUBST-TERM-LIST))
 (11015 1005 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (10451 10260 (:REWRITE DEFAULT-CAR))
 (8005 1005 (:DEFINITION DOMAIN-TERM-LIST))
 (7084 253 (:DEFINITION WF-AP-TERM-TOP))
 (5995 345 (:DEFINITION DIST-OR-AND-2))
 (5005 5005 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (2253 2253 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (759 253 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (253 253 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (253 253 (:DEFINITION FUNCTION-SYMBOL))
 )
(SUBST-CNF-COMMUTE
 (4407 4407 (:REWRITE DEFAULT-CDR))
 (1982 1982 (:REWRITE DEFAULT-CAR))
 (1049 99 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (950 19 (:DEFINITION SUBST-TERM-LIST))
 (924 25 (:DEFINITION DIST-OR-AND))
 (757 99 (:DEFINITION DOMAIN-TERM-LIST))
 (568 50 (:DEFINITION WFAND))
 (532 19 (:DEFINITION WF-AP-TERM-TOP))
 (475 475 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (462 25 (:DEFINITION DIST-OR-AND-2))
 (342 171 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (207 207 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (57 19 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (19 19 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (19 19 (:DEFINITION FUNCTION-SYMBOL))
 )
(DIST-OR-AND-2-FSOUND
 (2132 1927 (:REWRITE DEFAULT-CDR))
 (912 835 (:REWRITE DEFAULT-CAR))
 (810 810 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 (195 39 (:DEFINITION IFF))
 (78 78 (:DEFINITION VARIABLE-TERM))
 )
(DIST-OR-AND-FSOUND
 (2442 2255 (:REWRITE DEFAULT-CDR))
 (1049 979 (:REWRITE DEFAULT-CAR))
 (737 737 (:TYPE-PRESCRIPTION DIST-OR-AND))
 (215 43 (:DEFINITION IFF))
 (154 11 (:DEFINITION DIST-OR-AND-2))
 (86 86 (:DEFINITION VARIABLE-TERM))
 )
(CNF-FSOUND-FLG
 (23920 184 (:DEFINITION SUBST-FREE))
 (22366 21776 (:REWRITE DEFAULT-CDR))
 (21703 26 (:REWRITE NOT-FREE-FEVAL-SAME))
 (20637 26 (:DEFINITION FREE-VARS))
 (16001 15731 (:REWRITE DEFAULT-CAR))
 (11201 26 (:DEFINITION VARS-IN-TERM-LIST))
 (10384 944 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (9849 286 (:REWRITE SUBSET-UNION-2))
 (9424 1152 (:DEFINITION DOMAIN-TERM-LIST))
 (9200 184 (:DEFINITION SUBST-TERM-LIST))
 (8456 338 (:DEFINITION SUBSETP-EQUAL))
 (7203 236 (:DEFINITION WFATOMTOP))
 (6608 236 (:DEFINITION WF-AP-TERM-TOP))
 (6265 472 (:DEFINITION TRUE-LISTP))
 (5760 5760 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (5694 78 (:DEFINITION UNION-EQUAL))
 (4228 337 (:DEFINITION MEMBER-EQUAL))
 (4163 26 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (4085 26 (:DEFINITION FREE-OCCURRENCE))
 (3744 104 (:DEFINITION DIST-OR-AND))
 (2540 2540 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (2496 208 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (1872 104 (:DEFINITION DIST-OR-AND-2))
 (1490 26 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (1400 1400 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (988 988 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (958 958 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (754 754 (:TYPE-PRESCRIPTION FREE-VARS-TYPE))
 (708 236 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (625 236 (:DEFINITION RELATION-SYMBOL))
 (520 520 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (405 26 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (389 236 (:DEFINITION LOGIC-SYMBOLP))
 (338 338 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (336 336 (:TYPE-PRESCRIPTION SUBST-FREE))
 (336 168 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (312 312 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (262 262 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (236 236 (:DEFINITION FUNCTION-SYMBOL))
 (208 208 (:REWRITE NOT-MEMBER-SUBSET))
 (182 26 (:DEFINITION REMOVE-EQUAL))
 (104 104 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE SUBST-FREE-TRUE))
 )
(CNF-FSOUND)
(DIST-OR-AND-2-DOESNT-INTRODUCE-FREE-VARS
 (2987 2896 (:REWRITE DEFAULT-CDR))
 (1354 1298 (:REWRITE DEFAULT-CAR))
 (1245 119 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (896 119 (:DEFINITION DOMAIN-TERM-LIST))
 (563 563 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (448 448 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 (96 32 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (32 32 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(DIST-OR-AND-DOESNT-INTRODUCE-FREE-VARS
 (6467 6376 (:REWRITE DEFAULT-CDR))
 (4897 451 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (3711 3655 (:REWRITE DEFAULT-CAR))
 (3552 451 (:DEFINITION DOMAIN-TERM-LIST))
 (2223 2223 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (1316 94 (:DEFINITION DIST-OR-AND-2))
 (448 448 (:TYPE-PRESCRIPTION DIST-OR-AND))
 (345 115 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (115 115 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(CNF-DOESNT-INTRODUCE-FREE-VARS
 (2332 2332 (:REWRITE DEFAULT-CDR))
 (1227 121 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (1033 1033 (:REWRITE DEFAULT-CAR))
 (877 121 (:DEFINITION DOMAIN-TERM-LIST))
 (553 553 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (204 204 (:TYPE-PRESCRIPTION CNF))
 (108 3 (:DEFINITION DIST-OR-AND))
 (84 28 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (66 6 (:DEFINITION WFAND))
 (54 3 (:DEFINITION DIST-OR-AND-2))
 (28 28 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(CNF-PRESERVES-CLOSEDNESS-ALMOST
 (1503 2 (:DEFINITION FREE-VARS))
 (787 2 (:DEFINITION VARS-IN-TERM-LIST))
 (683 22 (:REWRITE SUBSET-UNION-2))
 (607 28 (:DEFINITION SUBSETP-EQUAL))
 (438 6 (:DEFINITION UNION-EQUAL))
 (430 3 (:DEFINITION FREE-OCCURRENCE))
 (418 418 (:REWRITE DEFAULT-CDR))
 (405 5 (:DEFINITION CNF))
 (315 315 (:REWRITE DEFAULT-CAR))
 (315 2 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (296 35 (:DEFINITION DOMAIN-TERM-LIST))
 (220 20 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (204 30 (:DEFINITION LIST3P))
 (181 15 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (180 5 (:DEFINITION DIST-OR-AND))
 (175 175 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (168 5 (:DEFINITION WFATOMTOP))
 (159 3 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (153 10 (:DEFINITION WFQUANT))
 (142 35 (:DEFINITION LIST2P))
 (140 5 (:DEFINITION WF-AP-TERM-TOP))
 (139 10 (:DEFINITION TRUE-LISTP))
 (113 10 (:DEFINITION WFBINARY))
 (110 10 (:DEFINITION WFAND))
 (90 5 (:DEFINITION DIST-OR-AND-2))
 (75 75 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (74 74 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (72 72 (:TYPE-PRESCRIPTION CNF))
 (45 45 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (33 5 (:DEFINITION WFNOT))
 (32 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (30 30 (:DEFINITION VARIABLE-TERM))
 (27 27 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (19 5 (:DEFINITION RELATION-SYMBOL))
 (15 5 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (14 5 (:DEFINITION LOGIC-SYMBOLP))
 (14 2 (:DEFINITION REMOVE-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 (5 5 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (5 5 (:DEFINITION FUNCTION-SYMBOL))
 )
(CNF-PRESERVES-CLOSEDNESS
 (2332 5 (:DEFINITION VARS-IN-TERM-LIST))
 (2072 55 (:REWRITE SUBSET-UNION-2))
 (1802 65 (:DEFINITION SUBSETP-EQUAL))
 (1296 16 (:DEFINITION CNF))
 (1095 15 (:DEFINITION UNION-EQUAL))
 (1058 1058 (:REWRITE DEFAULT-CDR))
 (813 5 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (798 5 (:DEFINITION FREE-OCCURRENCE))
 (789 789 (:REWRITE DEFAULT-CAR))
 (590 70 (:DEFINITION DOMAIN-TERM-LIST))
 (576 16 (:DEFINITION DIST-OR-AND))
 (440 40 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (367 31 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (352 32 (:DEFINITION WFAND))
 (351 351 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (288 16 (:DEFINITION DIST-OR-AND-2))
 (288 5 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (287 20 (:DEFINITION TRUE-LISTP))
 (280 10 (:DEFINITION WF-AP-TERM-TOP))
 (256 256 (:TYPE-PRESCRIPTION CNF))
 (190 190 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (185 185 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (152 152 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (100 100 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (80 5 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (65 65 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (60 60 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (35 5 (:DEFINITION REMOVE-EQUAL))
 (33 11 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (31 31 (:REWRITE NOT-MEMBER-SUBSET))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 15 (:REWRITE CDR-CONS))
 (15 15 (:REWRITE CAR-CONS))
 (11 11 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (10 10 (:DEFINITION FUNCTION-SYMBOL))
 )
(DIST-OR-AND-2-PRESERVES-QUANTIFIER-FREE
 (1080 1026 (:REWRITE DEFAULT-CDR))
 (490 448 (:REWRITE DEFAULT-CAR))
 (300 300 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 )
(DIST-OR-AND-PRESERVES-QUANTIFIER-FREE
 (1336 1282 (:REWRITE DEFAULT-CDR))
 (697 655 (:REWRITE DEFAULT-CAR))
 (406 29 (:DEFINITION DIST-OR-AND-2))
 (300 300 (:TYPE-PRESCRIPTION DIST-OR-AND))
 )
(CNF-PRESERVES-QUANTIFIER-FREE
 (915 915 (:REWRITE DEFAULT-CDR))
 (438 438 (:REWRITE DEFAULT-CAR))
 (168 168 (:TYPE-PRESCRIPTION CNF))
 (108 3 (:DEFINITION DIST-OR-AND))
 (66 6 (:DEFINITION WFAND))
 (54 3 (:DEFINITION DIST-OR-AND-2))
 )
(LEADING-ALLS-DIST-OR-AND-2
 (111 95 (:REWRITE DEFAULT-CDR))
 (52 52 (:TYPE-PRESCRIPTION DIST-OR-AND-2))
 (36 32 (:REWRITE DEFAULT-CAR))
 (4 4 (:DEFINITION VARIABLE-TERM))
 )
(LEADING-ALLS-DIST-OR-AND
 (140 124 (:REWRITE DEFAULT-CDR))
 (98 7 (:DEFINITION DIST-OR-AND-2))
 (52 52 (:TYPE-PRESCRIPTION DIST-OR-AND))
 (52 48 (:REWRITE DEFAULT-CAR))
 (4 4 (:DEFINITION VARIABLE-TERM))
 )
(LEADING-ALLS-CNF
 (401 401 (:REWRITE DEFAULT-CDR))
 (191 191 (:REWRITE DEFAULT-CAR))
 (108 3 (:DEFINITION DIST-OR-AND))
 (66 6 (:DEFINITION WFAND))
 (56 56 (:TYPE-PRESCRIPTION CNF))
 (54 3 (:DEFINITION DIST-OR-AND-2))
 )
(CNF-OF-UNIVERSAL-PREFIX-NNF-IS-UNIVERSAL-PREFIX-CNF
 (3747 3747 (:REWRITE DEFAULT-CDR))
 (2838 27 (:DEFINITION QUANT-PREFIX-NNF))
 (1878 1878 (:REWRITE DEFAULT-CAR))
 (242 25 (:DEFINITION WFAND))
 (180 5 (:DEFINITION DIST-OR-AND))
 (147 147 (:TYPE-PRESCRIPTION CNF))
 (90 5 (:DEFINITION DIST-OR-AND-2))
 (40 5 (:DEFINITION WFOR))
 )
