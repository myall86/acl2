(MV-NTH-REPLACEMENT
 (11 5 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:DEFINITION NOT))
 )
(COUNT-FREE-BLOCKS
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(COUNT-FREE-BLOCKS-CORRECTNESS-1
 (82 50 (:REWRITE DEFAULT-+-2))
 (79 50 (:REWRITE DEFAULT-+-1))
 (42 36 (:REWRITE DEFAULT-CDR))
 (36 18 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (32 26 (:REWRITE DEFAULT-CAR))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COUNT-FREE-BLOCKS-CORRECTNESS-2
 (88 52 (:REWRITE DEFAULT-+-2))
 (82 52 (:REWRITE DEFAULT-+-1))
 (60 36 (:REWRITE DEFAULT-CDR))
 (38 26 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COUNT-FREE-BLOCKS-CORRECTNESS-3
 (118 77 (:REWRITE DEFAULT-+-2))
 (118 70 (:REWRITE DEFAULT-CDR))
 (98 77 (:REWRITE DEFAULT-+-1))
 (77 50 (:REWRITE DEFAULT-CAR))
 (26 17 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FIND-N-FREE-BLOCKS-HELPER
 (121 58 (:REWRITE DEFAULT-+-2))
 (81 58 (:REWRITE DEFAULT-+-1))
 (60 12 (:DEFINITION INTEGER-ABS))
 (48 12 (:REWRITE COMMUTATIVITY-OF-+))
 (48 6 (:DEFINITION LENGTH))
 (30 6 (:DEFINITION LEN))
 (23 18 (:REWRITE DEFAULT-<-2))
 (22 18 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:REWRITE ZP-OPEN))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-1
 (179 23 (:DEFINITION NTH))
 (141 9 (:LINEAR NON-NIL-NTH))
 (55 43 (:REWRITE DEFAULT-+-2))
 (52 5 (:REWRITE NON-NIL-NTH))
 (47 43 (:REWRITE DEFAULT-+-1))
 (39 38 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (22 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (16 13 (:REWRITE ZP-OPEN))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-2
 (172 16 (:LINEAR NON-NIL-NTH))
 (156 20 (:DEFINITION NTH))
 (112 81 (:REWRITE DEFAULT-+-2))
 (102 81 (:REWRITE DEFAULT-+-1))
 (71 69 (:REWRITE DEFAULT-CDR))
 (56 56 (:REWRITE DEFAULT-CAR))
 (39 27 (:REWRITE DEFAULT-<-1))
 (27 27 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 15 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (14 14 (:REWRITE ZP-OPEN))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-3
 (36 35 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (19 18 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE BOUNDED-NAT-LISTP-CORRECTNESS-1))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE SUBSETP-MEMBER . 2))
 (9 9 (:REWRITE SUBSETP-MEMBER . 1))
 (7 7 (:REWRITE ZP-OPEN))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-4
 (184 9 (:DEFINITION SUBSETP-EQUAL))
 (127 14 (:REWRITE SUBSETP-MEMBER . 3))
 (116 28 (:REWRITE SUBSETP-MEMBER . 1))
 (42 42 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (29 27 (:REWRITE DEFAULT-CAR))
 (28 28 (:REWRITE SUBSETP-MEMBER . 2))
 (25 23 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE SUBSETP-IS-TRANSITIVE))
 (17 15 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-5
 (211 11 (:DEFINITION SUBSETP-EQUAL))
 (162 43 (:REWRITE SUBSETP-MEMBER . 1))
 (140 27 (:REWRITE SUBSETP-MEMBER . 3))
 (81 78 (:REWRITE DEFAULT-CAR))
 (57 52 (:REWRITE DEFAULT-+-1))
 (54 51 (:REWRITE DEFAULT-CDR))
 (52 52 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (52 52 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE SUBSETP-MEMBER . 2))
 (32 32 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE DEFAULT-<-1))
 (27 27 (:REWRITE SUBSETP-MEMBER . 4))
 (24 24 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (23 15 (:REWRITE FOLD-CONSTS-IN-+))
 (22 22 (:REWRITE SUBSETP-IS-TRANSITIVE))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-6
 (51 20 (:REWRITE SUBSETP-MEMBER . 1))
 (38 36 (:REWRITE DEFAULT-CDR))
 (37 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (29 28 (:REWRITE DEFAULT-CAR))
 (27 2 (:DEFINITION SUBSETP-EQUAL))
 (20 20 (:REWRITE SUBSETP-MEMBER . 2))
 (18 18 (:REWRITE SUBSETP-MEMBER . 4))
 (18 18 (:REWRITE SUBSETP-MEMBER . 3))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (17 17 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (14 8 (:REWRITE ZP-OPEN))
 (10 10 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:REWRITE SUBSETP-IS-TRANSITIVE))
 )
(FIND-N-FREE-BLOCKS-HELPER-CORRECTNESS-7
 (74 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (38 36 (:REWRITE DEFAULT-CAR))
 (35 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (17 16 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE ZP-OPEN))
 )
(FIND-N-FREE-BLOCKS)
(FIND-N-FREE-BLOCKS-CORRECTNESS-1
 (7 1 (:DEFINITION LEN))
 (2 2 (:TYPE-PRESCRIPTION FIND-N-FREE-BLOCKS-HELPER))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FIND-N-FREE-BLOCKS-CORRECTNESS-2
 (22 2 (:DEFINITION COUNT-FREE-BLOCKS))
 (20 2 (:LINEAR NON-NIL-NTH))
 (18 2 (:DEFINITION NTH))
 (8 8 (:TYPE-PRESCRIPTION FIND-N-FREE-BLOCKS-HELPER))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 6 (:REWRITE DEFAULT-+-2))
 (8 6 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (5 3 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION BOOLEAN-LISTP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE MEMBER-OF-A-NAT-LIST))
 )
(FIND-N-FREE-BLOCKS-CORRECTNESS-3)
(FIND-N-FREE-BLOCKS-CORRECTNESS-5
 (37 6 (:REWRITE SUBSETP-MEMBER . 1))
 (27 2 (:DEFINITION SUBSETP-EQUAL))
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 10 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 4))
 (4 4 (:REWRITE SUBSETP-MEMBER . 3))
 (4 4 (:REWRITE SUBSETP-IS-TRANSITIVE))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (4 3 (:REWRITE DEFAULT-+-1))
 (4 1 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE MEMBER-OF-A-NAT-LIST))
 )
(FIND-N-FREE-BLOCKS-CORRECTNESS-6)
(FIND-N-FREE-BLOCKS-CORRECTNESS-7
 (9 1 (:REWRITE NON-NIL-NTH))
 (8 1 (:DEFINITION NTH))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 1 (:DEFINITION LEN))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE MEMBER-OF-A-NAT-LIST))
 )
(COUNT-FREE-BLOCKS-ALT)
(COUNT-FREE-BLOCKS-ALT-CORRECTNESS-1
 (539 368 (:REWRITE DEFAULT-+-2))
 (405 368 (:REWRITE DEFAULT-+-1))
 (260 24 (:REWRITE NON-NIL-NTH))
 (205 190 (:REWRITE DEFAULT-CDR))
 (172 26 (:REWRITE ZP-OPEN))
 (163 5 (:REWRITE BY-SLICE-YOU-MEAN-THE-WHOLE-CAKE-1))
 (141 126 (:REWRITE DEFAULT-CAR))
 (109 83 (:REWRITE DEFAULT-<-1))
 (105 83 (:REWRITE DEFAULT-<-2))
 (103 20 (:LINEAR NON-NIL-NTH))
 (47 40 (:REWRITE DEFAULT-UNARY-MINUS))
 (38 38 (:REWRITE MEMBER-OF-A-NAT-LIST))
 )
(COUNT-FREE-BLOCKS-ALT-CORRECTNESS-2
 (69 2 (:DEFINITION COUNT-FREE-BLOCKS-ALT))
 (41 4 (:DEFINITION NTH))
 (40 27 (:REWRITE DEFAULT-+-2))
 (30 27 (:REWRITE DEFAULT-+-1))
 (30 6 (:DEFINITION LEN))
 (27 4 (:REWRITE ZP-OPEN))
 (22 2 (:DEFINITION COUNT-FREE-BLOCKS))
 (20 3 (:REWRITE NON-NIL-NTH))
 (17 17 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COUNT-BEFORE-N
 (3 3 (:REWRITE BOUNDED-NAT-LISTP-CORRECTNESS-1))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(COUNT-BEFORE-N-CORRECTNESS-1
 (19 10 (:REWRITE DEFAULT-+-2))
 (15 7 (:REWRITE DEFAULT-<-2))
 (14 7 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:LINEAR NON-NIL-NTH))
 (4 1 (:DEFINITION NTH))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(COUNT-BEFORE-N-CORRECTNESS-2
 (116 59 (:REWRITE DEFAULT-+-2))
 (75 44 (:REWRITE DEFAULT-<-2))
 (68 68 (:REWRITE DEFAULT-CDR))
 (60 44 (:REWRITE DEFAULT-<-1))
 (59 59 (:REWRITE DEFAULT-+-1))
 (53 53 (:REWRITE DEFAULT-CAR))
 (53 7 (:LINEAR NON-NIL-NTH))
 (46 46 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (46 14 (:REWRITE MEMBER-OF-A-NAT-LIST))
 (46 3 (:DEFINITION NTH))
 (16 5 (:DEFINITION MEMBER-EQUAL))
 (13 2 (:REWRITE ZP-OPEN))
 (7 1 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (1 1 (:REWRITE NON-NIL-NTH))
 )
(COUNT-BEFORE-N-CORRECTNESS-3
 (54 8 (:LINEAR NON-NIL-NTH))
 (51 30 (:REWRITE DEFAULT-+-2))
 (46 11 (:DEFINITION NTH))
 (33 33 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-CDR))
 (30 30 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE SUBSETP-MEMBER . 2))
 (14 14 (:REWRITE SUBSETP-MEMBER . 1))
 (8 8 (:REWRITE BOUNDED-NAT-LISTP-CORRECTNESS-1))
 (8 2 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 )
