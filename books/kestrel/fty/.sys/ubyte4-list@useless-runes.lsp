(UBYTE4-LISTP)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(UBYTE4-LISTP-OF-CONS)
(UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP)
(UBYTE4-LISTP-WHEN-NOT-CONSP)
(UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP)
(TRUE-LISTP-WHEN-UBYTE4-LISTP)
(UBYTE4-LISTP-OF-LIST-FIX)
(UBYTE4-LISTP-OF-SFIX)
(UBYTE4-LISTP-OF-INSERT)
(UBYTE4-LISTP-OF-DELETE)
(UBYTE4-LISTP-OF-MERGESORT)
(UBYTE4-LISTP-OF-UNION)
(UBYTE4-LISTP-OF-INTERSECT-1)
(UBYTE4-LISTP-OF-INTERSECT-2)
(UBYTE4-LISTP-OF-DIFFERENCE)
(UBYTE4-LISTP-OF-DUPLICATED-MEMBERS)
(UBYTE4-LISTP-OF-REV)
(UBYTE4-LISTP-OF-APPEND)
(UBYTE4-LISTP-OF-RCONS)
(UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP)
(UBYTE4-LISTP-WHEN-SUBSETP-EQUAL)
(UBYTE4-LISTP-OF-SET-DIFFERENCE-EQUAL)
(UBYTE4-LISTP-OF-INTERSECTION-EQUAL-1)
(UBYTE4-LISTP-OF-INTERSECTION-EQUAL-2)
(UBYTE4-LISTP-OF-UNION-EQUAL)
(UBYTE4-LISTP-OF-TAKE)
(UBYTE4-LISTP-OF-REPEAT)
(UBYTE4P-OF-NTH-WHEN-UBYTE4-LISTP)
(UBYTE4-LISTP-OF-UPDATE-NTH)
(UBYTE4-LISTP-OF-BUTLAST)
(UBYTE4-LISTP-OF-NTHCDR)
(UBYTE4-LISTP-OF-LAST)
(UBYTE4-LISTP-OF-REMOVE)
(UBYTE4-LISTP-OF-REVAPPEND)
(UBYTE4-LIST-FIX$INLINE)
(UBYTE4-LISTP-OF-UBYTE4-LIST-FIX
 (30 1 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (22 2 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (18 10 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (15 1 (:DEFINITION UBYTE4-LISTP))
 (12 6 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (9 5 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION UBYTE4P))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 (2 1 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 )
(UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP
 (32 4 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (28 24 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (13 3 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (9 6 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 )
(UBYTE4-LIST-FIX$INLINE
 (8 8 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (6 1 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (4 4 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (2 2 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (1 1 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 )
(UBYTE4-LIST-EQUIV$INLINE)
(UBYTE4-LIST-EQUIV-IS-AN-EQUIVALENCE)
(UBYTE4-LIST-EQUIV-IMPLIES-EQUAL-UBYTE4-LIST-FIX-1)
(UBYTE4-LIST-FIX-UNDER-UBYTE4-LIST-EQUIV)
(EQUAL-OF-UBYTE4-LIST-FIX-1-FORWARD-TO-UBYTE4-LIST-EQUIV)
(EQUAL-OF-UBYTE4-LIST-FIX-2-FORWARD-TO-UBYTE4-LIST-EQUIV)
(UBYTE4-LIST-EQUIV-OF-UBYTE4-LIST-FIX-1-FORWARD)
(UBYTE4-LIST-EQUIV-OF-UBYTE4-LIST-FIX-2-FORWARD)
(CAR-OF-UBYTE4-LIST-FIX-X-UNDER-UBYTE4-EQUIV
 (33 3 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (18 3 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (18 2 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (12 12 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (12 12 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION UBYTE4P))
 (6 6 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (6 6 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (3 3 (:TYPE-PRESCRIPTION UBYTE4-LIST-FIX$INLINE))
 )
(CAR-UBYTE4-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE4-EQUIV)
(CDR-OF-UBYTE4-LIST-FIX-X-UNDER-UBYTE4-LIST-EQUIV
 (41 3 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (22 2 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (20 20 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (12 2 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (4 4 (:TYPE-PRESCRIPTION UBYTE4P))
 (4 4 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(CDR-UBYTE4-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE4-LIST-EQUIV)
(CONS-OF-UBYTE4-FIX-X-UNDER-UBYTE4-LIST-EQUIV
 (34 4 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (17 2 (:REWRITE UBYTE4-LISTP-OF-CONS))
 (10 10 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (6 6 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (5 5 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 )
(CONS-UBYTE4-EQUIV-CONGRUENCE-ON-X-UNDER-UBYTE4-LIST-EQUIV)
(CONS-OF-UBYTE4-LIST-FIX-Y-UNDER-UBYTE4-LIST-EQUIV
 (20 2 (:REWRITE UBYTE4-LISTP-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION UBYTE4P))
 (8 8 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (8 8 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (5 4 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 )
(CONS-UBYTE4-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-UBYTE4-LIST-EQUIV)
(CONSP-OF-UBYTE4-LIST-FIX
 (18 2 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (11 1 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (8 8 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (8 8 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (6 1 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (4 4 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE4P))
 (2 2 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(UBYTE4-LIST-FIX-UNDER-IFF
 (18 2 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (11 1 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (8 8 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (8 8 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (6 1 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (4 4 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE4P))
 (2 2 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(UBYTE4-LIST-FIX-OF-CONS
 (21 3 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (9 1 (:REWRITE UBYTE4-LISTP-OF-CONS))
 (6 6 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (4 4 (:TYPE-PRESCRIPTION UBYTE4P))
 (4 4 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (4 4 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (3 3 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 )
(LEN-OF-UBYTE4-LIST-FIX
 (35 4 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (14 14 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (13 13 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (12 2 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (11 1 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (7 7 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE4P))
 (2 2 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(UBYTE4-LIST-FIX-OF-APPEND
 (114 10 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (58 2 (:REWRITE UBYTE4-LISTP-OF-APPEND))
 (40 36 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (24 2 (:REWRITE UBYTE4-LISTP-OF-LIST-FIX))
 (22 16 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (14 4 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (12 2 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (6 1 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION UBYTE4P))
 (2 2 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(UBYTE4-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (16 4 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (12 2 (:REWRITE UBYTE4-LISTP-OF-REPEAT))
 (10 10 (:TYPE-PRESCRIPTION UBYTE4P))
 (10 10 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (1 1 (:REWRITE-QUOTED-CONSTANT UBYTE4-LIST-FIX-UNDER-UBYTE4-LIST-EQUIV))
 )
(LIST-EQUIV-REFINES-UBYTE4-LIST-EQUIV
 (146 14 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (112 8 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (88 18 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (72 72 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (72 8 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (70 70 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (36 36 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION UBYTE4P))
 (16 16 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(NTH-OF-UBYTE4-LIST-FIX
 (222 16 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (180 18 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (124 24 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (112 11 (:REWRITE UBYTE4P-OF-NTH-WHEN-UBYTE4-LISTP))
 (106 106 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (53 53 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (32 32 (:TYPE-PRESCRIPTION UBYTE4P))
 (32 32 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (30 5 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (29 22 (:REWRITE DEFAULT-+-2))
 (24 18 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-+-1))
 (19 7 (:REWRITE ZP-OPEN))
 (18 14 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE CONSP-OF-UBYTE4-LIST-FIX))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (10 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE-QUOTED-CONSTANT UBYTE4-FIX-UNDER-UBYTE4-EQUIV))
 )
(UBYTE4-LIST-EQUIV-IMPLIES-UBYTE4-LIST-EQUIV-APPEND-1
 (269 32 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (205 17 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (128 128 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (126 126 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (120 17 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (117 22 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (64 64 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (34 34 (:TYPE-PRESCRIPTION UBYTE4P))
 (34 34 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(UBYTE4-LIST-EQUIV-IMPLIES-UBYTE4-LIST-EQUIV-APPEND-2
 (393 46 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (322 26 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (204 39 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (192 26 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (190 190 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (189 189 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (95 95 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (52 52 (:TYPE-PRESCRIPTION UBYTE4P))
 (52 52 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (4 4 (:REWRITE CONSP-OF-UBYTE4-LIST-FIX))
 )
(UBYTE4-LIST-EQUIV-IMPLIES-UBYTE4-LIST-EQUIV-NTHCDR-2
 (298 20 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (208 39 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (198 198 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (198 20 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (40 40 (:TYPE-PRESCRIPTION UBYTE4P))
 (40 40 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 )
(UBYTE4-LIST-EQUIV-IMPLIES-UBYTE4-LIST-EQUIV-TAKE-2
 (553 38 (:REWRITE UBYTE4-LIST-FIX-WHEN-UBYTE4-LISTP))
 (432 28 (:REWRITE UBYTE4-FIX-WHEN-UBYTE4P))
 (304 51 (:REWRITE UBYTE4-LISTP-OF-CDR-WHEN-UBYTE4-LISTP))
 (296 26 (:REWRITE UBYTE4P-OF-CAR-WHEN-UBYTE4-LISTP))
 (236 236 (:TYPE-PRESCRIPTION UBYTE4-LISTP))
 (236 236 (:REWRITE UBYTE4-LISTP-WHEN-SUBSETP-EQUAL))
 (229 24 (:REWRITE UBYTE4-LISTP-OF-TAKE))
 (136 118 (:REWRITE UBYTE4-LISTP-WHEN-NOT-CONSP))
 (66 66 (:TYPE-PRESCRIPTION UBYTE4P))
 (66 66 (:REWRITE UBYTE4P-WHEN-MEMBER-EQUAL-OF-UBYTE4-LISTP))
 (18 18 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE-QUOTED-CONSTANT UBYTE4-LIST-FIX-UNDER-UBYTE4-LIST-EQUIV))
 )
(UBYTE4-LISTP-FORWARD-UNSIGNED-BYTE-LISTP)
(UBYTE4-LISTP-REWRITE-UNSIGNED-BYTE-LISTP)
(UNSIGNED-BYTE-LISTP-REWRITE-UBYTE4-LISTP)
(TRUE-LISTP-WHEN-UBYTE4-LISTP-REWRITE
 (2 2 (:DEFINITION TRUE-LISTP))
 )
(UBYTE4-LIST-FIX-OF-TAKE)
(UBYTE4-LIST-FIX-OF-RCONS)
