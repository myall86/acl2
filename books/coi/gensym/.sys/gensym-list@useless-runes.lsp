(NON-NIL-SYMBOL-LISTP
 (4 4 (:TYPE-PRESCRIPTION IMPLIES-NON-NIL-SYMBOLP))
 )
(NON-NIL-SYMBOL-LISTP-IMPLIES-SYMBOL-LISTP
 (17 17 (:TYPE-PRESCRIPTION IMPLIES-NON-NIL-SYMBOLP))
 (16 16 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE IMPLIES-NON-NIL-SYMBOLP))
 (8 8 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP))
 )
(NON-NIL-SYMBOL-LIST-MEMBER
 (226 20 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (118 2 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-FROM-SUBBAGP))
 (90 10 (:REWRITE BAG::UNIQUE-MEMBERP-MEANS-COUNT-IS-ONE))
 (89 1 (:REWRITE BAG::SUBBAGP-MEMBERP-REMOVE-1))
 (76 1 (:REWRITE BAG::SUBBAGP-OF-CONS))
 (49 19 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (49 19 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (43 1 (:REWRITE BAG::UNIQUE-OF-CONS))
 (30 30 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (28 28 (:TYPE-PRESCRIPTION BAG::SUBBAGP))
 (26 13 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (22 2 (:REWRITE BAG::NON-MEMBERSHIP-REMOVE-1))
 (20 20 (:TYPE-PRESCRIPTION BAG::UNIQUE))
 (20 20 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (19 19 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (19 19 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (18 2 (:REWRITE BAG::SUBBAGP-MEANS-REMOVE-BAG-IS-NIL))
 (17 17 (:REWRITE BAG::NON-MEMBERP-FROM-MEMBERP-OF-OTHER-CHEAP))
 (17 17 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (17 17 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (17 17 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (16 16 (:REWRITE LIST::MEMBERP-DISJOINT-NON-MEMBERP))
 (15 15 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (13 13 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE))
 (11 11 (:REWRITE BAG::SUBBAGP-CHAINING))
 (11 11 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (10 10 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (10 10 (:REWRITE BAG::SUBBAGP-UNIQUENESS))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE BAG::REMOVE-BAG-DOES-NOTHING))
 (9 9 (:REWRITE BAG::COUNT-WHEN-NON-MEMBER))
 (7 5 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (6 6 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (5 5 (:REWRITE BAG::SUBBAGP-SELF))
 (4 2 (:REWRITE BAG::DISJOINT-SELF-MEANS-NOT-CONSP))
 (3 3 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (3 3 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (3 3 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (2 2 (:REWRITE BAG::REMOVE-1-OF-NON-CONSP-CHEAP))
 (2 2 (:REWRITE BAG::REMOVE-1-OF-NON-CONSP))
 (2 2 (:REWRITE LIST::MEMBERP-OF-NIL))
 (2 2 (:REWRITE BAG::DISJOINT-FROM-COMMON-UNIQUENSS))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(GENSYM::GENSYM-LIST)
(GENSYM::LEN-GENSYM-LIST
 (100 60 (:REWRITE DEFAULT-CDR))
 (79 40 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (52 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (20 1 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (10 1 (:LINEAR LIST::LEN-OF-CDR-BOUND-WEAK-LINEAR))
 (10 1 (:LINEAR LIST::LEN-OF-CDR-BOUND-TIGHT-LINEAR))
 (7 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:REWRITE UNICITY-OF-0))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (2 1 (:DEFINITION FIX))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENSYM::MEMBERP-GENSYM-LIST-FORWARD-1
 (180 9 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (55 10 (:REWRITE BAG::UNIQUE-MEMBERP-MEANS-COUNT-IS-ONE))
 (34 9 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (34 9 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (30 30 (:TYPE-PRESCRIPTION BAG::SUBBAGP))
 (24 24 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (24 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (22 11 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (21 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (20 20 (:TYPE-PRESCRIPTION BAG::UNIQUE))
 (17 1 (:REWRITE BAG::SUBBAGP-OF-CONS-IRREL))
 (16 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (15 10 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (14 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE))
 (11 11 (:REWRITE BAG::SUBBAGP-CHAINING))
 (11 11 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (10 10 (:REWRITE BAG::SUBBAGP-UNIQUENESS))
 (10 10 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (10 10 (:REWRITE BAG::COUNT-WHEN-NON-MEMBER))
 (10 7 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (9 9 (:REWRITE BAG::NON-MEMBERP-FROM-MEMBERP-OF-OTHER-CHEAP))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (9 9 (:REWRITE LIST::MEMBERP-DISJOINT-NON-MEMBERP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(GENSYM::MEMBERP-GENSYM-LIST-FORWARD-2)
(GENSYM::UNIQUE-GENSYM-LIST
 (6 3 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (5 5 (:REWRITE BAG::NON-SIMULAR-COUNT-IMPLIES-NOT-UNIQUE))
 (3 3 (:TYPE-PRESCRIPTION GENSYM::GENSYM-LIST))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (3 1 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (2 1 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (2 1 (:LINEAR BAG::COUNT-LINEAR))
 (1 1 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (1 1 (:REWRITE BAG::SUBBAGP-REMOVE))
 (1 1 (:REWRITE BAG::SUBBAGP-CHAINING))
 (1 1 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (1 1 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 (1 1 (:REWRITE GENSYM::MEMBERP-GENSYM-LIST-FORWARD-2))
 (1 1 (:REWRITE BAG::COUNT-0-FOR-NON-MEMBERP))
 )
(GENSYM::DISJOINT-GENSYM-LIST
 (182 8 (:REWRITE BAG::SUBBAGP-NOT-DISJOINT))
 (160 2 (:DEFINITION LIST::DISJOINT))
 (128 2 (:DEFINITION LIST::DISJOINT-REMOVE-DEFINITION))
 (76 4 (:REWRITE GENSYM::MEMBERP-GENSYM-LIST-FORWARD-1))
 (38 38 (:TYPE-PRESCRIPTION BAG::SUBBAGP))
 (36 4 (:REWRITE BAG::SUBBAGP-IMPLIES-MEMBERSHIP))
 (36 2 (:REWRITE BAG::SUBBAGP-OF-CDR))
 (31 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (30 9 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-TWO))
 (30 2 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT))
 (28 14 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (20 20 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (19 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (19 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (16 4 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT))
 (15 9 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-ONE))
 (15 5 (:DEFINITION GENSYM::GENSYM-LIST))
 (14 14 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (14 14 (:REWRITE BAG::SUBBAGP-REMOVE))
 (14 14 (:REWRITE BAG::SUBBAGP-CHAINING))
 (14 14 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (14 14 (:REWRITE BAG::DISJOINT-FROM-COMMON-UNIQUENSS))
 (14 8 (:REWRITE LIST::NOT-CONSP-DISJOINT))
 (13 13 (:REWRITE DEFAULT-CAR))
 (13 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (10 10 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (10 10 (:REWRITE BAG::SUBBAGP-DISJOINT-COMMUTE))
 (10 10 (:REWRITE BAG::SUBBAGP-DISJOINT))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT-CHEAP))
 (6 2 (:DEFINITION REMOVE-EQUAL))
 (4 4 (:REWRITE BAG::SUBBAGP-SELF))
 (4 4 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (4 4 (:REWRITE GENSYM::MEMBERP-GENSYM-LIST-FORWARD-2))
 (4 4 (:REWRITE BAG::DISJOINT-SELF-MEANS-NOT-CONSP))
 (4 2 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT-CHEAP))
 )
(GENSYM::NON-NIL-SYMBOL-LISTP-GENSYM-LIST
 (8 7 (:REWRITE DEFAULT-CAR))
 (7 6 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE IMPLIES-NON-NIL-SYMBOLP))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (2 1 (:LINEAR BAG::COUNT-LINEAR))
 (1 1 (:REWRITE BAG::COUNT-0-FOR-NON-MEMBERP))
 )
(GENSYM::GENSYM-N)
(GENSYM::MEMBERP-GENSYM-N-FORWARD-1
 (180 9 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (55 10 (:REWRITE BAG::UNIQUE-MEMBERP-MEANS-COUNT-IS-ONE))
 (34 9 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (34 9 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (30 30 (:TYPE-PRESCRIPTION BAG::SUBBAGP))
 (24 24 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (24 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (22 11 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (21 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (20 20 (:TYPE-PRESCRIPTION BAG::UNIQUE))
 (17 1 (:REWRITE BAG::SUBBAGP-OF-CONS-IRREL))
 (16 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (15 10 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (14 9 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (11 11 (:REWRITE BAG::SUBBAGP-REMOVE))
 (11 11 (:REWRITE BAG::SUBBAGP-CHAINING))
 (11 11 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (10 10 (:REWRITE BAG::SUBBAGP-UNIQUENESS))
 (10 10 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (10 10 (:REWRITE BAG::COUNT-WHEN-NON-MEMBER))
 (10 7 (:REWRITE LIST::MEMBERP-OF-NON-CONSP-CHEAP))
 (9 9 (:REWRITE BAG::NON-MEMBERP-FROM-MEMBERP-OF-OTHER-CHEAP))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (9 9 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (9 9 (:REWRITE GENSYM::MEMBERP-GENSYM-LIST-FORWARD-2))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (9 9 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (9 9 (:REWRITE LIST::MEMBERP-DISJOINT-NON-MEMBERP))
 (4 4 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 )
(GENSYM::MEMBERP-GENSYM-N-FORWARD-2)
(GENSYM::LEN-GENSYM-N
 (187 37 (:REWRITE LIST::LEN-WHEN-AT-MOST-1))
 (110 55 (:REWRITE DEFAULT-CDR))
 (90 36 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (52 13 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (42 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE ZP-OPEN))
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE BAG::ZP-NFIX))
 (4 1 (:REWRITE BAG::NOT-ZP-NFIX-REDUCTION))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENSYM::UNIQUE-GENSYM-N
 (6 3 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (5 5 (:REWRITE BAG::NON-SIMULAR-COUNT-IMPLIES-NOT-UNIQUE))
 (4 4 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION GENSYM::GENSYM-N))
 (3 1 (:REWRITE LIST::MEMBERP-OF-CDR-CHEAP))
 (3 1 (:REWRITE LIST::MEMBERP-FROM-MEMBERP-OF-CDR-CHEAP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (2 1 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (2 1 (:LINEAR BAG::COUNT-LINEAR))
 (1 1 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (1 1 (:REWRITE BAG::SUBBAGP-REMOVE))
 (1 1 (:REWRITE BAG::SUBBAGP-CHAINING))
 (1 1 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (1 1 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (1 1 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (1 1 (:REWRITE LIST::MEMBERP-OF-CONS-CHEAP))
 (1 1 (:REWRITE GENSYM::MEMBERP-GENSYM-N-FORWARD-2))
 (1 1 (:REWRITE BAG::COUNT-0-FOR-NON-MEMBERP))
 )
(GENSYM::DISJOINT-GENSYM-N
 (182 8 (:REWRITE BAG::SUBBAGP-NOT-DISJOINT))
 (160 2 (:DEFINITION LIST::DISJOINT))
 (128 2 (:DEFINITION LIST::DISJOINT-REMOVE-DEFINITION))
 (76 4 (:REWRITE GENSYM::MEMBERP-GENSYM-N-FORWARD-1))
 (38 38 (:TYPE-PRESCRIPTION BAG::SUBBAGP))
 (36 4 (:REWRITE BAG::SUBBAGP-IMPLIES-MEMBERSHIP))
 (36 2 (:REWRITE BAG::SUBBAGP-OF-CDR))
 (31 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (30 9 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-TWO))
 (30 2 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT))
 (28 14 (:REWRITE BAG::SUBBAGP-FROM-SUBBAGP-OF-CDR-CHEAP))
 (20 20 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (20 5 (:DEFINITION GENSYM::GENSYM-N))
 (19 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (19 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (16 4 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT))
 (15 9 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-ONE))
 (14 14 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (14 14 (:REWRITE BAG::SUBBAGP-REMOVE))
 (14 14 (:REWRITE BAG::SUBBAGP-CHAINING))
 (14 14 (:REWRITE BAG::PERM-SUBBAGP-SUBBAGP))
 (14 14 (:REWRITE BAG::DISJOINT-FROM-COMMON-UNIQUENSS))
 (14 8 (:REWRITE LIST::NOT-CONSP-DISJOINT))
 (13 10 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (10 10 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (10 10 (:REWRITE BAG::SUBBAGP-DISJOINT-COMMUTE))
 (10 10 (:REWRITE BAG::SUBBAGP-DISJOINT))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT-CHEAP))
 (6 2 (:DEFINITION REMOVE-EQUAL))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE BAG::SUBBAGP-SELF))
 (4 4 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (4 4 (:REWRITE GENSYM::MEMBERP-GENSYM-N-FORWARD-2))
 (4 4 (:REWRITE BAG::DISJOINT-SELF-MEANS-NOT-CONSP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT-CHEAP))
 )
(GENSYM::SYMBOL-LISTP-GENSYM-N
 (5 4 (:REWRITE DEFAULT-CDR))
 (5 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE IMPLIES-NON-NIL-SYMBOLP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR BAG::COUNT-WITH-SUBBAGP-LINEAR))
 (2 1 (:LINEAR BAG::COUNT-LINEAR))
 (1 1 (:REWRITE BAG::COUNT-0-FOR-NON-MEMBERP))
 )
