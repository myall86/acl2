(SBVREM
 (264 4 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (256 4 (:DEFINITION SIGNED-BYTE-P))
 (224 10 (:DEFINITION EXPT))
 (132 4 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (120 4 (:DEFINITION INTEGER-RANGE-P))
 (66 6 (:REWRITE ZIP-OPEN))
 (54 40 (:REWRITE DEFAULT-+-2))
 (52 4 (:LINEAR GETBIT-BOUND-LINEAR))
 (48 10 (:REWRITE COMMUTATIVITY-OF-+))
 (41 40 (:REWRITE DEFAULT-+-1))
 (40 12 (:REWRITE DEFAULT-*-2))
 (39 23 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE <-WHEN-BVLT))
 (20 12 (:REWRITE DEFAULT-*-1))
 (18 18 (:REWRITE BOUND-WHEN-USB))
 (18 9 (:REWRITE GETBIT-WHEN-NOT-1))
 (18 9 (:REWRITE GETBIT-WHEN-NOT-0))
 (18 9 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (16 11 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (13 1 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (12 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (11 11 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (11 11 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (11 11 (:REWRITE UBP-LONGER-BETTER))
 (11 1 (:REWRITE BITP-BECOMES-UNSIGNED-BYTE-P))
 (10 1 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (9 9 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (9 9 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (9 9 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (9 9 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (9 9 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (9 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (8 8 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (7 7 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (7 7 (:REWRITE EQUAL-WHEN-BVLT))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (7 7 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (7 7 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (7 7 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (7 1 (:REWRITE GETBIT-IDENTITY))
 (6 1 (:DEFINITION NATP))
 (5 5 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONNEGATIVE-TYPE))
 (5 5 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONPOSITIVE-TYPE))
 (5 5 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONNEGATIVE-TYPE))
 (4 4 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (4 4 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (4 4 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (4 4 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (4 4 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (4 4 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (4 4 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (4 4 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (3 3 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (3 3 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-IMPOSSIBLE-ALT))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-IMPOSSIBLE))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-BVLT-CONSTANT-1))
 )
(UNSIGNED-BYTE-P-OF-SBVREM
 (350 2 (:REWRITE USB-PLUS-FROM-BOUNDS))
 (183 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (183 1 (:REWRITE BVCHOP-IDENTITY))
 (156 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (142 2 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (138 2 (:DEFINITION SIGNED-BYTE-P))
 (104 4 (:DEFINITION EXPT))
 (100 2 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (95 95 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (78 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONPOSITIVE-TYPE))
 (78 2 (:LINEAR <=-OF-TRUNCATE-SAME-LINEAR))
 (64 30 (:REWRITE DEFAULT-<-2))
 (63 30 (:REWRITE DEFAULT-<-1))
 (62 2 (:DEFINITION INTEGER-RANGE-P))
 (46 2 (:LINEAR GETBIT-BOUND-LINEAR))
 (40 40 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (40 40 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (34 21 (:REWRITE DEFAULT-+-2))
 (33 33 (:REWRITE <-WHEN-BVLT))
 (28 8 (:REWRITE DEFAULT-*-2))
 (28 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (26 26 (:TYPE-PRESCRIPTION TRUNCATE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONNEGATIVE-TYPE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONPOSITIVE-TYPE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONNEGATIVE-TYPE))
 (26 21 (:REWRITE DEFAULT-+-1))
 (26 5 (:DEFINITION POSP))
 (25 25 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 4 (:REWRITE ZIP-OPEN))
 (22 22 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (22 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (21 3 (:REWRITE +-OF---AND-0))
 (19 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 8 (:REWRITE DEFAULT-*-1))
 (15 15 (:REWRITE BOUND-WHEN-USB))
 (14 2 (:LINEAR <=-OF-LOGEXT-LINEAR-UPPER))
 (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
 (10 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (10 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (9 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (8 8 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (8 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-1))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-0))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (7 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (4 2 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (4 2 (:REWRITE LOGEXT-NEGATIVE))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (3 3 (:REWRITE UBP-LONGER-BETTER))
 (3 3 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (3 3 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (3 3 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (3 3 (:REWRITE EQUAL-WHEN-BVLT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (2 2 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (2 1 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (2 1 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (1 1 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 )
(NATP-OF-SBVREM)
(INTEGERP-OF-SBVREM)
(EQUAL-OF-0-AND-SBVREM-WHEN-SMALL
 (54 10 (:REWRITE BOUND-WHEN-USB))
 (33 3 (:REWRITE ZIP-OPEN))
 (22 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (17 7 (:REWRITE DEFAULT-*-2))
 (13 10 (:REWRITE DEFAULT-<-1))
 (13 1 (:LINEAR GETBIT-BOUND-LINEAR))
 (12 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE <-WHEN-BVLT))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (8 8 (:REWRITE EQUAL-WHEN-BVLT))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (8 8 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (8 8 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (7 7 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-1))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-0))
 (3 3 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (3 3 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
 (3 3 (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
 (3 3 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (3 3 (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
 (3 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (2 2 (:REWRITE UBP-LONGER-BETTER))
 (2 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (1 1 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:REWRITE EQUAL-OF-*-AND-CONSTANT))
 (1 1 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 )
(SBVREM-OF-BVCHOP-ARG2
 (990 10 (:REWRITE BVCHOP-IDENTITY))
 (880 2 (:REWRITE USB-PLUS-FROM-BOUNDS))
 (706 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (628 2 (:LINEAR <=-OF-TRUNCATE-SAME-LINEAR))
 (536 8 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (520 8 (:DEFINITION SIGNED-BYTE-P))
 (394 16 (:DEFINITION EXPT))
 (330 9 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (290 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
 (288 2 (:LINEAR <=-OF-LOGEXT-LINEAR-UPPER))
 (248 8 (:DEFINITION INTEGER-RANGE-P))
 (235 4 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (225 4 (:REWRITE BITP-BECOMES-UNSIGNED-BYTE-P))
 (224 19 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (144 144 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (144 144 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (134 14 (:REWRITE ZIP-OPEN))
 (126 9 (:LINEAR GETBIT-BOUND-LINEAR))
 (124 124 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (113 61 (:REWRITE DEFAULT-<-2))
 (100 61 (:REWRITE DEFAULT-<-1))
 (96 72 (:REWRITE DEFAULT-+-2))
 (96 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONPOSITIVE-TYPE))
 (84 16 (:REWRITE COMMUTATIVITY-OF-+))
 (78 72 (:REWRITE DEFAULT-+-1))
 (68 20 (:REWRITE DEFAULT-*-2))
 (61 61 (:REWRITE <-WHEN-BVLT))
 (54 54 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (52 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (49 1 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (48 48 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (46 23 (:REWRITE GETBIT-WHEN-NOT-1))
 (46 23 (:REWRITE GETBIT-WHEN-NOT-0))
 (46 23 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (45 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (43 22 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (42 1 (:LINEAR BVCHOP-UPPER-BOUND))
 (40 40 (:REWRITE BOUND-WHEN-USB))
 (36 20 (:REWRITE DEFAULT-*-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (32 32 (:TYPE-PRESCRIPTION TRUNCATE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONNEGATIVE-TYPE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONPOSITIVE-TYPE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONNEGATIVE-TYPE))
 (30 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (30 4 (:REWRITE GETBIT-IDENTITY))
 (27 7 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (25 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (23 23 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (23 23 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (23 23 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (23 23 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (22 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (20 20 (:TYPE-PRESCRIPTION REM))
 (19 19 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (19 19 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (19 19 (:REWRITE UBP-LONGER-BETTER))
 (17 17 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (17 17 (:REWRITE EQUAL-WHEN-BVLT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (17 17 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (17 2 (:REWRITE GETBIT-OF-BVCHOP))
 (16 8 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (16 2 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (13 13 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (13 3 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (12 12 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
 (10 10 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (10 10 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (10 10 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (10 2 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
 (9 9 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (9 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (8 8 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (8 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (8 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (6 2 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (4 2 (:REWRITE LOGEXT-NEGATIVE))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (1 1 (:REWRITE BVCHOP-BOUND))
 (1 1 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 )
(SBVREM-OF-BVCHOP-ARG3
 (990 10 (:REWRITE BVCHOP-IDENTITY))
 (880 2 (:REWRITE USB-PLUS-FROM-BOUNDS))
 (706 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (628 2 (:LINEAR <=-OF-TRUNCATE-SAME-LINEAR))
 (536 8 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (520 8 (:DEFINITION SIGNED-BYTE-P))
 (394 16 (:DEFINITION EXPT))
 (330 9 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (290 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
 (288 2 (:LINEAR <=-OF-LOGEXT-LINEAR-UPPER))
 (248 8 (:DEFINITION INTEGER-RANGE-P))
 (235 4 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (225 4 (:REWRITE BITP-BECOMES-UNSIGNED-BYTE-P))
 (224 19 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (144 144 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (144 144 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (134 14 (:REWRITE ZIP-OPEN))
 (126 9 (:LINEAR GETBIT-BOUND-LINEAR))
 (124 124 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (113 61 (:REWRITE DEFAULT-<-2))
 (100 61 (:REWRITE DEFAULT-<-1))
 (96 72 (:REWRITE DEFAULT-+-2))
 (96 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONPOSITIVE-TYPE))
 (84 16 (:REWRITE COMMUTATIVITY-OF-+))
 (78 72 (:REWRITE DEFAULT-+-1))
 (68 20 (:REWRITE DEFAULT-*-2))
 (61 61 (:REWRITE <-WHEN-BVLT))
 (54 54 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (52 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (49 1 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (48 48 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (46 23 (:REWRITE GETBIT-WHEN-NOT-1))
 (46 23 (:REWRITE GETBIT-WHEN-NOT-0))
 (46 23 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (45 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (43 22 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (42 1 (:LINEAR BVCHOP-UPPER-BOUND))
 (40 40 (:REWRITE BOUND-WHEN-USB))
 (36 20 (:REWRITE DEFAULT-*-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (32 32 (:TYPE-PRESCRIPTION TRUNCATE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONNEGATIVE-TYPE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONPOSITIVE-TYPE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONNEGATIVE-TYPE))
 (30 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (30 4 (:REWRITE GETBIT-IDENTITY))
 (27 7 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (25 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (23 23 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (23 23 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (23 23 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (23 23 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (22 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (20 20 (:TYPE-PRESCRIPTION REM))
 (19 19 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (19 19 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (19 19 (:REWRITE UBP-LONGER-BETTER))
 (17 17 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (17 17 (:REWRITE EQUAL-WHEN-BVLT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (17 17 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (17 17 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (17 2 (:REWRITE GETBIT-OF-BVCHOP))
 (16 8 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (16 2 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (13 13 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (13 3 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (12 12 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
 (10 10 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (10 10 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (10 10 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (10 2 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
 (9 9 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (9 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (8 8 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (8 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (8 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (6 2 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (4 2 (:REWRITE LOGEXT-NEGATIVE))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (1 1 (:REWRITE BVCHOP-BOUND))
 (1 1 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 )
(UNSIGNED-BYTE-P-FORCED-OF-SBVREM
 (350 2 (:REWRITE USB-PLUS-FROM-BOUNDS))
 (183 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (183 1 (:REWRITE BVCHOP-IDENTITY))
 (156 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (142 2 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (138 2 (:DEFINITION SIGNED-BYTE-P))
 (104 4 (:DEFINITION EXPT))
 (100 2 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (95 95 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (78 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONPOSITIVE-TYPE))
 (78 2 (:LINEAR <=-OF-TRUNCATE-SAME-LINEAR))
 (62 2 (:DEFINITION INTEGER-RANGE-P))
 (60 29 (:REWRITE DEFAULT-<-2))
 (56 29 (:REWRITE DEFAULT-<-1))
 (46 2 (:LINEAR GETBIT-BOUND-LINEAR))
 (40 40 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (40 40 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (34 21 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE <-WHEN-BVLT))
 (28 8 (:REWRITE DEFAULT-*-2))
 (28 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (26 26 (:TYPE-PRESCRIPTION TRUNCATE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONPOSITIVE-AND-NONNEGATIVE-TYPE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONPOSITIVE-TYPE))
 (26 26 (:TYPE-PRESCRIPTION <=-OF-TRUNCATE-AND-0-WHEN-NONNEGATIVE-AND-NONNEGATIVE-TYPE))
 (26 21 (:REWRITE DEFAULT-+-1))
 (26 5 (:DEFINITION POSP))
 (25 25 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 4 (:REWRITE ZIP-OPEN))
 (22 22 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (22 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (21 3 (:REWRITE +-OF---AND-0))
 (19 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 8 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE BOUND-WHEN-USB))
 (14 2 (:LINEAR <=-OF-LOGEXT-LINEAR-UPPER))
 (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
 (10 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (10 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (9 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (8 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-1))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-0))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (7 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (5 5 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (4 4 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (4 4 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (4 4 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (4 2 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (4 2 (:REWRITE LOGEXT-NEGATIVE))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (3 3 (:REWRITE UBP-LONGER-BETTER))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (2 1 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (2 1 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (1 1 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (1 1 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 )
(SBVREM-OF-0-ARG1
 (32 2 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (31 5 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (28 2 (:REWRITE BITP-BECOMES-UNSIGNED-BYTE-P))
 (22 1 (:REWRITE BVCHOP-IDENTITY))
 (14 2 (:REWRITE GETBIT-IDENTITY))
 (10 10 (:TYPE-PRESCRIPTION REM))
 (10 3 (:REWRITE DEFAULT-<-1))
 (9 9 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (6 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (5 5 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (5 5 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (5 5 (:REWRITE UBP-LONGER-BETTER))
 (4 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 2 (:REWRITE GETBIT-WHEN-NOT-1))
 (4 2 (:REWRITE GETBIT-WHEN-NOT-0))
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (3 3 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (3 3 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE <-WHEN-BVLT))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (2 2 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (2 2 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (1 1 (:DEFINITION REM))
 )
(SBVREM-OF-0-ARG2
 (139 2 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (135 2 (:DEFINITION SIGNED-BYTE-P))
 (59 2 (:DEFINITION INTEGER-RANGE-P))
 (56 2 (:DEFINITION EXPT))
 (35 2 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (25 25 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (25 25 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (22 2 (:REWRITE ZIP-OPEN))
 (20 12 (:REWRITE DEFAULT-<-2))
 (16 1 (:REWRITE BVCHOP-IDENTITY))
 (15 12 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE <-WHEN-BVLT))
 (12 9 (:REWRITE DEFAULT-+-2))
 (12 2 (:REWRITE COMMUTATIVITY-OF-+))
 (11 2 (:DEFINITION POSP))
 (10 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (9 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (8 8 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (7 1 (:REWRITE +-OF---AND-0))
 (7 1 (:DEFINITION NATP))
 (6 6 (:REWRITE BOUND-WHEN-USB))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 2 (:REWRITE DEFAULT-*-2))
 (3 3 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (2 1 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (2 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 1 (:REWRITE GETBIT-WHEN-NOT-1))
 (2 1 (:REWRITE GETBIT-WHEN-NOT-0))
 (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (2 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (1 1 (:REWRITE UBP-LONGER-BETTER))
 (1 1 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE GETBIT-OF-0))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 )
(SBVREM-OF-0-ARG3
 (139 2 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (135 2 (:DEFINITION SIGNED-BYTE-P))
 (80 3 (:DEFINITION EXPT))
 (78 2 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (59 2 (:DEFINITION INTEGER-RANGE-P))
 (35 18 (:REWRITE DEFAULT-<-2))
 (27 18 (:REWRITE DEFAULT-<-1))
 (24 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (23 3 (:REWRITE ZIP-OPEN))
 (23 1 (:LINEAR GETBIT-BOUND-LINEAR))
 (21 3 (:REWRITE BVCHOP-IDENTITY))
 (20 20 (:REWRITE <-WHEN-BVLT))
 (20 16 (:REWRITE DEFAULT-+-2))
 (19 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (17 17 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (17 16 (:REWRITE DEFAULT-+-1))
 (14 14 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (14 2 (:REWRITE +-OF---AND-0))
 (12 4 (:REWRITE DEFAULT-*-2))
 (11 11 (:REWRITE BOUND-WHEN-USB))
 (11 2 (:DEFINITION POSP))
 (11 1 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (9 9 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (9 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
 (9 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (7 7 (:TYPE-PRESCRIPTION NATP))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (7 7 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (7 1 (:DEFINITION NATP))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-1))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-0))
 (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (6 3 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 3 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (6 3 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (6 3 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (6 3 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (5 3 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (5 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (3 3 (:REWRITE UBP-LONGER-BETTER))
 (3 3 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (3 3 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (2 1 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE GETBIT-OF-0))
 )
(SBVREM-OF-1-ARG3
 (1130 18 (:REWRITE LOGEXT-WHEN-TOP-BIT-0))
 (943 3 (:REWRITE USB-PLUS-FROM-BOUNDS))
 (848 4 (:DEFINITION NATP))
 (394 4 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
 (392 4 (:LINEAR <=-OF-LOGEXT-LINEAR-UPPER))
 (266 13 (:REWRITE LOGEXT-WHEN-SIGNED-BYTE-P))
 (240 13 (:DEFINITION SIGNED-BYTE-P))
 (162 24 (:REWRITE GETBIT-IDENTITY))
 (161 13 (:DEFINITION INTEGER-RANGE-P))
 (155 69 (:REWRITE DEFAULT-<-1))
 (128 8 (:DEFINITION EXPT))
 (111 53 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (91 32 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (80 69 (:REWRITE DEFAULT-<-2))
 (72 72 (:REWRITE <-WHEN-BVLT))
 (70 35 (:REWRITE GETBIT-WHEN-NOT-1))
 (64 64 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (60 30 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (58 30 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (53 53 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (53 53 (:REWRITE UBP-LONGER-BETTER))
 (51 34 (:REWRITE DEFAULT-+-2))
 (41 34 (:REWRITE DEFAULT-+-1))
 (38 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (38 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (37 37 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (33 31 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (33 15 (:REWRITE DEFAULT-*-2))
 (33 8 (:REWRITE COMMUTATIVITY-OF-+))
 (31 31 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (29 29 (:REWRITE BOUND-WHEN-USB))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (28 28 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (28 28 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (26 13 (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
 (24 24 (:REWRITE GETBIT-IDENTITY-FREE))
 (24 4 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
 (23 3 (:REWRITE ZIP-OPEN))
 (21 3 (:REWRITE +-OF---AND-0))
 (19 15 (:REWRITE DEFAULT-*-1))
 (15 3 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (13 13 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (11 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (9 3 (:REWRITE GETBIT-OF-1))
 (8 8 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (8 8 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (6 6 (:REWRITE EQUAL-WHEN-BVLT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (6 6 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (6 3 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 1 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (4 2 (:REWRITE LOGEXT-NEGATIVE))
 (3 3 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (3 3 (:REWRITE EQUAL-OF-0-WHEN-BVLT))
 (3 3 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (3 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (3 3 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (3 3 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (2 2 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (2 2 (:REWRITE <-OF-EXPT-2-AND-CONSTANT))
 (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE NOT-EQUAL-OF-BVCHOP-WHEN-EQUAL-OF-GETBIT))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-IMPOSSIBLE-ALT))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-IMPOSSIBLE))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-BVCHOP-AND-CONSTANT-WHEN-BVLT-CONSTANT-1))
 )
