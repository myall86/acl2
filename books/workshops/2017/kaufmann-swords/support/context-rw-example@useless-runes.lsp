(BITOPS::LOGAND-MASK-OF-LOGAPP
 (192 192 (:TYPE-PRESCRIPTION BITP))
 (180 180 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 (146 50 (:REWRITE BITOPS::LOGBITP-WHEN-BIT))
 (146 50 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (144 24 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (132 12 (:REWRITE BITOPS::LOGAPP-SIGN))
 (124 104 (:REWRITE DEFAULT-<-2))
 (119 104 (:REWRITE DEFAULT-<-1))
 (114 6 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2))
 (95 5 (:REWRITE LOGTAIL-IDENTITY))
 (90 6 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2))
 (80 5 (:DEFINITION UNSIGNED-BYTE-P))
 (78 39 (:TYPE-PRESCRIPTION BITOPS::LOGTAIL-NATP))
 (72 24 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (72 6 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-1))
 (72 6 (:LINEAR BITOPS::LOGAND-<-0-LINEAR))
 (65 5 (:DEFINITION INTEGER-RANGE-P))
 (58 34 (:REWRITE DEFAULT-+-2))
 (55 34 (:REWRITE DEFAULT-+-1))
 (50 50 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (50 50 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (50 50 (:REWRITE BITOPS::LOGBITP-OF-CONST-SPLIT))
 (50 50 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (50 50 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 (48 2 (:REWRITE BITOPS::LOGBITP-OF-LOGAPP-SECOND))
 (43 15 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (43 15 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (37 2 (:REWRITE BITOPS::LOGBITP-OF-LOGAPP-FIRST))
 (36 30 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (36 30 (:REWRITE IFIX-WHEN-INTEGERP))
 (27 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 24 (:TYPE-PRESCRIPTION NEGP))
 (24 24 (:REWRITE NEGP-WHEN-INTEGERP))
 (24 6 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 1))
 (20 20 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (20 20 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE BITOPS::B-AND-EQUAL-1-IN-HYP))
 (5 5 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE BITOPS::B-AND-EQUAL-0-IN-CONCL))
 )
(BITOPS::LOGBITP-INDUCES-LOGAND-CONTEXT
 (20 1 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (19 1 (:REWRITE BITOPS::LOGBITP-OF-ASH-OUT-OF-RANGE))
 (14 14 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (13 1 (:REWRITE BFIX-WHEN-NOT-1))
 (12 6 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (11 1 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (10 4 (:REWRITE NFIX-WHEN-NATP))
 (8 4 (:REWRITE NFIX-WHEN-NOT-NATP))
 (8 4 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (8 1 (:REWRITE EQUAL-1-OF-BOOL->BIT))
 (6 4 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (6 2 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (6 2 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (4 4 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (4 4 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (4 4 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE ZP-WHEN-GT-0))
 (4 2 (:REWRITE NATP-WHEN-GTE-0))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:TYPE-PRESCRIPTION BIT->BOOL$INLINE))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (2 2 (:REWRITE ZP-WHEN-INTEGERP))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE NATP-WHEN-INTEGERP))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BITP))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BIT->BOOL))
 (2 1 (:REWRITE BFIX-WHEN-BIT->BOOL))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (1 1 (:REWRITE ASH-0))
 )
(COMMON-LISP::APPLY-CONTEXT-FOR-LOGBITP)
(BITOPS::LOGIOR-PASSES-LOGAND-CONTEXT-1
 (976 22 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2))
 (864 22 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2))
 (592 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-2))
 (480 80 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (406 406 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 (368 12 (:LINEAR BITOPS::LOGIOR->=-0-LINEAR))
 (368 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-1))
 (299 153 (:REWRITE DEFAULT-<-1))
 (264 22 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-1))
 (264 22 (:LINEAR BITOPS::LOGAND-<-0-LINEAR))
 (240 80 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (204 204 (:TYPE-PRESCRIPTION BITP))
 (191 69 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (186 186 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (180 102 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (180 102 (:REWRITE IFIX-WHEN-INTEGERP))
 (161 59 (:REWRITE BITOPS::LOGBITP-WHEN-BIT))
 (161 59 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (153 153 (:REWRITE DEFAULT-<-2))
 (88 22 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 1))
 (80 80 (:TYPE-PRESCRIPTION NEGP))
 (80 80 (:REWRITE NEGP-WHEN-INTEGERP))
 (79 8 (:REWRITE BFIX-WHEN-NOT-1))
 (69 69 (:META COMMON-LISP::APPLY-CONTEXT-FOR-LOGBITP))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-CONST-SPLIT))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (59 59 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 (54 22 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (54 22 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (38 38 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 7 (:REWRITE NATP-WHEN-GTE-0))
 (16 16 (:TYPE-PRESCRIPTION BIT->BOOL$INLINE))
 (16 8 (:REWRITE BFIX-WHEN-NOT-BITP))
 (16 8 (:REWRITE BFIX-WHEN-NOT-BIT->BOOL))
 (16 8 (:REWRITE BFIX-WHEN-BIT->BOOL))
 (13 13 (:REWRITE BITOPS::B-IOR-EQUAL-1-IN-CONCL))
 (7 7 (:REWRITE NATP-WHEN-INTEGERP))
 (1 1 (:REWRITE BITOPS::B-AND-EQUAL-0-IN-CONCL))
 )
(BITOPS::LOGIOR-PASSES-LOGAND-CONTEXT-2
 (840 18 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2))
 (816 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-2))
 (744 18 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2))
 (432 72 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (382 382 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 (259 133 (:REWRITE DEFAULT-<-1))
 (216 72 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (216 18 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-1))
 (216 18 (:LINEAR BITOPS::LOGAND-<-0-LINEAR))
 (204 204 (:TYPE-PRESCRIPTION BITP))
 (191 69 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (186 186 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (161 59 (:REWRITE BITOPS::LOGBITP-WHEN-BIT))
 (161 59 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (156 90 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (156 90 (:REWRITE IFIX-WHEN-INTEGERP))
 (144 12 (:LINEAR BITOPS::LOGIOR->=-0-LINEAR))
 (144 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-1))
 (133 133 (:REWRITE DEFAULT-<-2))
 (79 8 (:REWRITE BFIX-WHEN-NOT-1))
 (72 72 (:TYPE-PRESCRIPTION NEGP))
 (72 72 (:REWRITE NEGP-WHEN-INTEGERP))
 (72 18 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 1))
 (69 69 (:META COMMON-LISP::APPLY-CONTEXT-FOR-LOGBITP))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-CONST-SPLIT))
 (59 59 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (59 59 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 (54 22 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (54 22 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (30 30 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 7 (:REWRITE NATP-WHEN-GTE-0))
 (16 16 (:TYPE-PRESCRIPTION BIT->BOOL$INLINE))
 (16 8 (:REWRITE BFIX-WHEN-NOT-BITP))
 (16 8 (:REWRITE BFIX-WHEN-NOT-BIT->BOOL))
 (16 8 (:REWRITE BFIX-WHEN-BIT->BOOL))
 (13 13 (:REWRITE BITOPS::B-IOR-EQUAL-1-IN-CONCL))
 (7 7 (:REWRITE NATP-WHEN-INTEGERP))
 (1 1 (:REWRITE BITOPS::B-AND-EQUAL-0-IN-CONCL))
 )
(BITOPS::LOGAND-PASSES-LOGAND-CONTEXT-1
 (15 15 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 )
(BITOPS::LOGAND-PASSES-LOGAND-CONTEXT-2
 (560 14 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2))
 (514 14 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2))
 (216 36 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (191 191 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 (168 14 (:LINEAR BITOPS::LOGAND->=-0-LINEAR-1))
 (168 14 (:LINEAR BITOPS::LOGAND-<-0-LINEAR))
 (140 70 (:REWRITE DEFAULT-<-1))
 (108 36 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (70 70 (:REWRITE DEFAULT-<-2))
 (66 42 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (66 42 (:REWRITE IFIX-WHEN-INTEGERP))
 (56 14 (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 1))
 (36 36 (:TYPE-PRESCRIPTION NEGP))
 (36 36 (:REWRITE NEGP-WHEN-INTEGERP))
 (22 22 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (19 13 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (19 13 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (12 12 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (5 5 (:REWRITE BITOPS::LOGAND-FOLD-CONSTS))
 )
(APPLY-CONTEXT-FOR-BINARY-LOGAND)
(BITOPS::LOGBITP-REMOVE-LOGAND-CONTEXT
 (281 29 (:REWRITE NFIX-WHEN-NATP))
 (211 29 (:REWRITE NFIX-WHEN-NOT-NATP))
 (175 52 (:REWRITE NATP-WHEN-INTEGERP))
 (164 8 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (137 52 (:REWRITE NATP-WHEN-GTE-0))
 (98 98 (:TYPE-PRESCRIPTION NATP))
 (98 58 (:REWRITE DEFAULT-<-1))
 (92 8 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (85 5 (:REWRITE IFIX-EQUAL-TO-NONZERO))
 (79 3 (:REWRITE BITOPS::LOGBITP-OF-ASH-OUT-OF-RANGE))
 (68 24 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (66 66 (:TYPE-PRESCRIPTION BITP))
 (65 58 (:REWRITE DEFAULT-<-2))
 (55 5 (:REWRITE ZIP-OPEN))
 (46 26 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (36 16 (:REWRITE ZP-WHEN-GT-0))
 (33 11 (:REWRITE BITOPS::LOGBITP-WHEN-BIT))
 (29 29 (:META COMMON-LISP::APPLY-CONTEXT-FOR-LOGBITP))
 (24 24 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (24 24 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (24 24 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (24 24 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 (16 16 (:REWRITE ZP-WHEN-INTEGERP))
 (16 16 (:REWRITE ZP-OPEN))
 (15 15 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (14 1 (:REWRITE BFIX-WHEN-NOT-1))
 (11 11 (:REWRITE BITOPS::LOGBITP-OF-CONST-SPLIT))
 (10 10 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (10 10 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 5 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE DEFAULT-+-1))
 (9 1 (:REWRITE EQUAL-1-OF-BOOL->BIT))
 (8 8 (:TYPE-PRESCRIPTION ZP))
 (8 8 (:REWRITE ASH-0))
 (6 2 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (6 2 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (5 5 (:TYPE-PRESCRIPTION ZIP))
 (5 5 (:REWRITE IFIX-EQUAL-TO-NONZERO-CONST))
 (2 2 (:TYPE-PRESCRIPTION BIT->BOOL$INLINE))
 (2 2 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (2 2 (:META APPLY-CONTEXT-FOR-BINARY-LOGAND))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BITP))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BIT->BOOL))
 (2 1 (:REWRITE BFIX-WHEN-BIT->BOOL))
 (1 1 (:REWRITE BITOPS::B-AND-EQUAL-1-IN-HYP))
 )
(BITOPS::LOGBITP-OF-LOGAND-LOGIOR-LOGAPP
 (663 2 (:DEFINITION INT-EQUIV$INLINE))
 (470 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-2))
 (212 123 (:TYPE-PRESCRIPTION BITOPS::LOGIOR-NATP-TYPE))
 (168 28 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (148 148 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (144 71 (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK))
 (144 71 (:REWRITE BITOPS::LOGAND-WITH-BITMASK))
 (144 12 (:LINEAR BITOPS::LOGIOR->=-0-LINEAR))
 (144 12 (:LINEAR BITOPS::LOGIOR-<-0-LINEAR-1))
 (123 123 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (84 28 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (83 40 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (83 40 (:REWRITE IFIX-WHEN-INTEGERP))
 (64 36 (:REWRITE DEFAULT-<-1))
 (40 2 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (39 39 (:TYPE-PRESCRIPTION LOGAPP-TYPE))
 (36 36 (:REWRITE DEFAULT-<-2))
 (30 6 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-2))
 (28 28 (:TYPE-PRESCRIPTION NEGP))
 (28 28 (:REWRITE NEGP-WHEN-INTEGERP))
 (22 2 (:REWRITE BITOPS::LOGAPP-SIGN))
 (15 15 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (13 13 (:REWRITE BITOPS::LOGAND-FOLD-CONSTS))
 (11 11 (:REWRITE BITOPS::LOGIOR-FOLD-CONSTS))
 (6 6 (:TYPE-PRESCRIPTION BITOPS::LOGAND-NATP-TYPE-1))
 (6 6 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (4 4 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (4 2 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE BITOPS::LOGBITP-OF-NEGATIVE-CONST))
 (2 2 (:REWRITE BITOPS::LOGBITP-OF-MASK))
 (2 2 (:REWRITE BITOPS::LOGBITP-OF-CONST))
 (2 2 (:META BITOPS::OPEN-LOGBITP-OF-CONST-LITE-META))
 )
