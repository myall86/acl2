(UBYTE64-LISTP)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(UBYTE64-LISTP-OF-CONS)
(UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP)
(UBYTE64-LISTP-WHEN-NOT-CONSP)
(UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP)
(TRUE-LISTP-WHEN-UBYTE64-LISTP)
(UBYTE64-LISTP-OF-LIST-FIX)
(UBYTE64-LISTP-OF-SFIX)
(UBYTE64-LISTP-OF-INSERT)
(UBYTE64-LISTP-OF-DELETE)
(UBYTE64-LISTP-OF-MERGESORT)
(UBYTE64-LISTP-OF-UNION)
(UBYTE64-LISTP-OF-INTERSECT-1)
(UBYTE64-LISTP-OF-INTERSECT-2)
(UBYTE64-LISTP-OF-DIFFERENCE)
(UBYTE64-LISTP-OF-DUPLICATED-MEMBERS)
(UBYTE64-LISTP-OF-REV)
(UBYTE64-LISTP-OF-APPEND)
(UBYTE64-LISTP-OF-RCONS)
(UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP)
(UBYTE64-LISTP-WHEN-SUBSETP-EQUAL)
(UBYTE64-LISTP-OF-SET-DIFFERENCE-EQUAL)
(UBYTE64-LISTP-OF-INTERSECTION-EQUAL-1)
(UBYTE64-LISTP-OF-INTERSECTION-EQUAL-2)
(UBYTE64-LISTP-OF-UNION-EQUAL)
(UBYTE64-LISTP-OF-TAKE)
(UBYTE64-LISTP-OF-REPEAT)
(UBYTE64P-OF-NTH-WHEN-UBYTE64-LISTP)
(UBYTE64-LISTP-OF-UPDATE-NTH)
(UBYTE64-LISTP-OF-BUTLAST)
(UBYTE64-LISTP-OF-NTHCDR)
(UBYTE64-LISTP-OF-LAST)
(UBYTE64-LISTP-OF-REMOVE)
(UBYTE64-LISTP-OF-REVAPPEND)
(UBYTE64-LIST-FIX$INLINE)
(UBYTE64-LISTP-OF-UBYTE64-LIST-FIX
 (30 1 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (22 2 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (18 10 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (15 1 (:DEFINITION UBYTE64-LISTP))
 (12 6 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (9 5 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION UBYTE64P))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 (2 1 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 )
(UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP
 (32 4 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (28 24 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (13 3 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (9 6 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 )
(UBYTE64-LIST-FIX$INLINE
 (8 8 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (6 1 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (4 4 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (2 2 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (1 1 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 )
(UBYTE64-LIST-EQUIV$INLINE)
(UBYTE64-LIST-EQUIV-IS-AN-EQUIVALENCE)
(UBYTE64-LIST-EQUIV-IMPLIES-EQUAL-UBYTE64-LIST-FIX-1)
(UBYTE64-LIST-FIX-UNDER-UBYTE64-LIST-EQUIV)
(EQUAL-OF-UBYTE64-LIST-FIX-1-FORWARD-TO-UBYTE64-LIST-EQUIV)
(EQUAL-OF-UBYTE64-LIST-FIX-2-FORWARD-TO-UBYTE64-LIST-EQUIV)
(UBYTE64-LIST-EQUIV-OF-UBYTE64-LIST-FIX-1-FORWARD)
(UBYTE64-LIST-EQUIV-OF-UBYTE64-LIST-FIX-2-FORWARD)
(CAR-OF-UBYTE64-LIST-FIX-X-UNDER-UBYTE64-EQUIV
 (33 3 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (18 3 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (18 2 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (12 12 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (12 12 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION UBYTE64P))
 (6 6 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (6 6 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (3 3 (:TYPE-PRESCRIPTION UBYTE64-LIST-FIX$INLINE))
 )
(CAR-UBYTE64-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE64-EQUIV)
(CDR-OF-UBYTE64-LIST-FIX-X-UNDER-UBYTE64-LIST-EQUIV
 (41 3 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (22 2 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (20 20 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (12 2 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (4 4 (:TYPE-PRESCRIPTION UBYTE64P))
 (4 4 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(CDR-UBYTE64-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE64-LIST-EQUIV)
(CONS-OF-UBYTE64-FIX-X-UNDER-UBYTE64-LIST-EQUIV
 (34 4 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (17 2 (:REWRITE UBYTE64-LISTP-OF-CONS))
 (10 10 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (6 6 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (5 5 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 )
(CONS-UBYTE64-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE64-LIST-EQUIV)
(CONS-OF-UBYTE64-LIST-FIX-Y-UNDER-UBYTE64-LIST-EQUIV
 (20 2 (:REWRITE UBYTE64-LISTP-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION UBYTE64P))
 (8 8 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (8 8 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (5 4 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 )
(CONS-UBYTE64-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-UBYTE64-LIST-EQUIV)
(CONSP-OF-UBYTE64-LIST-FIX
 (18 2 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (11 1 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (8 8 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (8 8 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (6 1 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (4 4 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE64P))
 (2 2 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(UBYTE64-LIST-FIX-UNDER-IFF
 (18 2 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (11 1 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (8 8 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (8 8 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (6 1 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (4 4 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE64P))
 (2 2 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(UBYTE64-LIST-FIX-OF-CONS
 (21 3 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (9 1 (:REWRITE UBYTE64-LISTP-OF-CONS))
 (6 6 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (4 4 (:TYPE-PRESCRIPTION UBYTE64P))
 (4 4 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (4 4 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (3 3 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 )
(LEN-OF-UBYTE64-LIST-FIX
 (35 4 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (14 14 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (13 13 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (12 2 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (11 1 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (7 7 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE64P))
 (2 2 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(UBYTE64-LIST-FIX-OF-APPEND
 (114 10 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (58 2 (:REWRITE UBYTE64-LISTP-OF-APPEND))
 (40 36 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (24 2 (:REWRITE UBYTE64-LISTP-OF-LIST-FIX))
 (22 16 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (14 4 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (12 2 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (6 1 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION UBYTE64P))
 (2 2 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(UBYTE64-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (16 4 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (12 2 (:REWRITE UBYTE64-LISTP-OF-REPEAT))
 (10 10 (:TYPE-PRESCRIPTION UBYTE64P))
 (10 10 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (1 1 (:REWRITE-QUOTED-CONSTANT UBYTE64-LIST-FIX-UNDER-UBYTE64-LIST-EQUIV))
 )
(LIST-EQUIV-REFINES-UBYTE64-LIST-EQUIV
 (146 14 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (112 8 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (88 18 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (72 72 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (72 8 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (70 70 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (36 36 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION UBYTE64P))
 (16 16 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(NTH-OF-UBYTE64-LIST-FIX
 (222 16 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (180 18 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (124 24 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (112 11 (:REWRITE UBYTE64P-OF-NTH-WHEN-UBYTE64-LISTP))
 (106 106 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (53 53 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (32 32 (:TYPE-PRESCRIPTION UBYTE64P))
 (32 32 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (30 5 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (29 22 (:REWRITE DEFAULT-+-2))
 (24 18 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-+-1))
 (19 7 (:REWRITE ZP-OPEN))
 (18 14 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE CONSP-OF-UBYTE64-LIST-FIX))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (10 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE-QUOTED-CONSTANT UBYTE64-FIX-UNDER-UBYTE64-EQUIV))
 )
(UBYTE64-LIST-EQUIV-IMPLIES-UBYTE64-LIST-EQUIV-APPEND-1
 (269 32 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (205 17 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (128 128 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (126 126 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (120 17 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (117 22 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (64 64 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (34 34 (:TYPE-PRESCRIPTION UBYTE64P))
 (34 34 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(UBYTE64-LIST-EQUIV-IMPLIES-UBYTE64-LIST-EQUIV-APPEND-2
 (393 46 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (322 26 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (204 39 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (192 26 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (190 190 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (189 189 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (95 95 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (52 52 (:TYPE-PRESCRIPTION UBYTE64P))
 (52 52 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (4 4 (:REWRITE CONSP-OF-UBYTE64-LIST-FIX))
 )
(UBYTE64-LIST-EQUIV-IMPLIES-UBYTE64-LIST-EQUIV-NTHCDR-2
 (298 20 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (208 39 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (198 198 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (198 20 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (40 40 (:TYPE-PRESCRIPTION UBYTE64P))
 (40 40 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 )
(UBYTE64-LIST-EQUIV-IMPLIES-UBYTE64-LIST-EQUIV-TAKE-2
 (553 38 (:REWRITE UBYTE64-LIST-FIX-WHEN-UBYTE64-LISTP))
 (432 28 (:REWRITE UBYTE64-FIX-WHEN-UBYTE64P))
 (304 51 (:REWRITE UBYTE64-LISTP-OF-CDR-WHEN-UBYTE64-LISTP))
 (296 26 (:REWRITE UBYTE64P-OF-CAR-WHEN-UBYTE64-LISTP))
 (236 236 (:TYPE-PRESCRIPTION UBYTE64-LISTP))
 (236 236 (:REWRITE UBYTE64-LISTP-WHEN-SUBSETP-EQUAL))
 (229 24 (:REWRITE UBYTE64-LISTP-OF-TAKE))
 (136 118 (:REWRITE UBYTE64-LISTP-WHEN-NOT-CONSP))
 (66 66 (:TYPE-PRESCRIPTION UBYTE64P))
 (66 66 (:REWRITE UBYTE64P-WHEN-MEMBER-EQUAL-OF-UBYTE64-LISTP))
 (18 18 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE-QUOTED-CONSTANT UBYTE64-LIST-FIX-UNDER-UBYTE64-LIST-EQUIV))
 )
(UBYTE64-LISTP-FORWARD-UNSIGNED-BYTE-LISTP)
(UBYTE64-LISTP-REWRITE-UNSIGNED-BYTE-LISTP)
(UNSIGNED-BYTE-LISTP-REWRITE-UBYTE64-LISTP)
(TRUE-LISTP-WHEN-UBYTE64-LISTP-REWRITE
 (2 2 (:DEFINITION TRUE-LISTP))
 )
(UBYTE64-LIST-FIX-OF-TAKE)
(UBYTE64-LIST-FIX-OF-RCONS)
