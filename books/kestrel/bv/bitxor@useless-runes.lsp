(BITXOR)
(BITXOR-ASSOCIATIVE)
(BITXOR-COMMUTATIVE)
(BITXOR-COMMUTATIVE-2)
(BITXOR-COMMUTE-CONSTANT)
(BITXOR-COMBINE-CONSTANTS)
(BITXOR-SAME)
(BITXOR-SAME-2)
(BITXOR-OF-0-ARG1)
(BITXOR-OF-0-ARG2)
(BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2)
(BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1)
(UNSIGNED-BYTE-P-1-OF-BITXOR)
(BITXOR-TYPE)
(UNSIGNED-BYTE-P-OF-BITXOR
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-SUBST-ARG3))
 (1 1 (:REWRITE BVXOR-SUBST-ARG2))
 (1 1 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 )
(BITXOR-OF-GETBIT-ARG2)
(BITXOR-OF-GETBIT-ARG1
 (4 4 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (4 4 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (3 1 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (3 1 (:REWRITE GETBIT-IDENTITY))
 (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:DEFINITION BITP))
 )
(BITXOR-WHEN-X-IS-NOT-AN-INTEGER
 (15 1 (:LINEAR GETBIT-BOUND-LINEAR))
 (7 3 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (7 3 (:REWRITE GETBIT-IDENTITY))
 (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (3 3 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:DEFINITION BITP))
 (1 1 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-SUBST-ARG3))
 (1 1 (:REWRITE BVXOR-SUBST-ARG2))
 (1 1 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 )
(BITXOR-WHEN-Y-IS-NOT-AN-INTEGER
 (15 1 (:LINEAR GETBIT-BOUND-LINEAR))
 (7 3 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (7 3 (:REWRITE GETBIT-IDENTITY))
 (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (3 3 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:DEFINITION BITP))
 (1 1 (:REWRITE BVXOR-SUBST-ARG3))
 (1 1 (:REWRITE BVXOR-SUBST-ARG2))
 (1 1 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 )
(BITXOR-SPLIT
 (33 11 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (33 11 (:REWRITE GETBIT-IDENTITY))
 (22 11 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (11 11 (:TYPE-PRESCRIPTION BITP))
 (11 11 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (11 11 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (11 11 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (11 11 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (11 11 (:REWRITE GETBIT-IDENTITY-FREE))
 (11 11 (:DEFINITION BITP))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 1 (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG2))
 (2 1 (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-SUBST-ARG3))
 (1 1 (:REWRITE BVXOR-SUBST-ARG2))
 (1 1 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 )
(GETBIT-OF-BITXOR-ALL-CASES
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (9 5 (:REWRITE GETBIT-OF-BVXOR-ERIC))
 (8 8 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (8 8 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE BVXOR-SUBST-ARG3))
 (8 8 (:REWRITE BVXOR-SUBST-ARG2))
 (8 8 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (4 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (2 2 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(BVXOR-1-BECOMES-BITXOR)
(BITXOR-SUBST-ARG1
 (4 3 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (3 1 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (3 1 (:REWRITE GETBIT-IDENTITY))
 (2 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (2 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:DEFINITION BITP))
 )
(BITXOR-SUBST-ARG2
 (4 3 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE BITXOR-SUBST-ARG1))
 (3 1 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (3 1 (:REWRITE GETBIT-IDENTITY))
 (2 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (2 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:DEFINITION BITP))
 )
(BITXOR-NUMERIC-BOUND-2)
(BITXOR-BOTH-SIDES)
(EQUAL-OF-CONSTANT-AND-BITXOR-OF-CONSTANT
 (44 16 (:REWRITE GETBIT-IDENTITY))
 (32 16 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (25 25 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (25 25 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (25 25 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (20 18 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (20 18 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (18 18 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (18 18 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (18 18 (:REWRITE BITXOR-SUBST-ARG2))
 (18 18 (:REWRITE BITXOR-SUBST-ARG1))
 (16 16 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (9 9 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(EQUAL-OF-BITXOR-AND-BITXOR-SAME)
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-ALT)
(BITXOR-OF-IFIX-ARG1
 (38 6 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (21 6 (:DEFINITION BITP))
 (20 20 (:TYPE-PRESCRIPTION IFIX))
 (18 6 (:REWRITE GETBIT-IDENTITY))
 (12 6 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 8 (:TYPE-PRESCRIPTION BITP))
 (8 6 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (6 6 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (6 6 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (6 6 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(BITXOR-OF-IFIX-ARG2
 (38 6 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (21 6 (:DEFINITION BITP))
 (20 20 (:TYPE-PRESCRIPTION IFIX))
 (18 6 (:REWRITE GETBIT-IDENTITY))
 (12 6 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 8 (:TYPE-PRESCRIPTION BITP))
 (8 6 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (6 6 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (6 6 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (6 6 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(BITXOR-OF-*-OF-2
 (21 7 (:REWRITE BVCHOP-IDENTITY))
 (7 7 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (6 2 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (6 2 (:REWRITE GETBIT-IDENTITY))
 (5 5 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (5 5 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (5 5 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (5 5 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (5 5 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (5 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (3 2 (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG2))
 (3 2 (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG1))
 (3 1 (:DEFINITION NATP))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (2 2 (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
 (2 2 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (2 2 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (2 2 (:REWRITE SLICE-OUT-OF-ORDER))
 (2 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (2 2 (:DEFINITION BITP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (1 1 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVXOR-SUBST-ARG3))
 (1 1 (:REWRITE BVXOR-SUBST-ARG2))
 (1 1 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 )
(EQUAL-OF-0-AND-BITXOR
 (20 8 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (20 8 (:REWRITE GETBIT-IDENTITY))
 (16 8 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 8 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (8 8 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (8 8 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (8 8 (:REWRITE GETBIT-IDENTITY-FREE))
 (6 6 (:TYPE-PRESCRIPTION BITP))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 6 (:DEFINITION BITP))
 (4 4 (:REWRITE BITXOR-SUBST-ARG2))
 (4 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (2 2 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 )
(EQUAL-OF-BITXOR-SAME
 (51 17 (:REWRITE GETBIT-IDENTITY))
 (34 17 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (23 23 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (23 23 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (23 23 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (17 17 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (11 6 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (10 10 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 6 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (3 3 (:REWRITE HIGH-GETBIT-OF-GETBIT-IS-0))
 )
(EQUAL-OF-BITXOR-SAME-ALT
 (7 7 (:REWRITE BITXOR-SUBST-ARG2))
 (7 6 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (6 6 (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (6 2 (:REWRITE GETBIT-IDENTITY))
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:DEFINITION BITP))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-AND-BITXOR-OF-CONSTANT))
 )
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-2)
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-3
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (4 2 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (4 2 (:REWRITE GETBIT-IDENTITY))
 (2 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-AND-BVXOR-OF-CONSTANT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (2 2 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-SUBST-ARG3))
 (2 2 (:REWRITE BVXOR-SUBST-ARG2))
 (2 2 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:DEFINITION BITP))
 )
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-4)
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-5
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (8 4 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (8 4 (:REWRITE GETBIT-IDENTITY))
 (4 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:DEFINITION BITP))
 )
(EQUAL-OF-BITXOR-AND-BITXOR-SAME-6)
