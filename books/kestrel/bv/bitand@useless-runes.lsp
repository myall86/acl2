(BITAND)
(BITAND-TYPE
     (114 2 (:REWRITE BVAND-WITH-MASK-BETTER))
     (110 2 (:DEFINITION LOGMASKP))
     (50 2 (:DEFINITION EXPT2$INLINE))
     (36 2 (:DEFINITION EXPT))
     (28 28 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (26 14
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (20 10 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (16 8 (:REWRITE DEFAULT-+-2))
     (14 14
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (12 4
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (12 4 (:REWRITE GETBIT-IDENTITY))
     (12 2 (:DEFINITION NFIX))
     (10 10 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 10
         (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-TYPE))
     (10 4 (:REWRITE ZIP-OPEN))
     (10 2 (:DEFINITION INTEGER-LENGTH))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 6 (:REWRITE DEFAULT-<-1))
     (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 3
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
     (6 3
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
     (6 2 (:REWRITE DEFAULT-*-2))
     (6 2 (:REWRITE COMMUTATIVITY-OF-+))
     (6 2
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (4 4
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (4 4
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
     (4 4
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2 (:REWRITE DEFAULT-*-1))
     (2 2
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (2 2
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (2 2 (:REWRITE BVAND-WITH-MASK))
     (2 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (2 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (2 2 (:REWRITE BVAND-OF-CONSTANT)))
(BITAND-ASSOCIATIVE)
(BITAND-COMMUTATIVE
     (115 3 (:REWRITE BVAND-WITH-MASK-BETTER))
     (110 2 (:DEFINITION LOGMASKP))
     (50 2 (:DEFINITION EXPT2$INLINE))
     (36 2 (:DEFINITION EXPT))
     (28 28 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (26 14
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (16 8 (:REWRITE DEFAULT-+-2))
     (14 14
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (12 6 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (12 2 (:DEFINITION NFIX))
     (10 4 (:REWRITE ZIP-OPEN))
     (10 2 (:DEFINITION INTEGER-LENGTH))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 6 (:REWRITE DEFAULT-<-1))
     (7 3
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (7 3
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (6 6 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 2 (:REWRITE DEFAULT-*-2))
     (6 2 (:REWRITE COMMUTATIVITY-OF-+))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (3 3 (:REWRITE BVAND-WITH-MASK))
     (3 3
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (3 3
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (3 3 (:REWRITE BVAND-OF-CONSTANT))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2 (:REWRITE DEFAULT-*-1)))
(BITAND-COMMUTATIVE-2
     (118 6 (:REWRITE BVAND-WITH-MASK-BETTER))
     (110 2 (:DEFINITION LOGMASKP))
     (50 2 (:DEFINITION EXPT2$INLINE))
     (36 2 (:DEFINITION EXPT))
     (28 28 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (26 14
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (16 8 (:REWRITE DEFAULT-+-2))
     (14 14
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (12 2 (:DEFINITION NFIX))
     (11 6
         (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (10 6
         (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (10 5 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (10 4 (:REWRITE ZIP-OPEN))
     (10 2 (:DEFINITION INTEGER-LENGTH))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (6 6
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (6 6 (:REWRITE BVAND-WITH-MASK))
     (6 6
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (6 6
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (6 6 (:REWRITE BVAND-OF-CONSTANT))
     (6 2 (:REWRITE DEFAULT-*-2))
     (6 2 (:REWRITE COMMUTATIVITY-OF-+))
     (5 5 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3 (:REWRITE BVAND-COMBINE-CONSTANTS))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2 (:REWRITE DEFAULT-*-1)))
(BITAND-OF-0-ARG1)
(BITAND-OF-0-ARG2 (3 1 (:REWRITE BVCHOP-IDENTITY))
                  (1 1 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
                  (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
                  (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
                  (1 1
                     (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP)))
(BITAND-OF-1-ARG2
     (14 1 (:LINEAR GETBIT-BOUND-LINEAR))
     (7 3
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (7 3 (:REWRITE GETBIT-IDENTITY))
     (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (4 2 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (3 3
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (3 3
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
     (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP)))
(BITAND-OF-1-ARG1
     (14 1 (:LINEAR GETBIT-BOUND-LINEAR))
     (6 2
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2 (:REWRITE GETBIT-IDENTITY))
     (4 2 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (2 2
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (2 2
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (2 2 (:REWRITE GETBIT-IDENTITY-FREE)))
(INTEGERP-OF-BITAND)
(NATP-OF-BITAND)
(BVAND-1-OF-GETBIT-ARG2
     (58 2 (:REWRITE BVAND-WITH-MASK-BETTER))
     (55 1 (:DEFINITION LOGMASKP))
     (25 1 (:DEFINITION EXPT2$INLINE))
     (18 1 (:DEFINITION EXPT))
     (14 14 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (13 7
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (12 6 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (11 5
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (11 5 (:REWRITE GETBIT-IDENTITY))
     (10 5 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (8 4 (:REWRITE DEFAULT-+-2))
     (7 7
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (6 6 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (6 1 (:DEFINITION NFIX))
     (5 5 (:TYPE-PRESCRIPTION GETBIT-TYPE))
     (5 5
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (5 5 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (5 5
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (5 5 (:REWRITE GETBIT-IDENTITY-FREE))
     (5 2 (:REWRITE ZIP-OPEN))
     (5 2
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (5 1 (:DEFINITION INTEGER-LENGTH))
     (4 4 (:REWRITE DEFAULT-+-1))
     (4 3 (:REWRITE DEFAULT-<-1))
     (4 2
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
     (4 2
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
     (4 2
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 1 (:REWRITE DEFAULT-*-2))
     (3 1 (:REWRITE COMMUTATIVITY-OF-+))
     (2 2
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (2 2
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (2 2 (:REWRITE BVAND-WITH-MASK))
     (2 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (2 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (2 2 (:REWRITE BVAND-OF-CONSTANT))
     (1 1 (:TYPE-PRESCRIPTION LOGMASKP))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE DEFAULT-*-1)))
(BVAND-1-OF-GETBIT-ARG1
     (179 4 (:REWRITE BVAND-WITH-MASK-BETTER))
     (172 3 (:DEFINITION LOGMASKP))
     (75 3 (:DEFINITION EXPT2$INLINE))
     (54 3 (:DEFINITION EXPT))
     (42 42 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (39 21
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (24 12 (:REWRITE DEFAULT-+-2))
     (21 21
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (20 3 (:DEFINITION INTEGER-LENGTH))
     (18 9 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (18 6 (:REWRITE ZIP-OPEN))
     (18 3 (:DEFINITION NFIX))
     (15 15 (:TYPE-PRESCRIPTION GETBIT-TYPE))
     (12 12 (:REWRITE DEFAULT-+-1))
     (11 8 (:REWRITE DEFAULT-<-1))
     (11 5
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (11 5 (:REWRITE GETBIT-IDENTITY))
     (10 5 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (9 9 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (9 4
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (9 3 (:REWRITE DEFAULT-*-2))
     (9 3 (:REWRITE COMMUTATIVITY-OF-+))
     (8 8 (:REWRITE DEFAULT-<-2))
     (8 4
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (5 5
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (5 5 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (5 5
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (5 5 (:REWRITE GETBIT-IDENTITY-FREE))
     (4 4
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (4 4
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (4 4
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (4 4 (:REWRITE BVAND-WITH-MASK))
     (4 4
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (4 4
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (4 4 (:REWRITE BVAND-OF-CONSTANT))
     (4 2
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
     (4 2
        (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
     (3 3 (:TYPE-PRESCRIPTION LOGMASKP))
     (3 3 (:REWRITE DEFAULT-*-1)))
(BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2)
(BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1)
(BVAND-1-BECOMES-BITAND)
(BITAND-COMBINE-CONSTANTS)
(BITAND-OF-GETBIT-ARG1)
(BITAND-OF-GETBIT-ARG2)
(BITAND-OF-BVCHOP-ARG2
     (117 5 (:REWRITE BVAND-WITH-MASK-BETTER))
     (110 2 (:DEFINITION LOGMASKP))
     (50 2 (:DEFINITION EXPT2$INLINE))
     (36 2 (:DEFINITION EXPT))
     (28 28 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (26 14
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (16 8 (:REWRITE DEFAULT-+-2))
     (14 14
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (12 2 (:DEFINITION NFIX))
     (10 8 (:REWRITE DEFAULT-<-1))
     (10 4 (:REWRITE ZIP-OPEN))
     (10 2 (:DEFINITION INTEGER-LENGTH))
     (8 8 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (8 8 (:REWRITE DEFAULT-<-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 4
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (8 4
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (6 2 (:REWRITE DEFAULT-*-2))
     (6 2 (:REWRITE COMMUTATIVITY-OF-+))
     (5 5
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (5 5
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (5 5 (:REWRITE BVAND-WITH-MASK))
     (5 5
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (4 4
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (4 4 (:REWRITE BVAND-OF-CONSTANT))
     (3 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE BVCHOP-IDENTITY))
     (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2 (:REWRITE DEFAULT-*-1))
     (1 1
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (1 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(BITAND-OF-BVCHOP-ARG1
     (125 3 (:REWRITE BVAND-WITH-MASK-BETTER))
     (120 2 (:DEFINITION LOGMASKP))
     (50 2 (:DEFINITION EXPT2$INLINE))
     (36 2 (:DEFINITION EXPT))
     (28 28 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (26 14
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (18 2 (:DEFINITION INTEGER-LENGTH))
     (16 8 (:REWRITE DEFAULT-+-2))
     (16 4 (:REWRITE ZIP-OPEN))
     (14 14
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (12 2 (:DEFINITION NFIX))
     (10 10 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (10 5 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (9 7 (:REWRITE DEFAULT-<-1))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 7 (:REWRITE DEFAULT-<-2))
     (6 2 (:REWRITE DEFAULT-*-2))
     (6 2 (:REWRITE COMMUTATIVITY-OF-+))
     (5 5 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (4 2
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (4 2
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (3 3
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (3 3 (:REWRITE BVAND-WITH-MASK))
     (3 3
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (3 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (3 1 (:REWRITE BVCHOP-IDENTITY))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2 (:REWRITE DEFAULT-*-1))
     (2 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (2 2 (:REWRITE BVAND-OF-CONSTANT))
     (1 1
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (1 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(BITAND-SUBST-ARG1
     (4 2
        (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (4 2
        (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1))
     (3 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE GETBIT-IDENTITY))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE)))
(BITAND-SUBST-ARG2
     (8 4
        (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (8 4
        (:REWRITE BITAND-WHEN-CONSTANT-IS-NOT-USB-ARG1))
     (5 5 (:REWRITE BITAND-SUBST-ARG1))
     (3 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE GETBIT-IDENTITY))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE)))
(UNSIGNED-BYTE-P-1-OF-BITAND
     (57 1 (:REWRITE BVAND-WITH-MASK-BETTER))
     (55 1 (:DEFINITION LOGMASKP))
     (25 1 (:DEFINITION EXPT2$INLINE))
     (18 1 (:DEFINITION EXPT))
     (14 14 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (13 7
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (8 4 (:REWRITE DEFAULT-+-2))
     (7 7
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVAND-2))
     (6 1 (:DEFINITION NFIX))
     (5 2 (:REWRITE ZIP-OPEN))
     (5 1 (:DEFINITION INTEGER-LENGTH))
     (4 4 (:REWRITE DEFAULT-+-1))
     (4 3 (:REWRITE DEFAULT-<-1))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 1 (:REWRITE DEFAULT-*-2))
     (3 1 (:REWRITE COMMUTATIVITY-OF-+))
     (3 1
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (3 1
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (1 1 (:TYPE-PRESCRIPTION LOGMASKP))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE DEFAULT-*-1))
     (1 1
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (1 1
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (1 1 (:REWRITE BVAND-WITH-MASK))
     (1 1
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (1 1
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (1 1 (:REWRITE BVAND-OF-CONSTANT)))
