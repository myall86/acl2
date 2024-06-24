(EQUAL-LEN-0
 (9 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(NTHCDR-WHEN-ZP
 (38 19 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (19 19 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE ZP-OPEN))
 )
(NTHCDR-WHEN-ATOM
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 )
(NTHCDR-OF-CONS
 (44 6 (:REWRITE NTHCDR-WHEN-ZP))
 (42 11 (:REWRITE ZP-OPEN))
 (17 7 (:DEFINITION NOT))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (7 7 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE NTHCDR-WHEN-ATOM))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(LEMMA
 (51 38 (:REWRITE DEFAULT-<-1))
 (41 16 (:REWRITE ZP-OPEN))
 (38 38 (:REWRITE DEFAULT-<-2))
 (38 25 (:REWRITE DEFAULT-+-2))
 (27 25 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TRUE-LISTP-OF-NTHCDR
 (24 12 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (17 1 (:DEFINITION NTHCDR))
 (12 2 (:REWRITE NTHCDR-WHEN-ZP))
 (10 2 (:DEFINITION LEN))
 (8 6 (:REWRITE DEFAULT-<-1))
 (8 3 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION TRUE-LISTP))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (3 1 (:DEFINITION NOT))
 (2 2 (:REWRITE NTHCDR-WHEN-ATOM))
 )
(LEN-OF-NTHCDR
 (203 129 (:REWRITE DEFAULT-+-2))
 (148 129 (:REWRITE DEFAULT-+-1))
 (111 33 (:REWRITE ZP-OPEN))
 (87 67 (:REWRITE DEFAULT-<-1))
 (67 67 (:REWRITE DEFAULT-<-2))
 (48 48 (:REWRITE DEFAULT-CDR))
 (28 28 (:TYPE-PRESCRIPTION ZP))
 (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CONSP-OF-NTHCDR
 (190 95 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (102 6 (:DEFINITION NTHCDR))
 (95 95 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (70 44 (:REWRITE DEFAULT-+-2))
 (48 44 (:REWRITE DEFAULT-+-1))
 (48 18 (:REWRITE ZP-OPEN))
 (46 36 (:REWRITE DEFAULT-<-2))
 (42 36 (:REWRITE DEFAULT-<-1))
 (29 29 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE NTHCDR-WHEN-ATOM))
 (18 18 (:TYPE-PRESCRIPTION ZP))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(OPEN-SMALL-NTHCDR
 (44 6 (:REWRITE NTHCDR-WHEN-ZP))
 (42 11 (:REWRITE ZP-OPEN))
 (17 7 (:DEFINITION NOT))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (7 7 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE NTHCDR-WHEN-ATOM))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE DEFAULT-CDR))
 )
(ACL2-COUNT-OF-CDR
 (100 48 (:REWRITE DEFAULT-+-2))
 (67 48 (:REWRITE DEFAULT-+-1))
 (40 10 (:REWRITE COMMUTATIVITY-OF-+))
 (40 10 (:DEFINITION INTEGER-ABS))
 (40 5 (:DEFINITION LENGTH))
 (25 5 (:DEFINITION LEN))
 (17 13 (:REWRITE DEFAULT-<-2))
 (16 13 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 5 (:TYPE-PRESCRIPTION LEN))
 (5 5 (:REWRITE DEFAULT-REALPART))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (5 5 (:REWRITE DEFAULT-IMAGPART))
 (5 5 (:REWRITE DEFAULT-DENOMINATOR))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(ACL2-COUNT-OF-CDR-WEAK
 (133 66 (:REWRITE DEFAULT-+-2))
 (91 66 (:REWRITE DEFAULT-+-1))
 (64 16 (:REWRITE COMMUTATIVITY-OF-+))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (25 20 (:REWRITE DEFAULT-<-1))
 (23 20 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:REWRITE DEFAULT-CAR))
 (3 3 (:LINEAR ACL2-COUNT-OF-CDR))
 )
(ACL2-COUNT-OF-CONSP-POSITIVE
 (34 20 (:REWRITE DEFAULT-+-2))
 (26 20 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(ACL2-COUNT-OF-NTHCDR-REWRITE
 (837 66 (:REWRITE CONSP-OF-NTHCDR))
 (762 396 (:REWRITE DEFAULT-+-2))
 (521 107 (:DEFINITION LEN))
 (507 396 (:REWRITE DEFAULT-+-1))
 (438 31 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 (362 152 (:REWRITE DEFAULT-CDR))
 (304 243 (:REWRITE DEFAULT-<-2))
 (296 148 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (296 74 (:DEFINITION INTEGER-ABS))
 (296 37 (:DEFINITION LENGTH))
 (266 243 (:REWRITE DEFAULT-<-1))
 (266 42 (:REWRITE DEFAULT-CAR))
 (259 259 (:TYPE-PRESCRIPTION LEN))
 (189 63 (:DEFINITION NFIX))
 (148 148 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (82 82 (:REWRITE FOLD-CONSTS-IN-+))
 (74 74 (:REWRITE DEFAULT-UNARY-MINUS))
 (37 37 (:REWRITE DEFAULT-REALPART))
 (37 37 (:REWRITE DEFAULT-NUMERATOR))
 (37 37 (:REWRITE DEFAULT-IMAGPART))
 (37 37 (:REWRITE DEFAULT-DENOMINATOR))
 (37 37 (:REWRITE DEFAULT-COERCE-2))
 (37 37 (:REWRITE DEFAULT-COERCE-1))
 (17 2 (:LINEAR ACL2-COUNT-OF-CDR))
 )
(ACL2-COUNT-OF-NTHCDR-LINEAR
 (116 2 (:DEFINITION ACL2-COUNT))
 (51 4 (:REWRITE CONSP-OF-NTHCDR))
 (31 16 (:REWRITE DEFAULT-+-2))
 (25 5 (:DEFINITION LEN))
 (23 8 (:REWRITE DEFAULT-CDR))
 (20 16 (:REWRITE DEFAULT-+-1))
 (20 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 (18 9 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (18 2 (:REWRITE DEFAULT-CAR))
 (16 1 (:DEFINITION NTHCDR))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (14 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 4 (:DEFINITION NFIX))
 (11 3 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 2 (:REWRITE NTHCDR-WHEN-ZP))
 (8 2 (:DEFINITION INTEGER-ABS))
 (8 1 (:DEFINITION LENGTH))
 (7 2 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE NTHCDR-WHEN-ATOM))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE OPEN-SMALL-NTHCDR))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(ACL2-COUNT-OF-NTHCDR-LINEAR-WEAK
 (408 38 (:REWRITE CONSP-OF-NTHCDR))
 (320 160 (:REWRITE DEFAULT-+-2))
 (222 54 (:DEFINITION LEN))
 (210 160 (:REWRITE DEFAULT-+-1))
 (155 125 (:REWRITE DEFAULT-<-2))
 (148 88 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (144 125 (:REWRITE DEFAULT-<-1))
 (143 53 (:REWRITE DEFAULT-CDR))
 (114 38 (:DEFINITION NFIX))
 (105 9 (:REWRITE DEFAULT-CAR))
 (60 60 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (56 16 (:LINEAR ACL2-COUNT-OF-NTHCDR-LINEAR))
 (42 27 (:REWRITE ZP-OPEN))
 (34 34 (:REWRITE FOLD-CONSTS-IN-+))
 (30 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (28 5 (:REWRITE NTHCDR-WHEN-ZP))
 (15 15 (:REWRITE DEFAULT-NUMERATOR))
 (15 15 (:REWRITE DEFAULT-DENOMINATOR))
 (15 15 (:REWRITE DEFAULT-COERCE-2))
 (15 15 (:REWRITE DEFAULT-COERCE-1))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE OPEN-SMALL-NTHCDR))
 )
(CAR-OF-NTHCDR
 (108 13 (:REWRITE DEFAULT-CAR))
 (75 5 (:REWRITE CONSP-OF-NTHCDR))
 (39 34 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-+-1))
 (29 24 (:REWRITE DEFAULT-<-2))
 (25 25 (:TYPE-PRESCRIPTION LEN))
 (25 5 (:DEFINITION LEN))
 (24 24 (:REWRITE DEFAULT-<-1))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (15 5 (:DEFINITION NFIX))
 (6 6 (:REWRITE OPEN-SMALL-NTHCDR))
 )
(NTHCDR-OF-CDR
 (115 5 (:REWRITE CONSP-OF-NTHCDR))
 (83 27 (:REWRITE ZP-OPEN))
 (65 9 (:DEFINITION LEN))
 (46 33 (:REWRITE DEFAULT-+-2))
 (37 32 (:REWRITE DEFAULT-<-2))
 (33 33 (:TYPE-PRESCRIPTION LEN))
 (33 33 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE DEFAULT-<-1))
 (30 8 (:REWRITE COMMUTATIVITY-OF-+))
 (16 16 (:REWRITE OPEN-SMALL-NTHCDR))
 (15 5 (:DEFINITION NFIX))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(NTHCDR-WHEN-LESS-THAN-LEN-UNDER-IFF
 (86 20 (:REWRITE DEFAULT-CDR))
 (75 21 (:REWRITE ZP-OPEN))
 (62 3 (:REWRITE CONSP-OF-NTHCDR))
 (58 40 (:REWRITE DEFAULT-+-2))
 (50 41 (:REWRITE DEFAULT-<-2))
 (41 41 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE NTHCDR-WHEN-ATOM))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(NTHCDR-OF-NTHCDR
 (926 102 (:REWRITE DEFAULT-CDR))
 (822 38 (:REWRITE CONSP-OF-NTHCDR))
 (451 105 (:REWRITE ZP-OPEN))
 (325 87 (:REWRITE NTHCDR-WHEN-ATOM))
 (288 243 (:REWRITE DEFAULT-<-2))
 (274 274 (:TYPE-PRESCRIPTION LEN))
 (269 217 (:REWRITE DEFAULT-+-2))
 (259 7 (:REWRITE LEN-OF-NTHCDR))
 (251 243 (:REWRITE DEFAULT-<-1))
 (231 217 (:REWRITE DEFAULT-+-1))
 (190 38 (:DEFINITION LEN))
 (28 7 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(APPEND-OF-TAKE-AND-NTHCDR
 (531 177 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (85 9 (:REWRITE TAKE-OF-LEN-FREE))
 (76 27 (:REWRITE DEFAULT-CDR))
 (74 25 (:REWRITE ZP-OPEN))
 (52 36 (:REWRITE DEFAULT-+-2))
 (48 41 (:REWRITE DEFAULT-<-1))
 (43 41 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (28 2 (:REWRITE CONSP-OF-NTHCDR))
 (26 4 (:REWRITE CAR-OF-TAKE))
 (21 8 (:REWRITE CONSP-OF-TAKE))
 (14 14 (:REWRITE NTHCDR-WHEN-ATOM))
 (10 9 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(NTHCDR-OF-LIST-FIX
 (359 20 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (263 20 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (188 32 (:DEFINITION LEN))
 (166 166 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (149 74 (:REWRITE DEFAULT-CDR))
 (131 20 (:DEFINITION TRUE-LISTP))
 (123 30 (:REWRITE ZP-OPEN))
 (120 82 (:REWRITE DEFAULT-+-2))
 (117 6 (:REWRITE CONSP-OF-NTHCDR))
 (95 20 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (86 82 (:REWRITE DEFAULT-+-1))
 (80 3 (:REWRITE LEN-OF-NTHCDR))
 (66 60 (:REWRITE DEFAULT-<-2))
 (66 60 (:REWRITE DEFAULT-<-1))
 (64 25 (:REWRITE NTHCDR-WHEN-ATOM))
 (63 3 (:REWRITE TRUE-LISTP-OF-NTHCDR))
 (57 15 (:DEFINITION NFIX))
 (54 15 (:REWRITE EQUAL-LEN-0))
 (33 15 (:DEFINITION ATOM))
 (20 8 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE OPEN-SMALL-NTHCDR))
 (13 13 (:REWRITE CONSP-OF-LIST-FIX))
 (12 1 (:REWRITE COMMUTATIVITY-2-OF-+))
 (10 10 (:TYPE-PRESCRIPTION NFIX))
 (7 1 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(ELEMENT-LIST-P-OF-NTHCDR
 (1607 60 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (1402 30 (:DEFINITION ELEMENT-LIST-NONEMPTY-P))
 (908 44 (:REWRITE ELEMENT-LIST-NONEMPTY-P-OF-CDR-WHEN-ELEMENT-LIST-NONEMPTY-P))
 (599 190 (:REWRITE DEFAULT-CDR))
 (555 29 (:REWRITE CONSP-OF-NTHCDR))
 (427 96 (:REWRITE ZP-OPEN))
 (332 52 (:DEFINITION LEN))
 (293 220 (:REWRITE DEFAULT-+-2))
 (220 220 (:REWRITE DEFAULT-+-1))
 (219 190 (:REWRITE DEFAULT-<-2))
 (210 210 (:TYPE-PRESCRIPTION LEN))
 (205 205 (:TYPE-PRESCRIPTION ELEMENT-LIST-NONEMPTY-P))
 (190 190 (:REWRITE DEFAULT-<-1))
 (142 13 (:DEFINITION NTH))
 (116 10 (:REWRITE CAR-OF-NTHCDR))
 (112 38 (:REWRITE FOLD-CONSTS-IN-+))
 (93 31 (:DEFINITION NFIX))
 (73 73 (:REWRITE DEFAULT-CAR))
 (54 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-NOT-ELEMENT-P-NIL-AND-NOT-NEGATED))
 (54 54 (:REWRITE ELEMENT-P-OF-CAR-WHEN-ELEMENT-LIST-P-WHEN-ELEMENT-P-NIL))
 (42 2 (:REWRITE NTHCDR-WHEN-LESS-THAN-LEN-UNDER-IFF))
 (39 39 (:REWRITE OPEN-SMALL-NTHCDR))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 )
(NTHCDR-OF-ELEMENTLIST-PROJECTION
 (189 12 (:REWRITE CONSP-OF-NTHCDR))
 (124 31 (:REWRITE ELEMENTLIST-PROJECTION-WHEN-NOT-CONSP))
 (87 15 (:DEFINITION LEN))
 (77 59 (:REWRITE DEFAULT-+-2))
 (68 59 (:REWRITE DEFAULT-<-2))
 (59 59 (:REWRITE DEFAULT-<-1))
 (59 59 (:REWRITE DEFAULT-+-1))
 (57 57 (:TYPE-PRESCRIPTION LEN))
 (45 45 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (36 12 (:DEFINITION NFIX))
 (25 3 (:REWRITE CAR-OF-NTHCDR))
 (22 3 (:DEFINITION NTH))
 (20 20 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE OPEN-SMALL-NTHCDR))
 (8 8 (:REWRITE CONSP-OF-ELEMENTLIST-PROJECTION))
 )
(SUBSETP-TRANS
 (116 116 (:REWRITE DEFAULT-CAR))
 (89 89 (:REWRITE DEFAULT-CDR))
 )
(SUBSETP-MEMBER
 (28 28 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE SUBSETP-TRANS))
 )
(SUBSETP-OF-NTHCDR
 (672 124 (:REWRITE SUBSETP-TRANS))
 (226 190 (:REWRITE SUBSETP-MEMBER . 1))
 (197 197 (:REWRITE DEFAULT-CAR))
 (197 138 (:REWRITE DEFAULT-+-2))
 (140 140 (:TYPE-PRESCRIPTION LEN))
 (138 138 (:REWRITE DEFAULT-+-1))
 (137 102 (:REWRITE SUBSETP-MEMBER . 4))
 (102 102 (:REWRITE SUBSETP-MEMBER . 3))
 (91 37 (:REWRITE ZP-OPEN))
 (87 67 (:REWRITE DEFAULT-<-2))
 (67 67 (:REWRITE DEFAULT-<-1))
 (52 18 (:REWRITE FOLD-CONSTS-IN-+))
 (11 1 (:REWRITE CAR-OF-NTHCDR))
 (10 1 (:DEFINITION NTH))
 )
(REST-N
 (220 35 (:REWRITE NTHCDR-WHEN-ZP))
 (150 10 (:REWRITE CONSP-OF-NTHCDR))
 (108 98 (:REWRITE DEFAULT-<-2))
 (98 98 (:REWRITE DEFAULT-<-1))
 (91 81 (:REWRITE DEFAULT-+-2))
 (81 81 (:REWRITE DEFAULT-+-1))
 (50 50 (:TYPE-PRESCRIPTION LEN))
 (50 10 (:DEFINITION LEN))
 (30 10 (:DEFINITION NFIX))
 )
