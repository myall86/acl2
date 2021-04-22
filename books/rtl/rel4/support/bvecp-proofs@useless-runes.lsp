(BVECP
 (5 5 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (5 5 (:TYPE-PRESCRIPTION A14 . 1))
 )
(BVECP-WITH-N-NOT-A-POSITIVE-INTEGER
 (20 12 (:REWRITE DEFAULT-<-2))
 (16 16 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (16 16 (:TYPE-PRESCRIPTION A14 . 1))
 (14 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (12 12 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (12 12 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (12 12 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (12 12 (:REWRITE EXPT-COMPARE))
 (12 12 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (12 12 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE POWER2-INTEGER))
 (9 9 (:REWRITE INTEGERP-MINUS))
 (5 5 (:REWRITE EXPT-MINUS))
 (5 5 (:REWRITE EXPT-EXECUTE-REWRITE))
 (3 3 (:REWRITE EXPT-2-EVALUATOR))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:LINEAR EXPT-EXCEEDS-2))
 )
(BVECP-0)
(BVECP-0-THM
 (2 2 (:REWRITE EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(BVECP-ONES
 (25 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (7 7 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (7 7 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (7 7 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE POWER2-INTEGER))
 (4 4 (:REWRITE INTEGERP-MINUS))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (3 1 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE EXPT-MINUS))
 (2 2 (:REWRITE EXPT-EXECUTE-REWRITE))
 (2 2 (:REWRITE EXPT-2-EVALUATOR))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NONNEG-+))
 (1 1 (:REWRITE EXPO-SHIFT-GENERAL))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(BVECP-LONGER-AUX
 (330 330 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (330 330 (:TYPE-PRESCRIPTION A14 . 1))
 (42 22 (:REWRITE DEFAULT-<-2))
 (36 2 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (27 3 (:LINEAR EXPT-WITH-SMALL-N))
 (27 3 (:LINEAR EXPT-2-TYPE-LINEAR))
 (26 22 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (22 22 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (22 22 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (22 22 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (22 22 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (22 22 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (8 8 (:REWRITE EXPT-MINUS))
 (8 8 (:REWRITE EXPT-EXECUTE-REWRITE))
 (8 8 (:REWRITE EXPT-2-EVALUATOR))
 (6 6 (:REWRITE POWER2-INTEGER))
 (6 6 (:REWRITE INTEGERP-MINUS))
 (6 6 (:LINEAR EXPT-EXCEEDS-2))
 (2 2 (:REWRITE EXPO-SHIFT-GENERAL))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 )
(BVECP-LONGER
 (5 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE POWER2-INTEGER))
 (4 4 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE INTEGERP-MINUS))
 (4 4 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (4 4 (:REWRITE EXPT-COMPARE))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(BVECP-ONE-LONGER
 (49 2 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (20 20 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (11 2 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (6 6 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 6 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (6 6 (:REWRITE EXPT-COMPARE))
 (6 6 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(BVECP-OF-NON-INTEGER)
(BVECP-EXPT-2-N
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (9 3 (:REWRITE DEFAULT-*-2))
 (7 3 (:REWRITE DEFAULT-*-1))
 (4 3 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (4 2 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (3 3 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (3 3 (:REWRITE EXPT-MINUS))
 (3 3 (:REWRITE EXPT-COMPARE))
 (3 3 (:REWRITE EXPT-2-EVALUATOR))
 (3 1 (:REWRITE BVECP-OF-NON-INTEGER))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (2 2 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (1 1 (:REWRITE POWER2-INTEGER))
 (1 1 (:REWRITE INTEGERP-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE BVECP-LONGER))
 )
(BVECP-IF)
(MK-BVEC)
(MK-BVEC-IS-BVECP
 (13 2 (:DEFINITION NOT))
 (11 5 (:REWRITE BVECP-OF-NON-INTEGER))
 (7 7 (:REWRITE POWER2-INTEGER))
 (7 7 (:REWRITE INTEGERP-MINUS))
 (2 2 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (2 2 (:REWRITE EXPT-COMPARE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(MK-BVEC-IDENTITY
 (9 3 (:REWRITE BVECP-OF-NON-INTEGER))
 (7 7 (:REWRITE POWER2-INTEGER))
 (7 7 (:REWRITE INTEGERP-MINUS))
 (2 2 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (2 2 (:REWRITE EXPT-COMPARE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(BVECP-SHIFT
 (64 2 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (24 8 (:REWRITE DEFAULT-*-1))
 (21 11 (:REWRITE DEFAULT-<-1))
 (21 1 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
 (20 8 (:REWRITE DEFAULT-*-2))
 (19 11 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (15 15 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (15 15 (:REWRITE EXPT-COMPARE))
 (15 15 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (12 12 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (8 4 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (7 5 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (6 6 (:REWRITE EXPT-EXECUTE-REWRITE))
 (5 5 (:REWRITE EXPT-2-EVALUATOR))
 (5 2 (:REWRITE BVECP-OF-NON-INTEGER))
 (5 1 (:REWRITE DEFAULT-UNARY-/))
 (5 1 (:REWRITE COMMUTATIVITY-OF-+))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:REWRITE BVECP-LONGER))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:TYPE-PRESCRIPTION EXPT-QUOTIENT-INTEGERP-ALT))
 (1 1 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (1 1 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 )
(BVECP-SHIFT-ALT
 (49 15 (:REWRITE DEFAULT-*-1))
 (45 2 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (37 15 (:REWRITE DEFAULT-*-2))
 (21 1 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
 (19 9 (:REWRITE DEFAULT-<-1))
 (17 9 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (12 12 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (12 12 (:REWRITE EXPT-COMPARE))
 (12 12 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (11 7 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (10 10 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (10 10 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (10 5 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (9 9 (:REWRITE EXPT-EXECUTE-REWRITE))
 (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 7 (:REWRITE EXPT-2-EVALUATOR))
 (6 4 (:REWRITE DEFAULT-+-2))
 (5 1 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (2 2 (:TYPE-PRESCRIPTION EXPT-QUOTIENT-INTEGERP-ALT))
 (2 2 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-5))
 (2 2 (:REWRITE EXPT2-CONSTANTS-COLLECT-SPECIAL-2))
 (2 2 (:REWRITE BVECP-OF-NON-INTEGER))
 (2 2 (:REWRITE BVECP-LONGER))
 (2 1 (:REWRITE UNICITY-OF-0))
 )
(BVECP-SHIFT-BY-2
 (49 2 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (17 9 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (12 12 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (12 12 (:REWRITE EXPT-COMPARE))
 (12 12 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (11 9 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (10 5 (:REWRITE DEFAULT-*-1))
 (10 1 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (5 5 (:TYPE-PRESCRIPTION A14 . 1))
 (4 3 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (3 3 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (3 3 (:REWRITE EXPT-MINUS))
 (3 3 (:REWRITE EXPT-2-EVALUATOR))
 (3 2 (:REWRITE BVECP-OF-NON-INTEGER))
 (2 2 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (2 2 (:REWRITE BVECP-LONGER))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(BVECP-1
 (3 3 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (3 3 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (3 3 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE POWER2-INTEGER))
 (1 1 (:REWRITE INTEGERP-MINUS))
 (1 1 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (1 1 (:REWRITE EXPT-MINUS))
 (1 1 (:REWRITE EXPT-EXECUTE-REWRITE))
 (1 1 (:REWRITE EXPT-2-EVALUATOR))
 (1 1 (:REWRITE EXPO-SHIFT-GENERAL))
 (1 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (1 1 (:REWRITE BVECP-OF-NON-INTEGER))
 (1 1 (:REWRITE BVECP-LONGER))
 )
(NATP-BVECP
 (3 3 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (3 3 (:TYPE-PRESCRIPTION A14 . 1))
 )
(BVECP-FORWARD
 (6 6 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (6 6 (:TYPE-PRESCRIPTION A14 . 1))
 )
(BVECP-PRODUCT
 (8474 8474 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (8474 8474 (:TYPE-PRESCRIPTION A14 . 1))
 (1236 400 (:REWRITE DEFAULT-*-2))
 (1044 400 (:REWRITE DEFAULT-*-1))
 (264 136 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (264 136 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (200 136 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (200 136 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (168 16 (:LINEAR EXPT-WITH-SMALL-N))
 (168 16 (:LINEAR EXPT-2-TYPE-LINEAR))
 (148 101 (:REWRITE DEFAULT-<-2))
 (110 101 (:REWRITE DEFAULT-<-1))
 (104 104 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (104 104 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (104 104 (:REWRITE EXPT-COMPARE))
 (104 104 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (101 101 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (101 101 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (101 101 (:META CANCEL_PLUS-LESSP-CORRECT))
 (32 32 (:LINEAR EXPT-EXCEEDS-2))
 (31 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (28 28 (:REWRITE POWER2-INTEGER))
 (28 28 (:REWRITE INTEGERP-MINUS))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (19 19 (:REWRITE EXPT-MINUS))
 (19 19 (:REWRITE EXPT-EXECUTE-REWRITE))
 (11 11 (:REWRITE EXPT-2-EVALUATOR))
 (10 10 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (9 6 (:REWRITE DEFAULT-+-1))
 (8 6 (:REWRITE DEFAULT-+-2))
 (7 6 (:REWRITE BVECP-OF-NON-INTEGER))
 (6 6 (:REWRITE BVECP-LONGER))
 (5 5 (:REWRITE EXPT-COMPARE-EQUAL))
 (5 5 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (5 5 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (5 5 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 )
(BVECP-1-REWRITE
 (5 5 (:REWRITE EXPT-COMPARE-EQUAL))
 (5 5 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (5 5 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (4 4 (:REWRITE EXPT-COMPARE))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (3 1 (:REWRITE BVECP-OF-NON-INTEGER))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (1 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (1 1 (:REWRITE BVECP-LONGER))
 )
(BVECP-1-0)
(BVECP+1
 (11 6 (:REWRITE DEFAULT-<-2))
 (10 1 (:LINEAR EXPT-WITH-SMALL-N))
 (6 6 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 6 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (6 6 (:REWRITE EXPT-COMPARE))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (5 4 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (4 4 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (4 4 (:REWRITE EXPT-MINUS))
 (4 4 (:REWRITE EXPT-2-EVALUATOR))
 (3 1 (:REWRITE DEFAULT-*-2))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (2 2 (:REWRITE POWER2-INTEGER))
 (2 2 (:REWRITE INTEGERP-MINUS))
 (2 2 (:LINEAR EXPT-EXCEEDS-2))
 (2 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE BVECP-OF-NON-INTEGER))
 (1 1 (:REWRITE BVECP-LONGER))
 )
(BVECP-MONOTONE
 (25 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (6 2 (:REWRITE BVECP-OF-NON-INTEGER))
 (5 5 (:REWRITE POWER2-INTEGER))
 (5 5 (:REWRITE INTEGERP-MINUS))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (3 3 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (3 3 (:REWRITE EXPT-COMPARE))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BVECP-SUM-OF-BVECPS
 (127 127 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (127 127 (:TYPE-PRESCRIPTION A14 . 1))
 (21 9 (:REWRITE DEFAULT-<-2))
 (21 3 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (20 1 (:REWRITE BVECP-WITH-N-NOT-A-POSITIVE-INTEGER))
 (20 1 (:LINEAR EXPT-2-TYPE-LINEAR))
 (19 1 (:LINEAR EXPT-WITH-SMALL-N))
 (18 8 (:REWRITE DEFAULT-*-1))
 (16 8 (:REWRITE DEFAULT-*-2))
 (14 14 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (14 14 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (14 14 (:REWRITE EXPT-COMPARE))
 (14 14 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (12 9 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 5 (:REWRITE EXPT-WITH-I-NON-INTEGER))
 (5 5 (:REWRITE EXPT-MINUS))
 (5 5 (:REWRITE EXPT-2-EVALUATOR))
 (4 4 (:REWRITE EXPT-WITH-I-NON-INTEGER-SPECIAL))
 (3 3 (:REWRITE POWER2-INTEGER))
 (3 3 (:REWRITE INTEGERP-MINUS))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR EXPT-EXCEEDS-2))
 (2 1 (:REWRITE BVECP-OF-NON-INTEGER))
 (1 1 (:REWRITE BVECP-LONGER))
 )
(BVECP-0-1)
