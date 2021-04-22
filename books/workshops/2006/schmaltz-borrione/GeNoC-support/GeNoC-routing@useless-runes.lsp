(ROUTE)
(ROUTING)
(ROUTE-IDS
 (714 42 (:REWRITE NTH-WITH-LARGE-INDEX))
 (399 21 (:DEFINITION NTH))
 (252 252 (:TYPE-PRESCRIPTION LEN))
 (210 42 (:DEFINITION LEN))
 (88 87 (:REWRITE DEFAULT-CDR))
 (84 42 (:REWRITE DEFAULT-<-2))
 (84 42 (:REWRITE DEFAULT-+-2))
 (50 49 (:REWRITE DEFAULT-CAR))
 (42 42 (:TYPE-PRESCRIPTION NFIX))
 (42 42 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (42 42 (:REWRITE LESSP-IMPLIES-<))
 (42 42 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-+-1))
 (42 42 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(VALIDFIELDS-ROUTE
 (2831 150 (:REWRITE NTH-WITH-LARGE-INDEX))
 (2057 341 (:DEFINITION LEN))
 (1427 1426 (:REWRITE DEFAULT-CDR))
 (1351 44 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (1337 170 (:REWRITE LESSP-IMPLIES-<-CAR))
 (1325 22 (:DEFINITION NOTLESSP))
 (1257 66 (:DEFINITION LESSP))
 (610 609 (:REWRITE DEFAULT-CAR))
 (454 227 (:REWRITE DEFAULT-+-2))
 (314 206 (:REWRITE DEFAULT-<-1))
 (252 252 (:TYPE-PRESCRIPTION LESSP))
 (242 206 (:REWRITE DEFAULT-<-2))
 (227 227 (:REWRITE DEFAULT-+-1))
 (206 206 (:REWRITE LESSP-IMPLIES-<))
 (108 108 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (92 92 (:TYPE-PRESCRIPTION NOTLESSP))
 (80 80 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (36 36 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 6 (:TYPE-PRESCRIPTION VALIDFIELD-ROUTE))
 (6 3 (:DEFINITION TRUE-LISTP))
 )
(TRLSTP-ROUTE
 (204 12 (:REWRITE NTH-WITH-LARGE-INDEX))
 (162 1 (:DEFINITION VALIDFIELDS-M))
 (116 1 (:DEFINITION ROUTE))
 (114 6 (:DEFINITION NTH))
 (74 2 (:DEFINITION ORGM))
 (74 2 (:DEFINITION FRMM))
 (74 2 (:DEFINITION DESTM))
 (72 72 (:TYPE-PRESCRIPTION LEN))
 (60 12 (:DEFINITION LEN))
 (44 44 (:REWRITE DEFAULT-CDR))
 (35 1 (:DEFINITION NATP))
 (27 15 (:REWRITE DEFAULT-<-2))
 (26 2 (:DEFINITION M-IDS))
 (24 12 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-CAR))
 (18 4 (:DEFINITION BINARY-APPEND))
 (16 2 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (15 15 (:REWRITE LESSP-IMPLIES-<))
 (15 15 (:REWRITE DEFAULT-<-1))
 (15 3 (:REWRITE LESSP-IMPLIES-<-CAR))
 (14 14 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (13 1 (:DEFINITION NOTLESSP))
 (12 12 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (11 1 (:DEFINITION VALIDFIELD-MISSIVEP))
 (11 1 (:DEFINITION LESSP))
 (6 6 (:TYPE-PRESCRIPTION NOTLESSP))
 (6 6 (:TYPE-PRESCRIPTION LESSP))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 (4 2 (:DEFINITION IDM))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(TRLSTP-ROUTING
 (308 20 (:REWRITE NTH-WITH-LARGE-INDEX))
 (190 10 (:DEFINITION NTH))
 (162 1 (:DEFINITION VALIDFIELDS-M))
 (116 1 (:DEFINITION ROUTE))
 (111 3 (:DEFINITION ORGM))
 (111 3 (:DEFINITION DESTM))
 (108 108 (:TYPE-PRESCRIPTION LEN))
 (90 18 (:DEFINITION LEN))
 (74 2 (:DEFINITION FRMM))
 (68 1 (:DEFINITION M-ORGS))
 (68 1 (:DEFINITION M-DESTS))
 (65 6 (:DEFINITION BINARY-APPEND))
 (59 59 (:REWRITE DEFAULT-CDR))
 (39 21 (:REWRITE DEFAULT-<-2))
 (36 18 (:REWRITE DEFAULT-+-2))
 (35 1 (:DEFINITION NATP))
 (23 23 (:REWRITE DEFAULT-CAR))
 (22 2 (:DEFINITION SUBSETP-EQUAL))
 (21 21 (:REWRITE LESSP-IMPLIES-<))
 (21 21 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (18 18 (:TYPE-PRESCRIPTION NFIX))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (16 2 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (15 3 (:REWRITE LESSP-IMPLIES-<-CAR))
 (13 1 (:DEFINITION NOTLESSP))
 (13 1 (:DEFINITION M-IDS))
 (11 1 (:DEFINITION VALIDFIELD-MISSIVEP))
 (11 1 (:DEFINITION LESSP))
 (10 1 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (9 3 (:DEFINITION MEMBER-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION NOTLESSP))
 (6 6 (:TYPE-PRESCRIPTION LESSP))
 (5 3 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (4 2 (:DEFINITION IDM))
 (3 3 (:REWRITE CDR-CONS))
 (3 3 (:REWRITE CAR-CONS))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION M-ORGS))
 (2 2 (:TYPE-PRESCRIPTION M-IDS))
 (2 2 (:TYPE-PRESCRIPTION M-DESTS))
 (2 2 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(CORRECTROUTESP-ROUTE
 (3458 219 (:REWRITE NTH-WITH-LARGE-INDEX))
 (2033 107 (:DEFINITION NTH))
 (1365 207 (:DEFINITION LEN))
 (1187 1187 (:TYPE-PRESCRIPTION LEN))
 (584 572 (:REWRITE DEFAULT-CDR))
 (416 220 (:REWRITE DEFAULT-<-2))
 (404 202 (:REWRITE DEFAULT-+-2))
 (328 246 (:REWRITE DEFAULT-CAR))
 (220 220 (:REWRITE LESSP-IMPLIES-<))
 (220 220 (:REWRITE DEFAULT-<-1))
 (212 212 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (202 202 (:REWRITE DEFAULT-+-1))
 (201 201 (:TYPE-PRESCRIPTION NFIX))
 (196 196 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (128 16 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (120 24 (:REWRITE LESSP-IMPLIES-<-CAR))
 (104 8 (:DEFINITION NOTLESSP))
 (88 8 (:DEFINITION LESSP))
 (56 28 (:TYPE-PRESCRIPTION TRUE-LISTP-LAST))
 (48 48 (:TYPE-PRESCRIPTION NOTLESSP))
 (48 48 (:TYPE-PRESCRIPTION LESSP))
 (28 28 (:TYPE-PRESCRIPTION LAST))
 (28 28 (:TYPE-PRESCRIPTION CONSP-LAST))
 (8 8 (:REWRITE CONSP-LAST))
 (6 6 (:REWRITE CHECKROUTES-CAAR))
 (4 4 (:TYPE-PRESCRIPTION CHECKROUTES))
 )
(ROUTING-CORRECTROUTESP
 (480 32 (:REWRITE NTH-WITH-LARGE-INDEX))
 (306 17 (:DEFINITION NTH))
 (168 168 (:TYPE-PRESCRIPTION LEN))
 (140 28 (:DEFINITION LEN))
 (136 2 (:DEFINITION M-ORGS))
 (136 2 (:DEFINITION M-DESTS))
 (130 12 (:DEFINITION BINARY-APPEND))
 (116 1 (:DEFINITION ROUTE))
 (105 105 (:REWRITE DEFAULT-CDR))
 (62 34 (:REWRITE DEFAULT-<-2))
 (56 28 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-CAR))
 (40 6 (:DEFINITION MEMBER-EQUAL))
 (34 34 (:REWRITE LESSP-IMPLIES-<))
 (34 34 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (32 4 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (30 6 (:REWRITE LESSP-IMPLIES-<-CAR))
 (28 28 (:TYPE-PRESCRIPTION NFIX))
 (28 28 (:REWRITE DEFAULT-+-1))
 (28 28 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (26 2 (:DEFINITION NOTLESSP))
 (26 2 (:DEFINITION M-IDS))
 (22 2 (:DEFINITION LESSP))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION NOTLESSP))
 (12 12 (:TYPE-PRESCRIPTION LESSP))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE CAR-CONS))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(TRUE-LISTP-ROUTING)
(ROUTING-NIL)
(TOMISSIVES-ROUTING
 (97 1 (:DEFINITION TOMISSIVES))
 (68 4 (:REWRITE NTH-WITH-LARGE-INDEX))
 (38 2 (:DEFINITION NTH))
 (37 1 (:DEFINITION ROUTESV))
 (37 1 (:DEFINITION FRMV))
 (24 24 (:TYPE-PRESCRIPTION LEN))
 (20 4 (:DEFINITION LEN))
 (15 6 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (4 4 (:REWRITE LESSP-IMPLIES-<))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-LAST))
 (3 1 (:DEFINITION LAST))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-ROUTING))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION LAST))
 (2 2 (:TYPE-PRESCRIPTION CONSP-LAST))
 (2 1 (:DEFINITION IDV))
 (1 1 (:REWRITE CONSP-LAST))
 )
(IDS-ROUTING
 (3334 214 (:REWRITE NTH-WITH-LARGE-INDEX))
 (2033 107 (:DEFINITION NTH))
 (1315 80 (:DEFINITION BINARY-APPEND))
 (1170 1170 (:TYPE-PRESCRIPTION LEN))
 (975 195 (:DEFINITION LEN))
 (880 10 (:DEFINITION M-ORGS))
 (812 9 (:DEFINITION M-DESTS))
 (680 680 (:REWRITE DEFAULT-CDR))
 (528 366 (:REWRITE DEFAULT-CAR))
 (423 228 (:REWRITE DEFAULT-<-2))
 (390 195 (:REWRITE DEFAULT-+-2))
 (333 9 (:DEFINITION V-IDS))
 (228 228 (:REWRITE LESSP-IMPLIES-<))
 (228 228 (:REWRITE DEFAULT-<-1))
 (217 217 (:REWRITE NOTLESSP-IMPLIES-NOT-<))
 (195 195 (:TYPE-PRESCRIPTION NFIX))
 (195 195 (:REWRITE DEFAULT-+-1))
 (195 195 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (177 22 (:REWRITE NOTLESSP-IMPLIES-NOT-<-CAR))
 (166 33 (:REWRITE LESSP-IMPLIES-<-CAR))
 (156 12 (:DEFINITION M-IDS))
 (144 11 (:DEFINITION NOTLESSP))
 (122 11 (:DEFINITION LESSP))
 (78 26 (:DEFINITION MEMBER-EQUAL))
 (72 36 (:TYPE-PRESCRIPTION TRUE-LISTP-LAST))
 (66 66 (:TYPE-PRESCRIPTION NOTLESSP))
 (66 66 (:TYPE-PRESCRIPTION LESSP))
 (55 55 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (54 18 (:DEFINITION LAST))
 (40 40 (:REWRITE CDR-CONS))
 (40 40 (:REWRITE CAR-CONS))
 (36 36 (:TYPE-PRESCRIPTION LAST))
 (36 36 (:TYPE-PRESCRIPTION CONSP-LAST))
 (36 36 (:REWRITE CORRECTROUTESP-=>-TOMISSIVES))
 (18 18 (:REWRITE CONSP-LAST))
 (4 2 (:DEFINITION TRUE-LISTP))
 )
