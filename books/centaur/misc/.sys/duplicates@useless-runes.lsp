(DUP-WITNESS)
(NO-DUPLICATESP-BY-DUP-WITNESS
 (292 38 (:REWRITE SUBSETP-CAR-MEMBER))
 (121 16 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (83 65 (:REWRITE DEFAULT-CDR))
 (67 67 (:REWRITE SUBSETP-TRANS2))
 (67 67 (:REWRITE SUBSETP-TRANS))
 (67 55 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (61 61 (:REWRITE SUBSETP-MEMBER . 4))
 (61 61 (:REWRITE INTERSECTP-MEMBER . 3))
 (61 61 (:REWRITE INTERSECTP-MEMBER . 2))
 (59 56 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (56 56 (:REWRITE DEFAULT-CAR))
 (43 43 (:REWRITE SUBSETP-MEMBER . 2))
 (25 25 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (25 25 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(INDICES-OF-DUP-WITNESS
 (126 50 (:REWRITE DEFAULT-+-2))
 (87 81 (:REWRITE DEFAULT-CDR))
 (72 50 (:REWRITE DEFAULT-+-1))
 (58 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (51 51 (:REWRITE DEFAULT-CAR))
 (35 35 (:REWRITE SUBSETP-MEMBER . 4))
 (35 35 (:REWRITE INTERSECTP-MEMBER . 3))
 (35 35 (:REWRITE INTERSECTP-MEMBER . 2))
 (28 28 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (28 28 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (27 27 (:REWRITE SUBSETP-MEMBER . 2))
 (22 2 (:REWRITE ZP-OPEN))
 (21 3 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (9 9 (:REWRITE SUBSETP-TRANS2))
 (9 9 (:REWRITE SUBSETP-TRANS))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (5 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(DUP-INDEX-1)
(LEN-MEMBER
 (130 52 (:REWRITE DEFAULT-+-2))
 (61 52 (:REWRITE DEFAULT-+-1))
 (48 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 30 (:REWRITE DEFAULT-CDR))
 (30 18 (:REWRITE SUBSETP-MEMBER . 3))
 (27 27 (:REWRITE DEFAULT-CAR))
 (24 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (22 22 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (22 22 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 18 (:REWRITE SUBSETP-MEMBER . 4))
 (18 18 (:REWRITE INTERSECTP-MEMBER . 3))
 (18 18 (:REWRITE INTERSECTP-MEMBER . 2))
 (10 10 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (2 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 )
(DUP-INDEX-2)
(NO-DUPLICATESP-BY-INDICES-OF-DUP-WITNESS
 (390 10 (:DEFINITION DUP-WITNESS))
 (345 19 (:DEFINITION MEMBER-EQUAL))
 (196 28 (:REWRITE SUBSETP-CAR-MEMBER))
 (54 54 (:REWRITE DEFAULT-CDR))
 (52 12 (:REWRITE DEFAULT-+-2))
 (46 34 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (43 43 (:REWRITE DEFAULT-CAR))
 (40 40 (:REWRITE SUBSETP-MEMBER . 4))
 (40 40 (:REWRITE INTERSECTP-MEMBER . 3))
 (40 40 (:REWRITE INTERSECTP-MEMBER . 2))
 (38 38 (:REWRITE MEMBER-WHEN-ATOM))
 (37 37 (:REWRITE SUBSETP-TRANS2))
 (37 37 (:REWRITE SUBSETP-TRANS))
 (34 34 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (33 33 (:REWRITE SUBSETP-MEMBER . 2))
 (25 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 12 (:REWRITE DEFAULT-+-1))
 (20 20 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (20 4 (:DEFINITION LEN))
 (20 2 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (14 3 (:REWRITE DEFAULT-<-1))
 (7 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(DUP-INDICES-UNEQUAL
 (156 4 (:DEFINITION DUP-WITNESS))
 (96 6 (:DEFINITION MEMBER-EQUAL))
 (56 8 (:REWRITE SUBSETP-CAR-MEMBER))
 (22 16 (:REWRITE DEFAULT-CDR))
 (19 3 (:REWRITE DEFAULT-+-2))
 (16 16 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (16 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE SUBSETP-MEMBER . 3))
 (12 12 (:REWRITE MEMBER-WHEN-ATOM))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 2))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 3 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (8 8 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE SUBSETP-TRANS2))
 (8 8 (:REWRITE SUBSETP-TRANS))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(REMOVE-PRESERVES-NO-DUPLICATES
 (387 23 (:REWRITE SUBSETP-CAR-MEMBER))
 (348 17 (:DEFINITION MEMBER-EQUAL))
 (119 1 (:REWRITE SUBSETP-OF-REMOVE1))
 (79 31 (:REWRITE SUBSETP-MEMBER . 4))
 (56 34 (:REWRITE SUBSETP-MEMBER . 2))
 (52 50 (:REWRITE DEFAULT-CDR))
 (49 7 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (46 45 (:REWRITE DEFAULT-CAR))
 (41 41 (:REWRITE SUBSETP-TRANS2))
 (41 41 (:REWRITE SUBSETP-TRANS))
 (40 40 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (40 40 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (34 34 (:REWRITE SUBSETP-MEMBER . 1))
 (31 31 (:REWRITE INTERSECTP-MEMBER . 3))
 (31 31 (:REWRITE INTERSECTP-MEMBER . 2))
 (30 30 (:REWRITE MEMBER-WHEN-ATOM))
 (21 21 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (21 21 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(REMOVE-WHEN-NOT-MEMBER
 (106 12 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (74 15 (:DEFINITION TRUE-LISTP))
 (62 62 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (60 60 (:REWRITE DEFAULT-CDR))
 (34 17 (:REWRITE DEFAULT-+-2))
 (30 30 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (30 30 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (26 26 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 2))
 (11 11 (:REWRITE SUBSETP-MEMBER . 2))
 (11 11 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (8 8 (:LINEAR INDEX-OF-<-LEN))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 )
(REMOVE-LATER-DUPLICATES)
(REMOVE-LATER-DUPLICATES)
(LIST-EQUIV-IMPLIES-EQUAL-REMOVE-LATER-DUPLICATES-1
 (1200 24 (:REWRITE REMOVE-WHEN-NOT-MEMBER))
 (824 8 (:DEFINITION REMOVE-EQUAL))
 (660 24 (:DEFINITION MEMBER-EQUAL))
 (528 48 (:REWRITE SUBSETP-CAR-MEMBER))
 (180 24 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (144 144 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (96 72 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (72 72 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (72 72 (:REWRITE SUBSETP-TRANS2))
 (72 72 (:REWRITE SUBSETP-TRANS))
 (72 48 (:REWRITE MEMBER-WHEN-ATOM))
 (60 60 (:REWRITE DEFAULT-CAR))
 (52 52 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE SUBSETP-MEMBER . 4))
 (48 48 (:REWRITE SUBSETP-MEMBER . 3))
 (48 48 (:REWRITE SUBSETP-MEMBER . 2))
 (48 48 (:REWRITE SUBSETP-MEMBER . 1))
 (48 48 (:REWRITE INTERSECTP-MEMBER . 3))
 (48 48 (:REWRITE INTERSECTP-MEMBER . 2))
 (33 33 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (33 33 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 )
(REMOVE-OF-REMOVE
 (2465 147 (:DEFINITION MEMBER-EQUAL))
 (852 57 (:REWRITE SUBSETP-CAR-MEMBER))
 (764 25 (:REWRITE MEMBER-OF-REMOVE))
 (507 310 (:REWRITE SUBSETP-MEMBER . 4))
 (473 4 (:REWRITE SUBSETP-OF-REMOVE1))
 (429 328 (:REWRITE SUBSETP-MEMBER . 2))
 (328 328 (:REWRITE SUBSETP-MEMBER . 1))
 (310 310 (:REWRITE SUBSETP-MEMBER . 3))
 (310 310 (:REWRITE INTERSECTP-MEMBER . 3))
 (310 310 (:REWRITE INTERSECTP-MEMBER . 2))
 (262 257 (:REWRITE DEFAULT-CAR))
 (253 249 (:REWRITE DEFAULT-CDR))
 (234 234 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (234 234 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (121 1 (:REWRITE SUBSETP-CONS-2))
 (115 115 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (79 3 (:REWRITE MEMBER-OF-CONS))
 (62 55 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (56 56 (:REWRITE SUBSETP-TRANS2))
 (56 56 (:REWRITE SUBSETP-TRANS))
 (55 55 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (4 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE SUBSETP-REFL))
 (1 1 (:DEFINITION TRUE-LISTP))
 )
(REMOVE-LATER-OF-REMOVE
 (2006 89 (:DEFINITION MEMBER-EQUAL))
 (1053 90 (:REWRITE SUBSETP-CAR-MEMBER))
 (288 288 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (264 24 (:REWRITE SUBSETP-OF-REMOVE2))
 (225 30 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (189 144 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (188 188 (:REWRITE SUBSETP-MEMBER . 4))
 (188 188 (:REWRITE SUBSETP-MEMBER . 3))
 (188 188 (:REWRITE SUBSETP-MEMBER . 2))
 (188 188 (:REWRITE SUBSETP-MEMBER . 1))
 (188 188 (:REWRITE INTERSECTP-MEMBER . 3))
 (188 188 (:REWRITE INTERSECTP-MEMBER . 2))
 (188 184 (:REWRITE DEFAULT-CAR))
 (167 164 (:REWRITE DEFAULT-CDR))
 (144 144 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (144 144 (:REWRITE SUBSETP-TRANS2))
 (144 144 (:REWRITE SUBSETP-TRANS))
 (128 128 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (128 128 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (43 1 (:REWRITE MEMBER-OF-CONS))
 )
(REMOVE-LATER-OF-SET-DIFF
 (9657 348 (:DEFINITION MEMBER-EQUAL))
 (5219 561 (:REWRITE SUBSETP-CAR-MEMBER))
 (2319 327 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (1351 1160 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1309 1159 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (1179 1179 (:REWRITE SUBSETP-TRANS2))
 (1179 1179 (:REWRITE SUBSETP-TRANS))
 (811 798 (:REWRITE DEFAULT-CAR))
 (744 733 (:REWRITE DEFAULT-CDR))
 (743 11 (:REWRITE MEMBER-OF-SET-DIFFERENCE-EQUAL))
 (721 721 (:REWRITE SUBSETP-MEMBER . 4))
 (721 721 (:REWRITE INTERSECTP-MEMBER . 3))
 (721 721 (:REWRITE INTERSECTP-MEMBER . 2))
 (711 711 (:REWRITE SUBSETP-MEMBER . 2))
 (484 44 (:REWRITE SUBSETP-OF-REMOVE2))
 (464 464 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (464 464 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (85 2 (:REWRITE MEMBER-OF-CONS))
 (54 2 (:REWRITE SUBSETP-OF-CONS))
 (10 1 (:REWRITE SUBSETP-CONS-2))
 )
(SET-DIFFERENCE-OF-CONS-SECOND
 (950 51 (:DEFINITION MEMBER-EQUAL))
 (938 10 (:REWRITE MEMBER-OF-SET-DIFFERENCE-EQUAL))
 (168 24 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (161 19 (:REWRITE SUBSETP-CAR-MEMBER))
 (119 119 (:REWRITE SUBSETP-MEMBER . 2))
 (99 99 (:REWRITE SUBSETP-MEMBER . 4))
 (99 99 (:REWRITE INTERSECTP-MEMBER . 3))
 (99 99 (:REWRITE INTERSECTP-MEMBER . 2))
 (87 85 (:REWRITE DEFAULT-CAR))
 (83 83 (:REWRITE SUBSETP-TRANS2))
 (83 83 (:REWRITE SUBSETP-TRANS))
 (77 77 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (77 77 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (77 75 (:REWRITE DEFAULT-CDR))
 (69 69 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (69 69 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (19 1 (:REWRITE SUBSETP-OF-CONS))
 )
(SET-DIFFERENCE-OF-ATOM
 (25 5 (:REWRITE SUBSETP-CAR-MEMBER))
 (13 4 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 (9 9 (:TYPE-PRESCRIPTION SET-DIFFERENCE-EQUAL))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 5 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (5 5 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (5 5 (:REWRITE SUBSETP-TRANS2))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (5 5 (:REWRITE SUBSETP-MEMBER . 4))
 (5 5 (:REWRITE SUBSETP-MEMBER . 3))
 (5 5 (:REWRITE SUBSETP-MEMBER . 2))
 (5 5 (:REWRITE SUBSETP-MEMBER . 1))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 3))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 2))
 (4 4 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(SET-DIFFERENCE-OF-REMOVE-COMMON
 (3562 213 (:DEFINITION MEMBER-EQUAL))
 (2011 53 (:REWRITE SUBSETP-CAR-MEMBER))
 (1566 17 (:REWRITE SUBSETP-OF-REMOVE1))
 (1526 16 (:REWRITE MEMBER-OF-SET-DIFFERENCE-EQUAL))
 (1016 396 (:REWRITE SUBSETP-MEMBER . 4))
 (694 468 (:REWRITE SUBSETP-MEMBER . 2))
 (438 66 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (396 396 (:REWRITE INTERSECTP-MEMBER . 3))
 (396 396 (:REWRITE INTERSECTP-MEMBER . 2))
 (336 331 (:REWRITE DEFAULT-CAR))
 (329 325 (:REWRITE DEFAULT-CDR))
 (264 264 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (264 264 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (192 192 (:REWRITE SUBSETP-TRANS2))
 (192 192 (:REWRITE SUBSETP-TRANS))
 (187 187 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (187 187 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (108 1 (:REWRITE MEMBER-OF-CONS))
 (27 27 (:REWRITE SET-DIFFERENCE-OF-ATOM))
 (3 1 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:DEFINITION TRUE-LISTP))
 )
(REMOVE-EQUAL-OF-APPEND
 (1448 68 (:DEFINITION MEMBER-EQUAL))
 (687 9 (:REWRITE MEMBER-OF-APPEND))
 (433 51 (:REWRITE SUBSETP-CAR-MEMBER))
 (319 148 (:REWRITE SUBSETP-MEMBER . 3))
 (208 118 (:REWRITE DEFAULT-CDR))
 (163 163 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (151 142 (:REWRITE DEFAULT-CAR))
 (148 148 (:REWRITE SUBSETP-MEMBER . 4))
 (148 148 (:REWRITE SUBSETP-MEMBER . 2))
 (148 148 (:REWRITE SUBSETP-MEMBER . 1))
 (148 148 (:REWRITE INTERSECTP-MEMBER . 3))
 (148 148 (:REWRITE INTERSECTP-MEMBER . 2))
 (142 142 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (133 80 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (90 90 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (90 90 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (81 81 (:REWRITE SUBSETP-TRANS2))
 (81 81 (:REWRITE SUBSETP-TRANS))
 (80 80 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (78 2 (:REWRITE MEMBER-OF-CONS))
 (63 9 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (36 12 (:REWRITE CAR-OF-APPEND))
 (30 4 (:REWRITE SUBSETP-OF-APPEND-WHEN-SUBSET-OF-EITHER))
 (28 1 (:REWRITE SUBSETP-CONS-2))
 (20 20 (:REWRITE CONSP-OF-APPEND))
 (12 12 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (6 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (1 1 (:REWRITE SUBSETP-REFL))
 )
(REMOVE-OF-EQUAL-TO-APPEND
 (252 12 (:REWRITE REMOVE-WHEN-NOT-MEMBER))
 (228 4 (:DEFINITION REMOVE-EQUAL))
 (150 10 (:DEFINITION MEMBER-EQUAL))
 (50 50 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (21 21 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE DEFAULT-CAR))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 20 (:REWRITE SUBSETP-MEMBER . 4))
 (20 20 (:REWRITE SUBSETP-MEMBER . 3))
 (20 20 (:REWRITE SUBSETP-MEMBER . 2))
 (20 20 (:REWRITE SUBSETP-MEMBER . 1))
 (20 20 (:REWRITE MEMBER-WHEN-ATOM))
 (20 20 (:REWRITE INTERSECTP-MEMBER . 3))
 (20 20 (:REWRITE INTERSECTP-MEMBER . 2))
 (17 3 (:DEFINITION BINARY-APPEND))
 (14 14 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (14 14 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (9 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (2 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(REMOVE-LATER-DUPLICATES-OF-APPEND
 (4520 99 (:REWRITE REMOVE-WHEN-NOT-MEMBER))
 (2853 33 (:DEFINITION REMOVE-EQUAL))
 (2738 118 (:DEFINITION MEMBER-EQUAL))
 (1661 217 (:REWRITE SUBSETP-CAR-MEMBER))
 (528 4 (:REWRITE MEMBER-OF-SET-DIFFERENCE-EQUAL))
 (467 467 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (355 247 (:REWRITE SUBSETP-MEMBER . 1))
 (333 237 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (318 304 (:REWRITE DEFAULT-CAR))
 (309 263 (:REWRITE DEFAULT-CDR))
 (266 230 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (247 247 (:REWRITE SUBSETP-MEMBER . 2))
 (239 239 (:REWRITE SUBSETP-MEMBER . 4))
 (239 239 (:REWRITE SUBSETP-MEMBER . 3))
 (239 239 (:REWRITE INTERSECTP-MEMBER . 3))
 (239 239 (:REWRITE INTERSECTP-MEMBER . 2))
 (237 237 (:REWRITE SUBSETP-TRANS2))
 (237 237 (:REWRITE SUBSETP-TRANS))
 (165 165 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (165 165 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (90 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (30 10 (:REWRITE CAR-OF-APPEND))
 (10 10 (:REWRITE CONSP-OF-APPEND))
 (9 9 (:REWRITE SET-DIFFERENCE-OF-ATOM))
 (9 9 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (5 5 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(REMOVE-LATER-DUPLICATES-WHEN-NO-DUPLICATES
 (2519 84 (:DEFINITION MEMBER-EQUAL))
 (1735 160 (:REWRITE SUBSETP-CAR-MEMBER))
 (876 120 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (696 168 (:REWRITE SUBSETP-MEMBER . 3))
 (632 632 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (385 316 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (334 316 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (316 316 (:REWRITE SUBSETP-TRANS2))
 (316 316 (:REWRITE SUBSETP-TRANS))
 (240 168 (:REWRITE MEMBER-WHEN-ATOM))
 (230 230 (:REWRITE DEFAULT-CDR))
 (189 189 (:REWRITE DEFAULT-CAR))
 (168 168 (:REWRITE SUBSETP-MEMBER . 4))
 (168 168 (:REWRITE SUBSETP-MEMBER . 2))
 (168 168 (:REWRITE SUBSETP-MEMBER . 1))
 (168 168 (:REWRITE INTERSECTP-MEMBER . 3))
 (168 168 (:REWRITE INTERSECTP-MEMBER . 2))
 (132 132 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (132 132 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (90 18 (:DEFINITION TRUE-LISTP))
 (74 74 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (42 21 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE REMOVE-OF-EQUAL-TO-APPEND))
 (21 21 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (9 9 (:LINEAR INDEX-OF-<-LEN))
 )
(NO-DUPLICATESP-OF-REMOVE-LATER-DUPLICATES
 (469 20 (:DEFINITION MEMBER-EQUAL))
 (387 9 (:REWRITE REMOVE-WHEN-NOT-MEMBER))
 (357 42 (:REWRITE SUBSETP-CAR-MEMBER))
 (267 3 (:DEFINITION REMOVE-EQUAL))
 (98 98 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (60 48 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (57 49 (:REWRITE SUBSETP-TRANS))
 (52 50 (:REWRITE DEFAULT-CDR))
 (52 40 (:REWRITE MEMBER-WHEN-ATOM))
 (51 48 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (49 49 (:REWRITE SUBSETP-TRANS2))
 (44 43 (:REWRITE DEFAULT-CAR))
 (42 6 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (41 41 (:REWRITE SUBSETP-MEMBER . 4))
 (41 41 (:REWRITE SUBSETP-MEMBER . 3))
 (41 41 (:REWRITE SUBSETP-MEMBER . 2))
 (41 41 (:REWRITE SUBSETP-MEMBER . 1))
 (41 41 (:REWRITE INTERSECTP-MEMBER . 3))
 (41 41 (:REWRITE INTERSECTP-MEMBER . 2))
 (24 1 (:REWRITE SUBSETP-OF-REMOVE1))
 (23 23 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (23 23 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE REMOVE-OF-EQUAL-TO-APPEND))
 (1 1 (:REWRITE SUBSETP-REFL))
 )
(NO-DUPLICATES-OF-APPEND
 (894 42 (:DEFINITION MEMBER-EQUAL))
 (693 80 (:REWRITE SUBSETP-CAR-MEMBER))
 (227 137 (:REWRITE DEFAULT-CDR))
 (202 101 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (165 84 (:REWRITE MEMBER-WHEN-ATOM))
 (164 129 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (151 25 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (143 143 (:REWRITE SUBSETP-TRANS2))
 (143 143 (:REWRITE SUBSETP-TRANS))
 (135 120 (:REWRITE DEFAULT-CAR))
 (129 129 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (101 101 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (101 101 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (98 98 (:REWRITE SUBSETP-MEMBER . 4))
 (98 98 (:REWRITE INTERSECTP-MEMBER . 3))
 (98 98 (:REWRITE INTERSECTP-MEMBER . 2))
 (90 90 (:REWRITE SUBSETP-MEMBER . 2))
 (64 4 (:REWRITE SUBSETP-APPEND1))
 (45 45 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (45 45 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (27 9 (:REWRITE CAR-OF-APPEND))
 (23 23 (:REWRITE CONSP-OF-APPEND))
 (19 19 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (18 18 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
