(EVEN-AUX
 (8 8 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE NONNEG-+))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EVEN-AUX-REDUCE-1
 (46 46 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (32 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (27 27 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (23 23 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (23 23 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (23 23 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (23 23 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (23 23 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 14 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(EVEN-AUX-REDUCE-2
 (22 2 (:REWRITE ZP-OPEN))
 (12 2 (:REWRITE MOVE-NEGATIVE-CONSTANT-1))
 (12 2 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (6 6 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (6 2 (:REWRITE A4))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE INTEGERP-MINUS))
 )
(EVEN-AUX-REDUCE-3
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZP-OPEN))
 )
(EVEN-PLUS-EVEN-POS-AUX
 (24 20 (:REWRITE DEFAULT-<-2))
 (24 20 (:REWRITE DEFAULT-<-1))
 (24 17 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (21 21 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (21 21 (:REWRITE INTEGERP-MINUS))
 (20 20 (:META CANCEL_PLUS-LESSP-CORRECT))
 (20 5 (:REWRITE INTEGERP-+-REDUCE-LEADING-CONSTANT))
 (17 17 (:REWRITE DEFAULT-+-1))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 4 (:REWRITE MOVE-NEGATIVE-CONSTANT-1))
 (12 12 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (12 12 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (12 12 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (11 7 (:REWRITE A4))
 (11 5 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (10 2 (:REWRITE TWO-NATPS-ADD-TO-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS))
 (6 2 (:DEFINITION NATP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 )
(EVEN-MINUS-EVEN-POS-AUX
 (145 27 (:REWRITE EVEN-PLUS-EVEN-POS-AUX))
 (69 51 (:REWRITE DEFAULT-+-2))
 (51 51 (:REWRITE DEFAULT-+-1))
 (48 8 (:REWRITE PRODUCT-LESS-THAN-ZERO))
 (43 13 (:REWRITE MOVE-NEGATIVE-CONSTANT-1))
 (36 4 (:DEFINITION NATP))
 (32 32 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (32 32 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (26 25 (:REWRITE DEFAULT-<-2))
 (25 25 (:REWRITE DEFAULT-<-1))
 (25 25 (:META CANCEL_PLUS-LESSP-CORRECT))
 (24 24 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (24 24 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (24 24 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (17 17 (:REWRITE DEFAULT-*-2))
 (17 17 (:REWRITE DEFAULT-*-1))
 (10 10 (:REWRITE COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS))
 (8 8 (:REWRITE INTEGERP-MINUS))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE NONNEG-+))
 )
(EVEN)
(EVEN-IS-EVENP-POS
 (15 3 (:REWRITE EVEN-PLUS-EVEN-POS-AUX))
 (8 8 (:REWRITE INTEGERP-MINUS))
 (8 8 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (8 8 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (8 8 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 6 (:REWRITE DEFAULT-+-2))
 (8 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE INTEGERP-PROD))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 )
(EVEN-IS-EVENP
 (10 9 (:REWRITE DEFAULT-*-1))
 (9 9 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE INTEGERP-PROD))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(EVEN-AUX-NEGATIVE
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(EVEN-MINUS
 (23 4 (:REWRITE EVEN-AUX-NEGATIVE))
 (11 1 (:REWRITE PRODUCT-GREATER-THAN-ZERO-2))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 1 (:REWRITE INTEGERP-PROD))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EVEN-MEANS-INTEGERP)
(EVEN-PLUS-EVEN
 (604 529 (:REWRITE DEFAULT-<-2))
 (578 578 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (578 578 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (563 529 (:REWRITE DEFAULT-<-1))
 (529 529 (:META CANCEL_PLUS-LESSP-CORRECT))
 (519 440 (:REWRITE DEFAULT-+-2))
 (519 440 (:REWRITE DEFAULT-+-1))
 (491 491 (:REWRITE DEFAULT-*-2))
 (491 491 (:REWRITE DEFAULT-*-1))
 (297 27 (:REWRITE PRODUCT-GREATER-THAN-ZERO-2))
 (81 81 (:REWRITE COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (77 77 (:REWRITE INTEGERP-MINUS))
 )
(EVEN-SUM-REWRITE-1
 (13 12 (:REWRITE DEFAULT-+-2))
 (13 12 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION INTEGERP-PROD))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE A4))
 )
(ODD)
(ODD-MEANS-INTEGERP)
(ODD-PLUS-EVEN
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (1 1 (:REWRITE INTEGERP-MINUS))
 )
(ODD-SUM-REWRITE-1
 (17 4 (:REWRITE ODD-PLUS-EVEN))
 (10 4 (:REWRITE EVEN-SUM-REWRITE-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE INTEGERP-MINUS))
 (6 2 (:REWRITE EVEN-PLUS-EVEN))
 (4 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (2 2 (:REWRITE INTEGERP-+-REDUCE-LEADING-CONSTANT))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EVEN-REDUCE
 (71 14 (:REWRITE EVEN-AUX-NEGATIVE))
 (40 4 (:REWRITE EVEN-SUM-REWRITE-1))
 (22 22 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (22 22 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (18 18 (:META CANCEL_PLUS-LESSP-CORRECT))
 (12 3 (:REWRITE EVEN-PLUS-EVEN-POS-AUX))
 (8 7 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (4 3 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE EVEN-PLUS-EVEN))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE NONNEG-+))
 (2 2 (:REWRITE INTEGERP-MINUS))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(ODD-REDUCE
 (9 2 (:REWRITE ODD-PLUS-EVEN))
 (5 2 (:REWRITE ODD-SUM-REWRITE-1))
 (1 1 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (1 1 (:REWRITE INTEGERP-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(ODD-PLUS-ODD
 (41 31 (:REWRITE DEFAULT-+-2))
 (36 8 (:REWRITE ODD-PLUS-EVEN))
 (31 31 (:REWRITE DEFAULT-+-1))
 (25 18 (:REWRITE EVEN-SUM-REWRITE-1))
 (16 9 (:REWRITE EVEN-PLUS-EVEN))
 (10 8 (:REWRITE ODD-SUM-REWRITE-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(ODD-SUM-REWRITE-2
 (24 4 (:REWRITE ODD-PLUS-EVEN))
 (10 10 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (10 10 (:REWRITE INTEGERP-MINUS))
 (8 4 (:REWRITE ODD-SUM-REWRITE-1))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE INTEGERP-+-REDUCE-LEADING-CONSTANT))
 (2 2 (:REWRITE EVEN-PLUS-EVEN))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INDUCT-SCHEME
 (1 1 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 )
(EVEN-DOUBLE-POS
 (38 5 (:REWRITE EVEN-AUX-NEGATIVE))
 (23 19 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (9 9 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (9 9 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (9 6 (:REWRITE DEFAULT-+-2))
 (9 2 (:REWRITE EVEN-PLUS-EVEN-POS-AUX))
 (8 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 1 (:REWRITE ODD-PLUS-ODD))
 (1 1 (:TYPE-PRESCRIPTION ODD))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE NONNEG-+))
 )
(EVEN-DOUBLE
 (9 9 (:REWRITE DEFAULT-*-2))
 (9 9 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(ODD-DOUBLE
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE INTEGERP-MINUS))
 )
(EVEN-SUM-REWRITE-2
 (9 9 (:TYPE-PRESCRIPTION NONNEG-+-TYPE))
 (9 9 (:REWRITE INTEGERP-MINUS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EVEN-PLUS-EVEN))
 (2 2 (:REWRITE EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EVEN-MEANS-HALF-IS-INTEGER
 (25 25 (:TYPE-PRESCRIPTION INTEGERP-PROD))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
