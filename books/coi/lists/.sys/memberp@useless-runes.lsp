(LIST::MEMBERP)
(LIST::MEMBERP-TYPE-PRESCRIPTION-TEST)
(LIST::MEMBER-IS-MEMBERP-PROPOSITIONALLY
 (20 20 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(LIST::MEMBER-EQUAL-IS-MEMBERP-PROPOSITIONALLY)
(LIST::MEMBER-EQ-IS-MEMBERP-PROPOSITIONALLY)
(LIST::MEMBER-IMPLIES-MEMBERP)
(LIST::MEMBER-EQUAL-IMPLIES-MEMBERP)
(LIST::MEMBER-EQ-IMPLIES-MEMBERP)
(LIST::MEMBERP-OF-NON-CONSP)
(LIST::MEMBERP-OF-NON-CONSP-CHEAP)
(LIST::MEMBERP-OF-NIL)
(LIST::MEMBERP-OF-CONS
 (6 6 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(LIST::MEMBERP-OF-CONS-IRREL
 (8 2 (:DEFINITION LIST::MEMBERP))
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(LIST::MEMBERP-OF-CONS-REDUCE-CHEAP
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-IRREL))
 )
(LIST::MEMBERP-OF-CONS-CHEAP
 (2 2 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (2 1 (:REWRITE LIST::MEMBERP-OF-CONS-REDUCE-CHEAP))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-IRREL))
 )
(LIST::EQUIV-IMPLIES-EQUAL-MEMBERP-2
 (30 3 (:REWRITE LIST::EQUIV-OF-TWO-TRUE-LISTPS))
 (20 3 (:DEFINITION TRUE-LISTP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 13 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP))
 (3 3 (:REWRITE LIST::OPEN-EQUIV))
 (3 3 (:REWRITE LIST::EQUIV-OF-CONSTANT))
 (2 2 (:REWRITE LIST::EQUIV-OF-NON-CONSP-TWO))
 )
(LIST::MEMBERP-CAR
 (2 1 (:REWRITE LIST::MEMBERP-OF-CONS-REDUCE-CHEAP))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-IRREL))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(LIST::MEMBERP-OF-CDR
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 )
(LIST::MEMBERP-OF-CDR-CHEAP
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 )
(LIST::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR
 (14 14 (:REWRITE DEFAULT-CAR))
 (13 9 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (11 11 (:REWRITE DEFAULT-CDR))
 (9 1 (:REWRITE LIST::EQUAL-CAR-DIFFERENTIAL))
 (2 2 (:REWRITE LIST::CDR-DOES-NOTHING-REWRITE))
 (1 1 (:REWRITE LIST::CARS-MATCH-FROM-FIRSTN-FACT-2))
 (1 1 (:REWRITE LIST::CARS-MATCH-FROM-FIRSTN-FACT))
 )
(LIST::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR-CHEAP
 (19 12 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (10 10 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(LIST::MEMBERP-AND-NOT-CDR-IMPLIES-EQUALITY
 (9 6 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(LIST::MEMBERP-OF-APPEND
 (30 30 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (30 15 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (30 15 (:TYPE-PRESCRIPTION LIST::APPEND-TRUE-LISTP-TYPE-PRESCRIPTION))
 (25 25 (:REWRITE LIST::APPEND-OF-NON-CONSP-2))
 (21 21 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (15 15 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (15 15 (:TYPE-PRESCRIPTION LIST::APPEND-CONSP-TYPE-TWO))
 (15 15 (:TYPE-PRESCRIPTION LIST::APPEND-CONSP-TYPE-ONE))
 (3 3 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 (2 2 (:REWRITE LIST::MEMBERP-OF-CONS-IRREL))
 )
(LIST::MEMBERP-OF-APPEND-IRREL
 (8 4 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (1 1 (:REWRITE LIST::APPEND-OF-NON-CONSP-ONE))
 (1 1 (:REWRITE LIST::APPEND-OF-NON-CONSP-2))
 )
(LIST::MEMBERP-OF-APPEND-IRREL-CHEAP
 (8 4 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (4 4 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (1 1 (:REWRITE LIST::APPEND-OF-NON-CONSP-ONE))
 (1 1 (:REWRITE LIST::APPEND-OF-NON-CONSP-2))
 )
(LIST::MEMBERP-TYPE-1)
(LIST::MEMBERP-OF-NTHCDR-FORWARD-TO-MEMBERP
 (863 175 (:TYPE-PRESCRIPTION LIST::MEMBERP-TYPE-1))
 (354 354 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (354 177 (:TYPE-PRESCRIPTION LIST::TRUE-LISTP-OF-NTHCDR-TYPE-PRESCRIPTION))
 (354 177 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (348 40 (:DEFINITION LEN))
 (346 7 (:REWRITE LIST::NTHCDR-WHEN-<=))
 (339 7 (:REWRITE LIST::NTHCDR-OF-LEN-OR-MORE))
 (182 14 (:LINEAR LIST::LEN-NON-NEGATIVE-LINEAR))
 (153 80 (:REWRITE LIST::LEN-WHEN-AT-MOST-1))
 (140 140 (:TYPE-PRESCRIPTION LEN))
 (124 124 (:REWRITE DEFAULT-CDR))
 (112 4 (:LINEAR LIST::LEN-OF-CDR-BOUND-WEAK-LINEAR))
 (92 48 (:REWRITE DEFAULT-+-2))
 (80 80 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (48 48 (:REWRITE DEFAULT-+-1))
 (42 30 (:REWRITE DEFAULT-<-2))
 (42 14 (:DEFINITION NFIX))
 (30 30 (:REWRITE DEFAULT-<-1))
 (29 9 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (19 9 (:REWRITE ZP-OPEN))
 (14 14 (:TYPE-PRESCRIPTION NFIX))
 (14 14 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (7 7 (:REWRITE LIST::NTHCDR-OF-NON-CONSP))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (4 4 (:LINEAR LIST::LEN-OF-CDR-BOUND-TIGHT-LINEAR))
 (2 2 (:REWRITE LIST::LEN-POS-REWRITE))
 )
(LIST::MEMBER-OF-FIRSTN-FORWARD-TO-MEMBERP
 (700 78 (:DEFINITION LEN))
 (282 7 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (249 249 (:REWRITE DEFAULT-CDR))
 (241 7 (:LINEAR LIST::LEN-OF-CDR-BOUND-WEAK-LINEAR))
 (236 7 (:LINEAR LIST::LEN-OF-CDR-BOUND-TIGHT-LINEAR))
 (211 108 (:REWRITE DEFAULT-+-2))
 (156 156 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (143 11 (:LINEAR LIST::LEN-NON-NEGATIVE-LINEAR))
 (108 108 (:REWRITE DEFAULT-+-1))
 (47 11 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (42 8 (:REWRITE LIST::FIRSTN-OF-ZP))
 (35 12 (:REWRITE ZP-OPEN))
 (34 26 (:REWRITE DEFAULT-<-2))
 (31 5 (:REWRITE FOLD-CONSTS-IN-+))
 (26 26 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE UNICITY-OF-0))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:DEFINITION FIX))
 (2 2 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-IRREL))
 )
(LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP
 (35 35 (:TYPE-PRESCRIPTION LIST::MEMBERP-TYPE-1))
 (1 1 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(LIST::MAX-MEMBER)
(LIST::NATP-MAX-MEMBER)
(LIST::MAX-MEMBER-BOUND
 (227 158 (:REWRITE DEFAULT-<-1))
 (158 158 (:REWRITE DEFAULT-<-2))
 (93 39 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (93 39 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (76 76 (:REWRITE DEFAULT-CAR))
 (48 48 (:REWRITE DEFAULT-CDR))
 (35 35 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (4 4 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(LIST::MAX-MEMBER-BOUND-IMPLICATION
 (14 1 (:DEFINITION LIST::MAX-MEMBER))
 (13 13 (:TYPE-PRESCRIPTION LIST::MEMBERP-TYPE-1))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(LIST::NON-MEMBER)
(LIST::NOT-MEMBERP-NON-MEMBER
 (32 2 (:DEFINITION LIST::MAX-MEMBER))
 (10 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
