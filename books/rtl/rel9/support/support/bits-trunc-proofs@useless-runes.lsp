(BITS-TRUNC-2
 (20793 21 (:REWRITE FL-OF-EVEN/2))
 (11595 217 (:REWRITE POWER2-INTEGER))
 (9121 102 (:REWRITE INTEGERP-PROD-OF-3-LAST-TWO))
 (8683 102 (:REWRITE INTEGERP-PROD-OF-3-FIRST-AND-LAST))
 (5868 680 (:REWRITE DEFAULT-*-2))
 (5665 52 (:REWRITE DEFAULT-UNARY-/))
 (3999 195 (:REWRITE EXPO-SHIFT-GENERAL))
 (3702 3702 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (3326 3326 (:TYPE-PRESCRIPTION EXPO-OF-INTEGER-TYPE))
 (2868 73 (:REWRITE EXPO-COMPARISON-REWRITE-TO-BOUND-2))
 (2674 680 (:REWRITE DEFAULT-*-1))
 (2561 21 (:REWRITE FL-INT))
 (2561 21 (:REWRITE A10))
 (1986 26 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
 (1801 21 (:REWRITE FL-OF-ODD/2))
 (1368 20 (:REWRITE REARR-NEGATIVE-COEFFS-<-SUMS-BLAH))
 (1271 41 (:REWRITE EXPO-SHIFT))
 (1082 43 (:REWRITE NONNEG-+))
 (985 394 (:REWRITE DEFAULT-+-2))
 (701 102 (:REWRITE INTEGERP-PROD-OF-3-FIRST-TWO))
 (674 394 (:REWRITE DEFAULT-+-1))
 (650 21 (:REWRITE FL-OF-NON-RATIONAL))
 (581 270 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (553 214 (:REWRITE DEFAULT-<-2))
 (534 10 (:REWRITE INTEGERP-IMPLIES-NOT-COMPLEX-RATIONALP))
 (516 43 (:REWRITE EXPO-/-POWER2P-ALT))
 (462 31 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (411 411 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (411 411 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (411 411 (:REWRITE EXPT-COMPARE))
 (411 411 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (388 2 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (386 5 (:REWRITE BITS-IGNORE-NEGATIVE-BITS-OF-INTEGER))
 (353 83 (:REWRITE POWER2P-SHIFT-2))
 (336 214 (:REWRITE DEFAULT-<-1))
 (330 114 (:TYPE-PRESCRIPTION TRUNC-INTEGER-TYPE-PRESCRIPTION))
 (286 80 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (270 270 (:REWRITE EXPT-2-EVALUATOR))
 (255 255 (:META CANCEL_PLUS-LESSP-CORRECT))
 (226 102 (:REWRITE EVEN-MEANS-HALF-IS-INTEGER))
 (213 21 (:REWRITE EXPO-A-FACTOR-MEANS-POWER2))
 (210 210 (:TYPE-PRESCRIPTION POWER2P))
 (187 145 (:REWRITE INTEGERP-PROD))
 (174 174 (:REWRITE INTEGERP-MINUS))
 (169 169 (:REWRITE POWER2P-EXPT2-I))
 (130 65 (:REWRITE POWER2P-INVERSE))
 (129 43 (:REWRITE EXPO-EXPT2))
 (124 124 (:TYPE-PRESCRIPTION EVEN))
 (114 114 (:TYPE-PRESCRIPTION TRUNC-NEGATIVE-RATIONAL-TYPE-PRESCRIPTION))
 (109 109 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (104 104 (:REWRITE EXPT-COMPARE-EQUAL))
 (97 97 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (94 94 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (94 94 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (94 94 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (94 94 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (94 94 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (87 87 (:REWRITE EXPO-MINUS-ERIC))
 (84 80 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (80 80 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (80 80 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (80 80 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (80 80 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (56 56 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (52 5 (:LINEAR TRUNC-NON-POSITIVE-LINEAR))
 (42 14 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (41 41 (:REWRITE EXPO-SHIFT-CONSTANT))
 (40 40 (:REWRITE FOLD-CONSTS-IN-+))
 (21 21 (:REWRITE FL-MINUS-GEN))
 (18 4 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER))
 (16 16 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-4))
 (15 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:REWRITE TRUNC-WITH-N-NOT-AN-INTEGER))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (8 8 (:LINEAR FL-MONOTONE-LINEAR))
 (8 4 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER))
 (7 7 (:REWRITE SGN-OF-NON-RATIONAL))
 (6 6 (:REWRITE UNARY-DIVIDE-LESS-THAN-NON-ZERO-CONSTANT))
 (5 5 (:REWRITE BITS-EXPT-CONSTANT))
 (5 5 (:LINEAR TRUNC-NEGATIVE))
 (4 4 (:LINEAR N<=FL-LINEAR))
 (3 3 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-1))
 (2 2 (:REWRITE MOD-MINUS-ALT))
 )
(BITS-TRUNC-3
 (336 3 (:REWRITE BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (300 3 (:REWRITE EXPO-COMPARISON-REWRITE-TO-BOUND))
 (157 157 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (119 4 (:LINEAR EXPT-WITH-SMALL-N))
 (102 3 (:REWRITE BITS-IGNORE-NEGATIVE-BITS-OF-INTEGER))
 (88 4 (:LINEAR EXPT-2-TYPE-LINEAR))
 (84 4 (:REWRITE LOGAND-WITH-NON-INTEGER-ARG))
 (80 1 (:REWRITE EXPO-UNIQUE-ERIC-2))
 (63 37 (:REWRITE DEFAULT-+-2))
 (62 62 (:TYPE-PRESCRIPTION TRUNC-NON-POSITIVE-RATIONAL-TYPE-PRESCRIPTION))
 (62 62 (:TYPE-PRESCRIPTION TRUNC-NEGATIVE-RATIONAL-TYPE-PRESCRIPTION))
 (62 62 (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (47 24 (:REWRITE DEFAULT-<-2))
 (46 37 (:REWRITE DEFAULT-+-1))
 (39 21 (:REWRITE DEFAULT-*-1))
 (39 15 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (36 36 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (36 36 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (36 36 (:REWRITE EXPT-COMPARE))
 (36 36 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (36 21 (:REWRITE DEFAULT-*-2))
 (30 30 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (30 30 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (24 24 (:REWRITE DEFAULT-<-1))
 (18 9 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (15 15 (:REWRITE EXPT-MINUS))
 (15 15 (:REWRITE EXPT-EXECUTE-REWRITE))
 (15 15 (:REWRITE EXPT-2-EVALUATOR))
 (9 3 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER))
 (8 8 (:LINEAR EXPT-EXCEEDS-2))
 (7 7 (:REWRITE TRUNC-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE TRUNC-TO-0-OR-FEWER-BITS))
 (7 7 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0-ALT))
 (7 7 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0))
 (6 3 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER))
 (5 5 (:REWRITE EXPT-COMPARE-EQUAL))
 (5 5 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (4 4 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (4 4 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS))
 (4 4 (:REWRITE ABS-POS))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (3 3 (:REWRITE BITS-WITH-X-NOT-RATIONAL))
 (3 3 (:REWRITE BITS-EXPT-CONSTANT))
 (2 2 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (2 2 (:REWRITE EXPO-SHIFT-GENERAL))
 (2 2 (:REWRITE EXPO-OF-NOT-RATIONALP))
 (2 2 (:REWRITE EXPO-MINUS-ERIC))
 (2 2 (:REWRITE COLLECT-CONSTANTS-WITH-DIVISION))
 (2 2 (:LINEAR TRUNC-NON-POSITIVE-LINEAR))
 (2 2 (:LINEAR TRUNC-NEGATIVE))
 (1 1 (:TYPE-PRESCRIPTION RATIONALP-ABS))
 (1 1 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-INTEGERP-TYPE))
 )
(BITS-TRUNC-4
 (191 191 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (74 37 (:TYPE-PRESCRIPTION TRUNC-INTEGER-TYPE-PRESCRIPTION))
 (63 3 (:REWRITE LOGAND-WITH-NON-INTEGER-ARG))
 (37 37 (:TYPE-PRESCRIPTION TRUNC-NON-POSITIVE-RATIONAL-TYPE-PRESCRIPTION))
 (37 37 (:TYPE-PRESCRIPTION TRUNC-NEGATIVE-RATIONAL-TYPE-PRESCRIPTION))
 (35 35 (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (27 2 (:LINEAR EXPT-WITH-SMALL-N))
 (18 18 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-RATIONALP-TYPE))
 (18 18 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-ACL2-NUMBERP-TYPE))
 (15 5 (:REWRITE DEFAULT-+-2))
 (12 8 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (10 1 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (9 5 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE EXPT-MINUS))
 (8 8 (:REWRITE EXPT-EXECUTE-REWRITE))
 (8 8 (:REWRITE EXPT-2-EVALUATOR))
 (8 2 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE TRUNC-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE TRUNC-TO-0-OR-FEWER-BITS))
 (7 7 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0-ALT))
 (7 7 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0))
 (6 6 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (6 6 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (6 6 (:REWRITE EXPT-COMPARE))
 (6 6 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:LINEAR TRUNC-NON-POSITIVE-LINEAR))
 (2 2 (:LINEAR TRUNC-NEGATIVE))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE EXPO-SHIFT-GENERAL))
 (1 1 (:REWRITE EXPO-OF-NOT-RATIONALP))
 (1 1 (:REWRITE EXPO-MINUS-ERIC))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 )
(BITS-TRUNC-5
 (524 524 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (514 1 (:REWRITE MOD-DROP-IRRELEVANT-SECOND-TERM))
 (239 4 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
 (161 74 (:TYPE-PRESCRIPTION TRUNC-INTEGER-TYPE-PRESCRIPTION))
 (160 6 (:REWRITE INTEGERP-MINUS))
 (149 7 (:LINEAR EXPT-WITH-SMALL-N))
 (132 66 (:TYPE-PRESCRIPTION NATP-MOD))
 (129 29 (:REWRITE DEFAULT-*-2))
 (128 4 (:REWRITE LOGAND-WITH-NON-INTEGER-ARG))
 (117 2 (:REWRITE INTEGERP-PROD))
 (113 113 (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (98 1 (:REWRITE INTEGERP-PROD-OF-3-FIRST-TWO))
 (95 1 (:REWRITE INTEGERP-PROD-OF-3-LAST-TWO))
 (74 74 (:TYPE-PRESCRIPTION TRUNC-NON-POSITIVE-RATIONAL-TYPE-PRESCRIPTION))
 (74 74 (:TYPE-PRESCRIPTION TRUNC-NEGATIVE-RATIONAL-TYPE-PRESCRIPTION))
 (71 28 (:REWRITE DEFAULT-+-2))
 (66 66 (:TYPE-PRESCRIPTION NATP))
 (66 66 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (56 27 (:REWRITE DEFAULT-<-2))
 (55 1 (:REWRITE INTEGERP-PROD-OF-3-FIRST-AND-LAST))
 (54 29 (:REWRITE DEFAULT-*-1))
 (54 28 (:REWRITE DEFAULT-+-1))
 (53 53 (:TYPE-PRESCRIPTION MOD-INTEGERP))
 (53 53 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (46 3 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (41 41 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (41 41 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (41 41 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (32 4 (:REWRITE EXPO-/-POWER2P-ALT))
 (31 31 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (31 31 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (31 31 (:META CANCEL_PLUS-LESSP-CORRECT))
 (31 27 (:REWRITE DEFAULT-<-1))
 (31 18 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (29 1 (:REWRITE COMMUTATIVITY-2-OF-*))
 (27 3 (:REWRITE DEFAULT-UNARY-/))
 (18 18 (:REWRITE EXPT-MINUS))
 (18 18 (:REWRITE EXPT-EXECUTE-REWRITE))
 (18 18 (:REWRITE EXPT-2-EVALUATOR))
 (18 18 (:REWRITE EXPO-SHIFT-GENERAL))
 (15 6 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (13 13 (:TYPE-PRESCRIPTION EXPO-INTEGER-TYPE))
 (8 8 (:REWRITE TRUNC-WITH-N-NOT-AN-INTEGER))
 (8 8 (:REWRITE TRUNC-TO-0-OR-FEWER-BITS))
 (8 8 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0-ALT))
 (8 8 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0))
 (8 8 (:REWRITE A4))
 (4 4 (:REWRITE EXPO-SHIFT-CONSTANT))
 (3 3 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (3 3 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (2 2 (:LINEAR TRUNC-NON-POSITIVE-LINEAR))
 (2 2 (:LINEAR TRUNC-NEGATIVE))
 (1 1 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(BITS-TRUNC-ORIGINAL
 (9772 22 (:REWRITE BITS-REDUCE-EXACTP))
 (7053 10 (:REWRITE EXPO-UNIQUE-ERIC-2))
 (4077 40 (:REWRITE BVECP-TIGHTEN))
 (3781 17 (:REWRITE BITS-TAIL-SPECIAL))
 (3701 17 (:REWRITE BITN-TOO-SMALL))
 (3403 3403 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (2517 512 (:REWRITE DEFAULT-*-2))
 (2468 11 (:REWRITE ABS-POS))
 (2059 8 (:REWRITE LOGAND-WITH-NON-INTEGER-ARG))
 (1338 512 (:REWRITE DEFAULT-*-1))
 (946 56 (:REWRITE INTEGERP-MINUS))
 (925 41 (:REWRITE MOVE-NEGATIVE-CONSTANT-1))
 (842 7 (:REWRITE INTEGERP-+))
 (834 12 (:REWRITE INTEGERP-SUM-TAKE-OUT-KNOWN-INTEGER))
 (724 277 (:REWRITE DEFAULT-+-2))
 (644 277 (:REWRITE DEFAULT-+-1))
 (538 73 (:REWRITE EXPO-SHIFT-GENERAL))
 (400 100 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (298 180 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (289 102 (:REWRITE DEFAULT-<-2))
 (261 45 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (245 27 (:REWRITE DEFAULT-UNARY-/))
 (245 5 (:REWRITE BITS-DROP-FROM-MINUS))
 (217 207 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (208 100 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (207 207 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (206 20 (:REWRITE INTEGERP-PROD))
 (204 72 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (186 102 (:REWRITE DEFAULT-<-1))
 (180 180 (:REWRITE EXPT-2-EVALUATOR))
 (174 80 (:TYPE-PRESCRIPTION TRUNC-INTEGER-TYPE-PRESCRIPTION))
 (170 100 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (165 1 (:REWRITE MOD-DROP-IRRELEVANT-SECOND-TERM))
 (164 4 (:REWRITE EXPO-X+A*2**K))
 (153 17 (:REWRITE BITS-TAIL))
 (150 150 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (128 1 (:REWRITE BVECP-EXACTP))
 (110 100 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (110 5 (:REWRITE BITN-EXPT-GEN))
 (100 100 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (100 100 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (88 1 (:REWRITE INTEGERP-PROD-OF-3-LAST-TWO))
 (85 18 (:REWRITE NONNEG-+))
 (84 84 (:TYPE-PRESCRIPTION EXPO-INTEGER-TYPE))
 (83 83 (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (80 80 (:TYPE-PRESCRIPTION TRUNC-NON-POSITIVE-RATIONAL-TYPE-PRESCRIPTION))
 (80 80 (:TYPE-PRESCRIPTION TRUNC-NEGATIVE-RATIONAL-TYPE-PRESCRIPTION))
 (80 80 (:TYPE-PRESCRIPTION BVECP))
 (76 3 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (75 11 (:TYPE-PRESCRIPTION RATIONALP-ABS))
 (74 10 (:REWRITE EXPO-OF-NOT-RATIONALP))
 (69 1 (:REWRITE INTEGERP-PROD-OF-3-FIRST-AND-LAST))
 (66 66 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (61 61 (:REWRITE EXPT-COMPARE-EQUAL))
 (60 5 (:REWRITE LAND0-WITH-N-NOT-A-NATP))
 (52 52 (:REWRITE COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS))
 (50 5 (:DEFINITION NATP))
 (45 45 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (45 45 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (45 22 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER-2))
 (45 1 (:REWRITE INTEGERP-PROD-OF-3-FIRST-TWO))
 (39 39 (:TYPE-PRESCRIPTION BITN-NONNEGATIVE-INTEGER))
 (34 17 (:REWRITE BITN-KNOWN-NOT-0-REPLACE-WITH-1))
 (33 33 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (33 33 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (22 22 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER-2))
 (22 22 (:REWRITE BITS-EXPT-CONSTANT))
 (22 22 (:REWRITE BITS-0-MEANS-TOP-BIT-0))
 (22 22 (:REWRITE BITN-BVECP-0-ERIC))
 (19 19 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (19 19 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (17 17 (:REWRITE BITS-WITH-BAD-INDEX-2))
 (17 17 (:REWRITE BITS-IGNORE-NEGATIVE-BITS-OF-INTEGER))
 (12 12 (:REWRITE EXPO-SHIFT-CONSTANT))
 (12 12 (:REWRITE COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS-2))
 (12 7 (:REWRITE BITN-SHIFT-BY-CONSTANT-POWER-OF-2))
 (12 6 (:TYPE-PRESCRIPTION NATP-MOD))
 (11 11 (:TYPE-PRESCRIPTION NATP))
 (11 11 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-INTEGERP-TYPE))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE EXPO-MINUS-ERIC))
 (8 1 (:REWRITE EXPO-/-POWER2P-ALT))
 (7 7 (:REWRITE INTEGERP-SUM-OF-ODDS-OVER-2-LEADING-CONSTANT))
 (6 6 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (6 6 (:TYPE-PRESCRIPTION MOD-INTEGERP-WHEN-Y-IS-POWER-OF-2))
 (6 6 (:TYPE-PRESCRIPTION MOD-INTEGERP))
 (6 6 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (6 6 (:REWRITE INTEGERP-+-REDUCE-LEADING-CONSTANT))
 (5 5 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-RATIONALP-TYPE))
 (5 5 (:REWRITE TRUNC-WITH-N-NOT-AN-INTEGER))
 (5 5 (:REWRITE TRUNC-TO-0-OR-FEWER-BITS))
 (5 5 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0-ALT))
 (5 5 (:REWRITE TRUNC-OF-NON-RATIONALP-IS-0))
 (5 5 (:REWRITE LAND0-REDUCE))
 (5 5 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (5 5 (:REWRITE BITN-ADD-CRUCIAL-BIT-AND-FLIP-RESULT))
 (4 4 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS-2))
 (2 2 (:TYPE-PRESCRIPTION EXACTP))
 (2 2 (:REWRITE UNARY-DIVIDE-GREATER-THAN-NON-ZERO-CONSTANT))
 (1 1 (:REWRITE EXACTP-WITH-N-NOT-INTEGER))
 (1 1 (:REWRITE EXACTP-MINUS-GEN))
 (1 1 (:REWRITE BITS-SHIFT-BY-CONSTANT-POWER-OF-2))
 (1 1 (:LINEAR TRUNC-NON-POSITIVE-LINEAR))
 (1 1 (:LINEAR TRUNC-NEGATIVE))
 )
