(SET-SIZE-EQUAL)
(SET-SIZE-EQ-EXEC$GUARD-CHECK)
(SET-SIZE-EQ-EXEC
 (70 2 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (18 2 (:REWRITE SUBSETP-CAR-MEMBER))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 6 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (6 2 (:REWRITE MEMBER-WHEN-ATOM))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE SUBSETP-MEMBER . 4))
 (2 2 (:REWRITE SUBSETP-MEMBER . 3))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 3))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 2))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE CONSP-BY-LEN))
 )
(SET-SIZE-EQL-EXEC$GUARD-CHECK)
(SET-SIZE-EQL-EXEC
 (7 1 (:DEFINITION EQLABLE-LISTP))
 (2 1 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(SET-SIZE-EQ-EXEC-IS-SET-SIZE-EQUAL
 (452 10 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (321 62 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (117 30 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (106 10 (:REWRITE SUBSETP-CAR-MEMBER))
 (48 1 (:REWRITE DEFAULT-COERCE-3))
 (46 46 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (46 46 (:REWRITE CONSP-BY-LEN))
 (46 10 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (46 10 (:REWRITE MEMBER-WHEN-ATOM))
 (38 38 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (20 20 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 10 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (10 10 (:REWRITE SUBSETP-TRANS2))
 (10 10 (:REWRITE SUBSETP-TRANS))
 (10 10 (:REWRITE SUBSETP-MEMBER . 4))
 (10 10 (:REWRITE SUBSETP-MEMBER . 3))
 (10 10 (:REWRITE SUBSETP-MEMBER . 2))
 (10 10 (:REWRITE SUBSETP-MEMBER . 1))
 (10 10 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 3))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 8 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (8 8 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:LINEAR INDEX-OF-<-LEN))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(SET-SIZE-EQL-EXEC-IS-SET-SIZE-EQUAL
 (452 10 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (321 62 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (117 30 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (106 10 (:REWRITE SUBSETP-CAR-MEMBER))
 (48 1 (:REWRITE DEFAULT-COERCE-3))
 (46 46 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (46 46 (:REWRITE CONSP-BY-LEN))
 (46 10 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (46 10 (:REWRITE MEMBER-WHEN-ATOM))
 (38 38 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (20 20 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 10 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (10 10 (:REWRITE SUBSETP-TRANS2))
 (10 10 (:REWRITE SUBSETP-TRANS))
 (10 10 (:REWRITE SUBSETP-MEMBER . 4))
 (10 10 (:REWRITE SUBSETP-MEMBER . 3))
 (10 10 (:REWRITE SUBSETP-MEMBER . 2))
 (10 10 (:REWRITE SUBSETP-MEMBER . 1))
 (10 10 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 3))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 8 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (8 8 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:LINEAR INDEX-OF-<-LEN))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(NATP-OF-SET-SIZE-EQUAL)
(NATP-OF-SET-SIZE-EQ-EXEC)
(NATP-OF-SET-SIZE-EQL-EXEC)
(UNIV)
(UNIV-NECC)
(PROVE-UNIV-BASE-CASE
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE UNIV-NECC))
 (1 1 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(PROVE-UNIV-INDUCTION-STEP
 (3617 113 (:REWRITE LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (3231 38 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (2193 152 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (1672 152 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (948 113 (:REWRITE LEN-WHEN-PREFIXP))
 (686 343 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (485 248 (:REWRITE LEN-WHEN-ATOM))
 (417 417 (:TYPE-PRESCRIPTION PREFIXP))
 (343 343 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (343 343 (:REWRITE CONSP-BY-LEN))
 (310 152 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (310 152 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (246 120 (:REWRITE DEFAULT-<-1))
 (239 120 (:REWRITE DEFAULT-<-2))
 (214 62 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (212 212 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (212 212 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (212 212 (:LINEAR LEN-WHEN-PREFIXP))
 (152 152 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (152 152 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (152 152 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (152 152 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (152 38 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (151 151 (:TYPE-PRESCRIPTION SUBLISTP))
 (106 62 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (103 103 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (98 42 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (82 38 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (76 63 (:REWRITE SUBSETP-TRANS))
 (60 15 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (56 56 (:REWRITE DEFAULT-CDR))
 (50 15 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (44 10 (:REWRITE SUBSETP-MEMBER . 4))
 (44 10 (:REWRITE MEMBER-WHEN-ATOM))
 (42 42 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (42 42 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (41 17 (:REWRITE PROVE-UNIV-BASE-CASE))
 (38 38 (:REWRITE SUBLISTP-COMPLETE))
 (25 2 (:REWRITE REMOVE-WHEN-NON-MEMBER))
 (16 11 (:REWRITE SUBSETP-MEMBER . 2))
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (14 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 7 (:REWRITE DEFAULT-+-2))
 (14 7 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE SUBSETP-MEMBER . 1))
 (11 11 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (10 10 (:REWRITE SUBSETP-MEMBER . 3))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 3))
 (10 10 (:REWRITE INTERSECTP-MEMBER . 2))
 (5 2 (:REWRITE REMOVE-WHEN-ATOM))
 )
(PROVE-UNIV
 (6 3 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 1 (:REWRITE PROVE-UNIV-BASE-CASE))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 3 (:REWRITE CONSP-BY-LEN))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (1 1 (:REWRITE UNIV-NECC))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(LEN-WHEN-NO-DUPLICATESP-AND-SUBSETP)
(LEN-WHEN-NO-DUPLICATESP-AND-STRICT-SUBSETP
 (91 3 (:REWRITE LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (79 1 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (48 24 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (48 4 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (38 4 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (25 3 (:REWRITE LEN-WHEN-PREFIXP))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (24 24 (:REWRITE CONSP-BY-LEN))
 (24 9 (:REWRITE LEN-WHEN-ATOM))
 (13 4 (:REWRITE SUBSETP-MEMBER . 4))
 (12 3 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (12 3 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (11 11 (:TYPE-PRESCRIPTION PREFIXP))
 (10 4 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (10 4 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (9 4 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE MEMBER-WHEN-ATOM))
 (8 8 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (8 8 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (8 4 (:REWRITE SUBSETP-MEMBER . 2))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 2 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (8 2 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (5 2 (:REWRITE REMOVE-WHEN-ATOM))
 (4 4 (:TYPE-PRESCRIPTION SUBLISTP))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 (4 4 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (4 4 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (4 4 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (4 4 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (4 4 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (4 4 (:REWRITE INTERSECTP-MEMBER . 3))
 (4 4 (:REWRITE INTERSECTP-MEMBER . 2))
 (4 1 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (4 1 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (2 2 (:REWRITE REMOVE-WHEN-NON-MEMBER))
 (2 2 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (2 2 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (2 2 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE SUBLISTP-COMPLETE))
 )
(SET-SIZE-ZERO-EMPTY)
(SET-SIZE-OF-TRUE-LIST-FIX)
(SET-SIZE-OF-CONS
 (368 8 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (192 53 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (138 5 (:REWRITE LEN-WHEN-ATOM))
 (106 24 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (88 8 (:REWRITE SUBSETP-CAR-MEMBER))
 (49 49 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (49 49 (:REWRITE CONSP-BY-LEN))
 (49 11 (:REWRITE MEMBER-WHEN-ATOM))
 (40 8 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (32 32 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 28 (:TYPE-PRESCRIPTION REMOVE-DUPLICATES-EQUAL))
 (24 24 (:REWRITE DEFAULT-CDR))
 (16 16 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (11 11 (:REWRITE SUBSETP-MEMBER . 4))
 (11 11 (:REWRITE SUBSETP-MEMBER . 3))
 (11 11 (:REWRITE SUBSETP-MEMBER . 2))
 (11 11 (:REWRITE SUBSETP-MEMBER . 1))
 (11 11 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (11 11 (:REWRITE INTERSECTP-MEMBER . 3))
 (11 11 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE SUBSETP-TRANS2))
 (8 8 (:REWRITE SUBSETP-TRANS))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:LINEAR INDEX-OF-<-LEN))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(SET-SIZE-OF-ADD-TO-SET
 (905 19 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (624 121 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (537 15 (:REWRITE LEN-WHEN-ATOM))
 (244 57 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (209 19 (:REWRITE SUBSETP-CAR-MEMBER))
 (112 112 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (112 112 (:REWRITE CONSP-BY-LEN))
 (107 22 (:REWRITE MEMBER-WHEN-ATOM))
 (95 19 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (76 76 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (72 72 (:TYPE-PRESCRIPTION REMOVE-DUPLICATES-EQUAL))
 (57 57 (:REWRITE DEFAULT-CDR))
 (38 38 (:REWRITE DEFAULT-CAR))
 (38 38 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (25 25 (:REWRITE SUBSETP-MEMBER . 4))
 (25 25 (:REWRITE INTERSECTP-MEMBER . 3))
 (25 25 (:REWRITE INTERSECTP-MEMBER . 2))
 (22 22 (:REWRITE SUBSETP-TRANS2))
 (22 22 (:REWRITE SUBSETP-TRANS))
 (22 22 (:REWRITE SUBSETP-MEMBER . 2))
 (22 22 (:REWRITE SUBSETP-MEMBER . 1))
 (22 22 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (19 19 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (16 16 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (16 16 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (16 16 (:LINEAR LEN-WHEN-PREFIXP))
 (15 15 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 (14 7 (:REWRITE DEFAULT-+-2))
 (8 8 (:LINEAR INDEX-OF-<-LEN))
 (7 7 (:REWRITE DEFAULT-+-1))
 )
(SET-SIZE-OF-REMOVE
 (376 8 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (299 48 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (168 3 (:REWRITE LEN-WHEN-ATOM))
 (97 24 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (93 12 (:REWRITE MEMBER-WHEN-ATOM))
 (88 8 (:REWRITE SUBSETP-CAR-MEMBER))
 (73 1 (:REWRITE REMOVE-WHEN-NON-MEMBER))
 (56 1 (:REWRITE REMOVE-WHEN-ATOM))
 (43 43 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (43 43 (:REWRITE CONSP-BY-LEN))
 (40 40 (:TYPE-PRESCRIPTION REMOVE-DUPLICATES-EQUAL))
 (40 8 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (31 31 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (24 24 (:REWRITE DEFAULT-CDR))
 (16 16 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (13 1 (:REWRITE MEMBER-OF-REMOVE-DUPLICATES-EQUAL))
 (12 12 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE SUBSETP-MEMBER . 3))
 (12 12 (:REWRITE SUBSETP-MEMBER . 2))
 (12 12 (:REWRITE SUBSETP-MEMBER . 1))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 2))
 (11 11 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (8 8 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE SUBSETP-TRANS2))
 (8 8 (:REWRITE SUBSETP-TRANS))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(LIST-EQUIV-IMPLIES-EQUAL-SET-SIZE-EQUAL-1)
(SET-SIZE-WHEN-SUBSETP)
(SET-SIZE-WHEN-SUBSETP-LINEAR)
(SET-SIZE-WHEN-STRICT-SUBSETP)
(SET-SIZE-WHEN-STRICT-SUBSETP-LINEAR)
(SET-SIZE-WHEN-SET-EQUIV
 (2760 48 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (2174 352 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (1788 5 (:REWRITE LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (1516 2 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (1242 36 (:REWRITE LEN-WHEN-ATOM))
 (1094 7 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (1008 48 (:REWRITE SUBSETP-CAR-MEMBER))
 (916 7 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (722 98 (:REWRITE SUBSETP-TRANS))
 (582 144 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (322 322 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (322 322 (:REWRITE CONSP-BY-LEN))
 (296 98 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (248 98 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (240 240 (:TYPE-PRESCRIPTION REMOVE-DUPLICATES-EQUAL))
 (240 48 (:REWRITE MEMBER-WHEN-ATOM))
 (200 5 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (200 5 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (192 192 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (144 144 (:REWRITE DEFAULT-CDR))
 (132 2 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (132 2 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (96 96 (:REWRITE DEFAULT-CAR))
 (96 96 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (67 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (67 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 (48 48 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (48 48 (:REWRITE SUBSETP-MEMBER . 4))
 (48 48 (:REWRITE SUBSETP-MEMBER . 3))
 (48 48 (:REWRITE SUBSETP-MEMBER . 2))
 (48 48 (:REWRITE SUBSETP-MEMBER . 1))
 (48 48 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (48 48 (:REWRITE INTERSECTP-MEMBER . 3))
 (48 48 (:REWRITE INTERSECTP-MEMBER . 2))
 (48 48 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (48 48 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (48 48 (:LINEAR LEN-WHEN-PREFIXP))
 (38 5 (:REWRITE LEN-WHEN-PREFIXP))
 (24 24 (:LINEAR INDEX-OF-<-LEN))
 (17 17 (:TYPE-PRESCRIPTION PREFIXP))
 (10 5 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE DEFAULT-<-1))
 (7 7 (:TYPE-PRESCRIPTION SUBLISTP))
 (7 7 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (7 7 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (7 7 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (7 7 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (2 2 (:TYPE-PRESCRIPTION LIST-EQUIV))
 (2 2 (:REWRITE SUBLISTP-COMPLETE))
 )
(SET-SIZE-WHEN-SET-EQUIV-LINEAR)
(SET-EQUIV-IMPLIES-EQUAL-SET-SIZE-EQUAL-1)
