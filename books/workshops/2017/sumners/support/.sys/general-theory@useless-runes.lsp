(SNAP)
(ID-P)
(IMPL-INIT)
(IMPL-NEXT)
(IMPL-BLOK)
(SPEC-INIT)
(SPEC-NEXT)
(SPEC-BLOK)
(IMPL-MAP
 (1 1 (:TYPE-PRESCRIPTION IMPL-MAP))
 )
(IMPL-PICK)
(IMPL-FAIR)
(IMPL-RUN
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(IMPL-IINV)
(IMPL-NOBLK)
(IMPL-NSTRV)
(IMPL-STARVER)
(IMPL-RANK)
(IMPL-NIL-IS-NOT-ID)
(IMPL-NEXT-MUST-CHANGE)
(IMPL-IINV-INIT)
(IMPL-IINV-NEXT)
(IMPL-NOBLK-BLK-THM)
(IMPL-NOBLK-INV-THM)
(IMPL-NSTRV-IS-ORD)
(IMPL-STARVER-IS-ID)
(IMPL-STARVER-THM)
(IMPL-NO-STARVER-THM)
(IMPL-NO-STRV-THM)
(IMPL-STARVER-PERSISTS)
(IMPL-MAP-INIT-TO-INIT)
(IMPL-RANK-IS-ORD)
(IMPL-MAP-MATCH-NEXT
 (6 6 (:TYPE-PRESCRIPTION IMPL-MAP))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(IMPL-MAP-FINITE-STUTTER
 (10 10 (:TYPE-PRESCRIPTION IMPL-MAP))
 )
(IMPL-MAP-RANK-STABLE)
(IMPL-STEP)
(IMPL-RUN-OPEN-STEP
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(IMPL-RUN-INIT
 (1 1 (:REWRITE ZP-OPEN))
 )
(IMPL-RUN-STEP
 (43 1 (:REWRITE IMPL-IINV-INIT))
 (38 4 (:REWRITE ZP-OPEN))
 (26 1 (:DEFINITION IMPL-INIT))
 (16 4 (:REWRITE <-0-+-NEGATIVE-1))
 (15 1 (:REWRITE IMPL-RUN-INIT))
 (12 12 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (12 9 (:REWRITE DEFAULT-+-2))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE NATP-POSP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:TYPE-PRESCRIPTION IMPL-INIT))
 (1 1 (:REWRITE POSP-RW))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE IMPL-IINV-NEXT))
 )
(IMPL-PICK-IS-KEY)
(IMPL-FAIR-IS-NAT)
(IMPL-PICK-IS-FAIR)
(IMPL-STARVER-IS-NOT-NIL
 (1 1 (:REWRITE IMPL-STARVER-PERSISTS))
 )
(IMPL-STEP-THM-1
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(IMPL-STEP-THM-2
 (29 5 (:REWRITE IMPL-STEP-THM-1))
 (17 1 (:REWRITE IMPL-NOBLK-BLK-THM))
 (16 1 (:REWRITE IMPL-IINV-INIT))
 (15 1 (:REWRITE IMPL-RUN-INIT))
 (13 13 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (11 1 (:REWRITE ZP-OPEN))
 (10 1 (:REWRITE NATP-POSP))
 (9 1 (:REWRITE POSP-RW))
 (8 2 (:REWRITE <-0-+-NEGATIVE-1))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 )
(IMPL-STEP-THM-3
 (29 5 (:REWRITE IMPL-STEP-THM-2))
 (17 1 (:REWRITE IMPL-NOBLK-BLK-THM))
 (16 16 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (16 1 (:REWRITE IMPL-IINV-INIT))
 (15 1 (:REWRITE IMPL-RUN-INIT))
 (12 5 (:REWRITE IMPL-STEP-THM-1))
 (11 2 (:REWRITE NATP-POSP))
 (11 1 (:REWRITE ZP-OPEN))
 (10 2 (:REWRITE POSP-RW))
 (8 2 (:REWRITE <-0-+-NEGATIVE-1))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 )
(NAT-IND
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(IMPL-RUN-INV-PROP
 (58 10 (:REWRITE IMPL-STEP-THM-2))
 (29 29 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (24 10 (:REWRITE IMPL-STEP-THM-1))
 (22 4 (:REWRITE NATP-POSP))
 (20 4 (:REWRITE POSP-RW))
 (18 2 (:REWRITE IMPL-IINV-INIT))
 (16 2 (:REWRITE IMPL-RUN-INIT))
 (12 3 (:REWRITE <-0-+-NEGATIVE-1))
 (11 1 (:REWRITE ZP-OPEN))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE IMPL-NOBLK-BLK-THM))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 )
(IMPL-IINV-IMPL-RUN
 (121 121 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (82 19 (:REWRITE NATP-POSP))
 (75 19 (:REWRITE POSP-RW))
 (59 9 (:REWRITE ZP-OPEN))
 (48 12 (:REWRITE <-0-+-NEGATIVE-1))
 (38 38 (:TYPE-PRESCRIPTION POSP))
 (29 29 (:META CANCEL_PLUS-LESSP-CORRECT))
 (21 7 (:REWRITE EQUAL-CONSTANT-+))
 (17 17 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE DEFAULT-<-1))
 (14 14 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (14 14 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE IMPL-NOBLK-BLK-THM))
 (2 2 (:REWRITE IMPL-PICK-IS-KEY))
 )
(ORD-NAT-PAIR)
(ATOM-ORD-IMPLIES-NATP-ADD1
 (1 1 (:REWRITE NATP-RW))
 )
(ATOM-ORD-IMPLIES-LINEAR-ADD1
 (1 1 (:REWRITE NATP-RW))
 )
(IMPL-FAIR-<-JUNK1
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(ORD-NAT-PAIR-O-P
 (82 82 (:REWRITE DEFAULT-CAR))
 (33 33 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 7 (:REWRITE DEFAULT-<-2))
 (13 7 (:REWRITE DEFAULT-<-1))
 (12 3 (:REWRITE NATP-POSP))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 8 (:REWRITE NATP-RW))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE POSP-RW))
 )
(ORD-NAT-PAIR-EQUAL
 (108 2 (:DEFINITION O<))
 (64 16 (:DEFINITION O-FIRST-EXPT))
 (46 46 (:REWRITE DEFAULT-CAR))
 (40 10 (:DEFINITION O-FIRST-COEFF))
 (20 20 (:REWRITE DEFAULT-CDR))
 (16 8 (:DEFINITION O-RST))
 (10 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE NATP-POSP))
 (6 6 (:REWRITE NATP-RW))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE POSP-RW))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(ORD-NAT-PAIR-O<
 (692 692 (:REWRITE DEFAULT-CAR))
 (290 290 (:REWRITE DEFAULT-CDR))
 (124 74 (:REWRITE DEFAULT-<-2))
 (122 74 (:REWRITE DEFAULT-<-1))
 (100 100 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (96 24 (:REWRITE NATP-POSP))
 (82 82 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (80 80 (:REWRITE NATP-RW))
 (24 24 (:REWRITE POSP-RW))
 (18 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 )
(O-P-NATP-REDUX
 (1 1 (:REWRITE NATP-RW))
 )
(O<-NATP-REDUX
 (2 2 (:REWRITE NATP-RW))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(O<=-IS-REALLY-O<=
 (1981 1981 (:REWRITE DEFAULT-CAR))
 (803 803 (:REWRITE DEFAULT-CDR))
 (530 530 (:TYPE-PRESCRIPTION NATP))
 (277 277 (:REWRITE NATP-RW))
 (274 142 (:REWRITE DEFAULT-<-2))
 (272 142 (:REWRITE DEFAULT-<-1))
 (262 262 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (199 199 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (199 199 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (164 41 (:REWRITE NATP-POSP))
 (142 142 (:META CANCEL_PLUS-LESSP-CORRECT))
 (138 57 (:REWRITE O-P-NATP-REDUX))
 (41 41 (:REWRITE POSP-RW))
 )
(O<=-IS-TOTAL-O-P
 (270 2 (:DEFINITION O-P))
 (156 2 (:DEFINITION O<))
 (64 16 (:DEFINITION O-FIRST-EXPT))
 (48 12 (:REWRITE O-P-NATP-REDUX))
 (44 44 (:REWRITE DEFAULT-CAR))
 (40 40 (:TYPE-PRESCRIPTION NATP))
 (40 10 (:DEFINITION O-FIRST-COEFF))
 (34 34 (:DEFINITION O-FINP))
 (24 6 (:REWRITE O<-NATP-REDUX))
 (22 22 (:REWRITE NATP-RW))
 (18 18 (:REWRITE DEFAULT-CDR))
 (16 8 (:DEFINITION O-RST))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE NATP-POSP))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE POSP-RW))
 )
(PROG-JUNK1
 (326 20 (:REWRITE IMPL-STEP-THM-2))
 (240 20 (:REWRITE NATP-POSP))
 (229 15 (:REWRITE O<=-IS-TOTAL-O-P))
 (110 20 (:REWRITE O<=-IS-REALLY-O<=))
 (68 68 (:TYPE-PRESCRIPTION O-P))
 (50 50 (:REWRITE DEFAULT-+-2))
 (50 50 (:REWRITE DEFAULT-+-1))
 (50 20 (:REWRITE POSP-RW))
 (50 20 (:REWRITE O<-NATP-REDUX))
 (46 34 (:REWRITE O-P-NATP-REDUX))
 (40 40 (:TYPE-PRESCRIPTION POSP))
 (30 30 (:TYPE-PRESCRIPTION O<))
 (26 23 (:REWRITE DEFAULT-<-2))
 (26 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:META CANCEL_PLUS-LESSP-CORRECT))
 (15 15 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (15 15 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (13 2 (:LINEAR IMPL-FAIR-<-JUNK1))
 (10 3 (:REWRITE IMPL-FAIR-<-JUNK1))
 (6 6 (:REWRITE NATP-RW))
 (4 4 (:TYPE-PRESCRIPTION NULL))
 (1 1 (:REWRITE IMPL-PICK-IS-KEY))
 )
(PROG-JUNK2
 (433 32 (:REWRITE IMPL-STEP-THM-2))
 (312 26 (:REWRITE NATP-POSP))
 (281 16 (:REWRITE O<=-IS-TOTAL-O-P))
 (65 26 (:REWRITE POSP-RW))
 (65 26 (:REWRITE O<-NATP-REDUX))
 (59 44 (:REWRITE O-P-NATP-REDUX))
 (52 52 (:TYPE-PRESCRIPTION POSP))
 (51 51 (:REWRITE DEFAULT-+-2))
 (51 51 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (26 26 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7 7 (:REWRITE NATP-RW))
 (6 2 (:REWRITE IMPL-NOBLK-BLK-THM))
 (5 5 (:TYPE-PRESCRIPTION NULL))
 )
(PROG-JUNK3
 (3239 270 (:REWRITE IMPL-STEP-THM-2))
 (2328 194 (:REWRITE NATP-POSP))
 (1655 232 (:REWRITE O<=-IS-REALLY-O<=))
 (693 444 (:REWRITE O-P-NATP-REDUX))
 (583 232 (:REWRITE O<-NATP-REDUX))
 (485 194 (:REWRITE POSP-RW))
 (388 388 (:TYPE-PRESCRIPTION POSP))
 (309 309 (:REWRITE DEFAULT-+-2))
 (309 309 (:REWRITE DEFAULT-+-1))
 (228 8 (:REWRITE PROG-JUNK2))
 (210 202 (:REWRITE DEFAULT-<-2))
 (210 202 (:REWRITE DEFAULT-<-1))
 (202 202 (:META CANCEL_PLUS-LESSP-CORRECT))
 (164 164 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (164 164 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (116 116 (:REWRITE NATP-RW))
 (86 86 (:REWRITE IMPL-STARVER-PERSISTS))
 (76 38 (:REWRITE IMPL-NO-STRV-THM))
 (53 10 (:LINEAR IMPL-FAIR-<-JUNK1))
 (42 16 (:REWRITE PROG-JUNK1))
 (42 14 (:REWRITE IMPL-NOBLK-BLK-THM))
 (32 32 (:TYPE-PRESCRIPTION NULL))
 )
(PROG-JUNK4
 (1247 71 (:REWRITE IMPL-STEP-THM-2))
 (960 80 (:REWRITE NATP-POSP))
 (912 56 (:REWRITE O<=-IS-TOTAL-O-P))
 (583 88 (:REWRITE O<=-IS-REALLY-O<=))
 (288 288 (:TYPE-PRESCRIPTION O-P))
 (220 88 (:REWRITE O<-NATP-REDUX))
 (212 152 (:REWRITE O-P-NATP-REDUX))
 (200 80 (:REWRITE POSP-RW))
 (160 160 (:TYPE-PRESCRIPTION POSP))
 (88 84 (:REWRITE DEFAULT-<-2))
 (88 84 (:REWRITE DEFAULT-<-1))
 (84 84 (:META CANCEL_PLUS-LESSP-CORRECT))
 (74 74 (:REWRITE DEFAULT-+-2))
 (74 74 (:REWRITE DEFAULT-+-1))
 (56 56 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (56 56 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (43 8 (:REWRITE IMPL-NO-STARVER-THM))
 (28 28 (:REWRITE NATP-RW))
 (20 20 (:REWRITE IMPL-STARVER-PERSISTS))
 (16 16 (:REWRITE IMPL-NSTRV-IS-ORD))
 (16 8 (:REWRITE IMPL-NO-STRV-THM))
 (14 14 (:REWRITE IMPL-PICK-IS-KEY))
 (9 9 (:TYPE-PRESCRIPTION NULL))
 (9 3 (:REWRITE IMPL-NOBLK-BLK-THM))
 (8 4 (:REWRITE PROG-JUNK1))
 (8 4 (:REWRITE IMPL-FAIR-<-JUNK1))
 )
(PROG-JUNK5
 (270 22 (:REWRITE IMPL-STEP-THM-2))
 (192 16 (:REWRITE NATP-POSP))
 (181 11 (:REWRITE O<=-IS-TOTAL-O-P))
 (88 16 (:REWRITE O<=-IS-REALLY-O<=))
 (54 54 (:TYPE-PRESCRIPTION O-P))
 (40 16 (:REWRITE POSP-RW))
 (40 16 (:REWRITE O<-NATP-REDUX))
 (36 27 (:REWRITE O-P-NATP-REDUX))
 (35 35 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE DEFAULT-+-1))
 (32 32 (:TYPE-PRESCRIPTION POSP))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 2 (:REWRITE IMPL-NOBLK-BLK-THM))
 (5 5 (:TYPE-PRESCRIPTION NULL))
 (5 5 (:REWRITE NATP-RW))
 )
(PROG-JUNK6
 (62 4 (:REWRITE IMPL-STEP-THM-2))
 (48 4 (:REWRITE NATP-POSP))
 (47 3 (:REWRITE O<=-IS-TOTAL-O-P))
 (14 4 (:REWRITE IMPL-STEP-THM-1))
 (12 5 (:REWRITE O<-NATP-REDUX))
 (10 4 (:REWRITE POSP-RW))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE NATP-RW))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION NULL))
 (1 1 (:REWRITE IMPL-STARVER-PERSISTS))
 (1 1 (:DEFINITION NULL))
 )
(IMPL-PROG
 (673 45 (:REWRITE O<=-IS-TOTAL-O-P))
 (630 50 (:REWRITE IMPL-STEP-THM-2))
 (480 40 (:REWRITE NATP-POSP))
 (164 50 (:REWRITE IMPL-STEP-THM-1))
 (100 40 (:REWRITE POSP-RW))
 (80 80 (:TYPE-PRESCRIPTION POSP))
 (76 10 (:REWRITE IMPL-NO-STARVER-THM))
 (56 44 (:REWRITE NATP-RW))
 (49 8 (:REWRITE ORD-NAT-PAIR-O-P))
 (46 43 (:REWRITE DEFAULT-<-2))
 (46 43 (:REWRITE DEFAULT-<-1))
 (45 45 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (45 45 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (43 43 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE DEFAULT-+-1))
 (43 43 (:META CANCEL_PLUS-LESSP-CORRECT))
 (30 30 (:TYPE-PRESCRIPTION ORD-NAT-PAIR))
 (20 10 (:REWRITE IMPL-NO-STRV-THM))
 (17 17 (:TYPE-PRESCRIPTION NULL))
 (17 17 (:DEFINITION NULL))
 (16 16 (:REWRITE IMPL-STARVER-PERSISTS))
 (16 16 (:REWRITE IMPL-IINV-IMPL-RUN))
 (2 2 (:REWRITE IMPL-STARVER-IS-ID))
 )
(IMPL-PROG-IS-NAT*)
(IMPL-RUN-STEP-NOBLK-INV
 (507 15 (:REWRITE IMPL-STEP-THM-2))
 (412 13 (:REWRITE NATP-POSP))
 (349 19 (:REWRITE O<=-IS-TOTAL-O-P))
 (204 24 (:REWRITE O<=-IS-REALLY-O<=))
 (180 6 (:REWRITE EQUAL-CONSTANT-+))
 (126 126 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (96 24 (:REWRITE O<-NATP-REDUX))
 (86 86 (:TYPE-PRESCRIPTION O-P))
 (64 43 (:REWRITE O-P-NATP-REDUX))
 (61 13 (:REWRITE POSP-RW))
 (48 12 (:REWRITE <-0-+-NEGATIVE-1))
 (42 42 (:TYPE-PRESCRIPTION O<))
 (30 30 (:META CANCEL_PLUS-LESSP-CORRECT))
 (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE NATP-RW))
 (1 1 (:TYPE-PRESCRIPTION NULL))
 )
(RUN-PROG-JUNK1
 (996 24 (:REWRITE IMPL-STEP-THM-2))
 (824 26 (:REWRITE NATP-POSP))
 (705 39 (:REWRITE O<=-IS-TOTAL-O-P))
 (408 48 (:REWRITE O<=-IS-REALLY-O<=))
 (360 12 (:REWRITE EQUAL-CONSTANT-+))
 (252 252 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (192 48 (:REWRITE O<-NATP-REDUX))
 (174 174 (:TYPE-PRESCRIPTION O-P))
 (132 87 (:REWRITE O-P-NATP-REDUX))
 (122 26 (:REWRITE POSP-RW))
 (96 24 (:REWRITE <-0-+-NEGATIVE-1))
 (84 84 (:TYPE-PRESCRIPTION O<))
 (60 60 (:META CANCEL_PLUS-LESSP-CORRECT))
 (39 39 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (39 39 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (36 36 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (10 10 (:TYPE-PRESCRIPTION NATP))
 (6 2 (:REWRITE IMPL-NOBLK-BLK-THM))
 (5 5 (:REWRITE NATP-RW))
 (3 3 (:TYPE-PRESCRIPTION NULL))
 )
(IMPL-RUN-PROG-THM*
 (191 17 (:REWRITE O<=-IS-TOTAL-O-P))
 (174 12 (:REWRITE IMPL-STEP-THM-2))
 (140 5 (:REWRITE NATP-POSP))
 (68 8 (:REWRITE O<=-IS-REALLY-O<=))
 (64 25 (:REWRITE O-P-NATP-REDUX))
 (60 2 (:REWRITE EQUAL-CONSTANT-+))
 (50 50 (:TYPE-PRESCRIPTION O-P))
 (47 33 (:REWRITE DEFAULT-+-2))
 (46 12 (:REWRITE IMPL-STEP-THM-1))
 (44 44 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (33 33 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE O<-NATP-REDUX))
 (24 24 (:TYPE-PRESCRIPTION NATP))
 (21 5 (:REWRITE POSP-RW))
 (17 17 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (17 17 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 4 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:TYPE-PRESCRIPTION O<))
 (12 12 (:REWRITE NATP-RW))
 (10 10 (:TYPE-PRESCRIPTION NULL))
 (10 10 (:DEFINITION NULL))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(IMPL-PROG-IS-NAT)
(IMPL-RUN-PROG-THM
 (375 33 (:REWRITE O<=-IS-TOTAL-O-P))
 (346 22 (:REWRITE IMPL-STEP-THM-2))
 (276 9 (:REWRITE NATP-POSP))
 (136 16 (:REWRITE O<=-IS-REALLY-O<=))
 (124 49 (:REWRITE O-P-NATP-REDUX))
 (120 4 (:REWRITE EQUAL-CONSTANT-+))
 (98 98 (:TYPE-PRESCRIPTION O-P))
 (87 87 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (86 22 (:REWRITE IMPL-STEP-THM-1))
 (81 57 (:REWRITE DEFAULT-+-2))
 (64 16 (:REWRITE O<-NATP-REDUX))
 (57 57 (:REWRITE DEFAULT-+-1))
 (44 44 (:TYPE-PRESCRIPTION NATP))
 (41 9 (:REWRITE POSP-RW))
 (33 33 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (33 33 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (32 8 (:REWRITE <-0-+-NEGATIVE-1))
 (28 28 (:TYPE-PRESCRIPTION O<))
 (22 22 (:REWRITE NATP-RW))
 (18 18 (:TYPE-PRESCRIPTION NULL))
 (18 18 (:DEFINITION NULL))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 )
(SPEC-RUN)
(SPEC-PICK
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SPEC-STEP)
(SPEC-RUN-STEP*
 (2000 68 (:REWRITE NATP-POSP))
 (1717 97 (:REWRITE O<=-IS-TOTAL-O-P))
 (986 116 (:REWRITE O<=-IS-REALLY-O<=))
 (870 29 (:REWRITE EQUAL-CONSTANT-+))
 (621 621 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (464 116 (:REWRITE O<-NATP-REDUX))
 (424 424 (:TYPE-PRESCRIPTION O-P))
 (326 212 (:REWRITE O-P-NATP-REDUX))
 (300 68 (:REWRITE POSP-RW))
 (232 58 (:REWRITE <-0-+-NEGATIVE-1))
 (203 203 (:TYPE-PRESCRIPTION O<))
 (145 145 (:META CANCEL_PLUS-LESSP-CORRECT))
 (97 97 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (97 97 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (87 87 (:REWRITE DEFAULT-<-2))
 (87 87 (:REWRITE DEFAULT-<-1))
 (44 4 (:REWRITE IMPL-NOBLK-BLK-THM))
 (39 39 (:REWRITE DEFAULT-+-2))
 (39 39 (:REWRITE DEFAULT-+-1))
 (32 4 (:REWRITE RUN-PROG-JUNK1))
 (30 30 (:TYPE-PRESCRIPTION NATP))
 (15 15 (:REWRITE NATP-RW))
 (5 5 (:TYPE-PRESCRIPTION NULL))
 )
(SPEC-RUN-OPEN-STEP
 (28 4 (:REWRITE O<=-IS-TOTAL-O-P))
 (16 4 (:REWRITE O-P-NATP-REDUX))
 (8 8 (:TYPE-PRESCRIPTION O-P))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE NATP-RW))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SPEC-RUN-INIT
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE IMPL-STEP-THM-2))
 (1 1 (:REWRITE IMPL-STEP-THM-1))
 )
(SPEC-RUN-STEP
 (4 1 (:REWRITE NATP-POSP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE POSP-RW))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(SPEC-FAIR
 (2106 264 (:REWRITE NATP-POSP))
 (1160 1160 (:REWRITE DEFAULT-+-1))
 (742 276 (:REWRITE O<-NATP-REDUX))
 (576 576 (:REWRITE NATP-RW))
 (483 264 (:REWRITE POSP-RW))
 (343 343 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (343 343 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (193 166 (:REWRITE DEFAULT-<-2))
 (193 166 (:REWRITE DEFAULT-<-1))
 (192 99 (:REWRITE IMPL-MAP-RANK-STABLE))
 (170 99 (:REWRITE IMPL-MAP-FINITE-STUTTER))
 (106 21 (:REWRITE IMPL-NOBLK-BLK-THM))
 (57 21 (:REWRITE RUN-PROG-JUNK1))
 (37 37 (:TYPE-PRESCRIPTION NULL))
 (30 30 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (25 25 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 )
(SPEC-PICK-IS-KEY
 (174 6 (:REWRITE IMPL-STEP-THM-2))
 (140 5 (:REWRITE NATP-POSP))
 (121 7 (:REWRITE O<=-IS-TOTAL-O-P))
 (68 8 (:REWRITE O<=-IS-REALLY-O<=))
 (60 2 (:REWRITE EQUAL-CONSTANT-+))
 (42 42 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (32 8 (:REWRITE O<-NATP-REDUX))
 (30 30 (:TYPE-PRESCRIPTION O-P))
 (24 15 (:REWRITE O-P-NATP-REDUX))
 (21 5 (:REWRITE POSP-RW))
 (20 6 (:REWRITE IMPL-STEP-THM-1))
 (16 4 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:TYPE-PRESCRIPTION O<))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (7 7 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE NATP-RW))
 )
(SPEC-FAIR-IS-NAT)
(SPEC-PICK-IS-FAIR
 (683 33 (:REWRITE IMPL-STEP-THM-2))
 (497 35 (:REWRITE O<=-IS-TOTAL-O-P))
 (480 15 (:REWRITE NATP-POSP))
 (260 33 (:REWRITE IMPL-STEP-THM-1))
 (238 28 (:REWRITE O<=-IS-REALLY-O<=))
 (210 7 (:REWRITE EQUAL-CONSTANT-+))
 (150 150 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (126 126 (:TYPE-PRESCRIPTION O-P))
 (126 63 (:REWRITE O-P-NATP-REDUX))
 (112 28 (:REWRITE O<-NATP-REDUX))
 (75 63 (:REWRITE DEFAULT-+-2))
 (71 15 (:REWRITE POSP-RW))
 (63 63 (:REWRITE DEFAULT-+-1))
 (60 12 (:REWRITE FOLD-CONSTS-IN-+))
 (56 14 (:REWRITE <-0-+-NEGATIVE-1))
 (49 49 (:TYPE-PRESCRIPTION O<))
 (35 35 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (35 35 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (30 30 (:TYPE-PRESCRIPTION NATP))
 (24 12 (:REWRITE UNICITY-OF-0))
 (21 21 (:REWRITE DEFAULT-<-2))
 (21 21 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE NATP-RW))
 (2 2 (:TYPE-PRESCRIPTION NULL))
 (2 2 (:DEFINITION NULL))
 )
(SPEC-PROG
 (2442 292 (:REWRITE NATP-POSP))
 (1164 1164 (:REWRITE DEFAULT-+-1))
 (810 302 (:REWRITE O<-NATP-REDUX))
 (585 585 (:REWRITE NATP-RW))
 (553 292 (:REWRITE POSP-RW))
 (366 366 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (366 366 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (229 198 (:REWRITE DEFAULT-<-2))
 (229 198 (:REWRITE DEFAULT-<-1))
 (188 97 (:REWRITE IMPL-MAP-RANK-STABLE))
 (168 97 (:REWRITE IMPL-MAP-FINITE-STUTTER))
 (106 21 (:REWRITE IMPL-NOBLK-BLK-THM))
 (57 21 (:REWRITE RUN-PROG-JUNK1))
 (51 51 (:TYPE-PRESCRIPTION NULL))
 (30 30 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (25 25 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 )
(SPEC-PROG-IS-NAT)
(SPEC-RUN-PROG-THM
 (792 42 (:REWRITE IMPL-STEP-THM-2))
 (659 53 (:REWRITE O<=-IS-TOTAL-O-P))
 (548 17 (:REWRITE NATP-POSP))
 (280 42 (:REWRITE IMPL-STEP-THM-1))
 (272 32 (:REWRITE O<=-IS-REALLY-O<=))
 (240 8 (:REWRITE EQUAL-CONSTANT-+))
 (196 85 (:REWRITE O-P-NATP-REDUX))
 (172 172 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (170 170 (:TYPE-PRESCRIPTION O-P))
 (135 109 (:REWRITE DEFAULT-+-2))
 (128 32 (:REWRITE O<-NATP-REDUX))
 (109 109 (:REWRITE DEFAULT-+-1))
 (81 17 (:REWRITE POSP-RW))
 (80 16 (:REWRITE FOLD-CONSTS-IN-+))
 (64 16 (:REWRITE <-0-+-NEGATIVE-1))
 (60 60 (:TYPE-PRESCRIPTION NATP))
 (56 56 (:TYPE-PRESCRIPTION O<))
 (53 53 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (53 53 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (32 16 (:REWRITE UNICITY-OF-0))
 (30 30 (:REWRITE NATP-RW))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION NULL))
 (4 4 (:DEFINITION NULL))
 )
