(SIGM)
(KAP)
(TAU)
(SIGM-BNDS
 (234 18 (:DEFINITION EXPT))
 (76 50 (:REWRITE DEFAULT-<-2))
 (60 50 (:REWRITE DEFAULT-<-1))
 (60 48 (:REWRITE DEFAULT-+-2))
 (57 21 (:REWRITE DEFAULT-*-2))
 (56 48 (:REWRITE DEFAULT-+-1))
 (21 21 (:REWRITE DEFAULT-*-1))
 (18 18 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE A4))
 )
(KAP-BNDS
 (42 29 (:REWRITE DEFAULT-<-2))
 (32 29 (:REWRITE DEFAULT-<-1))
 (30 14 (:REWRITE DEFAULT-*-2))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE ZIP-OPEN))
 )
(TAU-BNDS
 (104 104 (:REWRITE DEFAULT-+-2))
 (104 104 (:REWRITE DEFAULT-+-1))
 (97 55 (:REWRITE DEFAULT-*-2))
 (80 74 (:REWRITE DEFAULT-<-2))
 (77 74 (:REWRITE DEFAULT-<-1))
 (55 55 (:REWRITE DEFAULT-*-1))
 (21 21 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-1
 (112 102 (:REWRITE DEFAULT-<-2))
 (107 102 (:REWRITE DEFAULT-<-1))
 (88 88 (:REWRITE DEFAULT-+-2))
 (88 88 (:REWRITE DEFAULT-+-1))
 (87 41 (:REWRITE DEFAULT-*-2))
 (41 41 (:REWRITE DEFAULT-*-1))
 (23 23 (:REWRITE ZIP-OPEN))
 )
(TOP-2
 (27 21 (:REWRITE DEFAULT-<-2))
 (22 21 (:REWRITE DEFAULT-<-1))
 (20 8 (:REWRITE DEFAULT-*-2))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE ZIP-OPEN))
 )
(TOP-3
 (78 6 (:DEFINITION EXPT))
 (39 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (18 6 (:REWRITE DEFAULT-*-2))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE DEFAULT-*-1))
 )
(NAT-INDUCT)
(TOP-4
 (14 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-*-2))
 (8 6 (:REWRITE DEFAULT-*-1))
 )
(TOP-5)
(BITN-REWRITE)
(TOP-6
 (39 35 (:REWRITE DEFAULT-<-1))
 (35 35 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE DEFAULT-*-2))
 (32 32 (:REWRITE DEFAULT-*-1))
 )
(TOP-7
 (120 10 (:DEFINITION EXPT))
 (50 40 (:REWRITE DEFAULT-<-2))
 (41 40 (:REWRITE DEFAULT-<-1))
 (40 15 (:REWRITE DEFAULT-*-2))
 (30 10 (:REWRITE COMMUTATIVITY-OF-+))
 (26 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE DEFAULT-*-1))
 (5 5 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 )
(TOP-8
 (67 43 (:REWRITE DEFAULT-<-2))
 (56 24 (:REWRITE DEFAULT-*-2))
 (43 43 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-*-1))
 )
(TOP-9
 (21 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION BINARY-LOGXOR))
 (9 7 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE A4))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-10
 (108 9 (:DEFINITION EXPT))
 (51 51 (:REWRITE DEFAULT-+-2))
 (51 51 (:REWRITE DEFAULT-+-1))
 (45 35 (:REWRITE DEFAULT-<-2))
 (37 14 (:REWRITE DEFAULT-*-2))
 (36 35 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE A4))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-11
 (67 43 (:REWRITE DEFAULT-<-2))
 (56 24 (:REWRITE DEFAULT-*-2))
 (54 54 (:REWRITE DEFAULT-+-2))
 (54 54 (:REWRITE DEFAULT-+-1))
 (43 43 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-12
 (168 14 (:DEFINITION EXPT))
 (77 49 (:REWRITE DEFAULT-<-2))
 (62 62 (:REWRITE DEFAULT-+-2))
 (62 62 (:REWRITE DEFAULT-+-1))
 (49 49 (:REWRITE DEFAULT-<-1))
 (42 14 (:REWRITE DEFAULT-*-2))
 (14 14 (:REWRITE DEFAULT-*-1))
 (10 10 (:REWRITE A4))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-13
 (2009 617 (:REWRITE DEFAULT-*-2))
 (1318 1283 (:REWRITE DEFAULT-+-2))
 (1283 1283 (:REWRITE DEFAULT-+-1))
 (800 654 (:REWRITE DEFAULT-<-2))
 (654 654 (:REWRITE DEFAULT-<-1))
 (617 617 (:REWRITE DEFAULT-*-1))
 (158 158 (:REWRITE ZIP-OPEN))
 (61 61 (:REWRITE FOLD-CONSTS-IN-+))
 (35 35 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TOP-14
 (294 98 (:REWRITE DEFAULT-*-2))
 (247 232 (:REWRITE DEFAULT-+-2))
 (232 232 (:REWRITE DEFAULT-+-1))
 (177 139 (:REWRITE DEFAULT-<-2))
 (139 139 (:REWRITE DEFAULT-<-1))
 (98 98 (:REWRITE DEFAULT-*-1))
 (23 23 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TOP-15
 (184 67 (:REWRITE DEFAULT-*-2))
 (170 32 (:REWRITE A10))
 (85 17 (:REWRITE DEFAULT-UNARY-/))
 (77 53 (:REWRITE DEFAULT-+-2))
 (73 67 (:REWRITE DEFAULT-*-1))
 (64 53 (:REWRITE DEFAULT-+-1))
 (60 20 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (25 24 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-<-2))
 (20 20 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (20 20 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (17 17 (:REWRITE ZIP-OPEN))
 (14 14 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (14 14 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (6 6 (:REWRITE A5))
 )
(TOP-16
 (117 9 (:DEFINITION EXPT))
 (56 20 (:REWRITE DEFAULT-*-2))
 (43 23 (:REWRITE DEFAULT-+-2))
 (38 23 (:REWRITE DEFAULT-+-1))
 (30 20 (:REWRITE DEFAULT-*-1))
 (20 4 (:REWRITE DEFAULT-UNARY-/))
 (16 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (15 13 (:REWRITE DEFAULT-<-2))
 (14 2 (:REWRITE A10))
 (13 13 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE ZIP-OPEN))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 )
(HACK1)
(TOP-17
 (270 95 (:REWRITE DEFAULT-*-2))
 (189 89 (:REWRITE DEFAULT-+-2))
 (143 89 (:REWRITE DEFAULT-+-1))
 (137 95 (:REWRITE DEFAULT-*-1))
 (100 20 (:REWRITE DEFAULT-UNARY-/))
 (46 10 (:REWRITE A10))
 (36 36 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-<-1))
 (28 12 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (25 25 (:REWRITE ZIP-OPEN))
 (12 12 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (12 12 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (12 12 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (12 12 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (12 12 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (12 12 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (7 7 (:REWRITE A5))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(HACK2
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-*-1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE A4))
 (4 4 (:REWRITE A3))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(TOP-18
 (923 275 (:REWRITE DEFAULT-+-2))
 (872 302 (:REWRITE DEFAULT-*-2))
 (469 302 (:REWRITE DEFAULT-*-1))
 (463 275 (:REWRITE DEFAULT-+-1))
 (374 44 (:REWRITE A10))
 (196 68 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (170 34 (:REWRITE DEFAULT-UNARY-/))
 (116 68 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (110 68 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (107 97 (:REWRITE DEFAULT-<-2))
 (97 97 (:REWRITE DEFAULT-<-1))
 (92 68 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (46 46 (:REWRITE FOLD-CONSTS-IN-+))
 (22 22 (:REWRITE A5))
 (14 14 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (7 7 (:REWRITE A3))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-19
 (1457 428 (:REWRITE DEFAULT-+-2))
 (1049 347 (:REWRITE DEFAULT-*-2))
 (735 428 (:REWRITE DEFAULT-+-1))
 (652 32 (:REWRITE FL+INT))
 (518 347 (:REWRITE DEFAULT-*-1))
 (210 42 (:REWRITE DEFAULT-UNARY-/))
 (188 4 (:REWRITE RATIONALP-*))
 (182 54 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (151 135 (:REWRITE DEFAULT-<-2))
 (135 135 (:REWRITE DEFAULT-<-1))
 (106 106 (:REWRITE FOLD-CONSTS-IN-+))
 (102 54 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (88 8 (:REWRITE RATIONALP-+))
 (78 54 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (54 54 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (54 54 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (48 48 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (22 22 (:REWRITE A5))
 (8 8 (:REWRITE A3))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-20
 (3371 1375 (:REWRITE DEFAULT-*-2))
 (2970 864 (:REWRITE DEFAULT-+-2))
 (2811 1375 (:REWRITE DEFAULT-*-1))
 (1873 864 (:REWRITE DEFAULT-+-1))
 (900 372 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (884 372 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (785 157 (:REWRITE DEFAULT-UNARY-/))
 (671 380 (:REWRITE DEFAULT-<-1))
 (660 372 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (636 372 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (572 380 (:REWRITE DEFAULT-<-2))
 (346 346 (:REWRITE A4))
 (289 289 (:REWRITE FOLD-CONSTS-IN-+))
 (168 12 (:REWRITE REARRANGE-FRACTIONAL-COEFS-<))
 (110 110 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (104 14 (:REWRITE RATIONALP-+))
 (32 32 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (32 32 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (24 24 (:REWRITE RATIONALP-*))
 )
(TOP-21
 (551 141 (:REWRITE DEFAULT-+-2))
 (542 171 (:REWRITE DEFAULT-*-2))
 (358 141 (:REWRITE DEFAULT-+-1))
 (330 171 (:REWRITE DEFAULT-*-1))
 (220 44 (:REWRITE DEFAULT-UNARY-/))
 (216 56 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (116 56 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (72 56 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (60 40 (:REWRITE DEFAULT-<-2))
 (56 56 (:REWRITE A4))
 (56 56 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (56 56 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (49 49 (:REWRITE FOLD-CONSTS-IN-+))
 (44 6 (:REWRITE RATIONALP-+))
 (40 40 (:REWRITE DEFAULT-<-1))
 (12 12 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (11 11 (:REWRITE A3))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-22
 (822 60 (:REWRITE A10))
 (425 138 (:REWRITE DEFAULT-*-2))
 (349 169 (:REWRITE DEFAULT-+-2))
 (288 169 (:REWRITE DEFAULT-+-1))
 (215 138 (:REWRITE DEFAULT-*-1))
 (199 10 (:REWRITE FL+INT))
 (130 26 (:REWRITE DEFAULT-UNARY-/))
 (88 24 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (87 75 (:REWRITE DEFAULT-<-2))
 (75 75 (:REWRITE DEFAULT-<-1))
 (48 24 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (40 24 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (11 11 (:REWRITE A3))
 (4 4 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (1 1 (:REWRITE RATIONALP-*))
 )
(TOP-23
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(REM-X-Y-X-2
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(TOP-24
 (2141 149 (:REWRITE A10))
 (1694 600 (:REWRITE DEFAULT-*-2))
 (1593 723 (:REWRITE DEFAULT-+-2))
 (1256 723 (:REWRITE DEFAULT-+-1))
 (1217 600 (:REWRITE DEFAULT-*-1))
 (636 37 (:REWRITE FL+INT))
 (471 333 (:REWRITE DEFAULT-<-1))
 (393 333 (:REWRITE DEFAULT-<-2))
 (235 47 (:REWRITE DEFAULT-UNARY-/))
 (216 88 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (184 88 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (168 88 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (136 88 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (67 67 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (1 1 (:REWRITE RATIONALP-*))
 )
(TOP-25
 (1650 66 (:REWRITE A10))
 (697 325 (:REWRITE DEFAULT-+-2))
 (546 325 (:REWRITE DEFAULT-+-1))
 (525 157 (:REWRITE DEFAULT-*-2))
 (464 16 (:REWRITE FL+INT))
 (303 157 (:REWRITE DEFAULT-*-1))
 (157 137 (:REWRITE DEFAULT-<-2))
 (137 137 (:REWRITE DEFAULT-<-1))
 (125 25 (:REWRITE DEFAULT-UNARY-/))
 (31 31 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (2 2 (:REWRITE RATIONALP-*))
 )
(TOP-26
 (73 49 (:REWRITE DEFAULT-+-2))
 (70 24 (:REWRITE DEFAULT-*-2))
 (65 49 (:REWRITE DEFAULT-+-1))
 (54 30 (:REWRITE DEFAULT-<-1))
 (42 30 (:REWRITE DEFAULT-<-2))
 (26 24 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE ZIP-OPEN))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-27
 (130 45 (:REWRITE DEFAULT-+-2))
 (96 45 (:REWRITE DEFAULT-+-1))
 (88 28 (:REWRITE DEFAULT-*-2))
 (56 28 (:REWRITE DEFAULT-*-1))
 (50 26 (:REWRITE DEFAULT-<-1))
 (34 26 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE ZIP-OPEN))
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 )
(TOP-28
 (1200 48 (:REWRITE A10))
 (819 63 (:DEFINITION EXPT))
 (707 220 (:REWRITE DEFAULT-+-2))
 (516 162 (:REWRITE DEFAULT-*-2))
 (496 220 (:REWRITE DEFAULT-+-1))
 (384 12 (:REWRITE FL+INT))
 (379 162 (:REWRITE DEFAULT-*-1))
 (163 83 (:REWRITE DEFAULT-<-1))
 (115 23 (:REWRITE DEFAULT-UNARY-/))
 (107 83 (:REWRITE DEFAULT-<-2))
 (95 3 (:REWRITE RATIONALP-*))
 (76 14 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (63 63 (:REWRITE ZIP-OPEN))
 (52 6 (:REWRITE RATIONALP-+))
 (31 31 (:REWRITE A4))
 (23 23 (:REWRITE FOLD-CONSTS-IN-+))
 (22 14 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (14 14 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (14 14 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (14 14 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (14 14 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (6 6 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (6 6 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TOP-29
 (429 33 (:DEFINITION EXPT))
 (365 29 (:REWRITE A10))
 (218 96 (:REWRITE DEFAULT-+-2))
 (213 83 (:REWRITE DEFAULT-*-2))
 (169 83 (:REWRITE DEFAULT-*-1))
 (152 96 (:REWRITE DEFAULT-+-1))
 (97 5 (:REWRITE RATIONALP-*))
 (91 64 (:REWRITE DEFAULT-<-1))
 (80 7 (:REWRITE FL+INT))
 (76 64 (:REWRITE DEFAULT-<-2))
 (60 20 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (52 5 (:REWRITE RATIONALP-+))
 (33 33 (:REWRITE ZIP-OPEN))
 (25 5 (:REWRITE DEFAULT-UNARY-/))
 (20 20 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (20 20 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (20 20 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (14 14 (:REWRITE A4))
 (14 1 (:REWRITE REARRANGE-FRACTIONAL-COEFS-<))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (6 6 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 )
(TOP-30
 (1819 121 (:REWRITE A10))
 (936 72 (:DEFINITION EXPT))
 (836 257 (:REWRITE DEFAULT-+-2))
 (605 171 (:REWRITE DEFAULT-*-2))
 (588 257 (:REWRITE DEFAULT-+-1))
 (476 29 (:REWRITE FL+INT))
 (432 171 (:REWRITE DEFAULT-*-1))
 (130 26 (:REWRITE DEFAULT-UNARY-/))
 (105 102 (:REWRITE DEFAULT-<-1))
 (102 102 (:REWRITE DEFAULT-<-2))
 (72 72 (:REWRITE ZIP-OPEN))
 (37 37 (:REWRITE A4))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (8 2 (:REWRITE RATIONALP-+))
 (4 4 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (4 4 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (4 4 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (4 4 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE RATIONALP-*))
 )
(TOP-31
 (4266 186 (:REWRITE A10))
 (1300 46 (:REWRITE FL+INT))
 (1067 384 (:REWRITE DEFAULT-+-2))
 (698 384 (:REWRITE DEFAULT-+-1))
 (690 204 (:REWRITE DEFAULT-*-2))
 (438 204 (:REWRITE DEFAULT-*-1))
 (172 152 (:REWRITE DEFAULT-<-2))
 (152 152 (:REWRITE DEFAULT-<-1))
 (140 28 (:REWRITE DEFAULT-UNARY-/))
 (49 49 (:REWRITE FOLD-CONSTS-IN-+))
 (24 24 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (24 24 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (24 24 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (24 24 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (24 24 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (24 24 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (24 24 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (2 2 (:REWRITE RATIONALP-*))
 )
(TOP-32
 (5 5 (:REWRITE A10))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (2 2 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(TOP-33
 (4542 210 (:REWRITE A10))
 (2295 788 (:REWRITE DEFAULT-+-2))
 (1570 788 (:REWRITE DEFAULT-+-1))
 (1532 472 (:REWRITE DEFAULT-*-2))
 (1042 472 (:REWRITE DEFAULT-*-1))
 (964 46 (:REWRITE FL+INT))
 (586 326 (:REWRITE DEFAULT-<-1))
 (500 60 (:REWRITE DEFAULT-UNARY-/))
 (418 326 (:REWRITE DEFAULT-<-2))
 (176 16 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (160 16 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (97 97 (:REWRITE FOLD-CONSTS-IN-+))
 (48 12 (:REWRITE RATIONALP-+))
 (40 40 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
 (40 40 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
 (16 16 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (16 16 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (16 16 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (16 16 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (16 16 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (16 16 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (8 8 (:LINEAR /-STRONGLY-MONOTONIC))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (4 4 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (2 2 (:REWRITE RATIONALP-*))
 )
(TOP-34
 (549 278 (:REWRITE DEFAULT-+-2))
 (432 278 (:REWRITE DEFAULT-+-1))
 (354 116 (:REWRITE DEFAULT-*-2))
 (273 135 (:REWRITE DEFAULT-<-1))
 (179 135 (:REWRITE DEFAULT-<-2))
 (166 116 (:REWRITE DEFAULT-*-1))
 (108 28 (:REWRITE DEFAULT-UNARY-/))
 (72 8 (:LINEAR *-WEAKLY-MONOTONIC . 2))
 (64 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (27 27 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:LINEAR /-STRONGLY-MONOTONIC))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER . 1))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 2))
 (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (2 2 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (2 2 (:REWRITE RATIONALP-*))
 )
(TOP-35
 (96 8 (:DEFINITION EXPT))
 (78 62 (:REWRITE DEFAULT-<-2))
 (67 62 (:REWRITE DEFAULT-<-1))
 (46 46 (:REWRITE DEFAULT-+-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 (31 14 (:REWRITE DEFAULT-*-2))
 (15 14 (:REWRITE DEFAULT-*-1))
 )
(TOP-36
 (280 83 (:REWRITE DEFAULT-*-2))
 (163 163 (:REWRITE DEFAULT-+-2))
 (163 163 (:REWRITE DEFAULT-+-1))
 (103 83 (:REWRITE DEFAULT-<-2))
 (87 83 (:REWRITE DEFAULT-<-1))
 (83 83 (:REWRITE DEFAULT-*-1))
 (31 31 (:REWRITE ZIP-OPEN))
 )
(TOP-37
 (72 22 (:REWRITE DEFAULT-*-2))
 (63 39 (:REWRITE DEFAULT-<-1))
 (57 39 (:REWRITE DEFAULT-<-2))
 (46 42 (:REWRITE DEFAULT-+-2))
 (46 42 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE DEFAULT-*-1))
 (21 7 (:REWRITE A4))
 (7 7 (:REWRITE ZIP-OPEN))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 )
(TOP-38
 (570 172 (:REWRITE DEFAULT-*-2))
 (314 222 (:REWRITE DEFAULT-<-1))
 (311 311 (:REWRITE DEFAULT-+-2))
 (311 311 (:REWRITE DEFAULT-+-1))
 (300 222 (:REWRITE DEFAULT-<-2))
 (180 60 (:REWRITE A4))
 (172 172 (:REWRITE DEFAULT-*-1))
 (60 60 (:REWRITE ZIP-OPEN))
 (6 6 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 )
(TOP-39
 (776 235 (:REWRITE DEFAULT-*-2))
 (426 414 (:REWRITE DEFAULT-+-2))
 (418 414 (:REWRITE DEFAULT-+-1))
 (261 217 (:REWRITE DEFAULT-<-2))
 (241 217 (:REWRITE DEFAULT-<-1))
 (235 235 (:REWRITE DEFAULT-*-1))
 (225 75 (:REWRITE A4))
 (75 75 (:REWRITE ZIP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 )
(TOP-40)
(TOP-41
 (156 108 (:REWRITE DEFAULT-+-2))
 (148 108 (:REWRITE DEFAULT-+-1))
 (143 51 (:REWRITE DEFAULT-*-2))
 (142 86 (:REWRITE DEFAULT-<-1))
 (120 86 (:REWRITE DEFAULT-<-2))
 (51 51 (:REWRITE DEFAULT-*-1))
 (6 6 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-42
 (264 22 (:DEFINITION EXPT))
 (144 92 (:REWRITE DEFAULT-<-2))
 (96 92 (:REWRITE DEFAULT-<-1))
 (88 33 (:REWRITE DEFAULT-*-2))
 (66 22 (:REWRITE COMMUTATIVITY-OF-+))
 (49 49 (:REWRITE DEFAULT-+-2))
 (49 49 (:REWRITE DEFAULT-+-1))
 (33 33 (:REWRITE DEFAULT-*-1))
 (11 11 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 )
(TOP-43
 (307 227 (:REWRITE DEFAULT-+-2))
 (275 227 (:REWRITE DEFAULT-+-1))
 (225 75 (:REWRITE DEFAULT-*-2))
 (157 119 (:REWRITE DEFAULT-<-2))
 (151 119 (:REWRITE DEFAULT-<-1))
 (75 75 (:REWRITE DEFAULT-*-1))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-44
 (204 17 (:DEFINITION EXPT))
 (106 58 (:REWRITE DEFAULT-+-2))
 (82 58 (:REWRITE DEFAULT-+-1))
 (62 44 (:REWRITE DEFAULT-<-2))
 (51 17 (:REWRITE DEFAULT-*-2))
 (50 44 (:REWRITE DEFAULT-<-1))
 (17 17 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE A4))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-45
 (96 8 (:DEFINITION EXPT))
 (78 62 (:REWRITE DEFAULT-<-2))
 (67 62 (:REWRITE DEFAULT-<-1))
 (46 46 (:REWRITE DEFAULT-+-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 (31 14 (:REWRITE DEFAULT-*-2))
 (15 14 (:REWRITE DEFAULT-*-1))
 )
(TOP-46
 (72 22 (:REWRITE DEFAULT-*-2))
 (53 37 (:REWRITE DEFAULT-<-1))
 (51 37 (:REWRITE DEFAULT-<-2))
 (46 42 (:REWRITE DEFAULT-+-2))
 (46 42 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE DEFAULT-*-1))
 (21 7 (:REWRITE A4))
 (7 7 (:REWRITE ZIP-OPEN))
 (1 1 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-47
 (324 27 (:DEFINITION EXPT))
 (111 75 (:REWRITE DEFAULT-+-2))
 (101 75 (:REWRITE DEFAULT-<-2))
 (97 35 (:REWRITE DEFAULT-*-2))
 (95 75 (:REWRITE DEFAULT-+-1))
 (83 75 (:REWRITE DEFAULT-<-1))
 (35 35 (:REWRITE DEFAULT-*-1))
 (10 10 (:REWRITE A4))
 (8 8 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TOP-48
 (168 14 (:DEFINITION EXPT))
 (73 53 (:REWRITE DEFAULT-<-2))
 (64 64 (:REWRITE DEFAULT-+-2))
 (64 64 (:REWRITE DEFAULT-+-1))
 (53 53 (:REWRITE DEFAULT-<-1))
 (48 17 (:REWRITE DEFAULT-*-2))
 (18 18 (:REWRITE A4))
 (17 17 (:REWRITE DEFAULT-*-1))
 (9 9 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 )
(TOP-49
 (816 68 (:DEFINITION EXPT))
 (255 246 (:REWRITE DEFAULT-+-2))
 (246 246 (:REWRITE DEFAULT-+-1))
 (230 178 (:REWRITE DEFAULT-<-2))
 (204 68 (:REWRITE DEFAULT-*-2))
 (178 178 (:REWRITE DEFAULT-<-1))
 (68 68 (:REWRITE DEFAULT-*-1))
 (36 36 (:REWRITE A4))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TOP-50
 (6 6 (:TYPE-PRESCRIPTION INTEGERP-REM))
 )
(STICK-LEMMA
 (1588 490 (:REWRITE DEFAULT-*-2))
 (1120 1118 (:REWRITE DEFAULT-+-2))
 (1118 1118 (:REWRITE DEFAULT-+-1))
 (685 561 (:REWRITE DEFAULT-<-2))
 (561 561 (:REWRITE DEFAULT-<-1))
 (490 490 (:REWRITE DEFAULT-*-1))
 (118 118 (:REWRITE ZIP-OPEN))
 (29 29 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
