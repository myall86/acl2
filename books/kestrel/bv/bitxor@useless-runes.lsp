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
(UNSIGNED-BYTE-P-OF-BITXOR (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
                           (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
                           (3 1
                              (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
                           (3 1
                              (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
                           (1 1 (:REWRITE DEFAULT-<-2))
                           (1 1 (:REWRITE DEFAULT-<-1))
                           (1 1
                              (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
                           (1 1
                              (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
                           (1 1 (:REWRITE BVXOR-SUBST-ARG3))
                           (1 1 (:REWRITE BVXOR-SUBST-ARG2)))
(BITXOR-OF-GETBIT-ARG2)
(BITXOR-OF-GETBIT-ARG1
     (4 4
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (4 4
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
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
(BITXOR-WHEN-X-IS-NOT-AN-INTEGER
     (14 1 (:LINEAR GETBIT-BOUND-LINEAR))
     (8 4 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (7 3
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (7 3 (:REWRITE GETBIT-IDENTITY))
     (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (4 4 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (3 3
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
     (3 1
        (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVXOR-SUBST-ARG3))
     (1 1 (:REWRITE BVXOR-SUBST-ARG2)))
(BITXOR-WHEN-Y-IS-NOT-AN-INTEGER
     (14 1 (:LINEAR GETBIT-BOUND-LINEAR))
     (7 3
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (7 3 (:REWRITE GETBIT-IDENTITY))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (3 3
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (3 3 (:REWRITE GETBIT-IDENTITY-FREE))
     (1 1 (:REWRITE BVXOR-SUBST-ARG3))
     (1 1 (:REWRITE BVXOR-SUBST-ARG2)))
(BITXOR-SPLIT
    (33 11
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (33 11 (:REWRITE GETBIT-IDENTITY))
    (26 13 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (22 11 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (13 13 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (11 11
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (11 11 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (11 11
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (11 11 (:REWRITE GETBIT-IDENTITY-FREE))
    (4 4
       (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (3 1
       (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
    (3 1
       (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
    (2 1
       (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG2))
    (2 1
       (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG1))
    (1 1
       (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
    (1 1
       (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
    (1 1 (:REWRITE BVXOR-SUBST-ARG3))
    (1 1 (:REWRITE BVXOR-SUBST-ARG2)))
(GETBIT-OF-BITXOR-ALL-CASES
     (26 13 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (20 8
         (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (20 8
         (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
     (13 13 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (12 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (9 5 (:REWRITE GETBIT-OF-BVXOR-ERIC))
     (8 8
        (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
     (8 8
        (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
     (8 8 (:REWRITE BVXOR-SUBST-ARG3))
     (8 8 (:REWRITE BVXOR-SUBST-ARG2))
     (4 2
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (2 2
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (2 2
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(BVXOR-1-BECOMES-BITXOR)
(BITXOR-SUBST-ARG1
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 3
        (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
     (5 3
        (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE GETBIT-IDENTITY))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE)))
(BITXOR-SUBST-ARG2
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 3
        (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (5 3
        (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3 (:REWRITE BITXOR-SUBST-ARG1))
     (3 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE GETBIT-IDENTITY))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE)))
(BITXOR-NUMERIC-BOUND-2)
(BITXOR-BOTH-SIDES)
(EQUAL-OF-CONSTANT-AND-BITXOR-OF-CONSTANT
    (100 50 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (66 26
        (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
    (62 26
        (:REWRITE BITXOR-WHEN-X-IS-NOT-AN-INTEGER))
    (56 22 (:REWRITE GETBIT-IDENTITY))
    (50 50 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (50 22
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (44 22 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (26 26
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
    (26 26
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
    (26 26 (:REWRITE BITXOR-SUBST-ARG2))
    (26 26 (:REWRITE BITXOR-SUBST-ARG1))
    (25 25
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (25 25 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (25 25
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (11 11
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(EQUAL-OF-BITXOR-AND-BITXOR-SAME)
(BITXOR-OF-IFIX-ARG1
     (28 2 (:LINEAR GETBIT-BOUND-LINEAR))
     (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (10 4
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (10 4 (:REWRITE GETBIT-IDENTITY))
     (8 8 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (7 3
        (:REWRITE BITXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (4 4
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (4 4
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (4 4 (:REWRITE GETBIT-IDENTITY-FREE))
     (3 3 (:REWRITE BITXOR-SUBST-ARG2))
     (3 3 (:REWRITE BITXOR-SUBST-ARG1))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG2))
     (2 2
        (:REWRITE BITXOR-WHEN-CONSTANT-IS-NOT-USB-ARG1))
     (1 1
        (:REWRITE EQUAL-OF-CONSTANT-AND-BITXOR-OF-CONSTANT))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(BITXOR-OF-IFIX-ARG2
     (18 6 (:REWRITE GETBIT-IDENTITY))
     (14 6
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (12 6 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (8 4 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 6
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (6 6 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (6 6
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (6 6 (:REWRITE GETBIT-IDENTITY-FREE))
     (4 4 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (2 2 (:TYPE-PRESCRIPTION IFIX))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
