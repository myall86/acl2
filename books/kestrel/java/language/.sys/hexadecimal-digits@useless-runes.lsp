(JAVA::HEX-DIGITP)
(JAVA::BOOLEANP-OF-HEX-DIGITP)
(JAVA::HEX-DIGIT-FIX
 (1 1 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGITP-OF-HEX-DIGIT-FIX
 (3 3 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP
 (19 19 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (33 33 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGIT-EQUIV$INLINE
 (4 4 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGIT-EQUIV-IS-AN-EQUIVALENCE)
(JAVA::HEX-DIGIT-EQUIV-IMPLIES-EQUAL-HEX-DIGIT-FIX-1)
(JAVA::HEX-DIGIT-FIX-UNDER-HEX-DIGIT-EQUIV)
(JAVA::EQUAL-OF-HEX-DIGIT-FIX-1-FORWARD-TO-HEX-DIGIT-EQUIV)
(JAVA::EQUAL-OF-HEX-DIGIT-FIX-2-FORWARD-TO-HEX-DIGIT-EQUIV)
(JAVA::HEX-DIGIT-EQUIV-OF-HEX-DIGIT-FIX-1-FORWARD)
(JAVA::HEX-DIGIT-EQUIV-OF-HEX-DIGIT-FIX-2-FORWARD)
(JAVA::HEX-DIGIT-VALUE
 (124 124 (:REWRITE DEFAULT-<-2))
 (124 124 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(JAVA::NATP-OF-HEX-DIGIT-VALUE
 (83 82 (:REWRITE DEFAULT-<-1))
 (82 82 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-+-2))
 (40 40 (:REWRITE DEFAULT-+-1))
 (30 2 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (26 26 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(JAVA::HEX-DIGIT-VALUE-UPPER-BOUND
 (61 61 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 (26 7 (:REWRITE DEFAULT-<-2))
 (14 7 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 )
(JAVA::HEX-DIGIT-VALUE-OF-HEX-DIGIT-FIX-X
 (18 18 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGIT-VALUE-HEX-DIGIT-EQUIV-CONGRUENCE-ON-X)
(JAVA::HEX-DIGIT-LISTP)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(JAVA::HEX-DIGIT-LISTP-OF-CONS)
(JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP)
(JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP)
(JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP)
(JAVA::TRUE-LISTP-WHEN-HEX-DIGIT-LISTP)
(JAVA::HEX-DIGIT-LISTP-OF-LIST-FIX)
(JAVA::HEX-DIGIT-LISTP-OF-SFIX)
(JAVA::HEX-DIGIT-LISTP-OF-INSERT)
(JAVA::HEX-DIGIT-LISTP-OF-DELETE)
(JAVA::HEX-DIGIT-LISTP-OF-MERGESORT)
(JAVA::HEX-DIGIT-LISTP-OF-UNION)
(JAVA::HEX-DIGIT-LISTP-OF-INTERSECT-1)
(JAVA::HEX-DIGIT-LISTP-OF-INTERSECT-2)
(JAVA::HEX-DIGIT-LISTP-OF-DIFFERENCE)
(JAVA::HEX-DIGIT-LISTP-OF-DUPLICATED-MEMBERS)
(JAVA::HEX-DIGIT-LISTP-OF-REV)
(JAVA::HEX-DIGIT-LISTP-OF-APPEND)
(JAVA::HEX-DIGIT-LISTP-OF-RCONS)
(JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP)
(JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL)
(JAVA::HEX-DIGIT-LISTP-OF-SET-DIFFERENCE-EQUAL)
(JAVA::HEX-DIGIT-LISTP-OF-INTERSECTION-EQUAL-1)
(JAVA::HEX-DIGIT-LISTP-OF-INTERSECTION-EQUAL-2)
(JAVA::HEX-DIGIT-LISTP-OF-UNION-EQUAL)
(JAVA::HEX-DIGIT-LISTP-OF-TAKE)
(JAVA::HEX-DIGIT-LISTP-OF-REPEAT)
(JAVA::HEX-DIGITP-OF-NTH-WHEN-HEX-DIGIT-LISTP)
(JAVA::HEX-DIGIT-LISTP-OF-UPDATE-NTH)
(JAVA::HEX-DIGIT-LISTP-OF-BUTLAST)
(JAVA::HEX-DIGIT-LISTP-OF-NTHCDR)
(JAVA::HEX-DIGIT-LISTP-OF-LAST)
(JAVA::HEX-DIGIT-LISTP-OF-REMOVE)
(JAVA::HEX-DIGIT-LISTP-OF-REVAPPEND)
(JAVA::HEX-DIGIT-LIST-FIX$INLINE
 (1 1 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 )
(JAVA::HEX-DIGIT-LISTP-OF-HEX-DIGIT-LIST-FIX
 (30 1 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (22 2 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (18 10 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (15 1 (:DEFINITION JAVA::HEX-DIGIT-LISTP))
 (12 6 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (9 5 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (2 2 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 (2 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP
 (32 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (28 24 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (13 3 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (9 6 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 )
(JAVA::HEX-DIGIT-LIST-FIX$INLINE
 (8 8 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (6 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (4 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (2 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (1 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 )
(JAVA::HEX-DIGIT-LIST-EQUIV$INLINE)
(JAVA::HEX-DIGIT-LIST-EQUIV-IS-AN-EQUIVALENCE)
(JAVA::HEX-DIGIT-LIST-EQUIV-IMPLIES-EQUAL-HEX-DIGIT-LIST-FIX-1)
(JAVA::HEX-DIGIT-LIST-FIX-UNDER-HEX-DIGIT-LIST-EQUIV)
(JAVA::EQUAL-OF-HEX-DIGIT-LIST-FIX-1-FORWARD-TO-HEX-DIGIT-LIST-EQUIV)
(JAVA::EQUAL-OF-HEX-DIGIT-LIST-FIX-2-FORWARD-TO-HEX-DIGIT-LIST-EQUIV)
(JAVA::HEX-DIGIT-LIST-EQUIV-OF-HEX-DIGIT-LIST-FIX-1-FORWARD)
(JAVA::HEX-DIGIT-LIST-EQUIV-OF-HEX-DIGIT-LIST-FIX-2-FORWARD)
(JAVA::CAR-OF-HEX-DIGIT-LIST-FIX-X-UNDER-HEX-DIGIT-EQUIV
 (33 3 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (18 3 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (18 2 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (12 12 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (12 12 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (6 6 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (6 6 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (3 3 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LIST-FIX$INLINE))
 )
(JAVA::CAR-HEX-DIGIT-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-HEX-DIGIT-EQUIV)
(JAVA::CDR-OF-HEX-DIGIT-LIST-FIX-X-UNDER-HEX-DIGIT-LIST-EQUIV
 (41 3 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (22 2 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (20 20 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (12 2 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (4 4 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::CDR-HEX-DIGIT-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-HEX-DIGIT-LIST-EQUIV)
(JAVA::CONS-OF-HEX-DIGIT-FIX-X-UNDER-HEX-DIGIT-LIST-EQUIV
 (34 4 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (17 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CONS))
 (10 10 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (6 6 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (5 5 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 )
(JAVA::CONS-HEX-DIGIT-EQUIV-CONGRUENCE-ON-X-UNDER-HEX-DIGIT-LIST-EQUIV)
(JAVA::CONS-OF-HEX-DIGIT-LIST-FIX-Y-UNDER-HEX-DIGIT-LIST-EQUIV
 (20 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (8 8 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (8 8 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (5 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 )
(JAVA::CONS-HEX-DIGIT-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-HEX-DIGIT-LIST-EQUIV)
(JAVA::CONSP-OF-HEX-DIGIT-LIST-FIX
 (18 2 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (11 1 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (8 8 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (6 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (4 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (2 2 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-FIX-UNDER-IFF
 (18 2 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (11 1 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (8 8 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (6 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (4 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (2 2 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-FIX-OF-CONS
 (21 3 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (9 1 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CONS))
 (6 6 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (4 4 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (3 3 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 )
(JAVA::LEN-OF-HEX-DIGIT-LIST-FIX
 (35 4 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (14 14 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (13 13 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (12 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (11 1 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (7 7 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (2 2 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(JAVA::HEX-DIGIT-LIST-FIX-OF-APPEND
 (114 10 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (58 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-APPEND))
 (40 36 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (24 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-LIST-FIX))
 (22 16 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (14 4 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (12 2 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (6 1 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (2 2 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (16 4 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (12 2 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-REPEAT))
 (10 10 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (10 10 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (1 1 (:REWRITE-QUOTED-CONSTANT JAVA::HEX-DIGIT-LIST-FIX-UNDER-HEX-DIGIT-LIST-EQUIV))
 )
(JAVA::LIST-EQUIV-REFINES-HEX-DIGIT-LIST-EQUIV
 (146 14 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (112 8 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (88 18 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (72 72 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (72 8 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (70 70 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (36 36 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (16 16 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::NTH-OF-HEX-DIGIT-LIST-FIX
 (323 23 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (290 290 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 (167 16 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (160 15 (:REWRITE JAVA::HEX-DIGITP-OF-NTH-WHEN-HEX-DIGIT-LISTP))
 (142 27 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (124 124 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (62 62 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (48 8 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (46 46 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (46 46 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (32 25 (:REWRITE DEFAULT-+-2))
 (26 20 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-+-1))
 (23 8 (:REWRITE ZP-OPEN))
 (19 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (13 13 (:REWRITE JAVA::CONSP-OF-HEX-DIGIT-LIST-FIX))
 (12 6 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE-QUOTED-CONSTANT JAVA::HEX-DIGIT-FIX-UNDER-HEX-DIGIT-EQUIV))
 )
(JAVA::HEX-DIGIT-LIST-EQUIV-IMPLIES-HEX-DIGIT-LIST-EQUIV-APPEND-1
 (269 32 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (205 17 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (128 128 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (126 126 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (120 17 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (117 22 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (64 64 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (34 34 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (34 34 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-EQUIV-IMPLIES-HEX-DIGIT-LIST-EQUIV-APPEND-2
 (393 46 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (322 26 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (204 39 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (192 26 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (190 190 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (189 189 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (95 95 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (52 52 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (52 52 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (4 4 (:REWRITE JAVA::CONSP-OF-HEX-DIGIT-LIST-FIX))
 )
(JAVA::HEX-DIGIT-LIST-EQUIV-IMPLIES-HEX-DIGIT-LIST-EQUIV-NTHCDR-2
 (298 20 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (208 39 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (198 198 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (198 20 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (40 40 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (40 40 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 )
(JAVA::HEX-DIGIT-LIST-EQUIV-IMPLIES-HEX-DIGIT-LIST-EQUIV-TAKE-2
 (553 38 (:REWRITE JAVA::HEX-DIGIT-LIST-FIX-WHEN-HEX-DIGIT-LISTP))
 (432 28 (:REWRITE JAVA::HEX-DIGIT-FIX-WHEN-HEX-DIGITP))
 (304 51 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (296 26 (:REWRITE JAVA::HEX-DIGITP-OF-CAR-WHEN-HEX-DIGIT-LISTP))
 (236 236 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-LISTP))
 (236 236 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (229 24 (:REWRITE JAVA::HEX-DIGIT-LISTP-OF-TAKE))
 (136 118 (:REWRITE JAVA::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (66 66 (:TYPE-PRESCRIPTION JAVA::HEX-DIGITP))
 (66 66 (:REWRITE JAVA::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
 (40 40 (:TYPE-PRESCRIPTION JAVA::HEX-DIGIT-FIX))
 (18 18 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE-QUOTED-CONSTANT JAVA::HEX-DIGIT-LIST-FIX-UNDER-HEX-DIGIT-LIST-EQUIV))
 )
