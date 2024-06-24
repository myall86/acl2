(NTHCDR-OF-CONS
 (21 3 (:REWRITE DEFAULT-CDR))
 (16 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (11 5 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 2 (:DEFINITION NOT))
 )
(NTHCDR-OF-NIL
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(NTHCDR-OF-0
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(NTHCDR-WHEN-NOT-POSP
 (40 20 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(NTHCDR-WHEN-NOT-CONSP-CHEAP
 (38 19 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (19 19 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (10 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (6 2 (:DEFINITION POSP))
 (5 5 (:TYPE-PRESCRIPTION LEN))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (1 1 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(LEN-OF-NTHCDR
 (170 16 (:REWRITE DEFAULT-CDR))
 (102 80 (:REWRITE DEFAULT-+-2))
 (90 78 (:REWRITE DEFAULT-<-1))
 (89 78 (:REWRITE DEFAULT-<-2))
 (88 80 (:REWRITE DEFAULT-+-1))
 (66 22 (:DEFINITION POSP))
 (24 12 (:REWRITE ZP-OPEN))
 (23 23 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (22 22 (:TYPE-PRESCRIPTION POSP))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(ACL2-COUNT-OF-NTHCDR-WEAK-LINEAR
 (286 18 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (247 131 (:REWRITE DEFAULT-+-2))
 (184 131 (:REWRITE DEFAULT-+-1))
 (146 10 (:REWRITE LEN-OF-NTHCDR))
 (112 82 (:REWRITE DEFAULT-<-2))
 (105 82 (:REWRITE DEFAULT-<-1))
 (69 18 (:DEFINITION NFIX))
 (41 39 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (40 24 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (37 35 (:REWRITE FOLD-CONSTS-IN-+))
 (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
 (33 15 (:REWRITE DEFAULT-CDR))
 (25 5 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (18 18 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (15 15 (:REWRITE DEFAULT-NUMERATOR))
 (15 15 (:REWRITE DEFAULT-DENOMINATOR))
 (15 15 (:REWRITE DEFAULT-COERCE-2))
 (15 15 (:REWRITE DEFAULT-COERCE-1))
 (15 5 (:DEFINITION POSP))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (13 13 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE ZP-OPEN))
 (10 2 (:REWRITE LEN-OF-CDR))
 (7 3 (:REWRITE UNICITY-OF-0))
 (6 1 (:REWRITE ASSOCIATIVITY-OF-+))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (4 3 (:DEFINITION FIX))
 )
(ACL2-COUNT-OF-NTHCDR-STRONG-LINEAR
 (4758 263 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (4272 2332 (:REWRITE DEFAULT-+-2))
 (3200 2332 (:REWRITE DEFAULT-+-1))
 (2732 144 (:REWRITE LEN-OF-NTHCDR))
 (1332 1121 (:REWRITE DEFAULT-<-2))
 (1201 1121 (:REWRITE DEFAULT-<-1))
 (1068 288 (:DEFINITION NFIX))
 (684 684 (:REWRITE DEFAULT-UNARY-MINUS))
 (641 641 (:REWRITE FOLD-CONSTS-IN-+))
 (606 606 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (576 288 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (384 40 (:REWRITE COMMUTATIVITY-2-OF-+))
 (326 310 (:REWRITE DEFAULT-CAR))
 (320 308 (:REWRITE DEFAULT-CDR))
 (288 288 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (258 258 (:REWRITE DEFAULT-REALPART))
 (258 258 (:REWRITE DEFAULT-NUMERATOR))
 (258 258 (:REWRITE DEFAULT-IMAGPART))
 (258 258 (:REWRITE DEFAULT-DENOMINATOR))
 (258 258 (:REWRITE DEFAULT-COERCE-2))
 (258 258 (:REWRITE DEFAULT-COERCE-1))
 (255 255 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (244 52 (:REWRITE LEN-OF-CDR))
 (240 160 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (96 24 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (20 20 (:TYPE-PRESCRIPTION POSP))
 )
(NTHCDR-IFF
 (110 12 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (94 77 (:REWRITE DEFAULT-<-2))
 (77 77 (:REWRITE DEFAULT-<-1))
 (66 13 (:REWRITE DEFAULT-CDR))
 (39 13 (:DEFINITION POSP))
 (26 22 (:REWRITE DEFAULT-+-2))
 (26 22 (:REWRITE DEFAULT-+-1))
 (17 13 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (13 13 (:TYPE-PRESCRIPTION POSP))
 (12 12 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (11 11 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (10 10 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NOT-EQUAL-WHEN-<-OF-LENS)
(EQUAL-OF-NTHCDR-SAME
 (99 5 (:DEFINITION NTHCDR))
 (42 7 (:REWRITE DEFAULT-CDR))
 (30 22 (:REWRITE DEFAULT-<-1))
 (30 9 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (27 25 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (27 22 (:REWRITE DEFAULT-<-2))
 (21 18 (:REWRITE DEFAULT-+-1))
 (20 18 (:REWRITE DEFAULT-+-2))
 (20 6 (:DEFINITION POSP))
 (13 7 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (12 2 (:DEFINITION TRUE-LISTP))
 (11 11 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (9 9 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 )
(NTHCDR-WHEN-EQUAL-OF-LEN
 (27 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (26 2 (:DEFINITION TRUE-LISTP))
 (25 1 (:DEFINITION NTHCDR))
 (16 10 (:REWRITE DEFAULT-<-2))
 (14 3 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (7 7 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (6 2 (:DEFINITION POSP))
 (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (1 1 (:REWRITE ZP-OPEN))
 )
(INTEGERP-OF-ONE-LESS
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CONSP-OF-NTHCDR
 (924 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (212 169 (:REWRITE DEFAULT-+-2))
 (182 169 (:REWRITE DEFAULT-+-1))
 (163 118 (:REWRITE DEFAULT-<-2))
 (126 118 (:REWRITE DEFAULT-<-1))
 (54 18 (:DEFINITION POSP))
 (46 46 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (36 18 (:REWRITE ZP-OPEN))
 (25 25 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 24 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (18 18 (:TYPE-PRESCRIPTION POSP))
 (12 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (6 6 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(CDR-OF-NTHCDR
 (272 32 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (122 7 (:REWRITE CONSP-OF-NTHCDR))
 (105 7 (:REWRITE LEN-OF-CDR))
 (77 60 (:REWRITE DEFAULT-<-2))
 (63 21 (:DEFINITION POSP))
 (62 54 (:REWRITE DEFAULT-+-2))
 (60 60 (:REWRITE DEFAULT-<-1))
 (58 54 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (56 7 (:REWRITE EQUAL-OF-LEN-AND-0))
 (54 54 (:REWRITE DEFAULT-+-1))
 (40 40 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (32 32 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (29 17 (:REWRITE ZP-OPEN))
 (21 21 (:TYPE-PRESCRIPTION POSP))
 (18 18 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (5 5 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTHCDR-OPENER-ALT
 (361 23 (:REWRITE DEFAULT-CDR))
 (211 22 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (114 114 (:TYPE-PRESCRIPTION LEN))
 (107 7 (:REWRITE LEN-OF-CDR))
 (98 5 (:REWRITE CONSP-OF-NTHCDR))
 (63 56 (:REWRITE DEFAULT-+-2))
 (60 48 (:REWRITE DEFAULT-<-2))
 (58 7 (:REWRITE EQUAL-OF-LEN-AND-0))
 (57 19 (:DEFINITION POSP))
 (56 56 (:REWRITE DEFAULT-+-1))
 (48 48 (:REWRITE DEFAULT-<-1))
 (43 39 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (39 15 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (25 25 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (22 22 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (19 19 (:TYPE-PRESCRIPTION POSP))
 (15 5 (:DEFINITION NFIX))
 (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (5 5 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTHCDR-OPENER-ALT2
 (111 25 (:REWRITE DEFAULT-CDR))
 (58 58 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-+-1))
 (37 37 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (32 6 (:REWRITE DEFAULT-CAR))
 (25 21 (:REWRITE DEFAULT-<-2))
 (23 23 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (21 21 (:REWRITE DEFAULT-<-1))
 (20 5 (:REWRITE ZP-OPEN))
 (18 6 (:DEFINITION POSP))
 (17 17 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (17 17 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (5 4 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(NTHCDR-OPENER
 (125 8 (:REWRITE DEFAULT-CDR))
 (103 11 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (44 44 (:TYPE-PRESCRIPTION LEN))
 (42 10 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (39 3 (:REWRITE LEN-OF-CDR))
 (24 8 (:DEFINITION POSP))
 (23 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (18 3 (:REWRITE EQUAL-OF-LEN-AND-0))
 (17 14 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (15 5 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 5 (:REWRITE ZP-OPEN))
 (11 11 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (10 10 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 3 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTHCDR-OF-+-OPENER
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 )
(CAR-OF-NTHCDR
 (233 24 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (190 17 (:REWRITE CONSP-OF-NTHCDR))
 (120 87 (:REWRITE DEFAULT-<-2))
 (87 87 (:REWRITE DEFAULT-<-1))
 (56 56 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (45 15 (:DEFINITION POSP))
 (43 42 (:REWRITE DEFAULT-+-2))
 (43 22 (:REWRITE ZP-OPEN))
 (42 42 (:REWRITE DEFAULT-+-1))
 (35 7 (:REWRITE LEN-OF-CDR))
 (24 24 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (24 24 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (23 23 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTH-OF-NTHCDR
 (213 190 (:REWRITE DEFAULT-+-2))
 (206 156 (:REWRITE DEFAULT-<-2))
 (190 190 (:REWRITE DEFAULT-+-1))
 (160 156 (:REWRITE DEFAULT-<-1))
 (156 156 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (95 29 (:REWRITE DEFAULT-CAR))
 (88 88 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (59 25 (:REWRITE FOLD-CONSTS-IN-+))
 (52 52 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (48 16 (:DEFINITION POSP))
 (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (16 16 (:TYPE-PRESCRIPTION POSP))
 (9 9 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NTHCDR-OF-TRUE-LIST-FIX
 (359 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (185 5 (:DEFINITION NTH))
 (82 70 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (76 61 (:REWRITE DEFAULT-<-2))
 (70 60 (:REWRITE DEFAULT-+-2))
 (63 16 (:REWRITE DEFAULT-CAR))
 (61 61 (:REWRITE DEFAULT-<-1))
 (60 60 (:REWRITE DEFAULT-+-1))
 (50 21 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (46 46 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (39 13 (:DEFINITION POSP))
 (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (23 23 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (17 7 (:REWRITE FOLD-CONSTS-IN-+))
 (13 13 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(TRUE-LIST-FIX-OF-NTHCDR)
(3-CDRS
 (168 15 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (88 8 (:REWRITE LEN-OF-CDR))
 (36 6 (:REWRITE EQUAL-OF-LEN-AND-0))
 (32 17 (:REWRITE DEFAULT-+-2))
 (17 17 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (14 7 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (12 12 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (12 3 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 2 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 )
(NTHCDR-OF-1
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (20 2 (:REWRITE DEFAULT-CDR))
 (16 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (6 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 )
(EQUAL-OF-LEN-OF-NTHCDR-AND-LEN
 (24 13 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (15 13 (:REWRITE DEFAULT-<-2))
 (14 9 (:REWRITE DEFAULT-+-1))
 (13 9 (:REWRITE DEFAULT-+-2))
 (6 6 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(NTHCDR-OF-APPEND-GEN
 (862 862 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (624 57 (:REWRITE DEFAULT-CDR))
 (242 8 (:REWRITE CAR-OF-NTHCDR))
 (234 8 (:DEFINITION NTH))
 (197 16 (:REWRITE CONSP-OF-NTHCDR))
 (191 42 (:DEFINITION POSP))
 (162 129 (:REWRITE DEFAULT-<-2))
 (159 140 (:REWRITE DEFAULT-+-2))
 (143 140 (:REWRITE DEFAULT-+-1))
 (131 59 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (129 129 (:REWRITE DEFAULT-<-1))
 (102 24 (:REWRITE DEFAULT-CAR))
 (83 83 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (59 59 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (42 42 (:TYPE-PRESCRIPTION POSP))
 (15 15 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (13 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTHCDR-OF-CDR-COMBINE
 (62 5 (:REWRITE DEFAULT-CDR))
 (50 5 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (26 2 (:REWRITE LEN-OF-CDR))
 (20 20 (:TYPE-PRESCRIPTION LEN))
 (18 6 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (12 10 (:REWRITE DEFAULT-+-2))
 (12 2 (:REWRITE EQUAL-OF-LEN-AND-0))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 3 (:DEFINITION POSP))
 (8 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (6 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 3 (:TYPE-PRESCRIPTION POSP))
 (3 1 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(NTHCDR-OF-CDR-COMBINE-STRONG
 (85 10 (:REWRITE DEFAULT-CDR))
 (66 7 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (28 28 (:TYPE-PRESCRIPTION LEN))
 (26 2 (:REWRITE LEN-OF-CDR))
 (15 5 (:DEFINITION POSP))
 (12 10 (:REWRITE DEFAULT-+-2))
 (12 2 (:REWRITE EQUAL-OF-LEN-AND-0))
 (11 9 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 9 (:REWRITE DEFAULT-<-1))
 (9 3 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (8 8 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (8 8 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (7 7 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NTHCDR-OF-NTHCDR
 (364 25 (:REWRITE DEFAULT-CDR))
 (195 23 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (129 6 (:REWRITE CONSP-OF-NTHCDR))
 (125 125 (:TYPE-PRESCRIPTION LEN))
 (123 41 (:DEFINITION POSP))
 (90 80 (:REWRITE DEFAULT-<-2))
 (89 61 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (86 80 (:REWRITE DEFAULT-<-1))
 (76 4 (:REWRITE LEN-OF-CDR))
 (72 68 (:REWRITE DEFAULT-+-2))
 (68 68 (:REWRITE DEFAULT-+-1))
 (61 61 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (60 24 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (50 50 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (48 4 (:REWRITE EQUAL-OF-LEN-AND-0))
 (41 41 (:TYPE-PRESCRIPTION POSP))
 (36 24 (:REWRITE ZP-OPEN))
 (23 23 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (10 8 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(CDR-OF-CDR-BECOMES-NTHCDR
 (37 4 (:REWRITE DEFAULT-CDR))
 (29 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (13 1 (:REWRITE LEN-OF-CDR))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 1 (:REWRITE EQUAL-OF-LEN-AND-0))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (3 1 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (1 1 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (1 1 (:DEFINITION NOT))
 )
(NTHCDR-WHEN-<-OF-LEN
 (58 29 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (23 1 (:DEFINITION NTHCDR))
 (13 2 (:REWRITE DEFAULT-CDR))
 (10 8 (:REWRITE DEFAULT-<-1))
 (10 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (9 8 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (6 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (6 1 (:DEFINITION TRUE-LISTP))
 (4 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (3 3 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(TRUE-LISTP-OF-NTHCDR-2
 (103 85 (:REWRITE DEFAULT-<-2))
 (98 85 (:REWRITE DEFAULT-<-1))
 (51 39 (:REWRITE DEFAULT-+-2))
 (39 39 (:REWRITE DEFAULT-+-1))
 (30 10 (:DEFINITION POSP))
 (24 24 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (16 16 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (14 14 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (10 10 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TRUE-LISTP-OF-NTHCDR-3
 (28 2 (:DEFINITION TRUE-LISTP))
 (24 12 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (20 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (9 7 (:REWRITE DEFAULT-<-2))
 (9 7 (:REWRITE DEFAULT-<-1))
 (5 1 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 )
(NTHCDR-LAST-ONE
 (129 35 (:REWRITE DEFAULT-CDR))
 (66 64 (:REWRITE DEFAULT-+-2))
 (64 64 (:REWRITE DEFAULT-+-1))
 (62 62 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (55 14 (:REWRITE DEFAULT-CAR))
 (42 10 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (31 13 (:REWRITE ZP-OPEN))
 (28 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (24 8 (:DEFINITION POSP))
 (20 2 (:LINEAR LEN-OF-CDR-LINEAR))
 (19 19 (:REWRITE DEFAULT-<-2))
 (19 19 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 )
