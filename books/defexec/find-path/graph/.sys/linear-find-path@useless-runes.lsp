(MARKEDP)
(MARK)
(COUNT-NON-MEMBERS-CONS
 (36 36 (:REWRITE DEFAULT-CAR))
 (31 31 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (23 23 (:REWRITE DEFAULT-CDR))
 (18 8 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-<-2))
 (14 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 )
(E0-ORDINALP-MEASURE
 (30 2 (:DEFINITION COUNT-NON-MEMBERS))
 (14 12 (:REWRITE DEFAULT-CDR))
 (12 10 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-+-2))
 (10 2 (:DEFINITION LEN))
 (8 2 (:DEFINITION MEMBER-EQUAL))
 (8 2 (:DEFINITION ALL-NODES))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION ALL-NODES))
 (4 4 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (4 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:REWRITE DEFAULT-<-2))
 )
(NON-NODES-HAVE-NO-NEIGHBORS
 (345 334 (:REWRITE DEFAULT-CAR))
 (252 242 (:REWRITE DEFAULT-CDR))
 (177 177 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (110 55 (:REWRITE DEFAULT-+-2))
 (55 55 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(MEASURE-DECREASES-1
 (461 224 (:REWRITE DEFAULT-+-2))
 (404 404 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (224 224 (:REWRITE DEFAULT-+-1))
 (56 27 (:REWRITE DEFAULT-<-2))
 (55 27 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE EQUAL-CONSTANT-+))
 )
(MEASURE-DECREASES-2
 (226 208 (:REWRITE DEFAULT-CDR))
 (223 207 (:REWRITE DEFAULT-CAR))
 (155 74 (:REWRITE DEFAULT-+-2))
 (74 74 (:REWRITE DEFAULT-+-1))
 (63 7 (:DEFINITION SUBSETP-EQUAL))
 (20 8 (:REWRITE DEFAULT-<-1))
 (19 8 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 )
(LINEAR-FIND-NEXT-STEP
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 1 (:DEFINITION NEIGHBORS))
 (6 6 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (6 6 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 )
(LINEAR-FIND-PATH)
(TRANSITIVITY-OF-SUBSETP
 (113 23 (:DEFINITION MEMBER-EQUAL))
 (43 43 (:REWRITE DEFAULT-CAR))
 (32 32 (:REWRITE DEFAULT-CDR))
 )
(LINEAR-FIND-NEXT-STEP-EXTENDS-MT
 (3085 2526 (:REWRITE DEFAULT-CAR))
 (2196 186 (:DEFINITION BINARY-APPEND))
 (2093 299 (:DEFINITION NEIGHBORS))
 (1979 1732 (:REWRITE DEFAULT-CDR))
 (1200 138 (:REWRITE CAR-REV))
 (760 38 (:DEFINITION E0-ORD-<))
 (598 598 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (558 162 (:DEFINITION LAST))
 (528 24 (:REWRITE ASSOC-OF-APPEND))
 (456 456 (:TYPE-PRESCRIPTION MEASURE))
 (427 364 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (366 366 (:TYPE-PRESCRIPTION LAST))
 (276 276 (:TYPE-PRESCRIPTION REV))
 (276 276 (:TYPE-PRESCRIPTION CONSP-REV))
 )
(LINEAR-FIND-NEXT-STEP-EXTENDS-MT-COROLLARY-1
 (191 1 (:DEFINITION LINEAR-FIND-NEXT-STEP))
 (76 1 (:REWRITE MEASURE-DECREASES-2))
 (55 41 (:REWRITE DEFAULT-CAR))
 (50 2 (:DEFINITION REV))
 (42 3 (:DEFINITION BINARY-APPEND))
 (41 35 (:REWRITE DEFAULT-CDR))
 (38 6 (:DEFINITION MEMBER-EQUAL))
 (24 3 (:REWRITE CAR-REV))
 (21 3 (:DEFINITION NEIGHBORS))
 (20 5 (:DEFINITION MV-NTH))
 (20 1 (:DEFINITION E0-ORD-<))
 (15 1 (:DEFINITION MARKEDP))
 (12 12 (:TYPE-PRESCRIPTION MEASURE))
 (12 12 (:TYPE-PRESCRIPTION LINEAR-FIND-NEXT-STEP))
 (12 12 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (9 9 (:TYPE-PRESCRIPTION LAST))
 (9 3 (:DEFINITION LAST))
 (6 6 (:TYPE-PRESCRIPTION REV))
 (6 6 (:TYPE-PRESCRIPTION CONSP-REV))
 (6 6 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (3 3 (:REWRITE CDR-CONS))
 (3 3 (:REWRITE CAR-CONS))
 (2 2 (:TYPE-PRESCRIPTION E0-ORD-<))
 (1 1 (:DEFINITION MARK))
 )
(GENERALIZED-TEST-IS-ALWAYS-T
 (226 208 (:REWRITE DEFAULT-CDR))
 (223 207 (:REWRITE DEFAULT-CAR))
 (155 74 (:REWRITE DEFAULT-+-2))
 (74 74 (:REWRITE DEFAULT-+-1))
 (70 7 (:DEFINITION SUBSETP-EQUAL))
 (20 8 (:REWRITE DEFAULT-<-1))
 (19 8 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 )
(TEST-IS-ALWAYS-T
 (164 1 (:DEFINITION LINEAR-FIND-NEXT-STEP))
 (97 3 (:DEFINITION REV))
 (81 7 (:DEFINITION BINARY-APPEND))
 (56 42 (:REWRITE DEFAULT-CAR))
 (44 5 (:REWRITE CAR-REV))
 (41 37 (:REWRITE DEFAULT-CDR))
 (35 1 (:DEFINITION MARKEDP))
 (33 2 (:DEFINITION MEMBER-EQUAL))
 (28 4 (:DEFINITION NEIGHBORS))
 (22 1 (:REWRITE ASSOC-OF-APPEND))
 (21 6 (:DEFINITION LAST))
 (13 13 (:TYPE-PRESCRIPTION LAST))
 (12 3 (:DEFINITION MV-NTH))
 (10 10 (:TYPE-PRESCRIPTION REV))
 (10 10 (:TYPE-PRESCRIPTION CONSP-REV))
 (8 8 (:TYPE-PRESCRIPTION LINEAR-FIND-NEXT-STEP))
 (8 8 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (6 6 (:REWRITE CDR-CONS))
 (4 4 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (4 4 (:REWRITE CAR-CONS))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(EXISTENCE
 (973 78 (:DEFINITION BINARY-APPEND))
 (706 499 (:REWRITE DEFAULT-CAR))
 (540 64 (:REWRITE CAR-REV))
 (495 454 (:REWRITE DEFAULT-CDR))
 (301 43 (:DEFINITION NEIGHBORS))
 (234 71 (:DEFINITION LAST))
 (178 178 (:TYPE-PRESCRIPTION LAST))
 (154 7 (:REWRITE ASSOC-OF-APPEND))
 (86 86 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (60 60 (:REWRITE SUBSETP-MEMBER-MEMBER))
 )
(X-LINEAR-FIND-NEXT-STEP)
(X-CONSTRAINT
 (973 78 (:DEFINITION BINARY-APPEND))
 (706 499 (:REWRITE DEFAULT-CAR))
 (540 64 (:REWRITE CAR-REV))
 (479 438 (:REWRITE DEFAULT-CDR))
 (301 43 (:DEFINITION NEIGHBORS))
 (234 71 (:DEFINITION LAST))
 (178 178 (:TYPE-PRESCRIPTION LAST))
 (154 7 (:REWRITE ASSOC-OF-APPEND))
 (86 86 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (60 60 (:REWRITE SUBSETP-MEMBER-MEMBER))
 )
(UNIQUENESS
 (3663 309 (:DEFINITION BINARY-APPEND))
 (2710 2027 (:REWRITE DEFAULT-CAR))
 (2004 231 (:REWRITE CAR-REV))
 (1830 1675 (:REWRITE DEFAULT-CDR))
 (1316 188 (:DEFINITION NEIGHBORS))
 (927 270 (:DEFINITION LAST))
 (858 39 (:REWRITE ASSOC-OF-APPEND))
 (615 615 (:TYPE-PRESCRIPTION LAST))
 (462 462 (:TYPE-PRESCRIPTION REV))
 (462 462 (:TYPE-PRESCRIPTION CONSP-REV))
 (376 376 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (218 218 (:REWRITE SUBSETP-MEMBER-MEMBER))
 )
(FIND-NEXT-STEP-AVOIDING
 (21 21 (:REWRITE DEFAULT-CAR))
 (14 2 (:DEFINITION NEIGHBORS))
 (12 12 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (4 4 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (3 3 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 )
(FIND-PATH-AVOIDING)
(STEP1
 (574 41 (:DEFINITION BINARY-APPEND))
 (373 250 (:REWRITE DEFAULT-CAR))
 (328 41 (:REWRITE CAR-REV))
 (264 264 (:REWRITE DEFAULT-CDR))
 (152 152 (:TYPE-PRESCRIPTION CONSP-REV))
 (123 123 (:TYPE-PRESCRIPTION LAST))
 (123 41 (:DEFINITION LAST))
 (100 10 (:DEFINITION SUBSETP-EQUAL))
 (42 6 (:DEFINITION NEIGHBORS))
 (12 12 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 )
(FIND-NEXT-STEP-AVOIDING-CONS
 (1492 45 (:REWRITE STEP1))
 (1329 73 (:DEFINITION SUBSETP-EQUAL))
 (512 407 (:REWRITE DEFAULT-CAR))
 (490 35 (:DEFINITION BINARY-APPEND))
 (373 373 (:REWRITE DEFAULT-CDR))
 (296 296 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (295 295 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (280 35 (:REWRITE CAR-REV))
 (204 13 (:REWRITE SUBSETP-CONS))
 (148 148 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (139 139 (:TYPE-PRESCRIPTION CONSP-REV))
 (105 105 (:TYPE-PRESCRIPTION LAST))
 (105 35 (:DEFINITION LAST))
 (35 5 (:DEFINITION NEIGHBORS))
 (10 10 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 )
(PATHLESSP
 (458 1 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (360 5 (:REWRITE STEP1))
 (316 11 (:DEFINITION SUBSETP-EQUAL))
 (222 23 (:DEFINITION MEMBER-EQUAL))
 (190 92 (:REWRITE DEFAULT-+-2))
 (173 13 (:REWRITE SUBSETP-CONS))
 (130 117 (:REWRITE DEFAULT-CAR))
 (128 92 (:REWRITE DEFAULT-+-1))
 (99 97 (:REWRITE DEFAULT-CDR))
 (97 3 (:DEFINITION REV))
 (81 7 (:DEFINITION BINARY-APPEND))
 (80 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (76 76 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (50 10 (:DEFINITION LEN))
 (46 46 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (44 5 (:REWRITE CAR-REV))
 (35 5 (:DEFINITION NEIGHBORS))
 (30 24 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (28 24 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (22 1 (:REWRITE ASSOC-OF-APPEND))
 (21 6 (:DEFINITION LAST))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 13 (:TYPE-PRESCRIPTION LAST))
 (13 13 (:REWRITE CDR-CONS))
 (11 11 (:REWRITE CAR-CONS))
 (10 10 (:TYPE-PRESCRIPTION REV))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:TYPE-PRESCRIPTION CONSP-REV))
 (10 10 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 10 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (10 10 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 )
(PATHLESS-MT-SUBSTITUTION-LEMMA1
 (3176 7 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (2504 35 (:REWRITE STEP1))
 (2196 77 (:DEFINITION SUBSETP-EQUAL))
 (1209 91 (:REWRITE SUBSETP-CONS))
 (763 672 (:REWRITE DEFAULT-CAR))
 (671 21 (:DEFINITION REV))
 (563 49 (:DEFINITION BINARY-APPEND))
 (532 532 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (498 484 (:REWRITE DEFAULT-CDR))
 (330 330 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (306 35 (:REWRITE CAR-REV))
 (245 35 (:DEFINITION NEIGHBORS))
 (203 203 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (152 7 (:REWRITE ASSOC-OF-APPEND))
 (145 42 (:DEFINITION LAST))
 (91 91 (:TYPE-PRESCRIPTION LAST))
 (91 91 (:REWRITE CDR-CONS))
 (77 77 (:REWRITE CAR-CONS))
 (70 70 (:TYPE-PRESCRIPTION REV))
 (70 70 (:TYPE-PRESCRIPTION CONSP-REV))
 (70 70 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 )
(FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION
 (760 32 (:REWRITE STEP1))
 (410 32 (:DEFINITION BINARY-APPEND))
 (379 321 (:REWRITE DEFAULT-CAR))
 (333 295 (:REWRITE DEFAULT-CDR))
 (218 32 (:REWRITE CAR-REV))
 (96 32 (:DEFINITION LAST))
 (58 58 (:TYPE-PRESCRIPTION LAST))
 (7 1 (:DEFINITION NEIGHBORS))
 (2 2 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (1 1 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 )
(PATHLESS-MT-SUBSTITUTION-LEMMA2
 (8334 14 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (6718 70 (:REWRITE STEP1))
 (2117 1911 (:REWRITE DEFAULT-CAR))
 (1679 48 (:DEFINITION REV))
 (1421 128 (:DEFINITION BINARY-APPEND))
 (1339 1299 (:REWRITE DEFAULT-CDR))
 (975 975 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (752 82 (:REWRITE CAR-REV))
 (602 86 (:DEFINITION NEIGHBORS))
 (574 574 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (477 20 (:REWRITE ASSOC-OF-APPEND))
 (382 108 (:DEFINITION LAST))
 (206 206 (:TYPE-PRESCRIPTION LAST))
 (172 172 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (164 164 (:TYPE-PRESCRIPTION REV))
 (164 164 (:TYPE-PRESCRIPTION CONSP-REV))
 (48 28 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 )
(PATHLESS-MT-SUBSTITUTION-LEMMA3
 (1389 3 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (1080 15 (:REWRITE STEP1))
 (948 33 (:DEFINITION SUBSETP-EQUAL))
 (519 39 (:REWRITE SUBSETP-CONS))
 (435 396 (:REWRITE DEFAULT-CAR))
 (291 9 (:DEFINITION REV))
 (263 257 (:REWRITE DEFAULT-CDR))
 (243 21 (:DEFINITION BINARY-APPEND))
 (231 231 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (228 228 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (132 15 (:REWRITE CAR-REV))
 (126 18 (:DEFINITION NEIGHBORS))
 (87 87 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (66 3 (:REWRITE ASSOC-OF-APPEND))
 (63 18 (:DEFINITION LAST))
 (39 39 (:TYPE-PRESCRIPTION LAST))
 (39 39 (:REWRITE CDR-CONS))
 (36 36 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (33 33 (:REWRITE CAR-CONS))
 (30 30 (:TYPE-PRESCRIPTION REV))
 (30 30 (:TYPE-PRESCRIPTION CONSP-REV))
 (18 18 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 )
(PATHLESS-MT-SUBSTITUTION
 (8454 11 (:DEFINITION PATHLESSP))
 (7531 100 (:REWRITE STEP1))
 (6540 302 (:DEFINITION SUBSETP-EQUAL))
 (3214 322 (:REWRITE SUBSETP-CONS))
 (2882 754 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (2089 1832 (:REWRITE DEFAULT-CAR))
 (1426 115 (:DEFINITION BINARY-APPEND))
 (1363 1341 (:REWRITE DEFAULT-CDR))
 (788 93 (:REWRITE CAR-REV))
 (427 61 (:DEFINITION NEIGHBORS))
 (345 104 (:DEFINITION LAST))
 (272 272 (:TYPE-PRESCRIPTION CONSP-REV))
 (257 257 (:TYPE-PRESCRIPTION LAST))
 (245 11 (:REWRITE ASSOC-OF-APPEND))
 (122 122 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (101 101 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 )
(PATHLESS-MT-SUBSTITUTION-COROLLARY
 (356 1 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (301 5 (:REWRITE STEP1))
 (255 13 (:DEFINITION SUBSETP-EQUAL))
 (171 28 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (132 18 (:DEFINITION MEMBER-EQUAL))
 (76 76 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (72 4 (:REWRITE SUBSETP-CONS))
 (59 50 (:REWRITE DEFAULT-CAR))
 (50 2 (:DEFINITION REV))
 (47 47 (:REWRITE DEFAULT-CDR))
 (42 3 (:DEFINITION BINARY-APPEND))
 (36 36 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (24 3 (:REWRITE CAR-REV))
 (11 1 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 (9 9 (:TYPE-PRESCRIPTION LAST))
 (9 3 (:DEFINITION LAST))
 (7 1 (:DEFINITION NEIGHBORS))
 (6 6 (:TYPE-PRESCRIPTION REV))
 (6 6 (:TYPE-PRESCRIPTION CONSP-REV))
 (5 5 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 (3 3 (:REWRITE CDR-CONS))
 (3 3 (:REWRITE CAR-CONS))
 (2 2 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 )
(TRANS-PATHLESSP
 (11370 18 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (9992 90 (:REWRITE STEP1))
 (8792 346 (:DEFINITION SUBSETP-EQUAL))
 (5166 414 (:REWRITE SUBSETP-CONS))
 (2792 2558 (:REWRITE DEFAULT-CAR))
 (1965 1929 (:REWRITE DEFAULT-CDR))
 (1811 1507 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (1782 54 (:DEFINITION REV))
 (1476 126 (:DEFINITION BINARY-APPEND))
 (800 90 (:REWRITE CAR-REV))
 (714 102 (:DEFINITION NEIGHBORS))
 (406 18 (:REWRITE ASSOC-OF-APPEND))
 (386 108 (:DEFINITION LAST))
 (294 294 (:REWRITE CAR-CONS))
 (274 274 (:REWRITE CDR-CONS))
 (234 234 (:TYPE-PRESCRIPTION LAST))
 (204 204 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (180 180 (:TYPE-PRESCRIPTION REV))
 (180 180 (:TYPE-PRESCRIPTION CONSP-REV))
 (97 97 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 (25 25 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 )
(PATHLESSP-X-X
 (160 10 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA3))
 (48 48 (:REWRITE DEFAULT-CAR))
 (33 33 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE TRANS-PATHLESSP))
 (7 7 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 )
(FIND-NEXT-STEP-AVOIDING-NON-FAILURE-NORMALIZER
 (16762 183 (:REWRITE STEP1))
 (3963 2315 (:REWRITE DEFAULT-CDR))
 (3924 2589 (:REWRITE DEFAULT-CAR))
 (3430 117 (:REWRITE CAR-REV))
 (2165 125 (:DEFINITION LAST))
 (1208 1208 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1135 239 (:TYPE-PRESCRIPTION CONSP-REV))
 (959 335 (:TYPE-PRESCRIPTION LAST))
 (478 8 (:REWRITE ASSOC-OF-APPEND))
 (469 67 (:DEFINITION NEIGHBORS))
 (134 134 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (72 24 (:REWRITE CAR-APPEND))
 (57 57 (:REWRITE LAST-APPEND))
 (53 53 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 (40 40 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 )
(FIND-NEXT-STEP-AVOIDING-NON-FAILURE-NORMALIZER-COROLLARY
 (702 2 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (570 10 (:REWRITE STEP1))
 (487 22 (:DEFINITION SUBSETP-EQUAL))
 (288 43 (:DEFINITION MEMBER-EQUAL))
 (266 26 (:REWRITE SUBSETP-CONS))
 (130 117 (:REWRITE DEFAULT-CAR))
 (122 5 (:DEFINITION REV))
 (89 85 (:REWRITE DEFAULT-CDR))
 (82 74 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (49 6 (:REWRITE CAR-REV))
 (23 7 (:DEFINITION LAST))
 (21 1 (:REWRITE ASSOC-OF-APPEND))
 (14 2 (:DEFINITION NEIGHBORS))
 (13 13 (:TYPE-PRESCRIPTION LAST))
 (12 12 (:TYPE-PRESCRIPTION REV))
 (12 12 (:TYPE-PRESCRIPTION CONSP-REV))
 (10 10 (:REWRITE PATHLESS-MT-SUBSTITUTION-COROLLARY))
 (10 10 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 (4 4 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (2 2 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 (2 2 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 )
(PATHLESSP-NORMALIZER
 (4899 13 (:DEFINITION FIND-NEXT-STEP-AVOIDING))
 (3618 65 (:REWRITE STEP1))
 (1365 1313 (:REWRITE DEFAULT-CAR))
 (771 745 (:REWRITE DEFAULT-CDR))
 (667 30 (:DEFINITION REV))
 (504 64 (:DEFINITION BINARY-APPEND))
 (441 63 (:DEFINITION NEIGHBORS))
 (412 412 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (366 26 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA3))
 (230 29 (:REWRITE CAR-REV))
 (126 126 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (111 33 (:DEFINITION LAST))
 (88 4 (:REWRITE ASSOC-OF-APPEND))
 (58 58 (:TYPE-PRESCRIPTION REV))
 (58 58 (:TYPE-PRESCRIPTION CONSP-REV))
 (52 52 (:TYPE-PRESCRIPTION LAST))
 (26 26 (:REWRITE TRANS-PATHLESSP))
 (26 26 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 (14 14 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 )
(LINEAR-FIND-NEXT-STEP-EXTENDS-MT-COROLLARY-2
 (168 2 (:DEFINITION EXISTENCE))
 (100 4 (:DEFINITION REV))
 (84 6 (:DEFINITION BINARY-APPEND))
 (53 33 (:REWRITE DEFAULT-CAR))
 (48 6 (:REWRITE CAR-REV))
 (43 39 (:REWRITE DEFAULT-CDR))
 (24 6 (:DEFINITION MV-NTH))
 (18 18 (:TYPE-PRESCRIPTION LAST))
 (18 6 (:DEFINITION LAST))
 (16 16 (:TYPE-PRESCRIPTION LINEAR-FIND-NEXT-STEP))
 (16 4 (:DEFINITION MEMBER-EQUAL))
 (14 2 (:DEFINITION NEIGHBORS))
 (12 12 (:TYPE-PRESCRIPTION REV))
 (12 12 (:TYPE-PRESCRIPTION CONSP-REV))
 (12 2 (:DEFINITION MARKEDP))
 (10 1 (:DEFINITION SUBSETP-EQUAL))
 (4 4 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (2 2 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 (2 2 (:DEFINITION MARK))
 )
(STEP2
 (57836 4712 (:DEFINITION BINARY-APPEND))
 (57472 377 (:REWRITE STEP1))
 (46499 36358 (:REWRITE DEFAULT-CAR))
 (32707 29723 (:REWRITE DEFAULT-CDR))
 (31159 240 (:REWRITE LINEAR-FIND-NEXT-STEP-EXTENDS-MT-COROLLARY-2))
 (29872 3461 (:REWRITE CAR-REV))
 (21210 3030 (:DEFINITION NEIGHBORS))
 (13779 4028 (:DEFINITION LAST))
 (12468 567 (:REWRITE ASSOC-OF-APPEND))
 (9132 9132 (:TYPE-PRESCRIPTION LAST))
 (6993 6993 (:TYPE-PRESCRIPTION CONSP-REV))
 (6060 6060 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (2514 75 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA3))
 (227 139 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 (78 78 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 )
(LINEAR-FIND-PATH-IS-FIND-PATH
 (376 3 (:DEFINITION FIND-NEXT-STEP))
 (357 1 (:DEFINITION EXISTENCE))
 (194 9 (:DEFINITION REV))
 (189 27 (:DEFINITION NEIGHBORS))
 (148 148 (:REWRITE DEFAULT-CAR))
 (131 20 (:DEFINITION BINARY-APPEND))
 (107 96 (:REWRITE DEFAULT-CDR))
 (54 54 (:REWRITE NON-NODES-HAVE-NO-NEIGHBORS))
 (35 5 (:REWRITE CAR-REV))
 (28 28 (:REWRITE CDR-CONS))
 (28 1 (:DEFINITION MARKEDP))
 (20 6 (:DEFINITION LAST))
 (19 19 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (10 10 (:TYPE-PRESCRIPTION REV))
 (10 10 (:TYPE-PRESCRIPTION CONSP-REV))
 (8 8 (:TYPE-PRESCRIPTION FIND-NEXT-STEP))
 (5 5 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 (5 5 (:REWRITE PATHLESS-MT-SUBSTITUTION-LEMMA1))
 (5 5 (:REWRITE PATHLESS-MT-SUBSTITUTION-COROLLARY))
 (5 5 (:REWRITE PATHLESS-MT-SUBSTITUTION))
 (5 5 (:REWRITE FIND-NEXT-STEP-AVOIDING-STACK-EXTENSION))
 )
(SPEC-OF-LINEAR-FIND-PATH
 (42 42 (:REWRITE DEFAULT-CAR))
 (40 40 (:REWRITE DEFAULT-CDR))
 (33 2 (:DEFINITION SUBSETP-EQUAL))
 (32 8 (:DEFINITION ALL-NODES))
 (20 20 (:REWRITE SUBSETP-MEMBER-MEMBER))
 (7 2 (:DEFINITION TRUE-LISTP))
 (4 4 (:REWRITE TRANSITIVITY-OF-SUBSETP))
 )
