(TAKE-OF-NIL
 (18 8 (:REWRITE ZP-OPEN))
 (12 6 (:REWRITE TAKE-DOES-NOTHING))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(TAKE-WHEN-NOT-CONSP
 (12 2 (:REWRITE REPEAT-WHEN-ZP))
 (9 4 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE TAKE-DOES-NOTHING))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:DEFINITION LEN))
 )
(TAKE-OF-TAKE
 (1099 97 (:REWRITE TAKE-DOES-NOTHING))
 (537 537 (:TYPE-PRESCRIPTION LEN))
 (482 82 (:DEFINITION LEN))
 (296 207 (:REWRITE DEFAULT-+-2))
 (207 207 (:REWRITE DEFAULT-+-1))
 (158 146 (:REWRITE DEFAULT-CDR))
 (154 23 (:REWRITE CONSP-OF-TAKE))
 (117 117 (:REWRITE DEFAULT-<-2))
 (117 117 (:REWRITE DEFAULT-<-1))
 (80 20 (:REWRITE LEN-OF-TAKE))
 (79 15 (:REWRITE REPEAT-WHEN-ZP))
 (70 60 (:REWRITE DEFAULT-CAR))
 (60 20 (:DEFINITION NFIX))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(TAKE-PLUS-ONE-EQUAL-REWRITE
 (580 70 (:REWRITE TAKE-DOES-NOTHING))
 (195 131 (:REWRITE DEFAULT-+-2))
 (131 131 (:REWRITE DEFAULT-+-1))
 (84 68 (:REWRITE DEFAULT-CAR))
 (76 60 (:REWRITE DEFAULT-CDR))
 (61 40 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-<-1))
 )
(TAKE-EQUAL-LENGHTEN
 (1334 120 (:REWRITE TAKE-DOES-NOTHING))
 (444 268 (:REWRITE DEFAULT-+-2))
 (268 268 (:REWRITE DEFAULT-+-1))
 (246 228 (:REWRITE DEFAULT-CDR))
 (144 126 (:REWRITE DEFAULT-CAR))
 (120 120 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (91 57 (:REWRITE DEFAULT-<-2))
 (58 58 (:REWRITE ZP-OPEN))
 (57 57 (:REWRITE DEFAULT-<-1))
 )
(TAKE-OF-UPDATE-NTH-IRREL
 (109 10 (:REWRITE TAKE-DOES-NOTHING))
 (107 5 (:DEFINITION TAKE))
 (98 2 (:DEFINITION UPDATE-NTH))
 (84 2 (:REWRITE CDR-OF-TAKE))
 (63 63 (:TYPE-PRESCRIPTION LEN))
 (45 9 (:DEFINITION LEN))
 (29 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE DEFAULT-CDR))
 (14 11 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (14 8 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE CAR-OF-TAKE-STRONG))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(CONS-OF-CAR-AND-CDR-OF-TAKE
 (83 7 (:REWRITE TAKE-DOES-NOTHING))
 (45 45 (:TYPE-PRESCRIPTION LEN))
 (39 7 (:DEFINITION LEN))
 (27 16 (:REWRITE DEFAULT-+-2))
 (20 17 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE DEFAULT-+-1))
 (12 9 (:REWRITE DEFAULT-CAR))
 (10 4 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (7 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(CDR-TAKE-NTHCDR
 (261 18 (:REWRITE TAKE-DOES-NOTHING))
 (182 96 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (141 17 (:DEFINITION LEN))
 (119 119 (:TYPE-PRESCRIPTION LEN))
 (102 18 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (90 73 (:REWRITE DEFAULT-+-2))
 (86 86 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (73 73 (:REWRITE DEFAULT-+-1))
 (23 23 (:REWRITE DEFAULT-<-2))
 (23 23 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE ZP-OPEN))
 )
(CONSP-OF-TAKE-TP
 (24 2 (:REWRITE TAKE-DOES-NOTHING))
 (18 1 (:DEFINITION TAKE))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (10 2 (:DEFINITION LEN))
 (5 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DOUBLE-SUB1-INDUCT)
(TAKE-OF-REPEAT-2
 (50 1 (:DEFINITION TAKE))
 (36 9 (:REWRITE REPEAT-WHEN-ZP))
 (33 9 (:REWRITE ZP-OPEN))
 (30 4 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (24 4 (:REWRITE TAKE-DOES-NOTHING))
 (18 4 (:REWRITE CONSP-OF-REPEAT))
 (16 4 (:REWRITE LEN-OF-REPEAT))
 (14 1 (:REWRITE CDR-OF-REPEAT))
 (12 4 (:DEFINITION NFIX))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 1 (:REWRITE CAR-OF-REPEAT))
 (3 1 (:DEFINITION POSP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 )
(TAKE-OF-REPEAT-SAME
 (14 4 (:REWRITE REPEAT-WHEN-ZP))
 (11 6 (:REWRITE ZP-OPEN))
 (8 1 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION NATP))
 (6 1 (:REWRITE TAKE-DOES-NOTHING))
 (5 1 (:REWRITE TAKE-OF-REPEAT-WHEN-<=))
 (5 1 (:REWRITE CONSP-OF-REPEAT))
 (4 1 (:REWRITE LEN-OF-REPEAT))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 )
(TAKE-CONS-2
 (34 3 (:REWRITE TAKE-DOES-NOTHING))
 (19 3 (:DEFINITION LEN))
 (16 16 (:TYPE-PRESCRIPTION LEN))
 (10 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE CDR-CONS))
 )
(TAKE-WHEN-EQUAL-OF-TAKES
 (318 22 (:REWRITE TAKE-DOES-NOTHING))
 (166 166 (:TYPE-PRESCRIPTION LEN))
 (164 28 (:DEFINITION LEN))
 (76 42 (:REWRITE DEFAULT-+-2))
 (54 46 (:REWRITE DEFAULT-CDR))
 (42 42 (:REWRITE DEFAULT-+-1))
 (28 20 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE TAKE-WHEN-NOT-CONSP))
 (10 10 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 )
