(VL2014::VL-CONSTINT-LSB-BITS-AUX
 (5 5 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 1 (:REWRITE ZP-WHEN-INTEGERP))
 (4 1 (:REWRITE ZP-WHEN-GT-0))
 (3 2 (:REWRITE NFIX-WHEN-NOT-NATP))
 (2 2 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (2 1 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(VL2014::VL-BITLIST-P-OF-VL-CONSTINT-LSB-BITS-AUX
 (83 3 (:REWRITE NFIX-WHEN-NATP))
 (40 4 (:REWRITE VL2014::NATP-WHEN-POSP))
 (34 2 (:REWRITE LOGTAIL-IDENTITY))
 (32 2 (:REWRITE POSP-REDEFINITION))
 (32 1 (:REWRITE SUBSETP-OF-CONS))
 (28 2 (:DEFINITION UNSIGNED-BYTE-P))
 (26 2 (:DEFINITION INTEGER-RANGE-P))
 (25 3 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 8 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION NFIX))
 (17 17 (:TYPE-PRESCRIPTION NATP))
 (17 5 (:REWRITE ZP-WHEN-INTEGERP))
 (17 3 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (14 14 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (14 7 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (14 5 (:REWRITE ZP-WHEN-GT-0))
 (14 4 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (14 4 (:REWRITE NATP-WHEN-GTE-0))
 (12 4 (:REWRITE NATP-WHEN-INTEGERP))
 (12 4 (:REWRITE NATP-RW))
 (12 2 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (9 7 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (8 8 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 1 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (6 1 (:REWRITE BITOPS::LOGBITP-0-OF-BIT))
 (5 5 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 2 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (3 3 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (3 1 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (3 1 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (2 2 (:LINEAR LISTPOS-COMPLETE))
 (2 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 )
(VL2014::TRUE-LISTP-OF-VL-CONSTINT-LSB-BITS-AUX)
(VL2014::LEN-OF-VL-CONSTINT-LSB-BITS-AUX
 (638 10 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (600 6 (:REWRITE LEN-WHEN-ATOM))
 (394 46 (:REWRITE ZP-WHEN-INTEGERP))
 (355 2 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (270 16 (:REWRITE LOGTAIL-IDENTITY))
 (257 26 (:REWRITE VL2014::NATP-WHEN-POSP))
 (222 16 (:DEFINITION UNSIGNED-BYTE-P))
 (215 39 (:REWRITE NFIX-WHEN-NOT-NATP))
 (206 16 (:DEFINITION INTEGER-RANGE-P))
 (205 13 (:REWRITE POSP-REDEFINITION))
 (120 120 (:TYPE-PRESCRIPTION NATP))
 (108 6 (:REWRITE BITOPS::LOGTAIL-OF-LOGTAIL))
 (100 4 (:REWRITE |(< 0 (len x))|))
 (97 47 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (96 27 (:REWRITE NATP-WHEN-GTE-0))
 (96 17 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (94 94 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (86 70 (:REWRITE DEFAULT-<-1))
 (78 26 (:REWRITE NATP-WHEN-INTEGERP))
 (78 26 (:REWRITE NATP-RW))
 (70 70 (:REWRITE DEFAULT-<-2))
 (70 70 (:META CANCEL_PLUS-LESSP-CORRECT))
 (70 24 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (60 6 (:REWRITE BITOPS::LOGBITP-OF-LOGTAIL))
 (56 14 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 (54 10 (:REWRITE BITOPS::LOGBITP-0-OF-BIT))
 (52 52 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (52 52 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (52 52 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (50 50 (:TYPE-PRESCRIPTION BITP))
 (48 24 (:TYPE-PRESCRIPTION BITOPS::LOGTAIL-NATP))
 (46 46 (:TYPE-PRESCRIPTION VL2014::TRUE-LISTP-OF-VL-CONSTINT-LSB-BITS-AUX))
 (46 46 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (37 37 (:REWRITE ZP-OPEN))
 (35 35 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (34 28 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE DEFAULT-+-1))
 (28 28 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (28 28 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (28 28 (:LINEAR LEN-WHEN-PREFIXP))
 (26 26 (:TYPE-PRESCRIPTION POSP))
 (26 13 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (21 7 (:REWRITE FOLD-CONSTS-IN-+))
 (20 20 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (20 20 (:LINEAR LISTPOS-COMPLETE))
 (20 1 (:REWRITE BITOPS::ASH-OF-ASH))
 (18 18 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (16 16 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (15 15 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (14 14 (:TYPE-PRESCRIPTION LNFIX$INLINE))
 (14 14 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (14 14 (:LINEAR INDEX-OF-<-LEN))
 (14 14 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (12 1 (:REWRITE BITOPS::LOGBITP-OF-ASH-IN-RANGE))
 (10 5 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (8 4 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 (6 2 (:REWRITE ASH-0))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (3 1 (:REWRITE BITOPS::LOGBITP-OF-ASH-OUT-OF-RANGE))
 (2 2 (:TYPE-PRESCRIPTION ZIP))
 (2 2 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 )
(VL2014::VL-CONSTINT-LSB-BITS-AUX-OF-NFIX-LEN
 (40 4 (:REWRITE VL2014::NATP-WHEN-POSP))
 (36 4 (:REWRITE LOGTAIL-IDENTITY))
 (32 2 (:REWRITE POSP-REDEFINITION))
 (31 8 (:REWRITE NFIX-WHEN-NOT-NATP))
 (28 2 (:DEFINITION UNSIGNED-BYTE-P))
 (26 2 (:DEFINITION INTEGER-RANGE-P))
 (22 6 (:REWRITE ZP-WHEN-INTEGERP))
 (18 18 (:TYPE-PRESCRIPTION NATP))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (16 16 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (16 8 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (14 4 (:REWRITE NATP-WHEN-GTE-0))
 (12 4 (:REWRITE NATP-WHEN-INTEGERP))
 (12 4 (:REWRITE NATP-RW))
 (10 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (8 8 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 2 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (7 2 (:REWRITE BITOPS::LOGBITP-0-OF-BIT))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (4 2 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (2 2 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:LINEAR LISTPOS-COMPLETE))
 )
(VL2014::VL-CONSTINT-LSB-BITS-AUX-NAT-EQUIV-CONGRUENCE-ON-LEN)
(VL2014::VL-CONSTINT-LSB-BITS-AUX-OF-NFIX-VALUE
 (40 4 (:REWRITE VL2014::NATP-WHEN-POSP))
 (36 4 (:REWRITE LOGTAIL-IDENTITY))
 (34 8 (:REWRITE NFIX-WHEN-NOT-NATP))
 (32 2 (:REWRITE POSP-REDEFINITION))
 (28 2 (:DEFINITION UNSIGNED-BYTE-P))
 (26 2 (:DEFINITION INTEGER-RANGE-P))
 (17 17 (:TYPE-PRESCRIPTION NATP))
 (17 5 (:REWRITE ZP-WHEN-INTEGERP))
 (14 14 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (14 7 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (14 5 (:REWRITE ZP-WHEN-GT-0))
 (14 4 (:REWRITE NATP-WHEN-GTE-0))
 (12 4 (:REWRITE NATP-WHEN-INTEGERP))
 (12 4 (:REWRITE NATP-RW))
 (9 7 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (8 8 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 2 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (7 2 (:REWRITE BITOPS::LOGBITP-0-OF-BIT))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (5 5 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:TYPE-PRESCRIPTION BITP))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (4 2 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (2 2 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:LINEAR LISTPOS-COMPLETE))
 )
(VL2014::VL-CONSTINT-LSB-BITS-AUX-NAT-EQUIV-CONGRUENCE-ON-VALUE)
(VL2014::VL-CONSTINT-MSB-BITS-AUX
 (534 12 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (279 6 (:REWRITE REV-WHEN-NOT-CONSP))
 (273 4 (:REWRITE REV-UNDER-IFF))
 (176 22 (:REWRITE LOGTAIL-IDENTITY))
 (111 27 (:REWRITE ZP-WHEN-GT-0))
 (110 22 (:DEFINITION UNSIGNED-BYTE-P))
 (99 11 (:REWRITE BITOPS::LOGTAIL-OF-LOGTAIL))
 (95 10 (:REWRITE VL2014::NATP-WHEN-POSP))
 (90 30 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (89 19 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (88 22 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 (88 22 (:DEFINITION INTEGER-RANGE-P))
 (80 5 (:REWRITE POSP-REDEFINITION))
 (79 79 (:REWRITE DEFAULT-<-2))
 (79 79 (:REWRITE DEFAULT-<-1))
 (79 79 (:META CANCEL_PLUS-LESSP-CORRECT))
 (77 11 (:REWRITE BITOPS::LOGBITP-OF-LOGTAIL))
 (70 10 (:REWRITE NATP-RW))
 (65 65 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (60 60 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (57 35 (:REWRITE NFIX-WHEN-NOT-NATP))
 (57 19 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (54 54 (:TYPE-PRESCRIPTION BITP))
 (43 32 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (38 38 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (33 11 (:REWRITE FOLD-CONSTS-IN-+))
 (32 32 (:REWRITE DEFAULT-+-1))
 (30 10 (:REWRITE NATP-WHEN-INTEGERP))
 (26 13 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (24 24 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (24 24 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (24 24 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (24 8 (:REWRITE BITOPS::LOGBITP-0-OF-BIT))
 (22 22 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (20 20 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (20 20 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (20 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (13 13 (:TYPE-PRESCRIPTION CONSP-REVAPPEND . 2))
 (13 13 (:TYPE-PRESCRIPTION CONSP-REVAPPEND . 1))
 (10 10 (:REWRITE ZP-OPEN))
 (2 2 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (2 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (2 1 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (2 1 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (1 1 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (1 1 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1 1 (:REWRITE SET::IN-SET))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::VL-CONSTINT-MSB-BITS-AUX-OF-NFIX-LEN
 (6 6 (:TYPE-PRESCRIPTION VL2014::VL-CONSTINT-MSB-BITS-AUX))
 )
(VL2014::VL-CONSTINT-MSB-BITS-AUX-NAT-EQUIV-CONGRUENCE-ON-LEN)
(VL2014::VL-CONSTINT-MSB-BITS-AUX-OF-NFIX-VALUE
 (6 6 (:TYPE-PRESCRIPTION VL2014::VL-CONSTINT-MSB-BITS-AUX))
 )
(VL2014::VL-CONSTINT-MSB-BITS-AUX-NAT-EQUIV-CONGRUENCE-ON-VALUE)
(VL2014::VL-CONSTINT->MSB-BITS
 (15 3 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (15 2 (:REWRITE VL2014::VL-CONSTINT-P-BY-TAG-WHEN-VL-ATOMGUTS-P))
 (5 2 (:REWRITE VL2014::TAG-WHEN-VL-OPINFO-P))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-OPINFO-P))
 (2 1 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (2 1 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (1 1 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (1 1 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1 1 (:REWRITE SET::IN-SET))
 )
(VL2014::VL-BITLIST-P-OF-VL-CONSTINT->MSB-BITS)
(VL2014::TRUE-LISTP-OF-VL-CONSTINT->MSB-BITS)
(VL2014::LEN-OF-VL-CONSTINT->MSB-BITS)
(VL2014::VL-CONSTINT->MSB-BITS-OF-VL-EXPR-FIX-X)
(VL2014::VL-CONSTINT->MSB-BITS-VL-EXPR-EQUIV-CONGRUENCE-ON-X)
(VL2014::VL-MSB-BITS->MAYBE-NAT-VAL
 (22 1 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (19 5 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (19 2 (:REWRITE VL2014::NATP-WHEN-POSP))
 (16 1 (:REWRITE POSP-REDEFINITION))
 (14 2 (:REWRITE NATP-RW))
 (12 3 (:REWRITE ASH-0))
 (10 10 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (8 4 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (8 2 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (6 6 (:TYPE-PRESCRIPTION ZIP))
 (6 3 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (6 3 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (6 2 (:REWRITE ZP-WHEN-INTEGERP))
 (6 2 (:REWRITE NATP-WHEN-INTEGERP))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 2 (:REWRITE ZP-WHEN-GT-0))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (4 4 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (4 4 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (4 4 (:REWRITE CONSP-BY-LEN))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE ZIP-OPEN))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE NFIX-WHEN-NOT-NATP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(VL2014::MAYBE-NATP-OF-VL-MSB-BITS->MAYBE-NAT-VAL)
(VL2014::MY-INDUCT
 (7 7 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 )
(VL2014::UNSIGNED-BYTE-P-IMPLIES-NATP-N
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (13 1 (:LINEAR EXPT->-1))
 (11 2 (:REWRITE DEFAULT-<-2))
 (7 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (4 1 (:REWRITE VL2014::RATIONALP-WHEN-INTEGERP))
 (2 2 (:REWRITE RATIONALP-WHEN-MEMBER-EQUAL-OF-RATIONAL-LISTP))
 (2 2 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE ACL2-NUMBERP-WHEN-MEMBER-EQUAL-OF-ACL2-NUMBER-LISTP))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (1 1 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (1 1 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 )
(VL2014::UNSIGNED-BYTE-P-OF-VL-MSB-BITS->MAYBE-NAT-VAL-GENERAL
 (6260 318 (:REWRITE UNSIGNED-BYTE-P-PLUS))
 (2792 370 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (1729 153 (:REWRITE ZP-WHEN-GT-0))
 (1612 1099 (:TYPE-PRESCRIPTION BITOPS::LOGCONS-NEGP))
 (1192 94 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (811 239 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (762 81 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (740 740 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (709 280 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (647 120 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (619 619 (:TYPE-PRESCRIPTION POSP))
 (560 50 (:REWRITE VL2014::NATP-WHEN-POSP))
 (536 38 (:REWRITE |(< 0 (len x))|))
 (480 30 (:REWRITE POSP-REDEFINITION))
 (343 343 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (314 50 (:REWRITE NATP-RW))
 (293 187 (:REWRITE DEFAULT-+-2))
 (280 280 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (280 280 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (276 46 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (257 205 (:REWRITE DEFAULT-<-2))
 (254 254 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (240 240 (:TYPE-PRESCRIPTION BITP))
 (220 220 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (220 110 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (205 205 (:REWRITE DEFAULT-<-1))
 (205 205 (:META CANCEL_PLUS-LESSP-CORRECT))
 (204 56 (:REWRITE NFIX-WHEN-NOT-NATP))
 (204 13 (:REWRITE BITOPS::UNSIGNED-BYTE-P-OF-0-X))
 (196 196 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (187 187 (:REWRITE DEFAULT-+-1))
 (170 50 (:REWRITE NATP-WHEN-INTEGERP))
 (168 168 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (168 168 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (144 18 (:LINEAR VL2014::LEN-OF-CDR-STRONG))
 (143 143 (:REWRITE DEFAULT-CDR))
 (140 140 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (140 140 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (140 140 (:LINEAR LEN-WHEN-PREFIXP))
 (128 128 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (128 128 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (127 127 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (126 78 (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP))
 (110 110 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (110 110 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (110 110 (:REWRITE CONSP-BY-LEN))
 (100 100 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (100 100 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (91 91 (:REWRITE DEFAULT-CAR))
 (91 91 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (73 73 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (70 70 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (70 70 (:LINEAR INDEX-OF-<-LEN))
 (70 70 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (60 60 (:REWRITE ZP-OPEN))
 (60 30 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (52 52 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (52 52 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 (52 26 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (52 26 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (44 11 (:LINEAR EXPT->-1))
 (30 30 (:TYPE-PRESCRIPTION ZP))
 (26 26 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (26 26 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (26 26 (:REWRITE SET::IN-SET))
 (26 26 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (22 22 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (17 17 (:TYPE-PRESCRIPTION NEGP))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(VL2014::UNSIGNED-BYTE-P-OF-VL-MSB-BITS->MAYBE-NAT-VAL-ZERO
 (44 2 (:REWRITE LEN-WHEN-ATOM))
 (26 4 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (11 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (8 8 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (2 1 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (2 1 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (1 1 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (1 1 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1 1 (:REWRITE SET::IN-SET))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::UPPER-BOUND-OF-VL-MSB-BITS->MAYBE-NAT-VAL-ZERO)
(VL2014::VL-MSB-BITS->MAYBE-NAT-VAL-OF-VL-BITLIST-FIX-X
 (916 36 (:REWRITE NFIX-WHEN-NATP))
 (440 44 (:REWRITE VL2014::NATP-WHEN-POSP))
 (372 32 (:REWRITE ASH-0))
 (352 22 (:REWRITE POSP-REDEFINITION))
 (280 20 (:REWRITE ZIP-OPEN))
 (278 36 (:REWRITE NFIX-WHEN-NOT-NATP))
 (176 176 (:TYPE-PRESCRIPTION NATP))
 (156 24 (:REWRITE DEFAULT-CDR))
 (154 44 (:REWRITE NATP-WHEN-GTE-0))
 (152 64 (:REWRITE ZP-WHEN-INTEGERP))
 (148 20 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (132 132 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (132 66 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (132 44 (:REWRITE NATP-WHEN-INTEGERP))
 (132 44 (:REWRITE NATP-RW))
 (130 64 (:REWRITE ZP-WHEN-GT-0))
 (124 14 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (100 20 (:REWRITE NFIX-EQUAL-TO-ZERO))
 (88 88 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (88 88 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (66 11 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (64 64 (:REWRITE ZP-OPEN))
 (62 62 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (52 32 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (48 48 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (44 44 (:TYPE-PRESCRIPTION POSP))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (44 44 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (44 44 (:META CANCEL_PLUS-LESSP-CORRECT))
 (44 22 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (44 22 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (42 42 (:TYPE-PRESCRIPTION ZP))
 (36 6 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (24 24 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (24 12 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (24 12 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (22 22 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (22 22 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (22 22 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (22 22 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (22 22 (:REWRITE CONSP-BY-LEN))
 (20 20 (:TYPE-PRESCRIPTION ZIP))
 (20 20 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (20 20 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (20 20 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (20 20 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 20 (:LINEAR LISTPOS-COMPLETE))
 (17 17 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (14 14 (:REWRITE DEFAULT-CAR))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (12 12 (:REWRITE SET::IN-SET))
 (6 6 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::VL-MSB-BITS->MAYBE-NAT-VAL-VL-BITLIST-EQUIV-CONGRUENCE-ON-X)
(VL2014::VL-MSB-BITS->MAYBE-NAT-VAL-OF-NFIX-VAL-ACC)
(VL2014::VL-MSB-BITS->MAYBE-NAT-VAL-NAT-EQUIV-CONGRUENCE-ON-VAL-ACC)
