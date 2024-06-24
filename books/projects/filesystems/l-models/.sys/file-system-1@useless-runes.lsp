(L1-FS-P
 (130 61 (:REWRITE DEFAULT-+-2))
 (87 61 (:REWRITE DEFAULT-+-1))
 (48 12 (:DEFINITION INTEGER-ABS))
 (26 26 (:REWRITE DEFAULT-CAR))
 (21 16 (:REWRITE DEFAULT-<-2))
 (20 16 (:REWRITE DEFAULT-<-1))
 (18 18 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 1 (:REWRITE LENGTH-WHEN-STRINGP))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (5 1 (:DEFINITION LEN))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(ALISTP-L1-FS-P
 (68 68 (:REWRITE DEFAULT-CAR))
 (28 28 (:REWRITE DEFAULT-CDR))
 )
(L1-FS-P-ASSOC
 (391 391 (:REWRITE DEFAULT-CAR))
 (357 195 (:REWRITE DEFAULT-CDR))
 )
(L1-STAT
 (8198 2736 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (797 797 (:REWRITE DEFAULT-CAR))
 (656 440 (:REWRITE DEFAULT-CDR))
 (120 19 (:REWRITE L1-FS-P-ASSOC))
 (52 4 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (32 4 (:DEFINITION MEMBER-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (5 1 (:DEFINITION EQLABLE-ALISTP))
 )
(L1-STAT-OF-L1-STAT-LEMMA-1
 (400 400 (:REWRITE DEFAULT-CAR))
 (362 200 (:REWRITE DEFAULT-CDR))
 (69 12 (:REWRITE L1-FS-P-ASSOC))
 )
(L1-STAT-OF-L1-STAT
 (662 218 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (193 181 (:REWRITE DEFAULT-CAR))
 (180 13 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (163 31 (:DEFINITION ASSOC-EQUAL))
 (157 135 (:REWRITE DEFAULT-CDR))
 (115 13 (:DEFINITION MEMBER-EQUAL))
 (65 65 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (30 5 (:DEFINITION L1-FS-P))
 (26 26 (:REWRITE SUBSETP-MEMBER . 2))
 (26 26 (:REWRITE SUBSETP-MEMBER . 1))
 (8 8 (:REWRITE CONSP-OF-APPEND))
 (4 1 (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
 (2 1 (:DEFINITION STRING-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STRING-LISTP))
 )
(L1-RDCHS
 (29 1 (:DEFINITION L1-STAT))
 (24 14 (:REWRITE DEFAULT-<-1))
 (20 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-<-2))
 (13 1 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 2 (:DEFINITION LEN))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 1 (:DEFINITION MEMBER-EQUAL))
 (6 2 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (6 1 (:DEFINITION L1-FS-P))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(L1-UNLINK
 (131 47 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (26 2 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (24 24 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE DEFAULT-CDR))
 (18 3 (:DEFINITION L1-FS-P))
 (16 2 (:DEFINITION MEMBER-EQUAL))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 (4 4 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 )
(L1-WRCHS
 (239 83 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (30 30 (:REWRITE DEFAULT-CAR))
 (30 5 (:DEFINITION L1-FS-P))
 (26 2 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (21 21 (:REWRITE DEFAULT-CDR))
 (16 2 (:DEFINITION MEMBER-EQUAL))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 2 (:DEFINITION EQLABLE-ALISTP))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 (4 4 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 )
(L1-WRCHS-RETURNS-FS-LEMMA-1
 (3183 1061 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (58 58 (:REWRITE DEFAULT-CDR))
 )
(L1-WRCHS-RETURNS-FS-LEMMA-2
 (141 141 (:REWRITE DEFAULT-CAR))
 (86 86 (:REWRITE DEFAULT-CDR))
 (51 17 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (17 17 (:TYPE-PRESCRIPTION NULL))
 (17 17 (:DEFINITION NULL))
 )
(L1-WRCHS-RETURNS-FS-LEMMA-3
 (913 73 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (588 63 (:DEFINITION MEMBER-EQUAL))
 (315 315 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (252 28 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (168 56 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (160 32 (:REWRITE DEFAULT-COERCE-3))
 (126 126 (:REWRITE SUBSETP-MEMBER . 2))
 (126 126 (:REWRITE SUBSETP-MEMBER . 1))
 (117 12 (:REWRITE L1-STAT-OF-L1-STAT-LEMMA-1))
 (117 12 (:REWRITE L1-FS-P-ASSOC))
 (64 64 (:REWRITE DEFAULT-COERCE-2))
 (56 56 (:TYPE-PRESCRIPTION NULL))
 (56 56 (:DEFINITION NULL))
 (32 32 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (32 32 (:REWRITE DEFAULT-COERCE-1))
 )
(L1-WRCHS-RETURNS-FS
 (231 77 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (128 126 (:REWRITE DEFAULT-CAR))
 (90 18 (:DEFINITION ASSOC-EQUAL))
 (81 79 (:REWRITE DEFAULT-CDR))
 (65 5 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (45 5 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (40 5 (:DEFINITION MEMBER-EQUAL))
 (30 10 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (25 25 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (21 3 (:REWRITE L1-STAT-OF-L1-STAT-LEMMA-1))
 (21 3 (:REWRITE L1-FS-P-ASSOC))
 (16 16 (:TYPE-PRESCRIPTION L1-WRCHS))
 (10 10 (:TYPE-PRESCRIPTION NULL))
 (10 10 (:REWRITE SUBSETP-MEMBER . 2))
 (10 10 (:REWRITE SUBSETP-MEMBER . 1))
 (10 10 (:DEFINITION NULL))
 (10 2 (:REWRITE DEFAULT-COERCE-3))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-INSERT-TEXT))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(L1-UNLINK-RETURNS-FS
 (357 119 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (111 111 (:REWRITE DEFAULT-CAR))
 (84 84 (:REWRITE DEFAULT-CDR))
 (78 6 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (65 13 (:DEFINITION ASSOC-EQUAL))
 (54 6 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (48 6 (:DEFINITION MEMBER-EQUAL))
 (36 12 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (30 30 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (12 12 (:TYPE-PRESCRIPTION NULL))
 (12 12 (:REWRITE SUBSETP-MEMBER . 2))
 (12 12 (:REWRITE SUBSETP-MEMBER . 1))
 )
(L1-CREATE
 (344 118 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (130 10 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (80 10 (:DEFINITION MEMBER-EQUAL))
 (50 50 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (45 45 (:REWRITE DEFAULT-CAR))
 (43 43 (:REWRITE DEFAULT-CDR))
 (42 7 (:DEFINITION L1-FS-P))
 (20 20 (:REWRITE SUBSETP-MEMBER . 2))
 (20 20 (:REWRITE SUBSETP-MEMBER . 1))
 (10 2 (:DEFINITION EQLABLE-ALISTP))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 )
(L1-CREATE-RETURNS-FS
 (876 292 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (324 322 (:REWRITE DEFAULT-CAR))
 (203 201 (:REWRITE DEFAULT-CDR))
 (201 15 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (168 36 (:DEFINITION ASSOC-EQUAL))
 (153 17 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (126 15 (:DEFINITION MEMBER-EQUAL))
 (102 34 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (75 75 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (34 34 (:TYPE-PRESCRIPTION NULL))
 (34 34 (:DEFINITION NULL))
 (30 30 (:REWRITE SUBSETP-MEMBER . 2))
 (30 30 (:REWRITE SUBSETP-MEMBER . 1))
 (8 2 (:REWRITE L1-FS-P-ASSOC))
 )
(L1-READ-AFTER-WRITE-1-LEMMA-1
 (555 185 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (48 39 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(L1-READ-AFTER-WRITE-2-LEMMA-2
 (255 87 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (75 15 (:DEFINITION ASSOC-EQUAL))
 (65 65 (:REWRITE DEFAULT-CAR))
 (49 49 (:REWRITE DEFAULT-CDR))
 (26 2 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (18 3 (:DEFINITION L1-FS-P))
 (16 2 (:DEFINITION MEMBER-EQUAL))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 4 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 )
(INDUCTION-SCHEME
 (18 6 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 )
(L1-READ-AFTER-WRITE-2-LEMMA-3
 (2183 157 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (2157 2110 (:REWRITE DEFAULT-CDR))
 (2097 233 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (1422 151 (:DEFINITION MEMBER-EQUAL))
 (1398 466 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (755 755 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (605 123 (:REWRITE L1-READ-AFTER-WRITE-2-LEMMA-2))
 (466 466 (:TYPE-PRESCRIPTION NULL))
 (466 466 (:DEFINITION NULL))
 (302 302 (:REWRITE SUBSETP-MEMBER . 2))
 (302 302 (:REWRITE SUBSETP-MEMBER . 1))
 (250 50 (:REWRITE DEFAULT-COERCE-3))
 (100 100 (:REWRITE DEFAULT-COERCE-2))
 (50 50 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (50 50 (:REWRITE DEFAULT-COERCE-1))
 (46 2 (:REWRITE L1-WRCHS-RETURNS-FS))
 (36 6 (:REWRITE L1-FS-P-ASSOC))
 (3 3 (:TYPE-PRESCRIPTION INDUCTION-SCHEME))
 (1 1 (:REWRITE L1-WRCHS-RETURNS-FS-LEMMA-2))
 )
(L1-STAT-AFTER-WRITE
 (3170 3141 (:REWRITE DEFAULT-CAR))
 (2255 166 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (2228 2191 (:REWRITE DEFAULT-CDR))
 (1477 153 (:DEFINITION MEMBER-EQUAL))
 (1296 144 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (1100 44 (:REWRITE DEFAULT-COERCE-3))
 (968 44 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (864 288 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (765 765 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (306 306 (:REWRITE SUBSETP-MEMBER . 2))
 (306 306 (:REWRITE SUBSETP-MEMBER . 1))
 (288 288 (:TYPE-PRESCRIPTION NULL))
 (288 288 (:DEFINITION NULL))
 (220 44 (:DEFINITION LEN))
 (145 101 (:REWRITE DEFAULT-<-2))
 (132 132 (:REWRITE DEFAULT-COERCE-2))
 (101 101 (:REWRITE DEFAULT-<-1))
 (88 88 (:REWRITE ZP-OPEN))
 (88 88 (:REWRITE DEFAULT-COERCE-1))
 (88 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (44 44 (:LINEAR POSITION-WHEN-MEMBER))
 (44 44 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (21 3 (:REWRITE L1-FS-P-ASSOC))
 (9 5 (:REWRITE L1-WRCHS-RETURNS-FS))
 (3 3 (:TYPE-PRESCRIPTION INDUCTION-SCHEME))
 (1 1 (:REWRITE L1-WRCHS-RETURNS-FS-LEMMA-3))
 )
(L1-READ-AFTER-WRITE-1
 (381 19 (:DEFINITION LEN))
 (284 21 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (215 1 (:REWRITE SUBSEQ-OF-LENGTH-1))
 (209 39 (:REWRITE DEFAULT-CDR))
 (188 2 (:REWRITE NTHCDR-WHEN->=-N-LEN-L))
 (110 2 (:LINEAR INSERT-TEXT-CORRECTNESS-3 . 1))
 (70 1 (:DEFINITION L1-WRCHS))
 (63 33 (:REWRITE DEFAULT-+-2))
 (60 2 (:DEFINITION L1-STAT))
 (51 3 (:REWRITE DEFAULT-COERCE-3))
 (49 26 (:REWRITE DEFAULT-<-2))
 (41 36 (:REWRITE ZP-OPEN))
 (39 3 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (39 1 (:DEFINITION NTHCDR))
 (36 36 (:REWRITE DEFAULT-COERCE-2))
 (36 33 (:REWRITE DEFAULT-COERCE-1))
 (34 33 (:REWRITE DEFAULT-+-1))
 (27 26 (:REWRITE DEFAULT-<-1))
 (24 24 (:TYPE-PRESCRIPTION ZP))
 (24 3 (:DEFINITION MEMBER-EQUAL))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 4 (:REWRITE NFIX-WHEN-ZP))
 (18 6 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (15 15 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (15 3 (:DEFINITION ASSOC-EQUAL))
 (14 14 (:LINEAR POSITION-WHEN-MEMBER))
 (14 14 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (9 1 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (6 2 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (6 1 (:DEFINITION L1-FS-P))
 (4 4 (:REWRITE NFIX-WHEN-NATP))
 (4 4 (:REWRITE L1-READ-AFTER-WRITE-2-LEMMA-2))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION NULL))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:DEFINITION NULL))
 (1 1 (:REWRITE L1-READ-AFTER-WRITE-1-LEMMA-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(L1-READ-AFTER-WRITE-2
 (513 17 (:DEFINITION L1-STAT))
 (460 4 (:DEFINITION TAKE))
 (354 8 (:REWRITE TAKE-OF-LEN-FREE))
 (350 5 (:DEFINITION L1-WRCHS))
 (306 190 (:REWRITE DEFAULT-CDR))
 (295 39 (:DEFINITION LEN))
 (287 22 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (208 4 (:REWRITE CAR-OF-NTHCDR))
 (180 8 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (177 33 (:REWRITE NFIX-WHEN-ZP))
 (177 22 (:DEFINITION MEMBER-EQUAL))
 (162 8 (:REWRITE NTHCDR-WHEN->=-N-LEN-L))
 (159 3 (:REWRITE LEN-OF-NTHCDR))
 (150 150 (:REWRITE DEFAULT-CAR))
 (150 9 (:REWRITE DEFAULT-COERCE-3))
 (133 50 (:REWRITE ZP-OPEN))
 (132 44 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (132 4 (:DEFINITION NTHCDR))
 (127 85 (:REWRITE DEFAULT-+-2))
 (124 4 (:DEFINITION NTH))
 (110 110 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (110 76 (:REWRITE DEFAULT-<-2))
 (110 22 (:DEFINITION ASSOC-EQUAL))
 (110 5 (:REWRITE INSERT-TEXT-CORRECTNESS-4))
 (88 85 (:REWRITE DEFAULT-+-1))
 (86 76 (:REWRITE DEFAULT-<-1))
 (85 85 (:TYPE-PRESCRIPTION ZP))
 (76 8 (:REWRITE CONSP-OF-CDR-OF-NTHCDR))
 (70 2 (:REWRITE SUBSEQ-OF-LENGTH-1))
 (69 33 (:REWRITE NFIX-WHEN-NATP))
 (60 4 (:REWRITE CONSP-OF-NTHCDR))
 (54 22 (:REWRITE DEFAULT-COERCE-1))
 (45 45 (:LINEAR POSITION-WHEN-MEMBER))
 (45 45 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (45 5 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (44 44 (:REWRITE SUBSETP-MEMBER . 2))
 (44 44 (:REWRITE SUBSETP-MEMBER . 1))
 (34 34 (:REWRITE L1-READ-AFTER-WRITE-2-LEMMA-2))
 (31 31 (:REWRITE DEFAULT-COERCE-2))
 (30 10 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (24 4 (:DEFINITION L1-FS-P))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (15 15 (:TYPE-PRESCRIPTION NFIX))
 (15 3 (:REWRITE CONSP-OF-TAKE))
 (14 2 (:DEFINITION NFIX))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-INSERT-TEXT))
 (10 10 (:TYPE-PRESCRIPTION NULL))
 (10 10 (:DEFINITION NULL))
 (5 5 (:REWRITE L1-READ-AFTER-WRITE-1-LEMMA-1))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (3 3 (:TYPE-PRESCRIPTION L1-WRCHS))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(INDUCTION-SCHEME
 (18 6 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 )
(L1-STAT-AFTER-CREATE
 (3621 3306 (:REWRITE DEFAULT-CAR))
 (1947 137 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (1298 128 (:DEFINITION MEMBER-EQUAL))
 (1296 144 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (844 288 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (640 640 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (278 278 (:TYPE-PRESCRIPTION NULL))
 (278 278 (:DEFINITION NULL))
 (256 256 (:REWRITE SUBSETP-MEMBER . 2))
 (256 256 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:TYPE-PRESCRIPTION INDUCTION-SCHEME))
 )
(L1-READ-AFTER-CREATE-1
 (1293 1251 (:REWRITE DEFAULT-CAR))
 (995 79 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (957 929 (:REWRITE DEFAULT-CDR))
 (710 28 (:REWRITE L1-STAT-AFTER-CREATE))
 (624 73 (:DEFINITION MEMBER-EQUAL))
 (488 24 (:REWRITE TAKE-OF-LEN-FREE))
 (441 49 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (420 12 (:DEFINITION TAKE))
 (365 365 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (300 12 (:REWRITE DEFAULT-COERCE-3))
 (294 98 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (286 154 (:REWRITE DEFAULT-+-2))
 (264 12 (:REWRITE CONSP-OF-TAKE))
 (260 10 (:REWRITE SUBSEQ-OF-LENGTH-1))
 (192 24 (:REWRITE ZP-OPEN))
 (176 176 (:LINEAR POSITION-WHEN-MEMBER))
 (176 176 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (164 154 (:REWRITE DEFAULT-+-1))
 (160 10 (:REWRITE NTHCDR-WHEN->=-N-LEN-L))
 (146 146 (:REWRITE SUBSETP-MEMBER . 2))
 (146 146 (:REWRITE SUBSETP-MEMBER . 1))
 (128 64 (:REWRITE DEFAULT-<-2))
 (98 98 (:TYPE-PRESCRIPTION NULL))
 (98 98 (:DEFINITION NULL))
 (92 92 (:REWRITE DEFAULT-COERCE-2))
 (80 64 (:REWRITE DEFAULT-<-1))
 (33 18 (:REWRITE L1-CREATE-RETURNS-FS))
 (16 16 (:TYPE-PRESCRIPTION L1-CREATE-RETURNS-FS))
 (10 10 (:TYPE-PRESCRIPTION NFIX))
 (9 9 (:REWRITE L1-WRCHS-RETURNS-FS-LEMMA-2))
 (7 1 (:REWRITE L1-FS-P-ASSOC))
 )
(L1-READ-AFTER-CREATE-2
 (234 2 (:DEFINITION TAKE))
 (224 4 (:REWRITE TAKE-OF-LEN-FREE))
 (186 6 (:DEFINITION L1-STAT))
 (183 3 (:DEFINITION L1-CREATE))
 (155 95 (:REWRITE DEFAULT-CDR))
 (140 18 (:DEFINITION LEN))
 (119 9 (:REWRITE ASSOC-OF-CAR-WHEN-MEMBER))
 (118 2 (:REWRITE LEN-OF-NTHCDR))
 (106 2 (:REWRITE CAR-OF-NTHCDR))
 (102 18 (:REWRITE NFIX-WHEN-ZP))
 (92 4 (:REWRITE NTHCDR-WHEN->=-N-LEN-L))
 (92 4 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (81 81 (:REWRITE DEFAULT-CAR))
 (74 9 (:DEFINITION MEMBER-EQUAL))
 (72 22 (:REWRITE ZP-OPEN))
 (70 50 (:REWRITE DEFAULT-+-2))
 (66 2 (:DEFINITION NTHCDR))
 (62 2 (:DEFINITION NTH))
 (54 18 (:TYPE-PRESCRIPTION ASSOC-WHEN-ZP-LEN))
 (54 6 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (52 50 (:REWRITE DEFAULT-+-1))
 (50 34 (:REWRITE DEFAULT-<-2))
 (48 18 (:REWRITE NFIX-WHEN-NATP))
 (45 45 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (45 9 (:DEFINITION ASSOC-EQUAL))
 (40 34 (:REWRITE DEFAULT-<-1))
 (38 38 (:TYPE-PRESCRIPTION ZP))
 (38 4 (:REWRITE CONSP-OF-CDR-OF-NTHCDR))
 (38 2 (:REWRITE SUBSEQ-OF-LENGTH-1))
 (36 12 (:REWRITE REMOVE1-ASSOC-WHEN-ABSENT . 1))
 (32 2 (:REWRITE CONSP-OF-NTHCDR))
 (24 24 (:LINEAR POSITION-WHEN-MEMBER))
 (24 24 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (18 18 (:REWRITE SUBSETP-MEMBER . 2))
 (18 18 (:REWRITE SUBSETP-MEMBER . 1))
 (16 2 (:REWRITE DEFAULT-COERCE-3))
 (14 2 (:DEFINITION NFIX))
 (12 12 (:TYPE-PRESCRIPTION NULL))
 (12 12 (:REWRITE L1-READ-AFTER-WRITE-2-LEMMA-2))
 (12 12 (:DEFINITION NULL))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (10 2 (:REWRITE CONSP-OF-TAKE))
 (8 8 (:TYPE-PRESCRIPTION NFIX))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:TYPE-PRESCRIPTION L1-CREATE))
 (6 6 (:REWRITE L1-READ-AFTER-WRITE-1-LEMMA-1))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (6 1 (:DEFINITION L1-FS-P))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(L1-WC-LEN)
