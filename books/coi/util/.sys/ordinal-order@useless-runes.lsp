(O1-TEST)
(O2-TEST)
(OCONSP
 (32 23 (:REWRITE DEFAULT-CDR))
 (20 20 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (20 20 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 8 (:REWRITE O-P-DEF-O-FINP-1))
 (13 8 (:REWRITE DEFAULT-CAR))
 (12 12 (:TYPE-PRESCRIPTION O-FINP))
 )
(OCONS
 (10 5 (:TYPE-PRESCRIPTION O+-O-FINP))
 (5 5 (:TYPE-PRESCRIPTION O-FINP))
 )
(POLARITY)
(OCAR
 (18 3 (:REWRITE O-INFP->NEQ-0))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE O-P-DEF-O-FINP-1))
 (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 )
(OCDR
 (18 3 (:REWRITE O-INFP->NEQ-0))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE O-P-DEF-O-FINP-1))
 (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 )
(OCDR-OCONS
 (346 37 (:REWRITE O-FIRST-EXPT-<))
 (333 14 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (162 81 (:TYPE-PRESCRIPTION O+-O-FINP))
 (162 62 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (112 37 (:REWRITE O-FIRST-COEFF-<))
 (109 37 (:REWRITE O-FINP-<))
 (109 37 (:REWRITE AC-<))
 (66 22 (:REWRITE O-FIRST-EXPT-O-INFP))
 (42 7 (:REWRITE O-INFP-O-FINP-O<=))
 (37 37 (:REWRITE |a < b & b < c  =>  a < c|))
 (24 8 (:REWRITE O-P-DEF-O-FINP-1))
 (21 7 (:REWRITE O<=-O-FINP-DEF))
 (18 1 (:REWRITE O+-O-FIRST-EXPT-SMASH-2))
 (14 14 (:REWRITE O+-ATOM-DEF))
 (9 9 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(OCAR-OCONS
 (346 37 (:REWRITE O-FIRST-EXPT-<))
 (333 14 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (162 81 (:TYPE-PRESCRIPTION O+-O-FINP))
 (162 62 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (112 37 (:REWRITE O-FIRST-COEFF-<))
 (109 37 (:REWRITE O-FINP-<))
 (109 37 (:REWRITE AC-<))
 (66 22 (:REWRITE O-FIRST-EXPT-O-INFP))
 (42 7 (:REWRITE O-INFP-O-FINP-O<=))
 (37 37 (:REWRITE |a < b & b < c  =>  a < c|))
 (24 8 (:REWRITE O-P-DEF-O-FINP-1))
 (21 7 (:REWRITE O<=-O-FINP-DEF))
 (18 1 (:REWRITE O+-O-FIRST-EXPT-SMASH-2))
 (14 14 (:REWRITE O+-ATOM-DEF))
 (9 9 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(OCONSP-OCONS
 (3705 101 (:REWRITE O-FIRST-EXPT-<))
 (3175 383 (:REWRITE O-FIRST-EXPT-O-INFP))
 (2582 12 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (1162 210 (:REWRITE O-P-O-INFP-CAR))
 (1096 362 (:REWRITE DEFAULT-CAR))
 (922 96 (:REWRITE O-FIRST-EXPT-0-NATP))
 (921 428 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (525 125 (:REWRITE O-INFP->NEQ-0))
 (409 225 (:REWRITE O-P-DEF-O-FINP-1))
 (340 96 (:REWRITE O-P-O-FIRST-EXPT-NEQ-0))
 (335 99 (:REWRITE O-FIRST-COEFF-<))
 (294 2 (:REWRITE |limitp.b  =>  a<b   <=>  a+1 < b|))
 (284 2 (:REWRITE LIMITP-DEF))
 (261 101 (:REWRITE AC-<))
 (255 101 (:REWRITE O-FINP-<))
 (155 22 (:REWRITE O-INFP-O-FINP-O<=))
 (155 5 (:REWRITE O+-O-FIRST-EXPT-SMASH-2))
 (149 149 (:REWRITE DEFAULT-CDR))
 (146 104 (:REWRITE |a < b & b < c  =>  a < c|))
 (116 2 (:REWRITE O+-O-FIRST-EXPT-2))
 (97 19 (:REWRITE O<=-O-FINP-DEF))
 (92 38 (:REWRITE NATP-POSP))
 (86 86 (:REWRITE O-FINP-O-RST))
 (77 77 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (77 77 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (74 2 (:REWRITE O-INFP-O+))
 (66 66 (:TYPE-PRESCRIPTION NATP))
 (60 30 (:REWRITE O-FIRST-EXPT-O-P))
 (43 43 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
 (38 38 (:REWRITE POSP-RW))
 (36 36 (:REWRITE NATP-RW))
 (34 17 (:TYPE-PRESCRIPTION O+-O-FINP))
 (30 30 (:TYPE-PRESCRIPTION POSP))
 (30 2 (:REWRITE O+-O-FIRST-EXPT-1))
 (14 2 (:REWRITE |0 < a  =  ~(a = 0)|))
 (12 12 (:REWRITE O+-ATOM-DEF))
 (12 2 (:REWRITE O-INFP-O+-3))
 (6 6 (:TYPE-PRESCRIPTION LIMITP))
 (4 2 (:REWRITE |a <= b & c < d  =>  a+c < b+d|))
 (4 2 (:REWRITE O-INFP-O+-2))
 (4 2 (:REWRITE LIMITP-O+))
 (2 2 (:REWRITE |~(a < a)|))
 (2 2 (:REWRITE |a <= b & c <= d  =>  a+c <= b+d|))
 (2 2 (:REWRITE |a <= b  =>  a+c <= b+c|))
 )
(OP-OCONS
 (3871 103 (:REWRITE O-FIRST-EXPT-<))
 (3314 398 (:REWRITE O-FIRST-EXPT-O-INFP))
 (2582 12 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (1217 224 (:REWRITE O-P-O-INFP-CAR))
 (1117 366 (:REWRITE DEFAULT-CAR))
 (1011 443 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (949 99 (:REWRITE O-FIRST-EXPT-0-NATP))
 (548 129 (:REWRITE O-INFP->NEQ-0))
 (451 239 (:REWRITE O-P-DEF-O-FINP-1))
 (374 99 (:REWRITE O-P-O-FIRST-EXPT-NEQ-0))
 (352 101 (:REWRITE O-FIRST-COEFF-<))
 (294 2 (:REWRITE |limitp.b  =>  a<b   <=>  a+1 < b|))
 (287 103 (:REWRITE AC-<))
 (284 2 (:REWRITE LIMITP-DEF))
 (281 103 (:REWRITE O-FINP-<))
 (173 23 (:REWRITE O-INFP-O-FINP-O<=))
 (155 5 (:REWRITE O+-O-FIRST-EXPT-SMASH-2))
 (148 106 (:REWRITE |a < b & b < c  =>  a < c|))
 (136 132 (:REWRITE DEFAULT-CDR))
 (116 2 (:REWRITE O+-O-FIRST-EXPT-2))
 (105 20 (:REWRITE O<=-O-FINP-DEF))
 (96 39 (:REWRITE NATP-POSP))
 (92 88 (:REWRITE O-FINP-O-RST))
 (79 79 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (79 79 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (74 2 (:REWRITE O-INFP-O+))
 (68 68 (:TYPE-PRESCRIPTION NATP))
 (60 30 (:REWRITE O-FIRST-EXPT-O-P))
 (46 44 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
 (39 39 (:REWRITE POSP-RW))
 (37 37 (:REWRITE NATP-RW))
 (34 17 (:TYPE-PRESCRIPTION O+-O-FINP))
 (30 30 (:TYPE-PRESCRIPTION POSP))
 (30 2 (:REWRITE O+-O-FIRST-EXPT-1))
 (14 2 (:REWRITE |0 < a  =  ~(a = 0)|))
 (12 12 (:REWRITE O+-ATOM-DEF))
 (12 2 (:REWRITE O-INFP-O+-3))
 (6 6 (:TYPE-PRESCRIPTION LIMITP))
 (4 2 (:REWRITE |a <= b & c < d  =>  a+c < b+d|))
 (4 2 (:REWRITE O-INFP-O+-2))
 (4 2 (:REWRITE LIMITP-O+))
 (2 2 (:REWRITE |~(a < a)|))
 (2 2 (:REWRITE |a <= b & c <= d  =>  a+c <= b+d|))
 (2 2 (:REWRITE |a <= b  =>  a+c <= b+c|))
 )
(OCONSP-EQUAL
 (7697 140 (:REWRITE O-FIRST-EXPT-<))
 (7126 899 (:REWRITE O-FIRST-EXPT-O-INFP))
 (4042 1293 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (3723 952 (:REWRITE O-P-DEF-O-FINP-1))
 (2654 1958 (:REWRITE DEFAULT-CAR))
 (2205 394 (:REWRITE O-INFP->NEQ-0))
 (2030 215 (:REWRITE O-FIRST-EXPT-0-NATP))
 (1297 136 (:REWRITE O-FIRST-COEFF-<))
 (1098 215 (:REWRITE O-P-O-FIRST-EXPT-NEQ-0))
 (1008 282 (:REWRITE NATP-POSP))
 (807 794 (:REWRITE DEFAULT-CDR))
 (751 42 (:REWRITE O<=-O-FINP-DEF))
 (624 140 (:REWRITE O-FINP-<))
 (624 140 (:REWRITE AC-<))
 (530 530 (:TYPE-PRESCRIPTION NATP))
 (468 42 (:REWRITE O-INFP-O-FINP-O<=))
 (380 380 (:REWRITE O-FINP-O-RST))
 (354 354 (:TYPE-PRESCRIPTION POSP))
 (336 336 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (336 336 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (282 282 (:REWRITE POSP-RW))
 (278 278 (:REWRITE NATP-RW))
 (196 140 (:REWRITE |a < b & b < c  =>  a < c|))
 (190 190 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
 (112 56 (:REWRITE O-FIRST-EXPT-O-P))
 (4 4 (:REWRITE |~(a < a)|))
 )
(LEN-LEN-INDUCTION
 (73 36 (:REWRITE DEFAULT-+-2))
 (45 36 (:REWRITE DEFAULT-+-1))
 (30 3 (:REWRITE O<=-O-FINP-DEF))
 (22 22 (:REWRITE DEFAULT-CDR))
 (11 3 (:REWRITE AC-<))
 (7 3 (:REWRITE O-INFP-O-FINP-O<=))
 (3 3 (:REWRITE |a < b & b < c  =>  a < c|))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(ORDINAL-DOUBLE-CONTAINMENT-EXPENSIVE
 (48 4 (:REWRITE O-FIRST-EXPT-<))
 (24 10 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (24 4 (:REWRITE O-FIRST-COEFF-<))
 (18 6 (:REWRITE O-FIRST-EXPT-O-INFP))
 (12 4 (:REWRITE O-FINP-<))
 (12 4 (:REWRITE AC-<))
 (12 2 (:REWRITE O-INFP-O-FINP-O<=))
 (6 2 (:REWRITE O<=-O-FINP-DEF))
 (6 2 (:REWRITE O-P-DEF-O-FINP-1))
 (4 4 (:REWRITE |a < b & b < c  =>  a < c|))
 (3 1 (:REWRITE OCONSP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION OCONSP))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(CHARTOO)
(OP-CHARTOO
 (1 1 (:REWRITE DEFAULT-CHAR-CODE))
 )
(CODE-CHAR-CHAR-CODE-IS-IDENTITY-WEAKER
 (12 1 (:REWRITE DEFAULT-CODE-CHAR))
 (4 2 (:LINEAR CHAR-CODE-LINEAR))
 (3 3 (:REWRITE DEFAULT-CHAR-CODE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(CHARACTERP-REDUCTION
 (12 1 (:REWRITE DEFAULT-CODE-CHAR))
 (4 4 (:REWRITE DEFAULT-CHAR-CODE))
 (4 2 (:LINEAR CHAR-CODE-LINEAR))
 (3 1 (:REWRITE OCONSP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION OCONSP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EQUAL-CHARTOO-REDUCTION
 (35 6 (:REWRITE DEFAULT-CODE-CHAR))
 (21 9 (:REWRITE OCONSP-EQUAL))
 (12 12 (:TYPE-PRESCRIPTION OCONSP))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(CHAR-LISTOO
 (36 6 (:REWRITE O-P-DEF-O-FINP-1))
 (19 19 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 (12 12 (:TYPE-PRESCRIPTION O-FINP))
 )
(OP-CHAR-LISTOO
 (18 3 (:REWRITE O-P-DEF-O-FINP-1))
 (9 9 (:TYPE-PRESCRIPTION CHAR-LISTOO))
 (6 6 (:TYPE-PRESCRIPTION O-FINP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(EQUAL-CHAR-LISTOO-REDUCTION
 (533 45 (:REWRITE O-FIRST-EXPT-O-INFP))
 (530 3 (:REWRITE |limitp.b  =>  a<b   <=>  a+1 < b|))
 (512 3 (:REWRITE LIMITP-DEF))
 (364 12 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (350 57 (:REWRITE O-FIRST-EXPT-<))
 (266 94 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (175 55 (:REWRITE O-FIRST-COEFF-<))
 (175 25 (:REWRITE O-INFP-O-FINP-O<=))
 (164 57 (:REWRITE AC-<))
 (154 57 (:REWRITE O-FINP-<))
 (146 3 (:REWRITE O-INFP-O+-3))
 (140 136 (:REWRITE DEFAULT-CDR))
 (132 6 (:REWRITE O+-O-FIRST-EXPT-2))
 (117 113 (:REWRITE DEFAULT-CAR))
 (111 3 (:REWRITE O+-O-FIRST-EXPT-SMASH-2))
 (90 68 (:REWRITE |a < b & b < c  =>  a < c|))
 (86 11 (:REWRITE |~(a<0)|))
 (70 3 (:REWRITE |a <= b & c < d  =>  a+c < b+d|))
 (69 3 (:REWRITE |a <= b & c <= d  =>  a+c <= b+d|))
 (69 3 (:REWRITE O-INFP-O+))
 (58 23 (:REWRITE O-P-DEF-O-FINP-1))
 (57 8 (:LINEAR O-FIRST-EXPT-<=))
 (54 19 (:REWRITE O-FIRST-EXPT-O-P))
 (52 14 (:REWRITE O<=-O-FINP-DEF))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 5 (:REWRITE O-INFP->NEQ-0))
 (21 3 (:REWRITE O-FIRST-EXPT-0-NATP))
 (13 3 (:REWRITE |a <= b  =>  a+c <= b+c|))
 (12 8 (:REWRITE DEFAULT-+-2))
 (12 8 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE O-P-O-FIRST-EXPT-NEQ-0))
 (9 3 (:REWRITE LIMITP-O+))
 (8 8 (:TYPE-PRESCRIPTION LIMITP))
 (5 3 (:REWRITE O-INFP-O+-2))
 (2 2 (:REWRITE |~(a < a)|))
 )
(STRINGTOO)
(OP-STRINGTOO)
(EQUAL-COERCE-REDUCTION
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 4 (:REWRITE OCONSP-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION OCONSP))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (5 5 (:REWRITE DEFAULT-COERCE-3))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EQUAL-STRINGTOO-REDUCTION
 (6 2 (:DEFINITION CHAR-LISTOO))
 (4 2 (:REWRITE OCONSP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION OCONSP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SYMBOLTOO)
(OP-SYMBOLTOO
 (1 1 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(EQUAL-0+-1-REDUCTION
 (362 23 (:REWRITE O-FIRST-EXPT-O-INFP))
 (286 2 (:REWRITE |limitp.b  =>  a<b   <=>  a+1 < b|))
 (277 2 (:REWRITE LIMITP-DEF))
 (190 36 (:REWRITE O-FIRST-EXPT-<))
 (138 36 (:REWRITE O-FIRST-COEFF-<))
 (136 68 (:TYPE-PRESCRIPTION O+-O-FINP))
 (126 23 (:REWRITE O-INFP-O-FINP-O<=))
 (115 2 (:REWRITE |a <= b & c <= d  =>  a+c <= b+d|))
 (92 2 (:REWRITE |a <= b & c < d  =>  a+c < b+d|))
 (86 43 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (78 36 (:REWRITE AC-<))
 (71 36 (:REWRITE O-FINP-<))
 (64 2 (:REWRITE O-INFP-O+-3))
 (60 2 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (45 2 (:REWRITE O-INFP-O+))
 (43 43 (:REWRITE |a < b & b < c  =>  a < c|))
 (39 7 (:REWRITE |~(a<0)|))
 (36 14 (:REWRITE O-P-DEF-O-FINP-1))
 (36 2 (:REWRITE O+-O-FIRST-EXPT-2))
 (31 16 (:REWRITE O<=-O-FINP-DEF))
 (22 2 (:REWRITE |a <= b  =>  a+c <= b+c|))
 (17 5 (:LINEAR O-FIRST-EXPT-<=))
 (12 12 (:REWRITE O-FIRST-EXPT-O-P))
 (5 5 (:TYPE-PRESCRIPTION LIMITP))
 (3 2 (:REWRITE O-INFP-O+-2))
 (3 2 (:REWRITE LIMITP-O+))
 (2 2 (:REWRITE O+-ATOM-DEF))
 )
(EQUAL-STRING-DOUBLE-CONTAINMENT-EXPENSIVE
 (10 2 (:REWRITE STRING<-L-ASYMMETRIC))
 (7 3 (:REWRITE OCONSP-EQUAL))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION OCONSP))
 (4 4 (:REWRITE STRING<-L-TRANSITIVE))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EQUAL-SYMBOL-DOUBLE-CONTAINMENT-EXPENSIVE
 (17 3 (:REWRITE SYMBOL<-ASYMMETRIC))
 (7 3 (:REWRITE OCONSP-EQUAL))
 (5 5 (:REWRITE SYMBOL<-TRANSITIVE))
 (4 4 (:TYPE-PRESCRIPTION OCONSP))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EQUAL-SYMBOLTOO-REDUCTION
 (132 4 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (64 8 (:REWRITE O-FIRST-EXPT-<))
 (36 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (32 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (24 8 (:REWRITE O-FINP-<))
 (24 8 (:REWRITE AC-<))
 (16 4 (:REWRITE O+-ATOM-DEF))
 (14 14 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (14 14 (:REWRITE DEFAULT-SYMBOL-NAME))
 (8 8 (:REWRITE |a < b & b < c  =>  a < c|))
 (8 8 (:REWRITE O-FIRST-COEFF-<))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL<))
 )
(INTOO
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(EQUAL-INTOO-REDUCTION
 (22 10 (:REWRITE DEFAULT-CDR))
 (22 10 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 )
(OP-INTOO
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION OCONS))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(RATIONALTOO
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 )
(OP-RATIONALTOO
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 )
(EQUAL-RATIONAL-REDUCTION
 (18 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (10 4 (:REWRITE OCONSP-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION OCONSP))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE EQUAL-DENOMINATOR-1))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(EQUAL-RATIONALTOO-REDUCTION
 (146 32 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (116 4 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (104 8 (:LINEAR X*Y>1-POSITIVE))
 (88 8 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (64 8 (:REWRITE O-FIRST-EXPT-<))
 (40 40 (:TYPE-PRESCRIPTION O-FINP))
 (40 8 (:REWRITE COMMUTATIVITY-OF-*))
 (39 39 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (32 32 (:REWRITE DEFAULT-*-2))
 (32 32 (:REWRITE DEFAULT-*-1))
 (28 28 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (28 28 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (24 24 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (24 24 (:REWRITE DEFAULT-DENOMINATOR))
 (24 8 (:REWRITE O-FINP-<))
 (24 8 (:REWRITE AC-<))
 (20 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (16 16 (:REWRITE DEFAULT-UNARY-/))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 8 (:REWRITE UNICITY-OF-1))
 (15 15 (:REWRITE EQUAL-DENOMINATOR-1))
 (12 6 (:REWRITE DEFAULT-CDR))
 (12 6 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE |a < b & b < c  =>  a < c|))
 (8 8 (:REWRITE O-FIRST-COEFF-<))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:DEFINITION FIX))
 (8 4 (:REWRITE O+-ATOM-DEF))
 )
(COMPLEXTOO
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 )
(OP-COMPLEXTOO
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 )
(EQUAL-COMPLEXTOO-REDUCTION
 (116 4 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (64 8 (:REWRITE O-FIRST-EXPT-<))
 (40 40 (:TYPE-PRESCRIPTION O-FINP))
 (24 8 (:REWRITE O-FINP-<))
 (24 8 (:REWRITE AC-<))
 (20 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (12 6 (:REWRITE DEFAULT-CDR))
 (12 6 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 8 (:REWRITE |a < b & b < c  =>  a < c|))
 (8 8 (:REWRITE O-FIRST-COEFF-<))
 (8 4 (:REWRITE O+-ATOM-DEF))
 (3 3 (:REWRITE DEFAULT-COMPLEX-2))
 (3 3 (:REWRITE DEFAULT-COMPLEX-1))
 )
(NUMTOO
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(OP-NUMTOO
 (3 1 (:REWRITE O-P-DEF-O-FINP-1))
 (2 2 (:TYPE-PRESCRIPTION OCONS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(EQUAL-NUMTOO-REDUCTION
 (116 4 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (64 8 (:REWRITE O-FIRST-EXPT-<))
 (40 40 (:TYPE-PRESCRIPTION O-FINP))
 (30 14 (:REWRITE DEFAULT-CDR))
 (30 14 (:REWRITE DEFAULT-CAR))
 (24 8 (:REWRITE O-FINP-<))
 (24 8 (:REWRITE AC-<))
 (20 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (8 8 (:REWRITE |a < b & b < c  =>  a < c|))
 (8 8 (:REWRITE O-FIRST-COEFF-<))
 (8 4 (:REWRITE O+-ATOM-DEF))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(ATOMTOO)
(GOOD-ATOM)
(EQUAL-ATOMTOO-REDUCTION
 (182 6 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (96 12 (:REWRITE O-FIRST-EXPT-<))
 (72 36 (:REWRITE DEFAULT-CDR))
 (72 36 (:REWRITE DEFAULT-CAR))
 (38 12 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (36 12 (:REWRITE O-FINP-<))
 (36 12 (:REWRITE AC-<))
 (12 12 (:REWRITE |a < b & b < c  =>  a < c|))
 (12 12 (:REWRITE O-FIRST-COEFF-<))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(OP-ATOMTOO
 (5 1 (:REWRITE O-P-DEF-O-FINP-1))
 (4 4 (:TYPE-PRESCRIPTION OCONS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GOOD-TERM)
(*TOO)
(OP-*TOO
 (8 4 (:REWRITE O-P-DEF-O-FINP-1))
 (4 4 (:TYPE-PRESCRIPTION *TOO))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(*TOO)
(*TOO-INDUCTION
 (3526 340 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2668 1271 (:REWRITE DEFAULT-+-2))
 (2378 24 (:REWRITE O<=-O-FINP-DEF))
 (1820 1271 (:REWRITE DEFAULT-+-1))
 (1320 264 (:DEFINITION INTEGER-ABS))
 (1056 132 (:DEFINITION LENGTH))
 (660 132 (:DEFINITION LEN))
 (366 306 (:REWRITE DEFAULT-<-2))
 (350 306 (:REWRITE DEFAULT-<-1))
 (319 319 (:REWRITE DEFAULT-CDR))
 (264 264 (:REWRITE DEFAULT-UNARY-MINUS))
 (187 187 (:REWRITE DEFAULT-CAR))
 (148 18 (:REWRITE O-FIRST-EXPT-<))
 (132 132 (:TYPE-PRESCRIPTION LEN))
 (132 132 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (132 132 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (132 132 (:REWRITE DEFAULT-REALPART))
 (132 132 (:REWRITE DEFAULT-NUMERATOR))
 (132 132 (:REWRITE DEFAULT-IMAGPART))
 (132 132 (:REWRITE DEFAULT-DENOMINATOR))
 (132 132 (:REWRITE DEFAULT-COERCE-2))
 (132 132 (:REWRITE DEFAULT-COERCE-1))
 (132 24 (:REWRITE AC-<))
 (112 36 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (100 25 (:REWRITE O-P-O-INFP-CAR))
 (72 24 (:REWRITE O-INFP-O-FINP-O<=))
 (58 18 (:REWRITE O-FIRST-COEFF-<))
 (24 24 (:REWRITE |a < b & b < c  =>  a < c|))
 )
(EQUAL-*TOO-REDUCTION
 (436 16 (:REWRITE O+-O-FIRST-EXPT-SMASH))
 (433 355 (:REWRITE DEFAULT-CAR))
 (425 347 (:REWRITE DEFAULT-CDR))
 (240 30 (:REWRITE O-FIRST-EXPT-<))
 (192 48 (:REWRITE O-P-O-INFP-CAR))
 (150 150 (:TYPE-PRESCRIPTION O-FINP))
 (90 30 (:REWRITE O-FINP-<))
 (90 30 (:REWRITE AC-<))
 (75 30 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (48 48 (:REWRITE O-P-DEF-O-FINP-1))
 (44 44 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (44 44 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (32 16 (:REWRITE O+-ATOM-DEF))
 (30 30 (:REWRITE |a < b & b < c  =>  a < c|))
 (30 30 (:REWRITE O-FIRST-COEFF-<))
 )
(O<<)
(ORDINAL-ORDER-PROPERTY
 (67 7 (:REWRITE O-FIRST-EXPT-<))
 (52 7 (:REWRITE O-FIRST-COEFF-<))
 (21 21 (:TYPE-PRESCRIPTION O-FINP))
 (18 9 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (17 7 (:REWRITE O-FINP-<))
 (17 7 (:REWRITE AC-<))
 (12 6 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
 (12 4 (:REWRITE O-INFP-O-FINP-O<=))
 (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
 (8 4 (:REWRITE O<=-O-FINP-DEF))
 (7 7 (:REWRITE |a < b & b < c  =>  a < c|))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 3 (:REWRITE DEFAULT-<-2))
 (6 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(O<<-IS-WELL-FOUNDED)
