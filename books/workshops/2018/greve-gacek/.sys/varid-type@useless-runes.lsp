(NAT-EQUIV-IMPLIES-EQUAL-ZP-1
 (8 2 (:REWRITE BAG::ZP-NFIX))
 (8 2 (:REWRITE BAG::NOT-ZP-NFIX-REDUCTION))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(VARID-P)
(DEFTYPE-PROPERTIES-VARID-P-IMPLIES-BODY)
(BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P)
(NOT-DEFTYPE-PROPERTIES-VARID-P-IMPLIES-NOT-BODY
 (1 1 (:TYPE-PRESCRIPTION NATP))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-VARID-P
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-VARID-P-1
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 )
(VARID-WITNESS)
(VARID-P-VARID-WITNESS)
(VARID-FIX
 (8 4 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 )
(VARID-P-VARID-FIX
 (10 2 (:REWRITE BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (6 5 (:REWRITE DEFAULT-<-1))
 (6 4 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (5 5 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(VARID-FIX-VARID
 (11 11 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(VARID-EQUIV)
(VARID-EQUIV-IS-AN-EQUIVALENCE)
(VARID-EQUIV-IMPLIES-EQUAL-VARID-FIX-1
 (4 4 (:TYPE-PRESCRIPTION NATP))
 )
(VARID-EQUIV-VARID-FIX
 (33 33 (:TYPE-PRESCRIPTION NATP))
 (15 5 (:REWRITE BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (10 9 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(EQUAL-VARID-FIX-TO-VARID-EQUIV
 (38 38 (:TYPE-PRESCRIPTION NATP))
 (24 8 (:REWRITE BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 )
(VARID-EQUIV-TO-EQUAL
 (22 22 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(VARID-TYPE-EQUIV
 (4 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 )
(VARID-TYPE-EQUIV-IS-AN-EQUIVALENCE
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 )
(VARID-TYPE-EQUIV-IMPLIES-EQUAL-VARID-P-1
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(VARID-TYPE-EQUIV-REFINES-VARID-EQUIV)
(VARID-TYPE-EQUIV-VARID-FIX
 (84 24 (:REWRITE BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (63 57 (:REWRITE DEFAULT-<-1))
 (57 57 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(__DEFFIXTYPE-VARID-EQUIV-MEANS-EQUAL-OF-VARID-FIX
 (8 8 (:TYPE-PRESCRIPTION NATP))
 )
(VARID-P-IMPLIES
 (3 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-VARID-P))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 )
(IMPLIES-VARID-P
 (2 2 (:TYPE-PRESCRIPTION NATP))
 )
(TMP-DEFTYPES-VARID-P-OF-VARID-FIX)
(VARID-LISTP)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(VARID-LISTP-OF-CONS)
(VARID-LISTP-OF-CDR-WHEN-VARID-LISTP)
(VARID-LISTP-WHEN-NOT-CONSP)
(VARID-P-OF-CAR-WHEN-VARID-LISTP)
(TRUE-LISTP-WHEN-VARID-LISTP)
(VARID-LIST-FIX$INLINE)
(VARID-LISTP-OF-VARID-LIST-FIX
 (11 1 (:REWRITE VARID-FIX-VARID))
 (10 2 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (9 5 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (7 1 (:DEFINITION VARID-LISTP))
 (2 1 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 )
(VARID-LIST-FIX-WHEN-VARID-LISTP
 (17 4 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (9 3 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 )
(VARID-LIST-FIX$INLINE
 (4 4 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (4 1 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (1 1 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
(VARID-LIST-EQUIV$INLINE)
(VARID-LIST-EQUIV-IS-AN-EQUIVALENCE)
(VARID-LIST-EQUIV-IMPLIES-EQUAL-VARID-LIST-FIX-1)
(VARID-LIST-FIX-UNDER-VARID-LIST-EQUIV)
(EQUAL-OF-VARID-LIST-FIX-1-FORWARD-TO-VARID-LIST-EQUIV)
(EQUAL-OF-VARID-LIST-FIX-2-FORWARD-TO-VARID-LIST-EQUIV)
(VARID-LIST-EQUIV-OF-VARID-LIST-FIX-1-FORWARD)
(VARID-LIST-EQUIV-OF-VARID-LIST-FIX-2-FORWARD)
(CAR-OF-VARID-LIST-FIX-X-UNDER-VARID-EQUIV
 (15 3 (:REWRITE VARID-FIX-VARID))
 (12 12 (:TYPE-PRESCRIPTION VARID-LISTP))
 (12 3 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (12 2 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (6 6 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (3 3 (:TYPE-PRESCRIPTION VARID-LIST-FIX$INLINE))
 )
(CAR-VARID-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-VARID-EQUIV)
(CDR-OF-VARID-LIST-FIX-X-UNDER-VARID-LIST-EQUIV
 (27 3 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (10 2 (:REWRITE VARID-FIX-VARID))
 (8 2 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 )
(CDR-VARID-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-VARID-LIST-EQUIV)
(CONS-OF-VARID-FIX-X-UNDER-VARID-LIST-EQUIV
 (18 4 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (7 2 (:REWRITE VARID-LISTP-OF-CONS))
 (6 6 (:TYPE-PRESCRIPTION VARID-LISTP))
 (5 5 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
(CONS-VARID-EQUIV-CONGRUENCE-ON-X-UNDER-VARID-LIST-EQUIV)
(CONS-OF-VARID-LIST-FIX-Y-UNDER-VARID-LIST-EQUIV
 (6 2 (:REWRITE VARID-LISTP-OF-CONS))
 (5 4 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VARID-FIX-VARID))
 )
(CONS-VARID-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-VARID-LIST-EQUIV)
(CONSP-OF-VARID-LIST-FIX
 (12 2 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (8 8 (:TYPE-PRESCRIPTION VARID-LISTP))
 (5 1 (:REWRITE VARID-FIX-VARID))
 (4 4 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (4 1 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 )
(VARID-LIST-FIX-UNDER-IFF
 (12 2 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (8 8 (:TYPE-PRESCRIPTION VARID-LISTP))
 (5 1 (:REWRITE VARID-FIX-VARID))
 (4 4 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (4 1 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 )
(VARID-LIST-FIX-OF-CONS
 (11 3 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (4 4 (:TYPE-PRESCRIPTION VARID-LISTP))
 (3 3 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (3 1 (:REWRITE VARID-LISTP-OF-CONS))
 (2 2 (:REWRITE VARID-FIX-VARID))
 )
(LEN-OF-VARID-LIST-FIX
 (23 4 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (13 13 (:TYPE-PRESCRIPTION VARID-LISTP))
 (8 2 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (7 7 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (5 1 (:REWRITE VARID-FIX-VARID))
 (4 1 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(VARID-LIST-FIX-OF-APPEND
 (56 10 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (23 23 (:TYPE-PRESCRIPTION VARID-LISTP))
 (18 12 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (8 2 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (6 2 (:REWRITE VARID-FIX-VARID))
 (4 1 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 )
(VARID-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (8 2 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION VARID-LISTP))
 (4 4 (:REWRITE VARID-FIX-VARID))
 (1 1 (:REWRITE-QUOTED-CONSTANT VARID-LIST-FIX-UNDER-VARID-LIST-EQUIV))
 )
(LIST-EQUIV-REFINES-VARID-LIST-EQUIV
 (98 14 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (70 70 (:TYPE-PRESCRIPTION VARID-LISTP))
 (60 18 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (56 8 (:REWRITE VARID-FIX-VARID))
 (48 8 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (36 36 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
(NTH-OF-VARID-LIST-FIX
 (152 22 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (104 92 (:REWRITE DEFAULT-CDR))
 (91 2 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (88 48 (:REWRITE LIST::LEN-WHEN-AT-MOST-1))
 (85 58 (:REWRITE DEFAULT-+-2))
 (78 2 (:LINEAR LIST::LEN-OF-CDR-BOUND-WEAK-LINEAR))
 (74 2 (:LINEAR LIST::LEN-OF-CDR-BOUND-TIGHT-LINEAR))
 (68 17 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (58 58 (:REWRITE DEFAULT-+-1))
 (48 48 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (45 45 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (45 17 (:REWRITE VARID-FIX-VARID))
 (38 10 (:REWRITE ZP-OPEN))
 (30 8 (:REWRITE FOLD-CONSTS-IN-+))
 (28 7 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (22 22 (:REWRITE CONSP-OF-VARID-LIST-FIX))
 (18 4 (:REWRITE BAG::ZP-NFIX))
 (17 14 (:REWRITE DEFAULT-<-2))
 (15 6 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-1))
 (5 2 (:REWRITE UNICITY-OF-0))
 (3 2 (:DEFINITION FIX))
 (2 2 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (2 1 (:REWRITE CAR-OF-VARID-LIST-FIX-X-UNDER-VARID-EQUIV))
 )
(VARID-LIST-EQUIV-IMPLIES-VARID-LIST-EQUIV-APPEND-1
 (181 32 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (126 126 (:TYPE-PRESCRIPTION VARID-LISTP))
 (97 17 (:REWRITE VARID-FIX-VARID))
 (80 17 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (79 22 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (64 64 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
(VARID-LIST-EQUIV-IMPLIES-VARID-LIST-EQUIV-APPEND-2
 (267 46 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (189 189 (:TYPE-PRESCRIPTION VARID-LISTP))
 (154 26 (:REWRITE VARID-FIX-VARID))
 (138 39 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (128 26 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (95 95 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE CONSP-OF-VARID-LIST-FIX))
 )
(VARID-LIST-EQUIV-IMPLIES-VARID-LIST-EQUIV-NTHCDR-2
 (249 39 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (175 175 (:TYPE-PRESCRIPTION VARID-LISTP))
 (130 22 (:REWRITE VARID-FIX-VARID))
 (117 33 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (108 22 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (88 88 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
(VARID-LIST-EQUIV-IMPLIES-VARID-LIST-EQUIV-TAKE-2
 (326 38 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (190 190 (:TYPE-PRESCRIPTION VARID-LISTP))
 (168 28 (:REWRITE VARID-FIX-VARID))
 (149 39 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (140 26 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (119 95 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (6 6 (:REWRITE-QUOTED-CONSTANT VARID-LIST-FIX-UNDER-VARID-LIST-EQUIV))
 )
(MEMBERP-IN-VARID-LISTP-IMPLIES-VARID-P
 (16 6 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (16 6 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (10 2 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (6 6 (:REWRITE BAG::NON-MEMBERP-FROM-MEMBERP-OF-OTHER-CHEAP))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (6 6 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (6 6 (:REWRITE GENSYM::MEMBERP-GENSYM-N-FORWARD-2))
 (6 6 (:REWRITE GENSYM::MEMBERP-GENSYM-LIST-FORWARD-2))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (6 6 (:REWRITE LIST::MEMBERP-DISJOINT-NON-MEMBERP))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(VARID-LIST-FIX!)
(VARID-LIST-EQUIV-REFINES-CONSP-EQUIV
 (56 10 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (34 34 (:TYPE-PRESCRIPTION VARID-LISTP))
 (20 18 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (20 4 (:REWRITE VARID-FIX-VARID))
 (16 4 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (16 4 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(OPEN-VARID-LIST-EQUIV-ON-CONSP
 (168 20 (:REWRITE VARID-LIST-FIX-WHEN-VARID-LISTP))
 (120 34 (:REWRITE VARID-LISTP-OF-CDR-WHEN-VARID-LISTP))
 (118 18 (:REWRITE VARID-FIX-VARID))
 (100 17 (:REWRITE VARID-P-OF-CAR-WHEN-VARID-LISTP))
 (63 63 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE DEFAULT-CAR))
 (4 1 (:REWRITE LIST::EQUAL-CONS-CASES))
 )
(EQUAL-VARID-LIST-FIX-TO-VARID-LIST-EQUIV
 (7 7 (:REWRITE VARID-LISTP-WHEN-NOT-CONSP))
 )
