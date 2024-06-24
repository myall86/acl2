(PREFIXP-OF-NIL-ARG1)
(PREFIXP-OF-NIL-ARG2
 (20 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (4 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(PREFIXP-OF-TRUE-LIST-FIX-ARG2
 (180 9 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (155 10 (:DEFINITION TRUE-LISTP))
 (48 43 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (46 24 (:REWRITE DEFAULT-<-2))
 (43 43 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (27 27 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (26 4 (:REWRITE LEN-OF-CDR))
 (25 25 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (24 24 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 2 (:REWRITE EQUAL-OF-LEN-AND-0))
 )
(PREFIXP-OF-TRUE-LIST-FIX-ARG1
 (221 11 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (190 12 (:DEFINITION TRUE-LISTP))
 (64 57 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (62 11 (:REWRITE LEN-OF-CDR))
 (53 53 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (49 28 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (29 29 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (28 28 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-CAR))
 (14 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE EQUAL-OF-LEN-AND-0))
 (1 1 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 )
(PREFIXP-WHEN-LENS-EQUAL
 (724 32 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (634 36 (:DEFINITION TRUE-LISTP))
 (160 160 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (112 58 (:REWRITE DEFAULT-<-2))
 (91 91 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (82 68 (:REWRITE DEFAULT-CDR))
 (70 48 (:REWRITE DEFAULT-CAR))
 (64 64 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (58 58 (:REWRITE DEFAULT-<-1))
 (30 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(EQUAL-OF-PREFIXP-AND-EQUAL
 (84 84 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (67 36 (:REWRITE DEFAULT-<-2))
 (37 37 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (36 36 (:REWRITE DEFAULT-<-1))
 (19 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (14 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (6 6 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (5 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:DEFINITION FIX))
 )
(EQUAL-OF-EQUAL-AND-PREFIXP
 (84 84 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (67 36 (:REWRITE DEFAULT-<-2))
 (37 37 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (36 36 (:REWRITE DEFAULT-<-1))
 (19 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (14 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (6 6 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (5 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:DEFINITION FIX))
 )
(BOOLEANP-OF-PREFIXP)
(PREFIXP-WHEN-NOT-SHORTER
 (813 34 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (717 38 (:DEFINITION TRUE-LISTP))
 (170 170 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (136 72 (:REWRITE DEFAULT-<-2))
 (102 70 (:REWRITE DEFAULT-CDR))
 (101 52 (:REWRITE DEFAULT-CAR))
 (92 92 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (83 72 (:REWRITE DEFAULT-<-1))
 (64 64 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (33 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(<-OF-LEN-AND-LEN-WHEN-PREFIXP
 (1225 26 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (1152 30 (:DEFINITION TRUE-LISTP))
 (720 34 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (648 34 (:LINEAR LEN-OF-CDR-LINEAR))
 (404 203 (:REWRITE DEFAULT-+-2))
 (362 228 (:REWRITE DEFAULT-CDR))
 (359 359 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (217 217 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (203 203 (:REWRITE DEFAULT-+-1))
 (158 79 (:REWRITE DEFAULT-<-2))
 (153 136 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (134 134 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (90 79 (:REWRITE DEFAULT-<-1))
 (88 44 (:REWRITE DEFAULT-CAR))
 (57 57 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (56 8 (:REWRITE FOLD-CONSTS-IN-+))
 (51 51 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (24 8 (:REWRITE UNICITY-OF-0))
 (16 8 (:DEFINITION FIX))
 )
(EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP
 (540 26 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (524 47 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (469 30 (:DEFINITION TRUE-LISTP))
 (126 126 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (106 57 (:REWRITE DEFAULT-<-2))
 (63 57 (:REWRITE DEFAULT-<-1))
 (59 55 (:REWRITE DEFAULT-CDR))
 (47 47 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (47 47 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (47 43 (:REWRITE DEFAULT-CAR))
 (40 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (20 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (16 2 (:LINEAR LEN-OF-CDR-LINEAR))
 (12 12 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (7 7 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
(EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP-ALT
 (540 26 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (524 47 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (469 30 (:DEFINITION TRUE-LISTP))
 (126 126 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (106 57 (:REWRITE DEFAULT-<-2))
 (63 57 (:REWRITE DEFAULT-<-1))
 (59 55 (:REWRITE DEFAULT-CDR))
 (47 47 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (47 47 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (47 43 (:REWRITE DEFAULT-CAR))
 (40 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (20 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (16 2 (:LINEAR LEN-OF-CDR-LINEAR))
 (12 12 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (7 7 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (5 5 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
(PREFIXP-SAME
 (21 2 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (17 1 (:DEFINITION TRUE-LISTP))
 (10 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 3 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (1 1 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(PREFIXP-OF-CDR-RULE
 (2983 170 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (2529 185 (:DEFINITION TRUE-LISTP))
 (2027 1596 (:REWRITE DEFAULT-+-2))
 (2000 1207 (:REWRITE DEFAULT-<-2))
 (1596 1596 (:REWRITE DEFAULT-+-1))
 (1440 1207 (:REWRITE DEFAULT-<-1))
 (781 781 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (704 704 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (620 198 (:REWRITE FOLD-CONSTS-IN-+))
 (232 232 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (97 79 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (6 3 (:REWRITE UNICITY-OF-0))
 (3 3 (:DEFINITION FIX))
 )
(PREFIXP-WHEN-LEN-0
 (59 5 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (54 3 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (46 3 (:DEFINITION TRUE-LISTP))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 5 (:REWRITE DEFAULT-<-2))
 (8 5 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (8 1 (:REWRITE LEN-OF-CDR))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (5 5 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(DOUBLE-CDR-INDUCT)
(LEN-WHEN-EQUAL-OF-TRUE-LIST-FIX-AND-TRUE-LIST-FIX
 (758 28 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (681 33 (:DEFINITION TRUE-LISTP))
 (606 47 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (142 142 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (71 60 (:REWRITE DEFAULT-CDR))
 (70 51 (:REWRITE DEFAULT-+-2))
 (57 37 (:REWRITE DEFAULT-<-2))
 (51 51 (:REWRITE DEFAULT-+-1))
 (47 47 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (46 46 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (37 37 (:REWRITE DEFAULT-<-1))
 (34 16 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (32 32 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (22 20 (:REWRITE DEFAULT-CAR))
 (16 5 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (4 4 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP-ALT))
 (4 4 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
(PREFIXP-WHEN-LONGER
 (1079 52 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (929 52 (:DEFINITION TRUE-LISTP))
 (254 254 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (228 88 (:REWRITE DEFAULT-CDR))
 (139 139 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (96 42 (:REWRITE DEFAULT-CAR))
 (91 55 (:REWRITE DEFAULT-<-2))
 (79 69 (:REWRITE DEFAULT-+-2))
 (69 69 (:REWRITE DEFAULT-+-1))
 (60 55 (:REWRITE DEFAULT-<-1))
 (46 46 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (25 25 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (24 8 (:REWRITE EQUAL-OF-LEN-AND-0))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (4 4 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE PREFIXP-OF-CDR-RULE))
 )
(NOT-PREFIXP-WHEN-NOT-EQUAL-OF-NTH-AND-NTH
 (208 45 (:REWRITE DEFAULT-CAR))
 (141 8 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (125 70 (:REWRITE DEFAULT-<-2))
 (100 8 (:REWRITE PREFIXP-WHEN-LEN-0))
 (79 70 (:REWRITE DEFAULT-<-1))
 (68 68 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (42 11 (:REWRITE DEFAULT-CDR))
 (30 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE ZP-OPEN))
 (19 19 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (8 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (2 2 (:REWRITE PREFIXP-OF-CDR-RULE))
 )
(PREFIXP-OF-TAKE-ARG1-SAME
 (207 9 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (202 9 (:REWRITE PREFIXP-WHEN-LONGER))
 (130 9 (:REWRITE PREFIXP-WHEN-LEN-0))
 (118 103 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (60 15 (:REWRITE EQUAL-OF-LEN-AND-0))
 (57 36 (:REWRITE DEFAULT-<-2))
 (54 40 (:REWRITE DEFAULT-+-2))
 (54 36 (:REWRITE DEFAULT-<-1))
 (53 24 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (40 40 (:REWRITE DEFAULT-+-1))
 (35 14 (:REWRITE DEFAULT-CDR))
 (26 11 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (14 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (12 2 (:REWRITE LEN-OF-CONS))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE PREFIXP-OF-CDR-RULE))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (3 3 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP
 (389 17 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (302 37 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (259 38 (:REWRITE LEN-OF-CDR))
 (247 17 (:REWRITE PREFIXP-WHEN-LEN-0))
 (112 62 (:REWRITE DEFAULT-<-2))
 (97 28 (:REWRITE EQUAL-OF-LEN-AND-0))
 (94 47 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (85 62 (:REWRITE DEFAULT-<-1))
 (73 46 (:REWRITE DEFAULT-+-2))
 (47 47 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (47 47 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (46 46 (:REWRITE DEFAULT-+-1))
 (37 37 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (37 37 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (35 29 (:REWRITE DEFAULT-CAR))
 (18 15 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE PREFIXP-OF-CDR-RULE))
 (3 3 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(PREFIXP-OF-APPEND-SAME
 (219 7 (:REWRITE PREFIXP-WHEN-LEN-0))
 (206 103 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (171 18 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (169 7 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (169 7 (:REWRITE PREFIXP-WHEN-LONGER))
 (137 77 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (123 14 (:REWRITE EQUAL-OF-LEN-AND-0))
 (103 103 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (103 103 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (90 12 (:REWRITE LEN-OF-CDR))
 (53 28 (:REWRITE DEFAULT-<-2))
 (39 28 (:REWRITE DEFAULT-<-1))
 (30 21 (:REWRITE DEFAULT-CAR))
 (28 15 (:REWRITE DEFAULT-+-2))
 (24 3 (:REWRITE LEN-OF-CONS))
 (18 18 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (18 18 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (15 15 (:REWRITE DEFAULT-+-1))
 (11 8 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (2 2 (:REWRITE PREFIXP-OF-CDR-RULE))
 )
(PREFIXP-OF-APPEND-AND-APPEND-SAME
 (559 22 (:REWRITE PREFIXP-WHEN-LEN-0))
 (557 22 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (557 22 (:REWRITE PREFIXP-WHEN-LONGER))
 (429 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (400 50 (:REWRITE LEN-OF-CDR))
 (357 237 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (281 108 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (280 60 (:REWRITE EQUAL-OF-LEN-AND-0))
 (188 94 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (156 78 (:REWRITE DEFAULT-<-2))
 (120 78 (:REWRITE DEFAULT-<-1))
 (110 55 (:REWRITE DEFAULT-+-2))
 (94 94 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (94 94 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (55 55 (:REWRITE DEFAULT-+-1))
 (46 46 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (46 46 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (40 5 (:REWRITE LEN-OF-CONS))
 (34 28 (:REWRITE DEFAULT-CAR))
 (32 26 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (10 10 (:REWRITE PREFIXP-OF-CDR-RULE))
 (3 3 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 )
(EQUAL-OF-APPEND-AND-TRUE-LIST-FIX-SAME
 (496 26 (:DEFINITION TRUE-LISTP))
 (449 36 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (361 15 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (213 213 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (200 8 (:REWRITE APPEND-TO-NIL))
 (92 13 (:REWRITE LEN-OF-CDR))
 (68 36 (:REWRITE DEFAULT-<-2))
 (60 32 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (59 59 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (47 43 (:REWRITE DEFAULT-CDR))
 (36 36 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (36 36 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (22 18 (:REWRITE DEFAULT-CAR))
 (22 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (13 13 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (9 9 (:REWRITE EQUAL-OF-LEN-AND-0))
 )
(PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP
 (25 1 (:REWRITE PREFIXP-WHEN-LEN-0))
 (21 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (17 1 (:REWRITE EQUAL-OF-LEN-AND-0))
 (12 1 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (12 1 (:REWRITE PREFIXP-WHEN-LONGER))
 (7 7 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (7 4 (:REWRITE DEFAULT-<-2))
 (5 5 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (5 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 )
(PREFIXP-OF-APPEND-ARG1-FW-1
 (16 1 (:DEFINITION BINARY-APPEND))
 (10 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (4 1 (:REWRITE PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP))
 (3 3 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (2 2 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (1 1 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 )
(PREFIXP-OF-APPEND-ARG1-FW-2
 (459 44 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (331 15 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (294 4 (:REWRITE TAKE-DOES-NOTHING))
 (291 16 (:DEFINITION TRUE-LISTP))
 (245 1 (:REWRITE LEN-WHEN-EQUAL-OF-TRUE-LIST-FIX-AND-TRUE-LIST-FIX))
 (235 7 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (152 119 (:REWRITE DEFAULT-+-2))
 (133 119 (:REWRITE DEFAULT-+-1))
 (119 14 (:REWRITE COMMUTATIVITY-OF-+))
 (114 9 (:REWRITE PREFIXP-WHEN-LEN-0))
 (89 89 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (84 7 (:REWRITE COMMUTATIVITY-2-OF-+))
 (78 2 (:REWRITE LEN-OF-CONS))
 (77 54 (:REWRITE DEFAULT-<-2))
 (68 54 (:REWRITE DEFAULT-CDR))
 (63 54 (:REWRITE DEFAULT-<-1))
 (56 8 (:REWRITE EQUAL-OF-LEN-AND-0))
 (54 26 (:REWRITE FOLD-CONSTS-IN-+))
 (49 35 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (42 42 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (38 19 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (35 11 (:REWRITE PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP))
 (26 26 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (19 19 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (8 8 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (7 1 (:REWRITE EQUAL-OF-CONS-AND-CONS))
 (6 2 (:REWRITE UNICITY-OF-0))
 (4 4 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 (4 2 (:DEFINITION FIX))
 (2 2 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (1 1 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP-ALT))
 (1 1 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
(PREFIXP-OF-APPEND-ARG1-FW-3
 (1451 40 (:REWRITE LEN-OF-NTHCDR))
 (916 20 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (780 71 (:REWRITE COMMUTATIVITY-2-OF-+))
 (565 491 (:REWRITE DEFAULT-+-2))
 (515 491 (:REWRITE DEFAULT-+-1))
 (272 215 (:REWRITE DEFAULT-<-2))
 (250 215 (:REWRITE DEFAULT-<-1))
 (130 31 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (85 21 (:REWRITE EQUAL-OF-LEN-AND-0))
 (78 2 (:REWRITE LEN-OF-CONS))
 (77 71 (:REWRITE DEFAULT-UNARY-MINUS))
 (69 43 (:REWRITE DEFAULT-CAR))
 (61 61 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (60 30 (:REWRITE PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP))
 (56 12 (:DEFINITION POSP))
 (55 55 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (52 26 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (48 8 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (31 2 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (26 26 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (25 2 (:DEFINITION TRUE-LISTP))
 (24 5 (:REWRITE ZP-OPEN))
 (20 20 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (15 15 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (15 15 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 6 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (9 6 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (8 8 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (6 6 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 )
(PREFIXP-OF-APPEND-ARG1-BACK
 (404 106 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (290 6 (:REWRITE TAKE-DOES-NOTHING))
 (251 8 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (251 8 (:REWRITE PREFIXP-WHEN-LONGER))
 (234 16 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (226 8 (:REWRITE PREFIXP-WHEN-LEN-0))
 (216 6 (:REWRITE LEN-WHEN-EQUAL-OF-TRUE-LIST-FIX-AND-TRUE-LIST-FIX))
 (194 12 (:DEFINITION TRUE-LISTP))
 (152 22 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (122 65 (:REWRITE DEFAULT-<-1))
 (114 65 (:REWRITE DEFAULT-<-2))
 (98 98 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (79 7 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (66 36 (:REWRITE DEFAULT-+-2))
 (63 36 (:REWRITE DEFAULT-+-1))
 (60 3 (:REWRITE EQUAL-OF-LEN-AND-0))
 (54 12 (:REWRITE COMMUTATIVITY-OF-+))
 (54 6 (:DEFINITION POSP))
 (27 27 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (25 12 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (21 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 8 (:REWRITE PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP))
 (14 14 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (7 7 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (7 7 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (7 7 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP-ALT))
 (6 6 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP))
 (4 4 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 (3 3 (:REWRITE <-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
(PREFIXP-OF-APPEND-ARG1
 (210 6 (:REWRITE PREFIXP-WHEN-LEN-0))
 (206 6 (:REWRITE PREFIXP-WHEN-NOT-SHORTER))
 (206 6 (:REWRITE PREFIXP-WHEN-LONGER))
 (180 6 (:REWRITE LEN-OF-NTHCDR))
 (102 12 (:DEFINITION NFIX))
 (87 2 (:REWRITE TAKE-DOES-NOTHING))
 (77 35 (:REWRITE DEFAULT-<-1))
 (75 12 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (73 6 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (70 35 (:REWRITE DEFAULT-<-2))
 (68 4 (:REWRITE EQUAL-OF-LEN-AND-0))
 (59 4 (:DEFINITION TRUE-LISTP))
 (57 57 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (56 8 (:REWRITE LEN-OF-APPEND))
 (51 2 (:REWRITE LEN-WHEN-EQUAL-OF-TRUE-LIST-FIX-AND-TRUE-LIST-FIX))
 (44 22 (:REWRITE DEFAULT-+-2))
 (44 22 (:REWRITE DEFAULT-+-1))
 (30 6 (:REWRITE COMMUTATIVITY-OF-+))
 (27 27 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (26 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 6 (:REWRITE PREFIX-WHEN-NOT-CONSP-ARG1-CHEAP))
 (18 2 (:DEFINITION POSP))
 (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (12 12 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (12 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (4 4 (:REWRITE PREFIX-OF-APPEND-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (2 2 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP-ALT))
 (2 2 (:REWRITE EQUAL-OF-LEN-AND-LEN-WHEN-PREFIXP))
 )
