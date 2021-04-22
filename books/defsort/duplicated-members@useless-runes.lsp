(COLLECT-ADJACENT-DUPLICATES
 (68 29 (:REWRITE DEFAULT-+-2))
 (41 29 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE DEFAULT-CDR))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (16 4 (:DEFINITION INTEGER-ABS))
 (16 2 (:DEFINITION LENGTH))
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION LEN))
 (8 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP)
(COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP-OF-CDR
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 )
(COLLECT-ADJACENT-DUPLICATES-OF-CONS-AND-CONS
 (88 88 (:REWRITE DEFAULT-CDR))
 (53 26 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP-OF-CDR))
 (44 44 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 )
(LEMMA
 (771 29 (:DEFINITION MEMBER-EQUAL))
 (707 183 (:REWRITE <<-TRICHOTOMY))
 (641 100 (:REWRITE <<-ASYMMETRIC))
 (370 366 (:REWRITE DEFAULT-CDR))
 (253 86 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (251 183 (:REWRITE <<-TRANSITIVE))
 (230 226 (:REWRITE DEFAULT-CAR))
 (223 85 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (176 17 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (155 6 (:REWRITE SUBSETP-CONS-2))
 (119 119 (:REWRITE SUBSETP-TRANS2))
 (119 119 (:REWRITE SUBSETP-TRANS))
 (73 73 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (73 9 (:REWRITE SUBSETP-CAR-MEMBER))
 (72 72 (:REWRITE SUBSETP-MEMBER . 2))
 (54 54 (:REWRITE SUBSETP-MEMBER . 4))
 (54 54 (:REWRITE INTERSECTP-MEMBER . 3))
 (54 54 (:REWRITE INTERSECTP-MEMBER . 2))
 (2 2 (:REWRITE <<-IRREFLEXIVE))
 )
(LEMMA2
 (9519 464 (:DEFINITION MEMBER-EQUAL))
 (4343 205 (:REWRITE SUBSETP-OF-CONS))
 (3223 3223 (:TYPE-PRESCRIPTION COLLECT-ADJACENT-DUPLICATES))
 (1975 206 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (1545 66 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (1228 1228 (:REWRITE SUBSETP-TRANS2))
 (1228 1228 (:REWRITE SUBSETP-TRANS))
 (1067 1067 (:REWRITE SUBSETP-MEMBER . 2))
 (894 894 (:REWRITE DEFAULT-CDR))
 (812 812 (:REWRITE DEFAULT-CAR))
 (579 579 (:REWRITE SUBSETP-MEMBER . 4))
 (579 579 (:REWRITE INTERSECTP-MEMBER . 3))
 (579 579 (:REWRITE INTERSECTP-MEMBER . 2))
 (115 55 (:REWRITE DEFAULT-+-2))
 (95 95 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (93 93 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (86 14 (:REWRITE SUBSETP-CONS-SAME))
 (55 55 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE SUBSETP-NIL))
 )
(LEMMA3
 (20773 223 (:REWRITE SUBSETP-OF-CONS))
 (17786 180 (:REWRITE LEMMA2))
 (12868 678 (:DEFINITION MEMBER-EQUAL))
 (2490 255 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (2223 2223 (:REWRITE DEFAULT-CDR))
 (1611 1611 (:REWRITE SUBSETP-MEMBER . 2))
 (1483 1483 (:REWRITE SUBSETP-TRANS2))
 (1483 1483 (:REWRITE SUBSETP-TRANS))
 (1025 1025 (:REWRITE SUBSETP-MEMBER . 4))
 (1025 1025 (:REWRITE INTERSECTP-MEMBER . 3))
 (1025 1025 (:REWRITE INTERSECTP-MEMBER . 2))
 (410 200 (:REWRITE DEFAULT-+-2))
 (217 217 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (200 200 (:REWRITE DEFAULT-+-1))
 (126 126 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (86 14 (:REWRITE SUBSETP-CONS-SAME))
 (6 6 (:REWRITE SUBSETP-NIL))
 )
(LEMMA4
 (3610 197 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (2120 81 (:REWRITE LEMMA2))
 (1691 221 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (1193 1193 (:REWRITE DEFAULT-CDR))
 (1105 535 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1070 1070 (:REWRITE SUBSETP-MEMBER . 2))
 (930 930 (:REWRITE DEFAULT-CAR))
 (630 630 (:REWRITE SUBSETP-TRANS2))
 (630 630 (:REWRITE SUBSETP-TRANS))
 (452 452 (:REWRITE SUBSETP-MEMBER . 4))
 (452 452 (:REWRITE INTERSECTP-MEMBER . 3))
 (452 452 (:REWRITE INTERSECTP-MEMBER . 2))
 (411 383 (:REWRITE <<-TRANSITIVE))
 (138 138 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (100 100 (:REWRITE LEMMA))
 (97 47 (:REWRITE DEFAULT-<-2))
 (64 32 (:REWRITE DEFAULT-+-2))
 (61 61 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (47 47 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE DEFAULT-+-1))
 )
(LEMMA5
 (1612 271 (:REWRITE SUBSETP-MEMBER . 1))
 (661 313 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (561 86 (:REWRITE SUBSETP-CAR-MEMBER))
 (435 435 (:REWRITE DEFAULT-CDR))
 (425 322 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (384 66 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (368 368 (:REWRITE DEFAULT-CAR))
 (330 330 (:REWRITE SUBSETP-TRANS2))
 (330 330 (:REWRITE SUBSETP-TRANS))
 (271 271 (:REWRITE SUBSETP-MEMBER . 2))
 (244 62 (:REWRITE <<-ASYMMETRIC))
 (171 171 (:REWRITE SUBSETP-MEMBER . 4))
 (171 171 (:REWRITE INTERSECTP-MEMBER . 3))
 (171 171 (:REWRITE INTERSECTP-MEMBER . 2))
 (82 82 (:REWRITE <<-TRANSITIVE))
 (61 14 (:REWRITE LEMMA4))
 (61 2 (:REWRITE SUBSETP-OF-CONS))
 (60 60 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (54 31 (:REWRITE DEFAULT-+-2))
 (40 18 (:REWRITE DEFAULT-<-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (18 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE LEMMA))
 )
(MEMBER-EQUAL-OF-COLLECT-ADJACENT-DUPLICATES-WHEN-<<-ORDERED-P
 (117 8 (:DEFINITION MEMBER-EQUAL))
 (113 4 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (70 4 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (52 16 (:REWRITE SUBSETP-MEMBER . 1))
 (33 8 (:REWRITE SUBSETP-MEMBER . 3))
 (23 23 (:TYPE-PRESCRIPTION COLLECT-ADJACENT-DUPLICATES))
 (19 7 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (16 16 (:REWRITE SUBSETP-MEMBER . 2))
 (14 14 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (13 7 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (11 11 (:REWRITE DEFAULT-CDR))
 (11 8 (:REWRITE MEMBER-WHEN-ATOM))
 (10 1 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (8 8 (:REWRITE SUBSETP-MEMBER . 4))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 3))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE SUBSETP-TRANS2))
 (7 7 (:REWRITE SUBSETP-TRANS))
 (6 3 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP-OF-CDR))
 (4 4 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (1 1 (:REWRITE LEMMA))
 )
(CROCK0
 (20 6 (:REWRITE <<-TRICHOTOMY))
 (18 4 (:REWRITE <<-ASYMMETRIC))
 (6 6 (:REWRITE <<-TRANSITIVE))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(CROCK1
 (467 93 (:REWRITE SUBSETP-MEMBER . 1))
 (120 120 (:REWRITE SUBSETP-TRANS2))
 (120 120 (:REWRITE SUBSETP-TRANS))
 (115 115 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (115 115 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (93 93 (:REWRITE SUBSETP-MEMBER . 2))
 (92 92 (:REWRITE DEFAULT-CAR))
 (89 89 (:REWRITE DEFAULT-CDR))
 (84 84 (:REWRITE SUBSETP-MEMBER . 4))
 (84 84 (:REWRITE INTERSECTP-MEMBER . 3))
 (84 84 (:REWRITE INTERSECTP-MEMBER . 2))
 (82 82 (:REWRITE MEMBER-WHEN-ATOM))
 (49 49 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (28 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (12 12 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (12 12 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (7 1 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (1 1 (:REWRITE SUBSETP-OF-CDR))
 )
(CROCK3
 (3189 269 (:REWRITE SUBSETP-CAR-MEMBER))
 (2315 81 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (1808 1808 (:REWRITE DEFAULT-CDR))
 (1380 198 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (933 933 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (602 514 (:REWRITE SUBSETP-MEMBER . 3))
 (560 560 (:REWRITE SUBSETP-MEMBER . 2))
 (560 560 (:REWRITE SUBSETP-MEMBER . 1))
 (514 514 (:REWRITE SUBSETP-MEMBER . 4))
 (514 514 (:REWRITE INTERSECTP-MEMBER . 3))
 (514 514 (:REWRITE INTERSECTP-MEMBER . 2))
 (475 469 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (469 469 (:REWRITE SUBSETP-TRANS2))
 (469 469 (:REWRITE SUBSETP-TRANS))
 (464 464 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (295 21 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (280 280 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (252 252 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (75 75 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (68 68 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (63 31 (:REWRITE DEFAULT-<-2))
 (42 21 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-+-1))
 )
(NO-DUPLICATESP-EQUAL-OF-COLLECT-ADJACENT-DUPLICATES-WHEN-<<-ORDERED-P
 (689 63 (:REWRITE CROCK0))
 (601 34 (:DEFINITION MEMBER-EQUAL))
 (442 51 (:REWRITE SUBSETP-CAR-MEMBER))
 (371 371 (:REWRITE DEFAULT-CDR))
 (247 247 (:REWRITE DEFAULT-CAR))
 (217 7 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (165 153 (:REWRITE <<-TRANSITIVE))
 (125 125 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (84 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (75 75 (:REWRITE SUBSETP-MEMBER . 2))
 (75 75 (:REWRITE SUBSETP-MEMBER . 1))
 (70 3 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (68 68 (:REWRITE SUBSETP-MEMBER . 4))
 (68 68 (:REWRITE SUBSETP-MEMBER . 3))
 (68 68 (:REWRITE INTERSECTP-MEMBER . 3))
 (68 68 (:REWRITE INTERSECTP-MEMBER . 2))
 (66 63 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (63 63 (:REWRITE SUBSETP-TRANS2))
 (63 63 (:REWRITE SUBSETP-TRANS))
 (62 62 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (54 32 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP-OF-CDR))
 (44 44 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (32 32 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (24 24 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (6 3 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(DUPLICATED-MEMBERS)
(MEMBER-EQUAL-OF-DUPLICATED-MEMBERS
 (109 4 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (66 4 (:DEFINITION MEMBER-EQUAL))
 (22 22 (:TYPE-PRESCRIPTION <<-SORT-TRUE-LISTP))
 (14 8 (:REWRITE MEMBER-WHEN-ATOM))
 (11 5 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE SUBSETP-MEMBER . 4))
 (8 8 (:REWRITE SUBSETP-MEMBER . 3))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 3))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 1 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP-OF-CDR))
 (7 7 (:REWRITE <<-SORT-CONSP))
 (7 4 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (7 4 (:REWRITE DEFAULT-CAR))
 (5 3 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE COLLECT-ADJACENT-DUPLICATES-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(NO-DUPLICATESP-EQUAL-OF-DUPLICATED-MEMBERS)
(ELEMENT-P-BY-DUPLICITY-IN-ELEMENT-LIST-P
 (1344 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (1299 27 (:DEFINITION ELEMENT-LIST-NONEMPTY-P))
 (876 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-UNKNOWN-NIL))
 (672 35 (:REWRITE ELEMENT-LIST-P-OF-CDR-WHEN-ELEMENT-LIST-P))
 (445 47 (:DEFINITION MEMBER-EQUAL))
 (366 41 (:REWRITE ELEMENT-LIST-NONEMPTY-P-OF-CDR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (294 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-NOT-ELEMENT-P-NIL-AND-NOT-NEGATED))
 (231 231 (:TYPE-PRESCRIPTION ELEMENT-LIST-FINAL-CDR-P-TYPE))
 (229 79 (:REWRITE ELEMENT-LIST-P-WHEN-NOT-CONSP-TRUE-LIST))
 (229 79 (:REWRITE ELEMENT-LIST-P-WHEN-NOT-CONSP-NON-TRUE-LIST))
 (191 166 (:REWRITE ELEMENT-LIST-FINAL-CDR-P-REWRITE))
 (187 187 (:TYPE-PRESCRIPTION ELEMENT-LIST-NONEMPTY-P))
 (172 11 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (150 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-ELEMENT-P-NIL))
 (123 123 (:REWRITE DEFAULT-CDR))
 (109 109 (:REWRITE DEFAULT-CAR))
 (97 22 (:REWRITE SUBSETP-MEMBER . 3))
 (93 93 (:REWRITE SUBSETP-MEMBER . 2))
 (93 93 (:REWRITE SUBSETP-MEMBER . 1))
 (79 79 (:REWRITE ELEMENT-LIST-P-WHEN-SUBSETP-EQUAL-TRUE-LIST))
 (79 79 (:REWRITE ELEMENT-LIST-P-WHEN-SUBSETP-EQUAL-NON-TRUE-LIST))
 (56 5 (:REWRITE DUPLICITY-WHEN-MEMBER-EQUAL))
 (35 5 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (23 23 (:REWRITE SUBSETP-TRANS2))
 (23 23 (:REWRITE SUBSETP-TRANS))
 (22 22 (:REWRITE SUBSETP-MEMBER . 4))
 (22 22 (:REWRITE INTERSECTP-MEMBER . 3))
 (22 22 (:REWRITE INTERSECTP-MEMBER . 2))
 (20 2 (:REWRITE MEMBER-OF-CONS))
 (17 17 (:REWRITE MEMBER-WHEN-ATOM))
 (17 1 (:REWRITE SUBSETP-OF-CONS))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (11 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(ELEMENT-LIST-P-WHEN-SUBSET-OF-DUPLICATED-MEMBERS
 (34519 333 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (34151 137 (:DEFINITION ELEMENT-LIST-NONEMPTY-P))
 (31498 2521 (:DEFINITION MEMBER-EQUAL))
 (31469 333 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-UNKNOWN-NIL))
 (29892 333 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-NOT-ELEMENT-P-NIL-AND-NOT-NEGATED))
 (19252 679 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (19074 560 (:REWRITE ELEMENT-LIST-P-WHEN-SUBSETP-EQUAL-NON-TRUE-LIST))
 (18840 560 (:REWRITE ELEMENT-LIST-P-WHEN-SUBSETP-EQUAL-TRUE-LIST))
 (11741 1974 (:REWRITE ELEMENT-P-WHEN-MEMBER-EQUAL-OF-ELEMENT-LIST-NOT-NEGATED))
 (10426 623 (:REWRITE DUPLICITY-WHEN-MEMBER-EQUAL))
 (5042 5042 (:REWRITE SUBSETP-MEMBER . 2))
 (5042 5042 (:REWRITE SUBSETP-MEMBER . 1))
 (4702 1797 (:REWRITE SUBSETP-TRANS))
 (2842 2842 (:REWRITE DEFAULT-CDR))
 (2840 2840 (:REWRITE DEFAULT-CAR))
 (2350 133 (:REWRITE ELEMENT-LIST-NONEMPTY-P-OF-CDR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (1846 1764 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1797 1797 (:REWRITE SUBSETP-TRANS2))
 (1424 1276 (:REWRITE SUBSETP-MEMBER . 4))
 (1314 333 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-ELEMENT-P-NIL))
 (1276 1276 (:REWRITE SUBSETP-MEMBER . 3))
 (1276 1276 (:REWRITE MEMBER-WHEN-ATOM))
 (1276 1276 (:REWRITE INTERSECTP-MEMBER . 3))
 (1276 1276 (:REWRITE INTERSECTP-MEMBER . 2))
 (1265 633 (:REWRITE DEFAULT-<-2))
 (914 914 (:TYPE-PRESCRIPTION ELEMENT-LIST-NONEMPTY-P))
 (706 547 (:REWRITE ELEMENT-LIST-P-WHEN-NOT-CONSP-NON-TRUE-LIST))
 (655 655 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (633 633 (:REWRITE DEFAULT-<-1))
 (164 164 (:REWRITE ELEMENT-LIST-FINAL-CDR-P-OF-NIL))
 (8 2 (:DEFINITION ATOM))
 )
(ELEMENT-LIST-P-OF-DUPLICATED-MEMBERS)
(L0
 (74 2 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (57 3 (:DEFINITION MEMBER-EQUAL))
 (7 7 (:REWRITE SUBSETP-TRANS2))
 (7 7 (:REWRITE SUBSETP-TRANS))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (6 6 (:REWRITE SUBSETP-MEMBER . 4))
 (6 6 (:REWRITE SUBSETP-MEMBER . 3))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (6 6 (:REWRITE MEMBER-WHEN-ATOM))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 3))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 2))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (2 2 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (2 2 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(L1
 (51 1 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (49 1 (:REWRITE DUPLICITY-BADGUY-EXISTS))
 (38 5 (:REWRITE SUBSETP-CAR-MEMBER))
 (34 2 (:DEFINITION MEMBER-EQUAL))
 (10 5 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (9 9 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (9 6 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE L0))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE SUBSETP-TRANS2))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (5 5 (:REWRITE SUBSETP-MEMBER . 4))
 (5 5 (:REWRITE SUBSETP-MEMBER . 3))
 (5 5 (:REWRITE SUBSETP-MEMBER . 2))
 (5 5 (:REWRITE SUBSETP-MEMBER . 1))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 3))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (4 4 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (4 4 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (4 4 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (4 1 (:DEFINITION ATOM))
 (1 1 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 )
(DUPLICATED-MEMBERS-UNDER-IFF)
(HONS-DUPLICITY-ALIST-P)
(HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP)
(HONS-DUPLICITY-ALIST-P-OF-CONS
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(ALISTP-WHEN-HONS-DUPLICITY-ALIST-P
 (19 19 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 )
(HONS-DUPLICITY-ALIST-AUX
 (8 4 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (6 6 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:DEFINITION HONS-EQUAL))
 )
(HONS-DUPLICITY-ALIST-P-OF-HONS-DUPLICITY-ALIST-AUX
 (356 31 (:DEFINITION HONS-ASSOC-EQUAL))
 (194 193 (:REWRITE DEFAULT-CAR))
 (186 110 (:REWRITE DEFAULT-CDR))
 (42 23 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (31 31 (:DEFINITION HONS-EQUAL))
 (29 16 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE CAR-CONS))
 (23 16 (:REWRITE DEFAULT-<-1))
 (19 16 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-AUX))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:TYPE-PRESCRIPTION HONS-ACONS))
 )
(HONS-ASSOC-EQUAL-OF-HONS-DUPLICITY-ALIST-AUX
 (3636 3282 (:REWRITE DEFAULT-CAR))
 (3089 2146 (:REWRITE DEFAULT-CDR))
 (1141 163 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (770 110 (:REWRITE SUBSETP-CAR-MEMBER))
 (658 382 (:REWRITE DEFAULT-+-2))
 (540 540 (:REWRITE SUBSETP-MEMBER . 4))
 (540 540 (:REWRITE INTERSECTP-MEMBER . 3))
 (540 540 (:REWRITE INTERSECTP-MEMBER . 2))
 (537 537 (:REWRITE SUBSETP-MEMBER . 2))
 (453 382 (:REWRITE DEFAULT-+-1))
 (439 439 (:REWRITE SUBSETP-TRANS2))
 (439 439 (:REWRITE SUBSETP-TRANS))
 (436 436 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (436 436 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (339 189 (:REWRITE DEFAULT-<-1))
 (291 291 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (216 216 (:TYPE-PRESCRIPTION HONS-ACONS))
 (189 189 (:REWRITE DEFAULT-<-2))
 (94 38 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(HONS-DUPLICITY-ALIST)
(HONS-DUPLICITY-ALIST-P-OF-HONS-SHRINK-ALIST
 (327 327 (:REWRITE DEFAULT-CAR))
 (146 146 (:REWRITE DEFAULT-CDR))
 (47 47 (:TYPE-PRESCRIPTION FAST-ALIST-FORK))
 (18 18 (:REWRITE CAR-CONS))
 (5 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(HONS-DUPLICITY-ALIST-P-OF-HONS-DUPLICITY-ALIST)
(IFF-OF-HONS-ASSOC-EQUAL
 (127 10 (:DEFINITION MEMBER-EQUAL))
 (64 64 (:REWRITE DEFAULT-CAR))
 (56 14 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (53 2 (:REWRITE SUBSETP-OF-CONS))
 (31 31 (:REWRITE DEFAULT-CDR))
 (27 27 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (24 24 (:REWRITE SUBSETP-MEMBER . 2))
 (21 21 (:REWRITE SUBSETP-MEMBER . 4))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 3))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 2))
 (17 2 (:REWRITE SUBSETP-CAR-MEMBER))
 (15 14 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (7 7 (:REWRITE SUBSETP-TRANS2))
 (7 7 (:REWRITE SUBSETP-TRANS))
 (5 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (2 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 )
(NO-DUPLICATESP-EQUAL-OF-STRIP-CARS-OF-HONS-SHRINK-ALIST
 (401 23 (:DEFINITION MEMBER-EQUAL))
 (367 49 (:REWRITE SUBSETP-CAR-MEMBER))
 (139 131 (:REWRITE DEFAULT-CAR))
 (102 100 (:REWRITE DEFAULT-CDR))
 (87 36 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (73 49 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (61 46 (:REWRITE MEMBER-WHEN-ATOM))
 (61 14 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (52 52 (:REWRITE SUBSETP-TRANS2))
 (52 52 (:REWRITE SUBSETP-TRANS))
 (49 49 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (49 49 (:REWRITE SUBSETP-MEMBER . 4))
 (49 49 (:REWRITE INTERSECTP-MEMBER . 3))
 (49 49 (:REWRITE INTERSECTP-MEMBER . 2))
 (47 47 (:REWRITE SUBSETP-MEMBER . 2))
 (37 37 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (36 36 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (28 28 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (24 24 (:TYPE-PRESCRIPTION FAST-ALIST-FORK))
 (14 14 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (7 1 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (3 1 (:DEFINITION NATP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(NO-DUPLICATESP-EQUAL-OF-STRIP-CARS-OF-HONS-DUPLICITY-ALIST
 (23 1 (:DEFINITION FAST-ALIST-FORK))
 (14 1 (:REWRITE IFF-OF-HONS-ASSOC-EQUAL))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 1 (:DEFINITION STRIP-CARS))
 (5 1 (:REWRITE SUBSETP-CAR-MEMBER))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-AUX))
 (2 2 (:TYPE-PRESCRIPTION FAST-ALIST-FORK))
 (1 1 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE SUBSETP-MEMBER . 4))
 (1 1 (:REWRITE SUBSETP-MEMBER . 3))
 (1 1 (:REWRITE SUBSETP-MEMBER . 2))
 (1 1 (:REWRITE SUBSETP-MEMBER . 1))
 (1 1 (:REWRITE MEMBER-WHEN-ATOM))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(HONS-ASSOC-EQUAL-OF-HONS-SHRINK-ALIST
 (1482 86 (:REWRITE IFF-OF-HONS-ASSOC-EQUAL))
 (876 87 (:DEFINITION ALISTP))
 (701 174 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (432 432 (:TYPE-PRESCRIPTION ALISTP))
 (403 394 (:REWRITE DEFAULT-CAR))
 (348 348 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (229 223 (:REWRITE DEFAULT-CDR))
 (174 174 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (7 1 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (3 1 (:DEFINITION NATP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(HONS-ASSOC-EQUAL-OF-HONS-DUPLICITY-ALIST
 (23 1 (:DEFINITION FAST-ALIST-FORK))
 (20 2 (:DEFINITION MEMBER-EQUAL))
 (7 7 (:REWRITE SUBSETP-MEMBER . 4))
 (7 7 (:REWRITE INTERSECTP-MEMBER . 3))
 (7 7 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 1 (:REWRITE SUBSETP-CAR-MEMBER))
 (4 4 (:REWRITE DEFAULT-CDR))
 (3 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-AUX))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 )
(HONS-DUPLICATED-MEMBERS-AUX
 (12 3 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (3 3 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(MEMBER-EQUAL-OF-STRIP-CARS-WHEN-MEMBER-EQUAL-OF-HONS-DUPLICATED-MEMBERS-AUX
 (491 17 (:DEFINITION MEMBER-EQUAL))
 (201 77 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (164 77 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (163 18 (:REWRITE SUBSETP-CAR-MEMBER))
 (157 157 (:TYPE-PRESCRIPTION HONS-DUPLICATED-MEMBERS-AUX))
 (96 96 (:REWRITE SUBSETP-TRANS2))
 (96 96 (:REWRITE SUBSETP-TRANS))
 (90 9 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (56 20 (:REWRITE MEMBER-WHEN-ATOM))
 (54 54 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE SUBSETP-MEMBER . 2))
 (38 38 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE SUBSETP-MEMBER . 4))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 3))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 2))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE SUBSETP-CONS-SAME))
 )
(MEMBER-EQUAL-OF-HONS-DUPLICATED-MEMBERS-AUX
 (1398 75 (:DEFINITION MEMBER-EQUAL))
 (840 106 (:REWRITE SUBSETP-CAR-MEMBER))
 (357 10 (:REWRITE SUBSETP-OF-CONS))
 (258 131 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (164 131 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (159 159 (:REWRITE SUBSETP-MEMBER . 2))
 (155 155 (:REWRITE SUBSETP-TRANS2))
 (155 155 (:REWRITE SUBSETP-TRANS))
 (118 97 (:REWRITE DEFAULT-<-1))
 (117 117 (:REWRITE SUBSETP-MEMBER . 4))
 (117 117 (:REWRITE INTERSECTP-MEMBER . 3))
 (117 117 (:REWRITE INTERSECTP-MEMBER . 2))
 (115 97 (:REWRITE DEFAULT-<-2))
 (110 44 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (65 6 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (55 55 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (44 44 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (16 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NO-DUPLICATESP-EQUAL-OF-HONS-DUPLICATED-MEMBERS-AUX
 (813 45 (:DEFINITION MEMBER-EQUAL))
 (678 90 (:REWRITE SUBSETP-CAR-MEMBER))
 (180 180 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (148 58 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (143 137 (:REWRITE DEFAULT-CDR))
 (138 90 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (133 133 (:REWRITE DEFAULT-CAR))
 (98 74 (:REWRITE MEMBER-WHEN-ATOM))
 (90 90 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (90 90 (:REWRITE SUBSETP-TRANS2))
 (90 90 (:REWRITE SUBSETP-TRANS))
 (90 90 (:REWRITE SUBSETP-MEMBER . 2))
 (90 90 (:REWRITE SUBSETP-MEMBER . 1))
 (74 74 (:REWRITE SUBSETP-MEMBER . 4))
 (74 74 (:REWRITE SUBSETP-MEMBER . 3))
 (74 74 (:REWRITE INTERSECTP-MEMBER . 3))
 (74 74 (:REWRITE INTERSECTP-MEMBER . 2))
 (67 67 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (50 50 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (27 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (16 2 (:DEFINITION HONS-ASSOC-EQUAL))
 (2 2 (:DEFINITION HONS-EQUAL))
 )
(HONS-DUPLICATED-MEMBERS)
(MEMBER-EQUAL-OF-HONS-DUPLICATED-MEMBERS
 (50 6 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (46 4 (:DEFINITION MEMBER-EQUAL))
 (12 6 (:REWRITE DEFAULT-CDR))
 (9 6 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 4))
 (8 8 (:REWRITE SUBSETP-MEMBER . 3))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (8 8 (:REWRITE MEMBER-WHEN-ATOM))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 3))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 6 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION STRIP-CARS))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST))
 )
(NO-DUPLICATESP-EQUAL-OF-HONS-DUPLICATED-MEMBERS
 (6 1 (:DEFINITION STRIP-CARS))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
