(BITAND)
(BITAND-TYPE
 (122 2 (:REWRITE BVAND-WITH-MASK-BETTER))
 (118 2 (:DEFINITION LOGMASKP))
 (60 2 (:DEFINITION EXPT2$INLINE))
 (46 2 (:DEFINITION EXPT))
 (30 30 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (26 14 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (14 14 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (12 4 (:REWRITE GETBIT-IDENTITY))
 (12 4 (:LINEAR INTEGER-LENGTH-BOUND))
 (12 2 (:DEFINITION NFIX))
 (10 10 (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-TYPE))
 (10 2 (:REWRITE ZIP-OPEN))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 3 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (6 3 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (6 2 (:REWRITE DEFAULT-*-2))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (4 4 (:DEFINITION BITP))
 (4 2 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (4 2 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (2 2 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (2 2 (:REWRITE BVAND-WITH-MASK))
 (2 2 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (2 2 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (2 2 (:REWRITE BVAND-OF-CONSTANT))
 )
(BITAND-ASSOCIATIVE)
(BITAND-COMMUTATIVE
 (123 3 (:REWRITE BVAND-WITH-MASK-BETTER))
 (118 2 (:DEFINITION LOGMASKP))
 (60 2 (:DEFINITION EXPT2$INLINE))
 (46 2 (:DEFINITION EXPT))
 (30 30 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (26 14 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (14 14 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 4 (:LINEAR INTEGER-LENGTH-BOUND))
 (12 2 (:DEFINITION NFIX))
 (10 2 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE DEFAULT-*-2))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 2 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (4 2 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (3 3 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (3 3 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (3 3 (:REWRITE BVAND-WITH-MASK))
 (3 3 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (3 3 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (3 3 (:REWRITE BVAND-OF-CONSTANT))
 (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(BITAND-COMMUTATIVE-2
 (126 6 (:REWRITE BVAND-WITH-MASK-BETTER))
 (118 2 (:DEFINITION LOGMASKP))
 (60 2 (:DEFINITION EXPT2$INLINE))
 (46 2 (:DEFINITION EXPT))
 (30 30 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (26 14 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (14 14 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 4 (:LINEAR INTEGER-LENGTH-BOUND))
 (12 2 (:DEFINITION NFIX))
 (10 2 (:REWRITE ZIP-OPEN))
 (9 6 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (6 6 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (6 6 (:REWRITE BVAND-WITH-MASK))
 (6 6 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (6 6 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (6 6 (:REWRITE BVAND-OF-CONSTANT))
 (6 2 (:REWRITE DEFAULT-*-2))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 2 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (4 2 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (3 3 (:REWRITE BVAND-COMBINE-CONSTANTS))
 (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(BITAND-OF-0-ARG1)
(BITAND-OF-0-ARG2
 (3 1 (:REWRITE BVCHOP-IDENTITY))
 (1 1 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (1 1 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 )
(BITAND-OF-1-ARG2
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
 (1 1 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 )
(BITAND-OF-1-ARG1
 (15 1 (:LINEAR GETBIT-BOUND-LINEAR))
 (6 2 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (6 2 (:REWRITE GETBIT-IDENTITY))
 (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
 (2 2 (:DEFINITION BITP))
 )
(INTEGERP-OF-BITAND)
(NATP-OF-BITAND)
(BVAND-1-OF-GETBIT-ARG2
 (62 2 (:REWRITE BVAND-WITH-MASK-BETTER))
 (59 1 (:DEFINITION LOGMASKP))
 (30 1 (:DEFINITION EXPT2$INLINE))
 (23 1 (:DEFINITION EXPT))
 (15 15 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (13 7 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (11 5 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (11 5 (:REWRITE GETBIT-IDENTITY))
 (10 5 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (7 7 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (6 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 2 (:LINEAR INTEGER-LENGTH-BOUND))
 (6 1 (:DEFINITION NFIX))
 (5 5 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (5 5 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (5 5 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (5 5 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (5 5 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (5 5 (:REWRITE GETBIT-IDENTITY-FREE))
 (5 1 (:REWRITE ZIP-OPEN))
 (4 2 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (4 2 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (3 3 (:TYPE-PRESCRIPTION BITP))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:DEFINITION BITP))
 (3 2 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (3 1 (:REWRITE DEFAULT-*-2))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 2 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (2 2 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (2 2 (:REWRITE BVAND-WITH-MASK))
 (2 2 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (2 2 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (2 2 (:REWRITE BVAND-OF-CONSTANT))
 (2 1 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (2 1 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (1 1 (:TYPE-PRESCRIPTION LOGMASKP))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(BVAND-1-OF-GETBIT-ARG1
 (233 4 (:REWRITE BVAND-WITH-MASK-BETTER))
 (226 3 (:DEFINITION LOGMASKP))
 (93 3 (:DEFINITION EXPT2$INLINE))
 (72 3 (:DEFINITION EXPT))
 (60 6 (:LINEAR INTEGER-LENGTH-BOUND))
 (45 45 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (39 21 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (30 2 (:LINEAR GETBIT-BOUND-LINEAR))
 (28 28 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (21 21 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (19 14 (:REWRITE DEFAULT-<-2))
 (18 9 (:REWRITE DEFAULT-+-2))
 (18 3 (:DEFINITION NFIX))
 (17 14 (:REWRITE DEFAULT-<-1))
 (17 7 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (17 7 (:REWRITE GETBIT-IDENTITY))
 (17 3 (:REWRITE ZIP-OPEN))
 (14 7 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE COMMUTATIVITY-OF-+))
 (8 3 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (7 7 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (7 7 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (7 7 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (7 7 (:REWRITE GETBIT-IDENTITY-FREE))
 (6 3 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (5 5 (:TYPE-PRESCRIPTION BITP))
 (5 5 (:DEFINITION BITP))
 (5 4 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (4 4 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (4 4 (:REWRITE BVAND-WITH-MASK))
 (4 4 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (4 4 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (4 4 (:REWRITE BVAND-OF-CONSTANT))
 (4 2 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (4 2 (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (3 3 (:TYPE-PRESCRIPTION LOGMASKP))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
(BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2)
(BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1)
(BVAND-1-BECOMES-BITAND)
(BITAND-COMBINE-CONSTANTS)
(BITAND-OF-GETBIT-ARG1)
(BITAND-OF-GETBIT-ARG2)
(BITAND-OF-BVCHOP-ARG2
 (125 5 (:REWRITE BVAND-WITH-MASK-BETTER))
 (118 2 (:DEFINITION LOGMASKP))
 (60 2 (:DEFINITION EXPT2$INLINE))
 (46 2 (:DEFINITION EXPT))
 (30 30 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (26 14 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (14 14 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (14 12 (:REWRITE DEFAULT-<-2))
 (14 12 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 4 (:LINEAR INTEGER-LENGTH-BOUND))
 (12 2 (:DEFINITION NFIX))
 (10 2 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE DEFAULT-*-2))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (5 5 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (5 5 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (5 5 (:REWRITE BVAND-WITH-MASK))
 (5 5 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (4 4 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (4 4 (:REWRITE BVAND-OF-CONSTANT))
 (4 2 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (4 2 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (3 1 (:REWRITE BVCHOP-IDENTITY))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (1 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (1 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (1 1 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
 )
(BITAND-OF-BVCHOP-ARG1
 (369 3 (:REWRITE BVAND-WITH-MASK-BETTER))
 (364 2 (:DEFINITION LOGMASKP))
 (248 4 (:LINEAR INTEGER-LENGTH-BOUND))
 (100 6 (:DEFINITION EXPT))
 (68 2 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (66 2 (:DEFINITION EXPT2$INLINE))
 (62 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (54 2 (:LINEAR BVCHOP-UPPER-BOUND))
 (38 26 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (31 31 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
 (30 30 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (30 2 (:LINEAR GETBIT-BOUND-LINEAR))
 (28 28 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (28 2 (:REWRITE BVCHOP-1-BECOMES-GETBIT))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (26 16 (:REWRITE DEFAULT-+-2))
 (21 17 (:REWRITE DEFAULT-<-2))
 (21 7 (:REWRITE BVCHOP-IDENTITY))
 (19 17 (:REWRITE DEFAULT-<-1))
 (18 6 (:REWRITE DEFAULT-*-2))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 2 (:REWRITE ZIP-OPEN))
 (12 4 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (12 4 (:REWRITE GETBIT-IDENTITY))
 (12 2 (:DEFINITION NFIX))
 (10 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (9 2 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (7 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (7 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (7 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (6 6 (:REWRITE DEFAULT-*-1))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
 (4 4 (:DEFINITION BITP))
 (4 2 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (3 3 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (3 3 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (3 3 (:REWRITE BVAND-WITH-MASK))
 (3 3 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (3 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (2 2 (:REWRITE BVAND-OF-CONSTANT))
 )
(BITAND-SUBST-ARG1
 (4 2 (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (4 2 (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1))
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
(BITAND-SUBST-ARG2
 (8 4 (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2))
 (8 4 (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1))
 (5 5 (:REWRITE BITAND-SUBST-ARG1))
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
(UNSIGNED-BYTE-P-1-OF-BITAND
 (61 1 (:REWRITE BVAND-WITH-MASK-BETTER))
 (59 1 (:DEFINITION LOGMASKP))
 (30 1 (:DEFINITION EXPT2$INLINE))
 (23 1 (:DEFINITION EXPT))
 (15 15 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
 (13 7 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (7 7 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (6 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 2 (:LINEAR INTEGER-LENGTH-BOUND))
 (6 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVAND-2))
 (6 1 (:DEFINITION NFIX))
 (5 1 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE DEFAULT-*-2))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 1 (:REWRITE EXPT-2-OF-+-OF--1-AND-INTEGER-LENGTH-WHEN-POWER-OF-2P-CHEAP))
 (2 1 (:REWRITE EQUAL-OF-0-AND-INTEGER-LENGTH))
 (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
 (1 1 (:TYPE-PRESCRIPTION LOGMASKP))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
 (1 1 (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
 (1 1 (:REWRITE BVAND-WITH-MASK))
 (1 1 (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
 (1 1 (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
 (1 1 (:REWRITE BVAND-OF-CONSTANT))
 )
