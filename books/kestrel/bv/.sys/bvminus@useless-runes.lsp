(BVMINUS)
(INTEGERP-OF-BVMINUS)
(NATP-OF-BVMINUS)
(BVMINUS-WHEN-ARG2-IS-NOT-AN-INTEGER
 (88 4 (:DEFINITION EXPT))
 (32 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (26 26 (:TYPE-PRESCRIPTION IFIX))
 (24 8 (:REWRITE DEFAULT-*-2))
 (23 17 (:REWRITE DEFAULT-<-1))
 (22 17 (:REWRITE DEFAULT-<-2))
 (21 6 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (20 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE BVCHOP-IDENTITY))
 (16 16 (:TYPE-PRESCRIPTION NATP))
 (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (12 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (12 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (12 6 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (12 4 (:DEFINITION NATP))
 (10 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (10 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (4 4 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (1 1 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 )
(BVMINUS-WHEN-SIZE-IS-0)
(BVMINUS-WHEN-SIZE-IS-NOT-POSITIVE)
(BVMINUS-WHEN-SIZE-IS-NOT-INTEGERP)
(BVMINUS-SAME)
(BVMINUS-SUBST-VALUE-ARG-2
 (554 26 (:DEFINITION EXPT))
 (150 50 (:REWRITE DEFAULT-*-2))
 (145 49 (:REWRITE BVCHOP-IDENTITY))
 (139 110 (:REWRITE DEFAULT-<-2))
 (134 39 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (127 110 (:REWRITE DEFAULT-<-1))
 (121 114 (:REWRITE DEFAULT-+-1))
 (120 24 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (116 114 (:REWRITE DEFAULT-+-2))
 (97 97 (:TYPE-PRESCRIPTION NATP))
 (95 95 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (94 47 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (80 42 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (74 39 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (64 39 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (52 52 (:TYPE-PRESCRIPTION IFIX))
 (50 50 (:REWRITE DEFAULT-*-1))
 (49 49 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (49 49 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (48 48 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (47 47 (:TYPE-PRESCRIPTION POSP))
 (39 39 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (26 26 (:REWRITE ZIP-OPEN))
 (23 23 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (23 23 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (23 23 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (18 18 (:TYPE-PRESCRIPTION FIX))
 (11 11 (:REWRITE BVCHOP-SUM-DROP-BVCHOP))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 3 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (4 1 (:REWRITE UNSIGNED-BYTE-P-BVCHOP-SAME))
 (3 3 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (1 1 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-SUM-DROP-BVCHOP-ALT))
 )
(BVMINUS-SUBST-VALUE-ARG-3
 (1079 83 (:DEFINITION EXPT))
 (435 271 (:REWRITE DEFAULT-+-2))
 (413 271 (:REWRITE DEFAULT-+-1))
 (274 274 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (249 83 (:REWRITE DEFAULT-*-2))
 (232 232 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (228 171 (:REWRITE DEFAULT-<-1))
 (197 171 (:REWRITE DEFAULT-<-2))
 (185 185 (:TYPE-PRESCRIPTION POSP))
 (182 70 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (126 42 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (97 33 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (83 83 (:REWRITE ZIP-OPEN))
 (83 83 (:REWRITE DEFAULT-*-1))
 (76 14 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (70 70 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (70 70 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (70 70 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (70 70 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (69 46 (:REWRITE DEFAULT-UNARY-MINUS))
 (38 14 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (34 34 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (33 33 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (14 14 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (14 14 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (14 14 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (11 11 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE BVCHOP-NUMERIC-BOUND))
 (2 2 (:REWRITE BVCHOP-BOUND))
 (2 2 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 )
(BVMINUS-OF-0
 (88 4 (:DEFINITION EXPT))
 (24 8 (:REWRITE DEFAULT-*-2))
 (24 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (22 17 (:REWRITE DEFAULT-<-2))
 (21 17 (:REWRITE DEFAULT-<-1))
 (21 6 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (20 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE BVCHOP-IDENTITY))
 (16 16 (:TYPE-PRESCRIPTION NATP))
 (14 14 (:TYPE-PRESCRIPTION IFIX))
 (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (12 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (12 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (12 6 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (12 4 (:DEFINITION NATP))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (8 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (8 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (4 4 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (1 1 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 )
(BVMINUS-OF-0-ARG2
 (140 8 (:DEFINITION EXPT))
 (52 18 (:REWRITE BVCHOP-IDENTITY))
 (42 42 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (38 34 (:REWRITE DEFAULT-<-1))
 (36 34 (:REWRITE DEFAULT-<-2))
 (36 28 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE DEFAULT-*-2))
 (36 12 (:REWRITE COMMUTATIVITY-OF-+))
 (32 10 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (32 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (28 28 (:REWRITE DEFAULT-+-2))
 (28 14 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (20 14 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (20 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (18 18 (:TYPE-PRESCRIPTION FIX))
 (18 18 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (18 18 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (16 10 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (14 14 (:TYPE-PRESCRIPTION POSP))
 (14 14 (:TYPE-PRESCRIPTION IFIX))
 (12 12 (:REWRITE DEFAULT-*-1))
 (12 10 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (12 10 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (12 4 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (10 10 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 8 (:REWRITE ZIP-OPEN))
 (8 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(EQUAL-OF-0-AND-BVMINUS
 (710 38 (:DEFINITION EXPT))
 (222 74 (:REWRITE BVCHOP-IDENTITY))
 (194 159 (:REWRITE DEFAULT-+-1))
 (191 159 (:REWRITE DEFAULT-+-2))
 (186 62 (:REWRITE DEFAULT-*-2))
 (160 160 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (158 120 (:REWRITE DEFAULT-<-2))
 (154 48 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (132 120 (:REWRITE DEFAULT-<-1))
 (83 52 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (79 48 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (76 76 (:TYPE-PRESCRIPTION NATP))
 (74 74 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (63 20 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (62 62 (:REWRITE DEFAULT-*-1))
 (61 61 (:TYPE-PRESCRIPTION POSP))
 (48 48 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (48 48 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (38 38 (:REWRITE ZIP-OPEN))
 (30 12 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (29 29 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 15 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (14 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (3 3 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (1 1 (:REWRITE BVCHOP-NUMERIC-BOUND))
 (1 1 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (1 1 (:REWRITE BVCHOP-BOUND))
 (1 1 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 )
(UNSIGNED-BYTE-P-OF-BVMINUS-GEN-BETTER
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (3 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (3 1 (:REWRITE BVCHOP-IDENTITY))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (1 1 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (1 1 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 )
(BVMINUS-OF-BVCHOP-ARG2
 (88 4 (:DEFINITION EXPT))
 (52 52 (:TYPE-PRESCRIPTION IFIX))
 (48 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (31 23 (:REWRITE DEFAULT-<-1))
 (29 23 (:REWRITE DEFAULT-<-2))
 (24 8 (:REWRITE DEFAULT-*-2))
 (24 8 (:REWRITE COMMUTATIVITY-OF-+))
 (24 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (24 8 (:DEFINITION NATP))
 (24 7 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (22 22 (:TYPE-PRESCRIPTION NATP))
 (22 8 (:REWRITE BVCHOP-IDENTITY))
 (20 19 (:REWRITE DEFAULT-+-1))
 (20 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (19 19 (:REWRITE DEFAULT-+-2))
 (15 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (15 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (14 14 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (14 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (14 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (14 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (8 8 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (7 7 (:TYPE-PRESCRIPTION POSP))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (7 7 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (7 7 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(BVMINUS-OF-BVCHOP-ARG2-SAME
 (554 26 (:DEFINITION EXPT))
 (150 50 (:REWRITE DEFAULT-*-2))
 (145 49 (:REWRITE BVCHOP-IDENTITY))
 (139 110 (:REWRITE DEFAULT-<-2))
 (134 39 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (127 110 (:REWRITE DEFAULT-<-1))
 (121 114 (:REWRITE DEFAULT-+-1))
 (120 24 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (116 114 (:REWRITE DEFAULT-+-2))
 (97 97 (:TYPE-PRESCRIPTION NATP))
 (95 95 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (94 47 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (80 42 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (74 39 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (64 39 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (52 52 (:TYPE-PRESCRIPTION IFIX))
 (50 50 (:REWRITE DEFAULT-*-1))
 (49 49 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (49 49 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (48 48 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (47 47 (:TYPE-PRESCRIPTION POSP))
 (39 39 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (26 26 (:REWRITE ZIP-OPEN))
 (23 23 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (23 23 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (23 23 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (18 18 (:TYPE-PRESCRIPTION FIX))
 (11 11 (:REWRITE BVCHOP-SUM-DROP-BVCHOP))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 3 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (4 1 (:REWRITE UNSIGNED-BYTE-P-BVCHOP-SAME))
 (3 3 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (1 1 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-SUM-DROP-BVCHOP-ALT))
 )
(BVMINUS-OF-BVCHOP-ARG3
 (5250 103 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (3588 550 (:REWRITE BVCHOP-IDENTITY))
 (2678 206 (:DEFINITION EXPT))
 (2548 22 (:REWRITE +-OF---AND-0))
 (2253 47 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (1178 396 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (1059 1059 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (759 718 (:REWRITE DEFAULT-<-1))
 (734 529 (:REWRITE DEFAULT-+-2))
 (732 718 (:REWRITE DEFAULT-<-2))
 (618 206 (:REWRITE DEFAULT-*-2))
 (575 396 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (550 550 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (540 529 (:REWRITE DEFAULT-+-1))
 (491 491 (:TYPE-PRESCRIPTION POSP))
 (409 409 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (396 396 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (396 396 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (248 248 (:TYPE-PRESCRIPTION IFIX))
 (206 206 (:REWRITE ZIP-OPEN))
 (206 206 (:REWRITE DEFAULT-*-1))
 (154 154 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (154 154 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (154 154 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (90 90 (:TYPE-PRESCRIPTION FIX))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (12 4 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (7 7 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (7 3 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (4 4 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (2 2 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 )
(BVMINUS-OF-BVCHOP-ARG3-SAME
 (1477 44 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (1177 48 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (1144 88 (:DEFINITION EXPT))
 (698 11 (:REWRITE +-OF---AND-0))
 (321 234 (:REWRITE DEFAULT-+-2))
 (304 106 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (264 88 (:REWRITE DEFAULT-*-2))
 (259 236 (:REWRITE DEFAULT-<-1))
 (245 234 (:REWRITE DEFAULT-+-1))
 (243 236 (:REWRITE DEFAULT-<-2))
 (200 200 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (196 196 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (171 106 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (144 144 (:TYPE-PRESCRIPTION POSP))
 (116 116 (:TYPE-PRESCRIPTION IFIX))
 (107 107 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (106 106 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (106 106 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (88 88 (:REWRITE ZIP-OPEN))
 (88 88 (:REWRITE DEFAULT-*-1))
 (64 64 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (64 64 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (64 64 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (44 44 (:TYPE-PRESCRIPTION FIX))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (9 5 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (6 6 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (5 5 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 )
(BVMINUS-NORMALIZE-CONSTANT-ARG1)
(BVMINUS-OF-BVUMINUS
 (950 71 (:DEFINITION EXPT))
 (532 178 (:REWRITE BVCHOP-IDENTITY))
 (391 391 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (325 218 (:REWRITE DEFAULT-+-1))
 (311 218 (:REWRITE DEFAULT-+-2))
 (241 91 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (222 74 (:REWRITE DEFAULT-*-2))
 (222 74 (:REWRITE COMMUTATIVITY-OF-+))
 (221 177 (:REWRITE DEFAULT-<-1))
 (195 177 (:REWRITE DEFAULT-<-2))
 (187 139 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (178 178 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (178 178 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (144 144 (:TYPE-PRESCRIPTION POSP))
 (91 91 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (91 91 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (91 91 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (91 91 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (74 74 (:REWRITE DEFAULT-*-1))
 (73 53 (:REWRITE DEFAULT-UNARY-MINUS))
 (71 71 (:REWRITE ZIP-OPEN))
 (67 23 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (57 10 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (37 37 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (23 23 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (5 5 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (5 5 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (5 5 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE BVCHOP-NUMERIC-BOUND))
 (2 2 (:REWRITE BVCHOP-BOUND))
 (2 2 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 )
(BVMINUS-WHEN-ARG1-IS-NOT-AN-INTEGER
 (114 6 (:DEFINITION EXPT))
 (40 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (32 26 (:REWRITE DEFAULT-<-1))
 (30 26 (:REWRITE DEFAULT-<-2))
 (30 10 (:REWRITE DEFAULT-*-2))
 (30 10 (:REWRITE COMMUTATIVITY-OF-+))
 (28 10 (:REWRITE BVCHOP-IDENTITY))
 (28 8 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (27 23 (:REWRITE DEFAULT-+-1))
 (26 26 (:TYPE-PRESCRIPTION IFIX))
 (23 23 (:REWRITE DEFAULT-+-2))
 (22 22 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (20 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (18 18 (:TYPE-PRESCRIPTION FIX))
 (18 8 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (16 8 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (14 8 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (12 12 (:TYPE-PRESCRIPTION NATP))
 (12 8 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (12 8 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (10 10 (:REWRITE DEFAULT-*-1))
 (10 10 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (10 10 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 (8 8 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (8 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (6 6 (:REWRITE ZIP-OPEN))
 (6 2 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 )
(BVMINUS-BECOMES-BVPLUS-OF-BVUMINUS
 (104 8 (:DEFINITION EXPT))
 (92 92 (:TYPE-PRESCRIPTION IFIX))
 (84 18 (:REWRITE BVCHOP-IDENTITY))
 (48 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (40 14 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (38 14 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (36 4 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (34 26 (:REWRITE DEFAULT-<-1))
 (30 30 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (30 22 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-<-2))
 (24 8 (:REWRITE DEFAULT-*-2))
 (24 8 (:REWRITE COMMUTATIVITY-OF-+))
 (22 22 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (18 18 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (18 18 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (18 18 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (18 18 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (14 14 (:TYPE-PRESCRIPTION POSP))
 (14 14 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (14 14 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (14 14 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (8 8 (:REWRITE ZIP-OPEN))
 (8 8 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(BVMINUS-1-0
 (63 21 (:REWRITE BVCHOP-IDENTITY))
 (35 7 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (27 15 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (26 26 (:TYPE-PRESCRIPTION FIX))
 (21 21 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (18 18 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (15 15 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (15 15 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (15 15 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (15 15 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (14 14 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (13 7 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE GETBIT-IDENTITY))
 (7 7 (:REWRITE DEFAULT-<-2))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-1))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-0))
 (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 3 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (3 3 (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
 (3 3 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (3 3 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (3 3 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (3 3 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (3 3 (:REWRITE SLICE-OUT-OF-ORDER))
 (3 3 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
 (3 2 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (2 2 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
