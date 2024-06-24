(SIMP-TF
 (1003 480 (:REWRITE DEFAULT-+-2))
 (639 480 (:REWRITE DEFAULT-+-1))
 (416 416 (:REWRITE DEFAULT-CDR))
 (304 76 (:DEFINITION INTEGER-ABS))
 (304 38 (:DEFINITION LENGTH))
 (192 192 (:REWRITE DEFAULT-CAR))
 (190 38 (:DEFINITION LEN))
 (130 99 (:REWRITE DEFAULT-<-2))
 (122 99 (:REWRITE DEFAULT-<-1))
 (76 76 (:REWRITE DEFAULT-UNARY-MINUS))
 (38 38 (:TYPE-PRESCRIPTION LEN))
 (38 38 (:REWRITE DEFAULT-REALPART))
 (38 38 (:REWRITE DEFAULT-NUMERATOR))
 (38 38 (:REWRITE DEFAULT-IMAGPART))
 (38 38 (:REWRITE DEFAULT-DENOMINATOR))
 (38 38 (:REWRITE DEFAULT-COERCE-2))
 (38 38 (:REWRITE DEFAULT-COERCE-1))
 (18 1 (:DEFINITION WFT-LIST))
 (3 1 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (1 1 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (1 1 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (1 1 (:DEFINITION FUNCTION-SYMBOL))
 )
(SIMP-TF-WFF
 (5372 5372 (:REWRITE DEFAULT-CDR))
 (2494 2494 (:REWRITE DEFAULT-CAR))
 (318 106 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (106 106 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(TF-FREE
 (727 348 (:REWRITE DEFAULT-+-2))
 (459 348 (:REWRITE DEFAULT-+-1))
 (247 247 (:REWRITE DEFAULT-CDR))
 (208 52 (:DEFINITION INTEGER-ABS))
 (208 26 (:DEFINITION LENGTH))
 (153 153 (:REWRITE DEFAULT-CAR))
 (130 26 (:DEFINITION LEN))
 (82 63 (:REWRITE DEFAULT-<-2))
 (74 63 (:REWRITE DEFAULT-<-1))
 (54 3 (:DEFINITION WFT-LIST))
 (52 52 (:REWRITE DEFAULT-UNARY-MINUS))
 (26 26 (:TYPE-PRESCRIPTION LEN))
 (26 26 (:REWRITE DEFAULT-REALPART))
 (26 26 (:REWRITE DEFAULT-NUMERATOR))
 (26 26 (:REWRITE DEFAULT-IMAGPART))
 (26 26 (:REWRITE DEFAULT-DENOMINATOR))
 (26 26 (:REWRITE DEFAULT-COERCE-2))
 (26 26 (:REWRITE DEFAULT-COERCE-1))
 (9 3 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (3 3 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (3 3 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (3 3 (:DEFINITION FUNCTION-SYMBOL))
 )
(TF-FREE-EXCEPT-TOP)
(SIMP-COMPLETE-1
 (4729 4729 (:REWRITE DEFAULT-CDR))
 (1189 1189 (:REWRITE DEFAULT-CAR))
 )
(SIMP-COMPLETE-2
 (246 3 (:DEFINITION SIMP-TF))
 (123 123 (:REWRITE DEFAULT-CDR))
 (90 15 (:DEFINITION LIST3P))
 (72 18 (:DEFINITION LIST2P))
 (63 63 (:REWRITE DEFAULT-CAR))
 (45 3 (:DEFINITION WFQUANT))
 (24 3 (:DEFINITION WFOR))
 (24 3 (:DEFINITION WFIMP))
 (24 3 (:DEFINITION WFIFF))
 (24 3 (:DEFINITION WFAND))
 (18 3 (:DEFINITION WFNOT))
 (6 6 (:DEFINITION VARIABLE-TERM))
 )
(NOT-EQUAL-SUBST-TRUE
 (5 5 (:TYPE-PRESCRIPTION SUBST-FREE))
 )
(NOT-EQUAL-SUBST-FALSE
 (894 894 (:REWRITE DEFAULT-CDR))
 (301 301 (:REWRITE DEFAULT-CAR))
 (301 31 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (213 31 (:DEFINITION DOMAIN-TERM-LIST))
 (135 135 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (100 2 (:DEFINITION SUBST-TERM-LIST))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (54 54 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(SUBST-SIMP-TF-COMMUTE
 (8218 676 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (6304 758 (:DEFINITION DOMAIN-TERM-LIST))
 (3920 140 (:DEFINITION WF-AP-TERM-TOP))
 (3296 3296 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (2080 1040 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (1696 1696 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (420 140 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (140 140 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (140 140 (:DEFINITION FUNCTION-SYMBOL))
 )
(SIMP-TF-XSOUND
 (47205 47205 (:REWRITE DEFAULT-CDR))
 (28767 28767 (:REWRITE DEFAULT-CAR))
 (19600 392 (:DEFINITION SUBST-TERM-LIST))
 (17248 1568 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (12544 1568 (:DEFINITION DOMAIN-TERM-LIST))
 (11368 392 (:DEFINITION WFATOMTOP))
 (10976 392 (:DEFINITION WF-AP-TERM-TOP))
 (10192 784 (:DEFINITION TRUE-LISTP))
 (7840 7840 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (3528 3528 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (1176 392 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (784 392 (:DEFINITION RELATION-SYMBOL))
 (668 668 (:TYPE-PRESCRIPTION SUBST-FREE))
 (392 392 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (392 392 (:DEFINITION LOGIC-SYMBOLP))
 (392 392 (:DEFINITION FUNCTION-SYMBOL))
 (24 24 (:REWRITE NOT-EQUAL-SUBST-TRUE))
 (24 24 (:REWRITE NOT-EQUAL-SUBST-FALSE))
 (22 22 (:REWRITE SUBST-FREE-TRUE))
 )
(SIMP-TF-FSOUND
 (506 2 (:DEFINITION XEVAL))
 (260 2 (:DEFINITION SUBST-FREE))
 (221 221 (:REWRITE DEFAULT-CDR))
 (145 145 (:REWRITE DEFAULT-CAR))
 (138 23 (:DEFINITION LIST3P))
 (112 28 (:DEFINITION LIST2P))
 (100 2 (:DEFINITION SUBST-TERM-LIST))
 (88 8 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (82 1 (:DEFINITION SIMP-TF))
 (75 5 (:DEFINITION WFQUANT))
 (64 8 (:DEFINITION DOMAIN-TERM-LIST))
 (58 2 (:DEFINITION WFATOMTOP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (52 4 (:DEFINITION TRUE-LISTP))
 (40 40 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (30 5 (:DEFINITION WFNOT))
 (24 24 (:TYPE-PRESCRIPTION XEVAL))
 (24 3 (:DEFINITION WFOR))
 (24 3 (:DEFINITION WFIMP))
 (24 3 (:DEFINITION WFIFF))
 (24 3 (:DEFINITION WFAND))
 (22 2 (:DEFINITION WFEXISTS))
 (22 2 (:DEFINITION WFBINARY))
 (22 2 (:DEFINITION WFALL))
 (18 18 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (18 18 (:DEFINITION VARIABLE-TERM))
 (10 2 (:DEFINITION IFF))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(SIMP-TF-DOESNT-INTRODUCE-FREE-VARS
 (60243 170 (:DEFINITION VARS-IN-TERM-LIST))
 (53835 1963 (:REWRITE SUBSET-UNION-2))
 (39899 541 (:DEFINITION UNION-EQUAL))
 (34983 34983 (:REWRITE DEFAULT-CDR))
 (27166 2297 (:DEFINITION MEMBER-EQUAL))
 (26820 180 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (26280 180 (:DEFINITION FREE-OCCURRENCE))
 (23509 2750 (:DEFINITION DOMAIN-TERM-LIST))
 (22473 22473 (:REWRITE DEFAULT-CAR))
 (15547 1417 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (14264 1188 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (13730 13730 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (10080 180 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (9800 350 (:DEFINITION WF-AP-TERM-TOP))
 (9307 9307 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6360 6360 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (5840 5840 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (5629 5629 (:TYPE-PRESCRIPTION FREE-VARS-TYPE))
 (2737 170 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (2340 2340 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (2160 2160 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (1951 153 (:REWRITE DOMAIN-TERM-LIST-SUBSET))
 (1260 180 (:DEFINITION REMOVE-EQUAL))
 (1188 1188 (:REWRITE NOT-MEMBER-SUBSET))
 (1050 350 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (350 350 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (350 350 (:DEFINITION FUNCTION-SYMBOL))
 (308 8 (:REWRITE SUBSET-UNION-3))
 (220 4 (:REWRITE SUBSET-UNION-RIGHT-NOT))
 (196 98 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (156 4 (:REWRITE NOT-MEMBER-UNION-EQUAL))
 (104 4 (:REWRITE MEMBER-UNION-OR))
 (78 2 (:REWRITE NOT-MEMBER-NOT-MEMBER-REMOVE))
 (28 28 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (16 4 (:REWRITE SUBSET-UNION-LEFT-NOT))
 (4 2 (:REWRITE NOT-EQUAL-MEMBER-REMOVE))
 )
(SIMP-TF-PRESERVES-CLOSEDNESS
 (790 2 (:DEFINITION VARS-IN-TERM-LIST))
 (686 22 (:REWRITE SUBSET-UNION-2))
 (438 6 (:DEFINITION UNION-EQUAL))
 (377 377 (:REWRITE DEFAULT-CDR))
 (328 4 (:DEFINITION SIMP-TF))
 (298 2 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (292 2 (:DEFINITION FREE-OCCURRENCE))
 (254 254 (:REWRITE DEFAULT-CAR))
 (247 29 (:DEFINITION DOMAIN-TERM-LIST))
 (176 16 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (151 13 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (147 147 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (112 4 (:DEFINITION WF-AP-TERM-TOP))
 (112 2 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (110 8 (:DEFINITION TRUE-LISTP))
 (98 98 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (74 74 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (64 64 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (41 41 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (32 4 (:DEFINITION WFOR))
 (32 4 (:DEFINITION WFIMP))
 (32 4 (:DEFINITION WFIFF))
 (32 4 (:DEFINITION WFAND))
 (32 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (26 26 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (24 24 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (18 6 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (18 1 (:REWRITE DOMAIN-TERM-LIST-SUBSET))
 (14 2 (:DEFINITION REMOVE-EQUAL))
 (13 13 (:REWRITE NOT-MEMBER-SUBSET))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 (4 4 (:DEFINITION FUNCTION-SYMBOL))
 (1 1 (:REWRITE FREE-VARS-TRUE-LISTP))
 )
(SIMP-TF-PRESERVES-NNFP
 (6294 6294 (:REWRITE DEFAULT-CDR))
 (3247 3247 (:REWRITE DEFAULT-CAR))
 )
