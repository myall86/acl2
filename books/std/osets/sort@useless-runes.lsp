(SET::MEMBER-OF-APPEND
 (168 24 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (144 24 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (120 48 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (96 96 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (82 31 (:REWRITE DEFAULT-CDR))
 (72 72 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (62 50 (:REWRITE DEFAULT-CAR))
 (60 30 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (48 48 (:REWRITE SET::IN-SET))
 (30 30 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (30 30 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (18 6 (:REWRITE CAR-OF-APPEND))
 (15 15 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (12 12 (:REWRITE CONSP-OF-APPEND))
 (6 6 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(SET::MEMBER-OF-LIST-FIX)
(SET::MEMBER-OF-REV
 (301 43 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (258 43 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (215 86 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (172 172 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (138 57 (:REWRITE DEFAULT-CAR))
 (130 49 (:REWRITE DEFAULT-CDR))
 (129 129 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (86 86 (:REWRITE SET::IN-SET))
 (48 3 (:DEFINITION BINARY-APPEND))
 (24 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (6 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(SET::APPEND-ASSOC
 (45 18 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (24 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(SET::HALVE-LIST-AUX
 (172 82 (:REWRITE DEFAULT-+-2))
 (110 82 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (40 40 (:REWRITE DEFAULT-CDR))
 (27 20 (:REWRITE DEFAULT-<-2))
 (25 20 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(SET::HALVE-LIST)
(SET::HALVE-LIST-AUX-WHEN-NOT-CONSP)
(SET::HALVE-LIST-AUX-WHEN-NOT-CONSP-OF-CDR
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 )
(SET::HALVE-LIST-AUX-LEN-1
 (288 142 (:REWRITE DEFAULT-+-2))
 (162 142 (:REWRITE DEFAULT-+-1))
 (65 30 (:REWRITE DEFAULT-<-2))
 (60 30 (:REWRITE DEFAULT-<-1))
 (17 17 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (9 9 (:REWRITE DEFAULT-CAR))
 )
(SET::HALVE-LIST-AUX-LEN-2
 (165 85 (:REWRITE DEFAULT-+-2))
 (85 85 (:REWRITE DEFAULT-+-1))
 (59 30 (:REWRITE DEFAULT-<-1))
 (42 30 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CDR-CONS))
 )
(SET::HALVE-LIST-AUX-APPEND-PROPERTY
 (127 73 (:REWRITE DEFAULT-CDR))
 (77 23 (:REWRITE DEFAULT-CAR))
 (57 3 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (54 3 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (51 27 (:REWRITE DEFAULT-+-2))
 (27 27 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE REV-WHEN-NOT-CONSP))
 (15 8 (:REWRITE DEFAULT-<-1))
 (15 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (13 8 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (10 10 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (9 9 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 )
(SET::HALVE-LIST-CORRECT
 (18 2 (:DEFINITION SET::HALVE-LIST-AUX))
 (14 14 (:REWRITE DEFAULT-CDR))
 (11 11 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (10 2 (:DEFINITION LEN))
 (8 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP-OF-CDR))
 (4 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE REV-WHEN-NOT-CONSP))
 )
(SET::HALVE-LIST-LEN-1
 (31 16 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-CDR))
 (18 2 (:DEFINITION SET::HALVE-LIST-AUX))
 (17 16 (:REWRITE DEFAULT-+-1))
 (6 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP-OF-CDR))
 (6 3 (:REWRITE DEFAULT-<-2))
 (6 3 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(SET::HALVE-LIST-LEN-2
 (28 14 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-CDR))
 (18 2 (:DEFINITION SET::HALVE-LIST-AUX))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP-OF-CDR))
 (4 4 (:REWRITE SET::HALVE-LIST-AUX-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 )
(SET::HALVE-LIST-MEMBERSHIP-PROPERTY)
(SET::MERGESORT-EXEC
 (42 21 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 )
(SET::MERGESORT-EXEC-SET
 (21 3 (:REWRITE SET::INSERT-IDENTITY))
 (12 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 8 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (6 6 (:REWRITE SET::SUBSET-IN))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE SET::IN-TAIL))
 (5 5 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:DEFINITION SET::IN))
 )
(SET::MERGESORT-MEMBERSHIP-2
 (2725 57 (:DEFINITION SET::IN))
 (2692 32 (:DEFINITION SET::SUBSET))
 (1946 166 (:REWRITE SET::IN-TAIL))
 (1174 106 (:REWRITE SET::SUBSET-IN-2))
 (904 85 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (477 69 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (409 69 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (340 136 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (249 153 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (246 82 (:REWRITE SET::EMPTY-SUBSET-2))
 (216 82 (:REWRITE SET::EMPTY-SUBSET))
 (176 176 (:REWRITE SET::SUBSET-TRANSITIVE))
 (137 137 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (136 136 (:REWRITE SET::IN-SET))
 (85 85 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (82 82 (:REWRITE SET::PICK-A-POINT-SUBSET-STRATEGY))
 (37 37 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL-2))
 (32 32 (:REWRITE SET::PICK-A-POINT-SUBSET-CONSTRAINT-HELPER))
 (28 28 (:REWRITE DEFAULT-CDR))
 (21 3 (:REWRITE SET::INSERT-IDENTITY))
 (18 18 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE SET::INSERT-WHEN-EMPTY))
 )
(SET::MERGESORT-MEMBERSHIP-1
 (1520 15 (:DEFINITION SET::SUBSET))
 (1434 29 (:DEFINITION SET::IN))
 (1255 166 (:REWRITE SET::SUBSET-IN))
 (1110 82 (:REWRITE SET::IN-TAIL))
 (566 39 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (266 38 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (244 13 (:REWRITE SET::MERGESORT-MEMBERSHIP-2))
 (228 38 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (190 76 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (159 53 (:REWRITE SET::EMPTY-SUBSET-2))
 (123 53 (:REWRITE SET::EMPTY-SUBSET))
 (115 71 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (110 110 (:REWRITE SET::SUBSET-TRANSITIVE))
 (76 76 (:REWRITE SET::IN-SET))
 (64 64 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (53 53 (:REWRITE SET::PICK-A-POINT-SUBSET-STRATEGY))
 (39 39 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (21 3 (:REWRITE SET::INSERT-IDENTITY))
 (19 19 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL-2))
 (17 17 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE SET::PICK-A-POINT-SUBSET-CONSTRAINT-HELPER))
 (3 3 (:REWRITE SET::INSERT-WHEN-EMPTY))
 )
(SET::MERGESORT-EXEC-MEMBERSHIP
 (152 10 (:DEFINITION SET::IN))
 (133 2 (:DEFINITION MEMBER-EQUAL))
 (72 16 (:REWRITE SET::IN-TAIL))
 (55 5 (:DEFINITION SET::MERGESORT-EXEC))
 (49 7 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (42 7 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (38 38 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (35 14 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (35 5 (:REWRITE SET::INSERT-IDENTITY))
 (32 32 (:REWRITE SET::SUBSET-IN))
 (28 28 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (14 14 (:REWRITE SET::IN-SET))
 (11 7 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (7 7 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE SET::NEVER-IN-EMPTY))
 (5 5 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (5 5 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (5 5 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (4 4 (:REWRITE SET::SUBSET-IN-2))
 (1 1 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL-2))
 )
(SET::MERGESORT-EXEC
 (7 1 (:REWRITE SET::INSERT-IDENTITY))
 (2 2 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (2 2 (:REWRITE SET::SUBSET-IN))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE SET::IN-TAIL))
 (1 1 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:DEFINITION SET::IN))
 )
(SET::MERGESORT)
(SET::MERGESORT-SET
 (102 3 (:REWRITE SET::INSERT-IDENTITY))
 (81 3 (:DEFINITION SET::IN))
 (27 27 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (24 9 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (21 21 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (21 3 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (18 3 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (12 12 (:REWRITE SET::SUBSET-IN))
 (12 6 (:REWRITE SET::IN-TAIL))
 (10 10 (:REWRITE SET::IN-SET))
 (9 3 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (3 3 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (3 3 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (3 3 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (3 3 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(SET::IN-MERGESORT
 (1028 33 (:DEFINITION SET::IN))
 (566 78 (:REWRITE SET::IN-TAIL))
 (407 11 (:REWRITE SET::INSERT-IDENTITY))
 (300 42 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (258 42 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (210 84 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (168 168 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (96 54 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (84 84 (:REWRITE SET::IN-SET))
 (82 1 (:REWRITE SET::SUBSET-INSERT-X))
 (65 33 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (55 55 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (33 33 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (33 11 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (24 24 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL-2))
 (10 10 (:REWRITE SET::SUBSET-TRANSITIVE))
 (9 1 (:DEFINITION SET::SUBSET))
 (3 1 (:REWRITE SET::EMPTY-SUBSET-2))
 (1 1 (:REWRITE SET::PICK-A-POINT-SUBSET-STRATEGY))
 (1 1 (:REWRITE SET::PICK-A-POINT-SUBSET-CONSTRAINT-HELPER))
 (1 1 (:REWRITE SET::HEAD-UNIQUE))
 (1 1 (:REWRITE SET::EMPTY-SUBSET))
 )
(SET::MERGESORT
 (823 43 (:REWRITE SET::INSERT-IDENTITY))
 (600 14 (:DEFINITION SET::SUBSET))
 (527 17 (:DEFINITION SET::MERGESORT))
 (489 69 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (345 138 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (139 139 (:REWRITE SET::IN-SET))
 (107 107 (:REWRITE DEFAULT-CDR))
 (102 102 (:REWRITE DEFAULT-CAR))
 (101 43 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (90 36 (:REWRITE SET::EMPTY-SUBSET))
 (74 36 (:REWRITE SET::EMPTY-SUBSET-2))
 (52 52 (:REWRITE SET::SUBSET-IN))
 (28 14 (:REWRITE SET::IN-TAIL))
 (22 22 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (22 22 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (22 22 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (16 16 (:REWRITE SET::SUBSET-IN-2))
 (14 14 (:DEFINITION SET::IN))
 (4 4 (:REWRITE SET::INSERT-NEVER-EMPTY))
 )
(SET::MERGESORT-SET-IDENTITY
 (6973 134 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (6332 177 (:REWRITE SET::IN-TAIL))
 (4844 44 (:REWRITE SET::INSERT-IDENTITY))
 (2736 2736 (:REWRITE DEFAULT-CDR))
 (1496 1496 (:REWRITE DEFAULT-CAR))
 (1272 104 (:REWRITE SET::SUBSET-IN-2))
 (1102 361 (:REWRITE SET::SFIX-WHEN-EMPTY))
 (918 184 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (745 175 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (705 175 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (447 20 (:DEFINITION SET::SFIX))
 (289 47 (:REWRITE SET::NEVER-IN-EMPTY))
 (130 23 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (1 1 (:REWRITE SET::INSERT-NEVER-EMPTY))
 )
