(RTL::NATP-MOD-2
 (2 1 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP-WHEN-Y-IS-POWER-OF-2-GEN))
 (1 1 (:TYPE-PRESCRIPTION RTL::POWER2P))
 (1 1 (:TYPE-PRESCRIPTION RTL::MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 )
(RTL::MOD-MOD-TIMES
 (1446 1446 (:TYPE-PRESCRIPTION RTL::MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (1020 539 (:TYPE-PRESCRIPTION RTL::NATP-MOD))
 (808 16 (:REWRITE RTL::INTEGERP-SUM-TAKE-OUT-KNOWN-INTEGER))
 (634 539 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP-WHEN-Y-IS-POWER-OF-2-GEN))
 (520 167 (:REWRITE RTL::INTEGERP-MINUS))
 (483 483 (:TYPE-PRESCRIPTION RTL::INTEGERP-MOD))
 (481 481 (:TYPE-PRESCRIPTION NATP))
 (472 8 (:REWRITE RTL::INTEGERP-+))
 (445 233 (:REWRITE DEFAULT-*-2))
 (354 6 (:LINEAR RTL::MOD-UPPER-BOUND-2))
 (350 350 (:TYPE-PRESCRIPTION RTL::MOD-RATIONALP))
 (285 28 (:REWRITE RTL::INTEGERP-PROD-OF-3-LAST-TWO))
 (284 233 (:REWRITE DEFAULT-*-1))
 (270 79 (:REWRITE RTL::INTEGERP-PROD))
 (267 28 (:REWRITE RTL::INTEGERP-PROD-OF-3-FIRST-AND-LAST))
 (246 4 (:REWRITE RTL::PRODUCT-LESS-THAN-ZERO))
 (234 18 (:REWRITE RTL::MOD-QUOTIENT-INTEGERP))
 (221 89 (:REWRITE RTL::MOD-WHEN-Y-IS-AN-INVERSE))
 (167 167 (:REWRITE RTL::POWER2-INTEGER))
 (164 35 (:REWRITE DEFAULT-+-2))
 (148 28 (:REWRITE RTL::INTEGERP-PROD-OF-3-FIRST-TWO))
 (117 85 (:REWRITE RTL::MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (97 67 (:REWRITE DEFAULT-<-1))
 (95 95 (:TYPE-PRESCRIPTION RTL::POWER2P))
 (85 85 (:REWRITE RTL::MOD-MINUS-ALT))
 (77 77 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (75 35 (:REWRITE DEFAULT-+-1))
 (71 71 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (71 71 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (71 71 (:REWRITE RTL::EXPT-COMPARE))
 (67 67 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (67 67 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (67 67 (:REWRITE DEFAULT-<-2))
 (67 67 (:META CANCEL_PLUS-LESSP-CORRECT))
 (67 40 (:LINEAR RTL::*-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (67 40 (:LINEAR RTL::*-STRONGLY-MONOTONIC . 2))
 (63 63 (:REWRITE DEFAULT-UNARY-/))
 (49 40 (:LINEAR RTL::*-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (49 40 (:LINEAR RTL::*-WEAKLY-MONOTONIC . 2))
 (40 40 (:LINEAR RTL::*-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (40 40 (:LINEAR RTL::*-WEAKLY-MONOTONIC . 1))
 (40 40 (:LINEAR RTL::*-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (40 40 (:LINEAR RTL::*-STRONGLY-MONOTONIC . 1))
 (18 18 (:REWRITE RTL::A8))
 (8 8 (:REWRITE RTL::INTEGERP-SUM-OF-ODDS-OVER-2-LEADING-CONSTANT))
 (8 8 (:REWRITE RTL::INTEGERP-+-REDUCE-LEADING-CONSTANT))
 (7 7 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (7 7 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (7 7 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (7 7 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (7 7 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (7 7 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (2 2 (:REWRITE RTL::MOD-NON-NEGATIVE))
 )
(RTL::MOD-TIMES-MOD
 (456 18 (:REWRITE RTL::MOD-DOES-NOTHING))
 (260 6 (:LINEAR RTL::MOD-UPPER-BOUND-2))
 (209 209 (:TYPE-PRESCRIPTION RTL::MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (144 4 (:REWRITE RTL::PRODUCT-LESS-THAN-ZERO))
 (60 18 (:REWRITE RTL::MOD-WHEN-Y-IS-AN-INVERSE))
 (50 34 (:REWRITE DEFAULT-<-1))
 (38 38 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (38 38 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (38 38 (:REWRITE RTL::EXPT-COMPARE))
 (38 38 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (34 34 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (34 34 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (34 34 (:REWRITE DEFAULT-<-2))
 (34 34 (:META CANCEL_PLUS-LESSP-CORRECT))
 (34 18 (:REWRITE RTL::MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (32 32 (:LINEAR RTL::*-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (32 32 (:LINEAR RTL::*-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (32 32 (:LINEAR RTL::*-WEAKLY-MONOTONIC . 2))
 (32 32 (:LINEAR RTL::*-WEAKLY-MONOTONIC . 1))
 (32 32 (:LINEAR RTL::*-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (32 32 (:LINEAR RTL::*-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (32 32 (:LINEAR RTL::*-STRONGLY-MONOTONIC . 2))
 (32 32 (:LINEAR RTL::*-STRONGLY-MONOTONIC . 1))
 (18 18 (:REWRITE RTL::MOD-MINUS-ALT))
 (14 14 (:REWRITE RTL::POWER2-INTEGER))
 (14 14 (:REWRITE RTL::INTEGERP-MINUS))
 (14 14 (:REWRITE DEFAULT-UNARY-/))
 (12 6 (:TYPE-PRESCRIPTION RTL::NATP-MOD))
 (10 6 (:REWRITE DEFAULT-*-2))
 (10 6 (:REWRITE DEFAULT-*-1))
 (6 6 (:TYPE-PRESCRIPTION RTL::RATIONALP-MOD-CASE-SPLIT))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:TYPE-PRESCRIPTION RTL::MOD-RATIONALP))
 (6 6 (:TYPE-PRESCRIPTION RTL::MOD-NON-NEGATIVE-RATIONALP-TYPE-PRESCRIPTION))
 (6 6 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP-WHEN-Y-IS-POWER-OF-2-GEN))
 (6 6 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP))
 (6 6 (:TYPE-PRESCRIPTION RTL::INTEGERP-MOD))
 (5 5 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (5 5 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (5 5 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 )
(RTL::MOD-PLUS-MOD
 (200 15 (:REWRITE RTL::MOD-DOES-NOTHING))
 (164 164 (:TYPE-PRESCRIPTION RTL::MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (120 6 (:LINEAR RTL::MOD-UPPER-BOUND-2))
 (109 10 (:REWRITE RTL::MOD-DROP-IRRELEVANT-SECOND-TERM))
 (100 10 (:REWRITE RTL::MOD-DROP-IRRELEVANT-FIRST-TERM))
 (66 33 (:TYPE-PRESCRIPTION RTL::NATP-MOD))
 (55 16 (:REWRITE RTL::MOD-WHEN-Y-IS-AN-INVERSE))
 (41 41 (:REWRITE RTL::POWER2-INTEGER))
 (41 41 (:REWRITE RTL::INTEGERP-MINUS))
 (40 4 (:REWRITE RTL::NONNEG-+))
 (39 25 (:REWRITE DEFAULT-<-1))
 (37 19 (:REWRITE RTL::INTEGERP-PROD))
 (33 33 (:TYPE-PRESCRIPTION NATP))
 (33 33 (:TYPE-PRESCRIPTION RTL::MOD-NON-NEGATIVE-RATIONALP-TYPE-PRESCRIPTION))
 (33 33 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP-WHEN-Y-IS-POWER-OF-2-GEN))
 (33 33 (:TYPE-PRESCRIPTION RTL::MOD-INTEGERP))
 (33 33 (:TYPE-PRESCRIPTION RTL::INTEGERP-MOD))
 (33 33 (:REWRITE DEFAULT-UNARY-/))
 (25 25 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (25 25 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (25 25 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (25 25 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (25 25 (:REWRITE RTL::EXPT-COMPARE))
 (25 25 (:REWRITE DEFAULT-<-2))
 (25 25 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (25 25 (:META CANCEL_PLUS-LESSP-CORRECT))
 (25 15 (:REWRITE RTL::MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (19 19 (:REWRITE DEFAULT-*-2))
 (19 19 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE RTL::MOD-MINUS-ALT))
 (14 14 (:REWRITE RTL::COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (7 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
