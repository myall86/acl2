(QUARTET-P)
(PAIR-P)
(QUARTET-LIST-P)
(NAT-LISTP-TRUE-LISTP)
(DIST-MATRIX-HELPER)
(DIST-MATRIX-P)
(INDEXP)
(INDEXP-BOUNDS)
(INDEXP-TYPE)
(NAT-LIST-P-NTH-DIST
 (56 46 (:REWRITE DEFAULT-<-2))
 (46 46 (:REWRITE DEFAULT-<-1))
 (34 34 (:REWRITE INDEXP-TYPE))
 (29 29 (:REWRITE DEFAULT-CAR))
 (29 16 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-CDR))
 (20 20 (:TYPE-PRESCRIPTION NATP))
 (16 16 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(LEN-NTH-DIST
 (131 7 (:DEFINITION NAT-LISTP))
 (45 35 (:REWRITE DEFAULT-<-2))
 (41 22 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE DEFAULT-<-1))
 (27 27 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE INDEXP-TYPE))
 (22 22 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:REWRITE ZP-OPEN))
 )
(NATP-NTH-NAT-LIST
 (83 68 (:REWRITE DEFAULT-<-2))
 (70 68 (:REWRITE DEFAULT-<-1))
 (53 53 (:REWRITE INDEXP-TYPE))
 (24 15 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INDEXP-INCR
 (10 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE INDEXP-TYPE))
 (4 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(GET-DISTANCE
 (827 403 (:REWRITE INDEXP-BOUNDS))
 (512 261 (:REWRITE DEFAULT-+-2))
 (502 502 (:REWRITE DEFAULT-CDR))
 (397 397 (:REWRITE INDEXP-TYPE))
 (379 379 (:REWRITE DEFAULT-CAR))
 (261 261 (:REWRITE DEFAULT-+-1))
 (212 212 (:REWRITE DEFAULT-<-2))
 (212 212 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION NTH))
 (1 1 (:REWRITE ZP-OPEN))
 )
(GET-DISTANCE-NATP
 (23 1 (:DEFINITION DIST-MATRIX-HELPER))
 (20 4 (:DEFINITION LEN))
 (12 2 (:DEFINITION NTH))
 (12 1 (:DEFINITION NAT-LISTP))
 (10 6 (:REWRITE DEFAULT-+-2))
 (9 1 (:DEFINITION NATP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE INDEXP-BOUNDS))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE INDEXP-TYPE))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(QUARTET-GUARD
 (25 1 (:DEFINITION DIST-MATRIX-HELPER))
 (15 3 (:DEFINITION LEN))
 (12 1 (:DEFINITION NAT-LISTP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 1 (:DEFINITION NATP))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE INDEXP-BOUNDS))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE INDEXP-TYPE))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(GET-QUARTET)
(QUARTET-P-GET-QUARTET
 (4804 2402 (:TYPE-PRESCRIPTION GET-DISTANCE-NATP))
 (326 49 (:REWRITE DEFAULT-+-2))
 (296 49 (:REWRITE DEFAULT-+-1))
 (266 38 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (150 30 (:DEFINITION LEN))
 (118 118 (:REWRITE DEFAULT-CDR))
 (115 5 (:DEFINITION DIST-MATRIX-HELPER))
 (86 21 (:REWRITE INDEXP-BOUNDS))
 (81 81 (:REWRITE DEFAULT-CAR))
 (60 16 (:REWRITE DEFAULT-<-2))
 (60 16 (:REWRITE DEFAULT-<-1))
 (60 5 (:DEFINITION NAT-LISTP))
 (45 5 (:DEFINITION NATP))
 (33 11 (:REWRITE INDEXP-INCR))
 (10 10 (:REWRITE INDEXP-TYPE))
 )
(GET-QUARTETS
 (2665 533 (:DEFINITION LEN))
 (2356 1819 (:REWRITE DEFAULT-+-2))
 (1823 1819 (:REWRITE DEFAULT-+-1))
 (1508 1508 (:REWRITE DEFAULT-CDR))
 (1106 369 (:REWRITE INDEXP-BOUNDS))
 (943 943 (:REWRITE DEFAULT-CAR))
 (876 73 (:DEFINITION NAT-LISTP))
 (657 73 (:DEFINITION NATP))
 (302 296 (:REWRITE DEFAULT-<-1))
 (298 296 (:REWRITE DEFAULT-<-2))
 (222 218 (:REWRITE DEFAULT-UNARY-MINUS))
 (147 147 (:REWRITE INDEXP-TYPE))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(QUARTET-LISTP-GET-QUARTETS
 (4451 2650 (:REWRITE DEFAULT-+-2))
 (4072 2650 (:REWRITE DEFAULT-+-1))
 (3144 1625 (:REWRITE DEFAULT-CDR))
 (2557 741 (:REWRITE INDEXP-BOUNDS))
 (2169 1082 (:REWRITE DEFAULT-CAR))
 (1895 379 (:DEFINITION LEN))
 (1476 228 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (933 581 (:REWRITE DEFAULT-<-2))
 (933 581 (:REWRITE DEFAULT-<-1))
 (768 64 (:DEFINITION NAT-LISTP))
 (320 320 (:REWRITE INDEXP-TYPE))
 )
(QUARTET-MEMBER
 (66 66 (:REWRITE DEFAULT-CAR))
 (59 59 (:REWRITE DEFAULT-CDR))
 (32 16 (:REWRITE INDEXP-BOUNDS))
 (16 16 (:TYPE-PRESCRIPTION INDEXP))
 (16 16 (:REWRITE INDEXP-TYPE))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 )
(QUARTETS-MEMBER
 (220 220 (:REWRITE DEFAULT-CDR))
 (204 204 (:REWRITE DEFAULT-CAR))
 (96 48 (:REWRITE INDEXP-BOUNDS))
 (48 48 (:TYPE-PRESCRIPTION INDEXP))
 (48 48 (:REWRITE INDEXP-TYPE))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 )
(CHECK-SIBLING
 (224 224 (:REWRITE DEFAULT-CAR))
 (152 152 (:REWRITE DEFAULT-CDR))
 (24 12 (:REWRITE INDEXP-BOUNDS))
 (12 12 (:TYPE-PRESCRIPTION INDEXP))
 (12 12 (:REWRITE INDEXP-TYPE))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(CHECK-SIBLINGS
 (225 225 (:REWRITE DEFAULT-CDR))
 (208 208 (:REWRITE DEFAULT-CAR))
 (104 52 (:REWRITE INDEXP-BOUNDS))
 (52 52 (:TYPE-PRESCRIPTION INDEXP))
 (52 52 (:REWRITE INDEXP-TYPE))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 )
(MAYBE-PAIR-AND-QUARTET-LISTP)
(MPQL-QUARTET-LISTP
 (99 99 (:REWRITE DEFAULT-CAR))
 (89 89 (:REWRITE DEFAULT-CDR))
 (64 32 (:REWRITE INDEXP-BOUNDS))
 (32 32 (:TYPE-PRESCRIPTION INDEXP))
 (32 32 (:REWRITE INDEXP-TYPE))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 )
(FIND-SIBLINGS
 (2576 56 (:DEFINITION CHECK-SIBLINGS))
 (2072 56 (:DEFINITION CHECK-SIBLING))
 (1383 1369 (:REWRITE DEFAULT-CAR))
 (1209 1195 (:REWRITE DEFAULT-CDR))
 (1008 336 (:DEFINITION MEMBER-EQUAL))
 (672 672 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (443 209 (:REWRITE INDEXP-BOUNDS))
 (230 230 (:TYPE-PRESCRIPTION INDEXP))
 (196 196 (:REWRITE INDEXP-TYPE))
 (124 111 (:REWRITE DEFAULT-<-2))
 (123 62 (:REWRITE DEFAULT-+-2))
 (114 111 (:REWRITE DEFAULT-<-1))
 (62 62 (:REWRITE DEFAULT-+-1))
 (12 4 (:REWRITE INDEXP-INCR))
 )
(FIND-SIBLINGS-QUARTETS-MEMBER
 (12167 12152 (:REWRITE DEFAULT-CAR))
 (9967 9967 (:REWRITE DEFAULT-CDR))
 (6195 49 (:REWRITE MPQL-QUARTET-LISTP))
 (4715 2293 (:REWRITE INDEXP-BOUNDS))
 (2422 2422 (:TYPE-PRESCRIPTION INDEXP))
 (2164 2164 (:REWRITE INDEXP-TYPE))
 (1321 1211 (:REWRITE DEFAULT-<-2))
 (1211 1211 (:REWRITE DEFAULT-<-1))
 (344 172 (:REWRITE DEFAULT-+-2))
 (172 172 (:REWRITE DEFAULT-+-1))
 )
(FIND-SIBLINGS-CONSP
 (10049 10049 (:REWRITE DEFAULT-CAR))
 (8425 8425 (:REWRITE DEFAULT-CDR))
 (7548 57 (:REWRITE MPQL-QUARTET-LISTP))
 (4626 1542 (:DEFINITION MEMBER-EQUAL))
 (4149 2057 (:REWRITE INDEXP-BOUNDS))
 (2092 2092 (:TYPE-PRESCRIPTION INDEXP))
 (2022 2022 (:REWRITE INDEXP-TYPE))
 (1081 1046 (:REWRITE DEFAULT-<-2))
 (1046 1046 (:REWRITE DEFAULT-<-1))
 (82 41 (:REWRITE DEFAULT-+-2))
 (41 41 (:REWRITE DEFAULT-+-1))
 )
(FIND-SIBLINGS-EQLABLEP
 (13200 11308 (:REWRITE DEFAULT-CAR))
 (10949 9609 (:REWRITE DEFAULT-CDR))
 (8796 149 (:REWRITE MPQL-QUARTET-LISTP))
 (4725 2345 (:REWRITE INDEXP-BOUNDS))
 (4626 1542 (:DEFINITION MEMBER-EQUAL))
 (4377 184 (:REWRITE FIND-SIBLINGS-CONSP))
 (2380 2380 (:TYPE-PRESCRIPTION INDEXP))
 (2310 2310 (:REWRITE INDEXP-TYPE))
 (1225 1190 (:REWRITE DEFAULT-<-2))
 (1190 1190 (:REWRITE DEFAULT-<-1))
 (82 41 (:REWRITE DEFAULT-+-2))
 (41 41 (:REWRITE DEFAULT-+-1))
 )
(REMOVE-FROM-QUARTETS
 (220 220 (:REWRITE DEFAULT-CDR))
 (204 204 (:REWRITE DEFAULT-CAR))
 (96 48 (:REWRITE INDEXP-BOUNDS))
 (48 48 (:TYPE-PRESCRIPTION INDEXP))
 (48 48 (:REWRITE INDEXP-TYPE))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 )
(REMOVE-FROM-QUARTETS-MEASURE
 (114 60 (:REWRITE DEFAULT-+-2))
 (60 60 (:REWRITE DEFAULT-+-1))
 (60 18 (:REWRITE INDEXP-BOUNDS))
 (40 40 (:TYPE-PRESCRIPTION INDEXP))
 (36 18 (:REWRITE DEFAULT-<-1))
 (33 18 (:REWRITE DEFAULT-<-2))
 (6 2 (:REWRITE INDEXP-INCR))
 )
(REMOVE-FROM-QUARTETS-QUARTET-LIST
 (296 295 (:REWRITE DEFAULT-CDR))
 (287 286 (:REWRITE DEFAULT-CAR))
 (240 120 (:REWRITE INDEXP-BOUNDS))
 (120 120 (:TYPE-PRESCRIPTION INDEXP))
 (120 120 (:REWRITE INDEXP-TYPE))
 (60 60 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE DEFAULT-<-1))
 )
(ADD-SIBLING
 (306 146 (:REWRITE DEFAULT-+-2))
 (252 28 (:DEFINITION INTEGER-ABS))
 (202 146 (:REWRITE DEFAULT-+-1))
 (151 65 (:REWRITE INDEXP-BOUNDS))
 (112 28 (:REWRITE COMMUTATIVITY-OF-+))
 (112 14 (:DEFINITION LENGTH))
 (82 82 (:TYPE-PRESCRIPTION INDEXP))
 (70 14 (:DEFINITION LEN))
 (56 26 (:REWRITE DEFAULT-*-2))
 (48 37 (:REWRITE DEFAULT-<-2))
 (46 37 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE INDEXP-TYPE))
 (42 42 (:REWRITE FOLD-CONSTS-IN-+))
 (41 41 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (27 27 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE DEFAULT-*-1))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (12 4 (:REWRITE INDEXP-INCR))
 )
(NAIVE-QUARTET-RECURSION
 (230 221 (:REWRITE DEFAULT-CAR))
 (205 202 (:REWRITE DEFAULT-CDR))
 (180 3 (:DEFINITION FIND-SIBLINGS))
 (137 67 (:REWRITE INDEXP-BOUNDS))
 (114 3 (:DEFINITION CHECK-SIBLINGS))
 (96 3 (:DEFINITION CHECK-SIBLING))
 (72 4 (:REWRITE NAT-LISTP-TRUE-LISTP))
 (70 70 (:TYPE-PRESCRIPTION INDEXP))
 (64 64 (:REWRITE INDEXP-TYPE))
 (60 4 (:DEFINITION NAT-LISTP))
 (57 22 (:DEFINITION MEMBER-EQUAL))
 (40 2 (:DEFINITION TRUE-LISTP))
 (38 35 (:REWRITE DEFAULT-<-2))
 (36 2 (:DEFINITION REMOVE-FROM-QUARTETS))
 (35 35 (:REWRITE DEFAULT-<-1))
 (32 6 (:DEFINITION LEN))
 (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (22 2 (:DEFINITION QUARTET-MEMBER))
 (20 20 (:TYPE-PRESCRIPTION NAT-LISTP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 1 (:DEFINITION REMOVE-EQUAL))
 (3 3 (:TYPE-PRESCRIPTION CHECK-SIBLINGS))
 )
(LIST-UP-TO-N-HELPER)
(LIST-UP-TO-N)
(TRUE-LISTP-REVAPPEND)
(NAIVE-QUARTET-METHOD
 (754 1 (:DEFINITION GET-QUARTETS))
 (667 1 (:DEFINITION GET-QUARTET))
 (572 51 (:REWRITE INDEXP-BOUNDS))
 (378 189 (:TYPE-PRESCRIPTION GET-DISTANCE-NATP))
 (297 6 (:REWRITE INDEXP-INCR))
 (240 13 (:DEFINITION NATP))
 (156 3 (:REWRITE GET-DISTANCE-NATP))
 (123 7 (:DEFINITION NAT-LISTP))
 (115 23 (:DEFINITION LEN))
 (93 93 (:TYPE-PRESCRIPTION INDEXP))
 (91 29 (:REWRITE DEFAULT-+-2))
 (74 38 (:REWRITE DEFAULT-<-2))
 (68 29 (:REWRITE DEFAULT-+-1))
 (52 38 (:REWRITE DEFAULT-<-1))
 (42 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (38 38 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE INDEXP-TYPE))
 (22 22 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (5 1 (:DEFINITION REVAPPEND))
 (5 1 (:DEFINITION LIST-UP-TO-N-HELPER))
 )
(NQM-TEST)
(NQM-TEST2)
