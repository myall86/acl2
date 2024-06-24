(FL)
(NATP+)
(NATP*)
(ABS-NONNEGATIVE-ACL2-NUMBERP-TYPE
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ABS-NONNEGATIVE-RATIONALP-TYPE
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (3 3 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(ABS-NONNEGATIVE-INTEGERP-TYPE)
(ABS-NONNEGATIVE
 (23 23 (:TYPE-PRESCRIPTION ABS-NONNEGATIVE-INTEGERP-TYPE))
 (7 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(FL-DEF
 (48 48 (:TYPE-PRESCRIPTION FL-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (3 1 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE FL-OF-NON-RATIONAL))
 (2 2 (:REWRITE FL-MINUS-GEN))
 (2 2 (:REWRITE FL-INT))
 (2 2 (:REWRITE A10))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(EXPT-EXEC
 (102 4 (:DEFINITION EXPT))
 (54 54 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (24 6 (:REWRITE DEFAULT-*-2))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-*-1))
 (5 5 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (5 5 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (5 5 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE ZIP-OPEN))
 (4 4 (:DEFINITION FIX))
 (3 3 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (3 3 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 )
(EXPT-2-EVALUATOR
 (50 2 (:DEFINITION EXPT))
 (21 21 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (10 4 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(*-DOUBLY-MONOTONIC)
(FL-HALF)
(FL-HALF-LEMMA
 (46 2 (:LINEAR FL-NON-NEGATIVE-LINEAR))
 (17 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-*-2))
 (12 12 (:REWRITE DEFAULT-*-1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (5 5 (:REWRITE FL-OF-NON-RATIONAL))
 (5 5 (:REWRITE FL-MINUS-GEN))
 (4 4 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (4 4 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (4 4 (:LINEAR FL-MONOTONE-LINEAR))
 (2 2 (:REWRITE NON-INTEGERP-<-INTEGERP))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE INTEGERP-<-NON-INTEGERP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:LINEAR N<=FL-LINEAR))
 (1 1 (:REWRITE PULL-CONSTANT-OUT-OF-FL))
 (1 1 (:REWRITE FL-PLUS-INTEGER-ERIC))
 (1 1 (:REWRITE FL+INT-REWRITE))
 )
