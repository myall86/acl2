(RIGHTROTATE
 (52 22 (:REWRITE DEFAULT-+-2))
 (38 20 (:REWRITE DEFAULT-<-1))
 (26 20 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 4 (:REWRITE MOD-WHEN-MULTIPLE))
 (23 4 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (22 22 (:REWRITE DEFAULT-+-1))
 (12 4 (:REWRITE MOD-WHEN-<))
 (10 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-UNARY-/))
 (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (6 2 (:REWRITE COMMUTATIVITY-OF-*))
 (4 4 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (4 4 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (4 4 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (4 4 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (4 4 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(UNSIGNED-BYTE-P-OF-RIGHTROTATE
 (386 5 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (378 6 (:REWRITE SLICE-OUT-OF-ORDER))
 (374 34 (:REWRITE MOD-WHEN-MULTIPLE))
 (374 34 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (370 10 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (340 10 (:LINEAR MOD-BOUND-LINEAR-ARG2))
 (272 68 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (254 6 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (253 2 (:DEFINITION POSP))
 (204 68 (:REWRITE COMMUTATIVITY-OF-*))
 (136 136 (:REWRITE DEFAULT-*-2))
 (136 136 (:REWRITE DEFAULT-*-1))
 (134 2 (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
 (102 34 (:REWRITE MOD-WHEN-<))
 (94 58 (:REWRITE DEFAULT-<-2))
 (82 43 (:REWRITE DEFAULT-+-2))
 (71 58 (:REWRITE DEFAULT-<-1))
 (68 68 (:REWRITE DEFAULT-UNARY-/))
 (49 43 (:REWRITE DEFAULT-+-1))
 (39 2 (:REWRITE BVCHOP-NOT-0-WHEN-GETBIT-NOT-0))
 (34 34 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (34 34 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (34 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (34 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (34 34 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (32 2 (:REWRITE BVCHOP-NOT-0-WHEN-LOW-BIT-NOT-0))
 (27 2 (:LINEAR GETBIT-BOUND-LINEAR))
 (27 1 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
 (27 1 (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
 (18 6 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (17 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 5 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (14 5 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (14 5 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (12 12 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (11 5 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (10 10 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (10 4 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (10 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (10 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (8 8 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (7 7 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (6 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (5 5 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (5 5 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (4 4 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (4 2 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (4 2 (:REWRITE GETBIT-IDENTITY))
 (4 2 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (4 2 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (3 2 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (2 2 (:TYPE-PRESCRIPTION SLICE))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(RIGHTROTATE-OF-0-ARG2
 (48 16 (:REWRITE DEFAULT-*-2))
 (47 46 (:REWRITE DEFAULT-+-2))
 (47 46 (:REWRITE DEFAULT-+-1))
 (43 13 (:REWRITE BVCHOP-IDENTITY))
 (37 35 (:REWRITE DEFAULT-<-2))
 (37 35 (:REWRITE DEFAULT-<-1))
 (36 12 (:DEFINITION NATP))
 (33 33 (:TYPE-PRESCRIPTION NATP))
 (30 10 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (30 6 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (22 11 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (22 6 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (20 12 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (20 10 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (16 16 (:REWRITE DEFAULT-*-1))
 (13 13 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (13 13 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (12 11 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (11 11 (:TYPE-PRESCRIPTION POSP))
 (10 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (10 10 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (9 9 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (4 1 (:REWRITE +-OF---AND-0))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (3 1 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (3 1 (:REWRITE GETBIT-IDENTITY))
 (2 2 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (2 2 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (2 2 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (2 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (1 1 (:TYPE-PRESCRIPTION BITP))
 (1 1 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (1 1 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
 (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (1 1 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (1 1 (:DEFINITION BITP))
 )
(RIGHTROTATE16)
(RIGHTROTATE64)
(RIGHTROTATE-OPEN-WHEN-CONSTANT-SHIFT-AMOUNT
 (30 2 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (29 29 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (29 29 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (29 29 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 (24 2 (:REWRITE MOD-WHEN-MULTIPLE))
 (20 4 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (12 4 (:REWRITE COMMUTATIVITY-OF-*))
 (10 4 (:REWRITE DEFAULT-UNARY-/))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 2 (:REWRITE MOD-WHEN-<))
 (6 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (4 2 (:DEFINITION NOT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (2 2 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (2 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (2 2 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 )
