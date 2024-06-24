(EVAL-TERM-LIST-PRESERVES-LEN
 (1056 66 (:DEFINITION MEMBER-EQUAL))
 (909 777 (:REWRITE DEFAULT-CAR))
 (858 99 (:DEFINITION DOMAIN-TERM-LIST))
 (825 132 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (726 66 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (594 594 (:TYPE-PRESCRIPTION FRINGE))
 (594 66 (:DEFINITION FRINGE))
 (561 561 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (429 33 (:DEFINITION TRUE-LISTP))
 (396 66 (:DEFINITION BINARY-APPEND))
 (324 36 (:DEFINITION FASSOC))
 (242 121 (:REWRITE DEFAULT-+-2))
 (132 132 (:REWRITE NOT-MEMBER-SUBSET))
 (121 121 (:REWRITE DEFAULT-+-1))
 (66 66 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (33 33 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 )
(SUBST-TERM-LIST-PRESERVES-LEN
 (528 48 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (384 48 (:DEFINITION DOMAIN-TERM-LIST))
 (332 332 (:REWRITE DEFAULT-CAR))
 (312 24 (:DEFINITION TRUE-LISTP))
 (240 240 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (130 65 (:REWRITE DEFAULT-+-2))
 (72 24 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (65 65 (:REWRITE DEFAULT-+-1))
 (24 24 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(DOMAIN-LIST-DOMAIN
 (153 15 (:DEFINITION FRINGE))
 (135 20 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (100 70 (:REWRITE DEFAULT-CAR))
 (100 65 (:REWRITE DEFAULT-CDR))
 (90 15 (:DEFINITION BINARY-APPEND))
 (25 5 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (20 20 (:REWRITE NOT-MEMBER-SUBSET))
 (15 5 (:DEFINITION VARIABLE-TERM))
 (5 5 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(RELATIONS-1
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(FUNCTIONS-1
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(VAR-LIST-APPEND-ONE
 (20 12 (:REWRITE DEFAULT-CAR))
 (17 9 (:REWRITE DEFAULT-CDR))
 )
(VAR-LIST-PROPS
 (88 7 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (86 86 (:REWRITE DEFAULT-CAR))
 (68 8 (:DEFINITION DOMAIN-TERM-LIST))
 (39 13 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (37 37 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (29 29 (:REWRITE DEFAULT-CDR))
 )
(DOMAIN-TERM-LIST-APPEND
 (63 17 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (37 4 (:REWRITE DOMAIN-APPEND-LEFT))
 (29 17 (:DEFINITION VARIABLE-TERM))
 (23 15 (:REWRITE DEFAULT-CAR))
 (20 12 (:REWRITE DEFAULT-CDR))
 (17 17 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (6 4 (:REWRITE DOMAIN-APPEND-RIGHT))
 )
(EVAL-TERM-LIST-ON-DOMAIN-TERM-LIST
 (236 30 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (186 11 (:REWRITE DOMAIN-TERM-LIST-SUBSET))
 (168 137 (:REWRITE DEFAULT-CAR))
 (144 16 (:DEFINITION FRINGE))
 (135 104 (:REWRITE DEFAULT-CDR))
 (126 16 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (100 2 (:DEFINITION FLOOKUP))
 (96 16 (:DEFINITION BINARY-APPEND))
 (78 26 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (58 4 (:DEFINITION TRUE-LISTP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (30 30 (:REWRITE NOT-MEMBER-SUBSET))
 (28 28 (:DEFINITION VARIABLE-TERM))
 (26 26 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (26 26 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 2 (:DEFINITION FASSOC))
 (12 2 (:REWRITE EVAL-TERM-LIST-PRESERVES-LEN))
 (11 11 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (10 2 (:DEFINITION LEN))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:TYPE-PRESCRIPTION FASSOC))
 (4 4 (:DEFINITION FUNCTION-SYMBOL))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 (2 2 (:REWRITE EVAL-TERM-LIST-GIVES-DOMAIN-TERM-LIST))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST
 (7 1 (:DEFINITION DOMAIN-TERM-LIST))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:DEFINITION VARIABLE-TERM))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(EVAL-TERM-LIST-PARTS
 (385 47 (:DEFINITION DOMAIN-TERM-LIST))
 (315 32 (:REWRITE EVAL-TERM-LIST-ON-DOMAIN-TERM-LIST))
 (240 240 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (204 12 (:DEFINITION MEMBER-EQUAL))
 (183 159 (:REWRITE DEFAULT-CAR))
 (167 143 (:REWRITE DEFAULT-CDR))
 (138 24 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (132 12 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (108 108 (:TYPE-PRESCRIPTION FRINGE))
 (108 12 (:DEFINITION FRINGE))
 (78 6 (:DEFINITION TRUE-LISTP))
 (72 12 (:DEFINITION BINARY-APPEND))
 (54 24 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (54 6 (:DEFINITION FASSOC))
 (42 18 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (30 6 (:DEFINITION LEN))
 (24 24 (:REWRITE NOT-MEMBER-SUBSET))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (12 12 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (12 12 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 )
(XEVAL-INTERP-PARTS
 (15064 13726 (:REWRITE DEFAULT-CDR))
 (14020 1718 (:DEFINITION DOMAIN-TERM-LIST))
 (10010 182 (:DEFINITION FLOOKUP))
 (9620 74 (:DEFINITION SUBST-FREE))
 (9398 862 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (8766 974 (:DEFINITION FRINGE))
 (7168 256 (:DEFINITION WF-AP-TERM-TOP))
 (6188 364 (:DEFINITION MEMBER-EQUAL))
 (5844 974 (:DEFINITION BINARY-APPEND))
 (5106 5106 (:TYPE-PRESCRIPTION FRINGE))
 (4248 4248 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (4186 728 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (3700 74 (:DEFINITION SUBST-TERM-LIST))
 (2838 318 (:DEFINITION FASSOC))
 (2146 74 (:DEFINITION WFATOMTOP))
 (1638 728 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (1496 620 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (960 960 (:REWRITE CAR-CONS))
 (736 368 (:REWRITE DEFAULT-+-2))
 (728 728 (:REWRITE NOT-MEMBER-SUBSET))
 (720 720 (:REWRITE CDR-CONS))
 (610 610 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (438 438 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (438 438 (:DEFINITION FUNCTION-SYMBOL))
 (368 368 (:REWRITE DEFAULT-+-1))
 (364 364 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (364 364 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (364 364 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 (240 240 (:TYPE-PRESCRIPTION SUBST-FREE))
 (208 104 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (8 8 (:REWRITE SUBST-FREE-TRUE))
 )
(LEN-APPEND-LIST
 (26 13 (:REWRITE DEFAULT-+-2))
 (17 9 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(SUBSET-MEMBER-APPEND-LIST
 (360 45 (:DEFINITION DOMAIN-TERM-LIST))
 (319 29 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (225 225 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (198 29 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (179 19 (:REWRITE DOMAIN-TERM-LIST-SUBSET))
 (148 148 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (111 29 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (79 73 (:REWRITE DEFAULT-CAR))
 (72 66 (:REWRITE DEFAULT-CDR))
 (53 29 (:DEFINITION VARIABLE-TERM))
 (29 29 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (27 27 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (21 3 (:REWRITE SUBSET-APPEND-2))
 (19 19 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (5 3 (:REWRITE SUBSET-APPEND-1))
 )
(SUBST-FREE-PRESERVES-EXISTS-COUNT
 (3157 243 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (2486 288 (:DEFINITION DOMAIN-TERM-LIST))
 (1193 1193 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (1064 38 (:DEFINITION WF-AP-TERM-TOP))
 (648 648 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (272 272 (:TYPE-PRESCRIPTION SUBST-FREE))
 (238 119 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (212 106 (:REWRITE DEFAULT-+-2))
 (160 106 (:REWRITE DEFAULT-+-1))
 (114 38 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (38 38 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (38 38 (:DEFINITION FUNCTION-SYMBOL))
 )
(SUBST-FREE-PRESERVES-FUNCS-IN-FORMULA
 (13575 944 (:DEFINITION MEMBER-EQUAL))
 (10422 1220 (:DEFINITION DOMAIN-TERM-LIST))
 (6781 6767 (:REWRITE DEFAULT-CAR))
 (6070 6070 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (5749 479 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (5738 524 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (5025 479 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (1736 1736 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (208 104 (:REWRITE SUBST-FREE-PRESERVES-CAR))
 (195 195 (:TYPE-PRESCRIPTION SUBST-FREE))
 )
(NOT-MEMBER-EQUAL-APPEND-LIST
 (1250 24 (:DEFINITION SUBSETP-EQUAL))
 (1021 11 (:REWRITE SUBSET-APPEND-CONS-2))
 (604 24 (:REWRITE APPEND-TO-NIL))
 (541 60 (:DEFINITION DOMAIN-TERM-LIST))
 (440 40 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (396 3 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (350 15 (:REWRITE SUBSET-MEMBER-APPEND-LIST))
 (320 20 (:DEFINITION TRUE-LISTP))
 (289 19 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (285 285 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (227 175 (:REWRITE DEFAULT-CDR))
 (226 174 (:REWRITE DEFAULT-CAR))
 (174 174 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (129 20 (:REWRITE MEMBER-APPEND-RIGHT))
 (124 20 (:REWRITE MEMBER-APPEND-LEFT))
 (100 100 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (99 19 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (63 63 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (50 18 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (18 6 (:REWRITE DOMAIN-TERM-LIST-APPEND))
 (16 16 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (16 16 (:DEFINITION VARIABLE-TERM))
 )
(VAR-OCCURRENCE-TERM-LIST-LIST-CONS
 (396 36 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (392 48 (:DEFINITION DOMAIN-TERM-LIST))
 (297 297 (:REWRITE DEFAULT-CAR))
 (235 235 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (234 18 (:DEFINITION TRUE-LISTP))
 (166 56 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (130 130 (:REWRITE DEFAULT-CDR))
 (126 10 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (69 10 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (10 10 (:REWRITE NOT-MEMBER-SUBSET))
 (3 1 (:REWRITE X-NOT-IN-Y))
 (3 1 (:REWRITE X-NOT-IN-E))
 )
(DISJOINT-APPEND-5
 (4469 288 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (3729 422 (:DEFINITION DOMAIN-TERM-LIST))
 (1894 288 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (1620 1620 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (1607 1607 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (1080 982 (:REWRITE DEFAULT-CAR))
 (1066 270 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (898 826 (:REWRITE DEFAULT-CDR))
 (538 36 (:REWRITE DISJOINT-APPEND-1))
 (526 270 (:DEFINITION VARIABLE-TERM))
 (453 36 (:REWRITE DISJOINT-APPEND-2))
 (283 23 (:DEFINITION SUBSETP-EQUAL))
 (270 270 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (250 23 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (58 58 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 )
(SUBST-APPEND-VALS-LIST
 (130 58 (:REWRITE DEFAULT-CAR))
 (86 42 (:REWRITE DEFAULT-CDR))
 (84 3 (:DEFINITION WF-AP-TERM-TOP))
 (66 6 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (39 3 (:DEFINITION TRUE-LISTP))
 (24 8 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (3 3 (:DEFINITION FUNCTION-SYMBOL))
 )
(NIL-NOT-IN-DOMAIN-TERM-LIST
 (7 1 (:DEFINITION DOMAIN-TERM-LIST))
 (3 1 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (1 1 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:DEFINITION VARIABLE-TERM))
 )
(NOT-MEMBER-APPEND
 (329 24 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (261 27 (:DEFINITION DOMAIN-TERM-LIST))
 (166 83 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (141 126 (:REWRITE DEFAULT-CAR))
 (139 24 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (135 120 (:REWRITE DEFAULT-CDR))
 (122 122 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (104 104 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (100 3 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (83 83 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (83 83 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (82 82 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (69 23 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (49 11 (:REWRITE MEMBER-APPEND-RIGHT))
 (42 10 (:REWRITE MEMBER-APPEND-LEFT))
 (23 23 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (23 23 (:DEFINITION VARIABLE-TERM))
 )
(DOMAIN-TERM-LIST-HAS-NO-VARS
 (274 12 (:REWRITE SUBSET-UNION-2))
 (230 2 (:DEFINITION UNION-EQUAL))
 (202 16 (:DEFINITION SUBSETP-EQUAL))
 (180 14 (:DEFINITION MEMBER-EQUAL))
 (64 64 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (64 2 (:DEFINITION WF-AP-TERM-TOP))
 (60 4 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (58 58 (:REWRITE DEFAULT-CAR))
 (54 54 (:REWRITE DEFAULT-CDR))
 (52 4 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (42 42 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (42 14 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (40 4 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (32 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (30 2 (:DEFINITION TRUE-LISTP))
 (26 6 (:REWRITE UNION-NOT-NIL-IF-EITHER-ARGUMENT-IS-A-CONS))
 (24 24 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (14 14 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (4 4 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (4 4 (:REWRITE NOT-MEMBER-SUBSET))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(NOT-VARS-IN-TERM-LIST-2
 (11 2 (:DEFINITION DOMAIN-TERM-LIST))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (4 4 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (1 1 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 )
(CAR-OF-EVAL-TERM-LIST-IS-DOMAIN-TERM
 (302 38 (:DEFINITION DOMAIN-TERM-LIST))
 (230 160 (:REWRITE DEFAULT-CAR))
 (226 18 (:REWRITE EVAL-TERM-LIST-ON-DOMAIN-TERM-LIST))
 (204 12 (:DEFINITION MEMBER-EQUAL))
 (174 174 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (146 122 (:REWRITE DEFAULT-CDR))
 (140 28 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (138 24 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (108 108 (:TYPE-PRESCRIPTION FRINGE))
 (108 12 (:DEFINITION FRINGE))
 (94 10 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (90 90 (:TYPE-PRESCRIPTION EVAL-TERM-LIST))
 (72 12 (:DEFINITION BINARY-APPEND))
 (54 24 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (50 6 (:DEFINITION FASSOC))
 (24 24 (:REWRITE NOT-MEMBER-SUBSET))
 (22 22 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (20 4 (:DEFINITION LEN))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(SUBSET-EVAL-TERM-LIST-DOMAIN
 (3149 364 (:DEFINITION DOMAIN-TERM-LIST))
 (1758 87 (:DEFINITION MEMBER-EQUAL))
 (1356 1145 (:REWRITE DEFAULT-CAR))
 (1178 174 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (909 101 (:DEFINITION FRINGE))
 (846 846 (:TYPE-PRESCRIPTION FRINGE))
 (726 66 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (681 54 (:REWRITE DOMAIN-TERM-LIST-SUBSET))
 (617 174 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (606 101 (:DEFINITION BINARY-APPEND))
 (429 33 (:DEFINITION TRUE-LISTP))
 (324 36 (:DEFINITION FASSOC))
 (186 186 (:TYPE-PRESCRIPTION EVAL-TERM-LIST))
 (180 36 (:DEFINITION LEN))
 (174 174 (:REWRITE NOT-MEMBER-SUBSET))
 (141 141 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (108 108 (:TYPE-PRESCRIPTION LEN))
 (72 36 (:REWRITE DEFAULT-+-2))
 (67 67 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 (60 60 (:REWRITE CAR-OF-EVAL-TERM-LIST-IS-DOMAIN-TERM))
 (47 47 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (36 36 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE CDR-CONS))
 (9 9 (:REWRITE CAR-CONS))
 )
(CAR-OF-EVAL-TERM-LIST-IS-IN-DOMAIN
 (586 22 (:DEFINITION MEMBER-EQUAL))
 (382 46 (:DEFINITION DOMAIN-TERM-LIST))
 (306 44 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (294 44 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (288 198 (:REWRITE DEFAULT-CAR))
 (226 42 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (226 18 (:REWRITE EVAL-TERM-LIST-ON-DOMAIN-TERM-LIST))
 (224 224 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (204 204 (:TYPE-PRESCRIPTION FRINGE))
 (204 160 (:REWRITE DEFAULT-CDR))
 (198 22 (:DEFINITION FRINGE))
 (186 186 (:TYPE-PRESCRIPTION EVAL-TERM-LIST))
 (132 22 (:DEFINITION BINARY-APPEND))
 (94 10 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (50 6 (:DEFINITION FASSOC))
 (44 44 (:REWRITE NOT-MEMBER-SUBSET))
 (28 28 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (22 22 (:REWRITE FRINGE-OF-DOMAIN-IS-DOMAIN-TERM-LIST))
 (20 4 (:DEFINITION LEN))
 (16 16 (:REWRITE CAR-OF-EVAL-TERM-LIST-IS-DOMAIN-TERM))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:REWRITE FAPPLY-RETURNS-DOMAIN-TERM))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(CAR-OF-EVAL-TERM-LIST-IS-IN-DOMAIN-2)
(FEVAL-INTERP-PARTS
 (506 2 (:DEFINITION XEVAL))
 (260 2 (:DEFINITION SUBST-FREE))
 (180 180 (:REWRITE DEFAULT-CDR))
 (124 124 (:REWRITE DEFAULT-CAR))
 (108 18 (:DEFINITION LIST3P))
 (100 2 (:DEFINITION SUBST-TERM-LIST))
 (88 22 (:DEFINITION LIST2P))
 (88 8 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (64 8 (:DEFINITION DOMAIN-TERM-LIST))
 (60 4 (:DEFINITION WFQUANT))
 (58 2 (:DEFINITION WFATOMTOP))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (52 4 (:DEFINITION TRUE-LISTP))
 (40 40 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (24 24 (:TYPE-PRESCRIPTION XEVAL))
 (24 4 (:DEFINITION WFNOT))
 (22 2 (:DEFINITION WFEXISTS))
 (22 2 (:DEFINITION WFBINARY))
 (22 2 (:DEFINITION WFALL))
 (18 18 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (16 16 (:DEFINITION VARIABLE-TERM))
 (16 2 (:DEFINITION WFOR))
 (16 2 (:DEFINITION WFIMP))
 (16 2 (:DEFINITION WFIFF))
 (16 2 (:DEFINITION WFAND))
 (10 2 (:DEFINITION IFF))
 (6 2 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(SETP-APPEND-DISJOINT
 (569 35 (:DEFINITION MEMBER-EQUAL))
 (420 36 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (312 36 (:DEFINITION DOMAIN-TERM-LIST))
 (273 4 (:REWRITE NOT-MEMBER-APPEND))
 (196 36 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (188 13 (:DEFINITION SUBSETP-EQUAL))
 (180 180 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (136 136 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (133 118 (:REWRITE DEFAULT-CDR))
 (122 113 (:REWRITE DEFAULT-CAR))
 (96 32 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (84 42 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (80 6 (:REWRITE SETP-APPEND-2))
 (80 6 (:REWRITE SETP-APPEND-1))
 (42 42 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (42 42 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (32 32 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (32 32 (:DEFINITION VARIABLE-TERM))
 (27 27 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (27 3 (:REWRITE MEMBER-APPEND-LEFT))
 )
(DISJOINT-MEMBER-APPEND-CONS
 (4383 25 (:REWRITE SETP-APPEND-DISJOINT))
 (4218 31 (:DEFINITION SETP))
 (2555 198 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (1971 208 (:DEFINITION DOMAIN-TERM-LIST))
 (1540 22 (:REWRITE NOT-MEMBER-APPEND))
 (1279 67 (:DEFINITION SUBSETP-EQUAL))
 (1188 198 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (1010 1010 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (916 458 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (784 784 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (768 606 (:REWRITE DEFAULT-CDR))
 (718 601 (:REWRITE DEFAULT-CAR))
 (642 174 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (458 458 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (458 458 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (300 45 (:REWRITE MEMBER-APPEND-LEFT))
 (294 174 (:DEFINITION VARIABLE-TERM))
 (177 57 (:DEFINITION BINARY-APPEND))
 (174 174 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (143 143 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (137 137 (:TYPE-PRESCRIPTION SETP))
 (24 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 )
(SETP-APPEND-DISJOINT-2
 (1405 124 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (1044 127 (:DEFINITION DOMAIN-TERM-LIST))
 (786 124 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (594 594 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (480 480 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (444 222 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (426 118 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (422 368 (:REWRITE DEFAULT-CDR))
 (344 317 (:REWRITE DEFAULT-CAR))
 (285 7 (:REWRITE NOT-MEMBER-APPEND))
 (222 222 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (222 222 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (190 118 (:DEFINITION VARIABLE-TERM))
 (134 9 (:REWRITE SETP-APPEND-2))
 (134 9 (:REWRITE SETP-APPEND-1))
 (118 118 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (54 6 (:REWRITE MEMBER-APPEND-RIGHT))
 (54 6 (:REWRITE MEMBER-APPEND-LEFT))
 (2 2 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 )
(SETP-FRINGE-DOMAIN
 (116 2 (:DEFINITION SETP))
 (65 3 (:DEFINITION MEMBER-EQUAL))
 (51 6 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (50 50 (:TYPE-PRESCRIPTION FRINGE))
 (48 5 (:DEFINITION DOMAIN-TERM-LIST))
 (42 4 (:DEFINITION FRINGE))
 (35 6 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (30 20 (:REWRITE DEFAULT-CDR))
 (28 20 (:REWRITE DEFAULT-CAR))
 (25 5 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (24 4 (:DEFINITION BINARY-APPEND))
 (19 19 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (15 5 (:DEFINITION VARIABLE-TERM))
 (6 6 (:REWRITE NOT-MEMBER-SUBSET))
 (5 5 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 )
(NOT-FUNCS-IN-VAR-LIST
 (372 4 (:DEFINITION UNION-EQUAL))
 (316 18 (:REWRITE SUBSET-UNION-2))
 (230 16 (:DEFINITION MEMBER-EQUAL))
 (226 22 (:DEFINITION SUBSETP-EQUAL))
 (140 16 (:DEFINITION DOMAIN-TERM-LIST))
 (96 8 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (88 8 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (84 84 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (80 80 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (80 80 (:REWRITE DEFAULT-CAR))
 (68 68 (:REWRITE DEFAULT-CDR))
 (56 2 (:DEFINITION WF-AP-TERM-TOP))
 (48 48 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (46 46 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (44 4 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (40 4 (:REWRITE UNION-NOT-NIL-IF-EITHER-ARGUMENT-IS-A-CONS))
 (32 2 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (30 30 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (26 2 (:DEFINITION TRUE-LISTP))
 (8 8 (:REWRITE NOT-MEMBER-SUBSET))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 (2 2 (:DEFINITION FUNCTION-SYMBOL))
 )
(DISJOINT-MEMBER-FORWARD
 (1646 18 (:DEFINITION SETP))
 (1088 8 (:REWRITE SETP-APPEND-DISJOINT))
 (793 68 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (660 8 (:REWRITE SETP-APPEND-DISJOINT-2))
 (591 69 (:DEFINITION DOMAIN-TERM-LIST))
 (424 68 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (338 338 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (266 266 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (256 128 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (228 64 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (207 177 (:REWRITE DEFAULT-CDR))
 (180 4 (:REWRITE NOT-MEMBER-APPEND))
 (178 163 (:REWRITE DEFAULT-CAR))
 (128 128 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (128 128 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (100 64 (:DEFINITION VARIABLE-TERM))
 (84 84 (:TYPE-PRESCRIPTION SETP))
 (84 68 (:REWRITE NOT-MEMBER-SUBSET))
 (68 22 (:DEFINITION BINARY-APPEND))
 (64 64 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (36 4 (:REWRITE MEMBER-APPEND-RIGHT))
 (36 4 (:REWRITE MEMBER-APPEND-LEFT))
 (14 1 (:DEFINITION SUBSETP-EQUAL))
 (4 4 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (2 2 (:REWRITE CAR-CONS))
 (1 1 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (1 1 (:REWRITE SUBSET-REFLEXIVE))
 )
