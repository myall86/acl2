(EVEN-AUX
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZP-OPEN))
 )
(EVEN)
(ODD)
(MOD4
 (10 5 (:TYPE-PRESCRIPTION NATP-MOD))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 )
(MOD4-VALUES
 (60 6 (:REWRITE MOD-DOES-NOTHING))
 (20 10 (:TYPE-PRESCRIPTION NATP-MOD))
 (10 10 (:TYPE-PRESCRIPTION NATP))
 (10 10 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (10 1 (:LINEAR MOD-UPPER-BOUND-2))
 (7 7 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (7 7 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (7 7 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (7 7 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (7 7 (:REWRITE EXPT-COMPARE))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 6 (:REWRITE MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (6 6 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (6 6 (:REWRITE MOD-MINUS-ALT))
 (4 4 (:REWRITE POWER2-INTEGER))
 (4 4 (:REWRITE INTEGERP-MINUS))
 (4 4 (:REWRITE EXPT-COMPARE-EQUAL))
 (4 4 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (4 4 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION INTEGERP-PROD))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 )
(MOD4-TYPE-PRESCRIPTION)
(MOD4-SUM-MOVE-SAFE
 (306 153 (:TYPE-PRESCRIPTION NATP-MOD))
 (177 9 (:REWRITE MOD-DOES-NOTHING))
 (153 153 (:TYPE-PRESCRIPTION NATP))
 (153 153 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (114 6 (:REWRITE MOD-DROP-IRRELEVANT-SECOND-TERM))
 (80 80 (:TYPE-PRESCRIPTION MOD-INTEGERP))
 (80 80 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (75 75 (:TYPE-PRESCRIPTION MOD-RATIONALP))
 (72 6 (:REWRITE MOD-DROP-IRRELEVANT-FIRST-TERM))
 (69 3 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
 (48 12 (:REWRITE COMMUTATIVITY-OF-*))
 (44 20 (:REWRITE INTEGERP-MINUS))
 (39 36 (:REWRITE DEFAULT-*-1))
 (36 36 (:REWRITE DEFAULT-*-2))
 (20 20 (:REWRITE POWER2-INTEGER))
 (18 18 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (18 18 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (18 18 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (18 18 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (18 18 (:REWRITE EXPT-COMPARE))
 (18 18 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (18 15 (:REWRITE DEFAULT-<-2))
 (18 15 (:REWRITE DEFAULT-<-1))
 (18 9 (:REWRITE MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (18 6 (:REWRITE A5))
 (18 3 (:REWRITE COMMUTATIVITY-2-OF-*))
 (15 15 (:REWRITE INTEGERP-PROD))
 (15 15 (:META CANCEL_PLUS-LESSP-CORRECT))
 (15 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (9 9 (:REWRITE MOD-MINUS-ALT))
 (9 3 (:REWRITE COMMUTATIVITY-OF-+))
 (6 6 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (6 3 (:REWRITE UNICITY-OF-1))
 (3 3 (:DEFINITION FIX))
 (2 2 (:REWRITE MOD-SUM-MOVE-CONSTANTS))
 (2 2 (:REWRITE EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EVEN-TO-MOD
 (40 20 (:TYPE-PRESCRIPTION NATP-MOD))
 (20 20 (:TYPE-PRESCRIPTION NATP))
 (20 20 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (17 3 (:REWRITE EVEN-MEANS-HALF-IS-INTEGER))
 (10 1 (:REWRITE MOD-DOES-NOTHING))
 (6 6 (:TYPE-PRESCRIPTION INTEGERP-PROD))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE POWER2-INTEGER))
 (4 4 (:REWRITE INTEGERP-MINUS))
 (3 3 (:REWRITE INTEGERP-PROD))
 (2 2 (:TYPE-PRESCRIPTION RATIONALP-MOD-CASE-SPLIT))
 (2 2 (:TYPE-PRESCRIPTION MOD-RATIONALP))
 (2 2 (:TYPE-PRESCRIPTION MOD-INTEGERP))
 (2 2 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (1 1 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (1 1 (:REWRITE MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (1 1 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (1 1 (:REWRITE MOD-MINUS-ALT))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (1 1 (:REWRITE EXPT-COMPARE))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(MOD4-IS-0-FW-TO-EVEN
 (30 3 (:REWRITE MOD-DOES-NOTHING))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (6 3 (:TYPE-PRESCRIPTION NATP-MOD))
 (5 5 (:REWRITE POWER2-INTEGER))
 (5 5 (:REWRITE INTEGERP-MINUS))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (3 3 (:TYPE-PRESCRIPTION MOD-NON-POSITIVE-TYPE-PRESCRIPTION))
 (3 3 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (3 3 (:REWRITE MOD-WITH-X-A-NON-ACL2-NUMBER-IS-ZERO))
 (3 3 (:REWRITE MOD-WHEN-Y-IS-AN-INVERSE))
 (3 3 (:REWRITE MOD-MINUS-ALT))
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (3 3 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (3 3 (:REWRITE EXPT-COMPARE))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (3 3 (:REWRITE CANCEL-COMMON-FACTORS-IN-EQUAL))
 (3 3 (:REWRITE CANCEL-COMMON-FACTORS-IN-<))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE EVEN-MEANS-HALF-IS-INTEGER))
 )
(MOD4-IS-1-FW-TO-NOT-EVEN
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 )
(MOD4-IS-2-FW-TO-EVEN
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 )
(MOD4-IS-3-FW-TO-NOT-EVEN
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 )
