(FUNCTION-GUARD-OBLIGATION)
(ACL2S::SIMPLE-TERMP
 (526 19 (:REWRITE ACL2S::TRUE-LIST-LISTP-IMPLIES-TLP))
 (503 24 (:DEFINITION SYMBOL-LISTP))
 (488 17 (:DEFINITION TRUE-LIST-LISTP))
 (423 18 (:REWRITE ACL2S::SYMBOL-LISTP-IMPLIES-TLP))
 (359 337 (:REWRITE DEFAULT-CAR))
 (337 337 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (305 122 (:REWRITE DEFAULT-+-2))
 (256 18 (:REWRITE ACL2S::PROPER-SYMBOL-LISTP-IMPLIES-TLP))
 (207 22 (:DEFINITION NAT-LISTP))
 (207 15 (:DEFINITION ACL2S::PROPER-SYMBOL-LISTP))
 (204 194 (:REWRITE DEFAULT-CDR))
 (177 122 (:REWRITE DEFAULT-+-1))
 (172 18 (:REWRITE ACL2S::BOOLEAN-LISTP-IMPLIES-TLP))
 (163 18 (:REWRITE ACL2S::KEYWORD-LISTP-IMPLIES-TLP))
 (158 158 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (158 158 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (157 18 (:REWRITE DEFDATA::NAT-LISTP--TRUE-LISTP))
 (148 18 (:REWRITE ACL2S::POS-LISTP-IMPLIES-TLP))
 (148 18 (:REWRITE ACL2S::NAT-LISTP-IMPLIES-TLP))
 (144 18 (:REWRITE ACL2S::ACL2-NUMBER-LISTP-IMPLIES-TLP))
 (143 5 (:REWRITE O<=-O-FINP-DEF))
 (142 18 (:REWRITE ACL2S::STRING-LISTP-IMPLIES-TLP))
 (142 18 (:REWRITE ACL2S::RATIONAL-LISTP-IMPLIES-TLP))
 (142 18 (:REWRITE ACL2S::INTEGER-LISTP-IMPLIES-TLP))
 (142 18 (:REWRITE ACL2S::COMPLEX-RATIONAL-LISTP-IMPLIES-TLP))
 (123 11 (:DEFINITION BOOLEAN-LISTP))
 (114 11 (:DEFINITION ACL2S::KEYWORD-LISTP))
 (99 11 (:DEFINITION ACL2S::POS-LISTP))
 (96 43 (:REWRITE DEFDATA::PROPER-SYMBOL-LISTP-IS-SYMBOL-LIST))
 (95 11 (:DEFINITION ACL2-NUMBER-LISTP))
 (93 11 (:DEFINITION STRING-LISTP))
 (93 11 (:DEFINITION RATIONAL-LISTP))
 (93 11 (:DEFINITION INTEGER-LISTP))
 (93 11 (:DEFINITION ACL2S::COMPLEX-RATIONAL-LISTP))
 (86 19 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (79 33 (:REWRITE O-P-O-INFP-CAR))
 (75 19 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (58 58 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (58 4 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (57 57 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (55 27 (:REWRITE DEFAULT-<-2))
 (53 53 (:TYPE-PRESCRIPTION DEFDATA::PROPER-SYMBOL-LISTP))
 (52 52 (:TYPE-PRESCRIPTION NAT-LISTP))
 (48 12 (:DEFINITION INTEGER-ABS))
 (43 43 (:REWRITE ACL2S::DEF=>SYMBOL-LIST))
 (43 11 (:DEFINITION ACL2S::PROPER-SYMBOLP))
 (40 12 (:REWRITE LEN-WHEN-ATOM))
 (36 27 (:REWRITE DEFAULT-<-1))
 (34 34 (:TYPE-PRESCRIPTION ACL2S::PROPER-SYMBOL-LISTP))
 (34 34 (:REWRITE ACL2S::DEF=>ATOM-LIST))
 (32 4 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (32 4 (:REWRITE O-FIRST-EXPT-<))
 (31 31 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (31 9 (:DEFINITION KEYWORDP))
 (30 30 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (29 29 (:REWRITE ACL2S::DEF=>TRUE-LIST-LIST))
 (26 26 (:TYPE-PRESCRIPTION STRING-LISTP))
 (26 26 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::POS-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::KEYWORD-LISTP))
 (26 26 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::COMPLEX-RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2-NUMBER-LISTP))
 (26 26 (:REWRITE ACL2S::DEF=>NAT-LIST))
 (26 5 (:REWRITE AC-<))
 (24 12 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (24 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (22 22 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (21 21 (:REWRITE ACL2S::DEF=>PROPER-SYMBOL-LIST))
 (21 21 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (20 20 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (19 19 (:REWRITE TRUE-LISTP-WHEN-THEOREM-SYMBOL-LISTP))
 (19 19 (:REWRITE TRUE-LISTP-WHEN-TERMFN-LISTP))
 (19 19 (:REWRITE TRUE-LISTP-WHEN-MACRO-SYMBOL-LISTP))
 (19 19 (:REWRITE TRUE-LISTP-WHEN-LAMBDA-LISTP))
 (19 19 (:REWRITE TRUE-LISTP-WHEN-FUNCTION-SYMBOL-LISTP))
 (16 16 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (16 4 (:REWRITE O-FIRST-COEFF-<))
 (15 15 (:REWRITE ACL2S::DEF=>BOOLEAN-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>STRING-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>RATIONAL-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>POS-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>KEYWORD-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>INTEGER-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>COMPLEX-RATIONAL-LIST))
 (13 13 (:REWRITE ACL2S::DEF=>ACL2-NUMBER-LIST))
 (12 12 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (12 12 (:REWRITE SET::IN-SET))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 12 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (12 12 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (12 12 (:LINEAR LEN-WHEN-PREFIXP))
 (12 4 (:DEFINITION NATP))
 (10 10 (:TYPE-PRESCRIPTION O-FINP))
 (10 8 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (10 5 (:REWRITE O-INFP-O-FINP-O<=))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 6 (:TYPE-PRESCRIPTION LEGAL-CONSTANTP))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:LINEAR INDEX-OF-<-LEN))
 (6 2 (:DEFINITION POSP))
 (5 5 (:REWRITE |a < b & b < c  =>  a < c|))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ACL2S::APPEND-ALISTP
 (233 23 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (164 23 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (80 80 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (46 46 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (39 23 (:REWRITE ACL2S::DEF=>ALIST))
 (32 8 (:REWRITE O-P-O-INFP-CAR))
 (31 31 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (31 31 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (31 31 (:REWRITE CONSP-BY-LEN))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (19 16 (:REWRITE DEFAULT-CAR))
 (11 5 (:REWRITE APPEND-UNDER-IFF))
 (8 8 (:REWRITE O-P-DEF-O-FINP-1))
 (6 6 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(ACL2S::REV-ALISTP
 (277 30 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (183 29 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (68 17 (:REWRITE O-P-O-INFP-CAR))
 (59 59 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (48 30 (:REWRITE ACL2S::DEF=>ALIST))
 (37 37 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (37 37 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (37 37 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (37 37 (:REWRITE CONSP-BY-LEN))
 (36 36 (:REWRITE DEFAULT-CDR))
 (20 10 (:REWRITE REV-WHEN-NOT-CONSP))
 (20 10 (:REWRITE REV-UNDER-IFF))
 (19 19 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (17 17 (:REWRITE O-P-DEF-O-FINP-1))
 (9 9 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (6 1 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (5 1 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (3 1 (:DEFINITION NATP))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ACL2S::ALISTP-EXTRACT-KEYWORDS
 (443 28 (:REWRITE SUBSETP-CAR-MEMBER))
 (378 44 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (248 149 (:REWRITE DEFAULT-CAR))
 (234 44 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (202 57 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (165 165 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (165 165 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (165 165 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (165 165 (:REWRITE CONSP-BY-LEN))
 (152 16 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (149 149 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (142 142 (:REWRITE DEFAULT-CDR))
 (126 21 (:REWRITE MEMBER-WHEN-ATOM))
 (124 31 (:REWRITE O-P-O-INFP-CAR))
 (122 57 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (88 88 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (64 64 (:REWRITE SUBSETP-TRANS2))
 (64 64 (:REWRITE SUBSETP-TRANS))
 (48 4 (:REWRITE REV-OF-CONS))
 (44 44 (:REWRITE ACL2S::DEF=>ALIST))
 (36 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (31 31 (:REWRITE O-P-DEF-O-FINP-1))
 (30 30 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 28 (:REWRITE SUBSETP-MEMBER . 4))
 (28 28 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 3))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 2))
 (26 26 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (26 26 (:REWRITE SUBSETP-MEMBER . 2))
 (18 18 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (18 2 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (16 4 (:REWRITE ASSOCIATIVITY-OF-APPEND))
 (14 7 (:REWRITE REV-WHEN-NOT-CONSP))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (8 4 (:REWRITE REV-UNDER-IFF))
 (6 2 (:DEFINITION NATP))
 (4 4 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (4 4 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(ACL2S::XARGS-KWD-ALIST1)
(ACL2S::XARGS-KWD-ALIST)
(FIND-RUNED-LEMMA
 (424 189 (:REWRITE DEFAULT-+-2))
 (264 189 (:REWRITE DEFAULT-+-1))
 (160 40 (:DEFINITION INTEGER-ABS))
 (140 20 (:DEFINITION LENGTH))
 (138 59 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (133 6 (:REWRITE O<=-O-FINP-DEF))
 (80 20 (:REWRITE LEN-WHEN-ATOM))
 (64 49 (:REWRITE DEFAULT-<-2))
 (58 49 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 40 (:REWRITE DEFAULT-COERCE-2))
 (40 40 (:REWRITE DEFAULT-COERCE-1))
 (39 39 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (39 39 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (39 39 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (39 39 (:REWRITE CONSP-BY-LEN))
 (33 33 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (24 6 (:REWRITE AC-<))
 (24 4 (:REWRITE O-P-O-INFP-CAR))
 (20 20 (:REWRITE DEFAULT-REALPART))
 (20 20 (:REWRITE DEFAULT-NUMERATOR))
 (20 20 (:REWRITE DEFAULT-IMAGPART))
 (20 20 (:REWRITE DEFAULT-DENOMINATOR))
 (20 20 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (18 3 (:REWRITE O-FIRST-EXPT-<))
 (12 6 (:REWRITE O-INFP-O-FINP-O<=))
 (12 6 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (8 8 (:TYPE-PRESCRIPTION O-FINP))
 (7 7 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (6 6 (:REWRITE |a < b & b < c  =>  a < c|))
 (6 3 (:REWRITE O-FIRST-COEFF-<))
 (3 1 (:REWRITE UNICITY-OF-0))
 (2 1 (:DEFINITION FIX))
 )
(CONTROLLER-ALIST)
(ACL2S::C-IS-T)
(ACL2S::TYPE-OF-PRED-AUX
 (530 12 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (494 12 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (490 6 (:DEFINITION SYMBOL-ALISTP))
 (116 22 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (114 4 (:DEFINITION ALISTP))
 (110 110 (:REWRITE DEFAULT-CAR))
 (110 110 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (80 26 (:REWRITE O-P-O-INFP-CAR))
 (74 8 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (72 72 (:REWRITE DEFAULT-CDR))
 (69 69 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (69 69 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (69 69 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (69 69 (:REWRITE CONSP-BY-LEN))
 (60 60 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (50 8 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (44 44 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (35 35 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (32 4 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (28 28 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (16 16 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (14 14 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (14 14 (:REWRITE O-P-DEF-O-FINP-1))
 (12 12 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (11 11 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 (8 8 (:REWRITE ACL2S::DEF=>ALIST))
 (7 7 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(ACL2S::TYPE-OF-PRED
 (2225 50 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (2125 25 (:DEFINITION SYMBOL-ALISTP))
 (2075 50 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (716 545 (:REWRITE DEFAULT-CAR))
 (588 98 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (545 545 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (396 124 (:REWRITE O-P-O-INFP-CAR))
 (383 313 (:REWRITE DEFAULT-CDR))
 (312 312 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (312 312 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (312 312 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (312 312 (:REWRITE CONSP-BY-LEN))
 (250 250 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (200 25 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (196 196 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (146 146 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (144 144 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (87 10 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (74 74 (:REWRITE O-P-DEF-O-FINP-1))
 (73 73 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (57 10 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (50 50 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (41 41 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 (28 28 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (20 20 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (10 10 (:REWRITE ACL2S::DEF=>ALIST))
 )
(ACL2S::ENUM-OF-TYPE
 (445 10 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (425 5 (:DEFINITION SYMBOL-ALISTP))
 (415 10 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (130 112 (:REWRITE DEFAULT-CAR))
 (114 19 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (112 112 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (88 68 (:REWRITE DEFAULT-CDR))
 (88 27 (:REWRITE O-P-O-INFP-CAR))
 (87 10 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (70 70 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (70 70 (:REWRITE CONSP-BY-LEN))
 (57 10 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (50 50 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (40 5 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (38 38 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (34 34 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 28 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (17 17 (:REWRITE O-P-DEF-O-FINP-1))
 (14 14 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (10 10 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (10 10 (:REWRITE ACL2S::DEF=>ALIST))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 6 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 )
(ACL2S::BASE-VAL-OF-TYPE
 (445 10 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (425 5 (:DEFINITION SYMBOL-ALISTP))
 (415 10 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (130 112 (:REWRITE DEFAULT-CAR))
 (114 19 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (112 112 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (88 68 (:REWRITE DEFAULT-CDR))
 (88 27 (:REWRITE O-P-O-INFP-CAR))
 (87 10 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (70 70 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (70 70 (:REWRITE CONSP-BY-LEN))
 (57 10 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (50 50 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (40 5 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (38 38 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (34 34 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 28 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (17 17 (:REWRITE O-P-DEF-O-FINP-1))
 (14 14 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (10 10 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (10 10 (:REWRITE ACL2S::DEF=>ALIST))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 6 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 )
(ACL2S::UNALIAS-PRED
 (1068 24 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (1020 12 (:DEFINITION SYMBOL-ALISTP))
 (996 24 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (530 323 (:REWRITE DEFAULT-CAR))
 (323 323 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (276 46 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (256 176 (:REWRITE DEFAULT-CDR))
 (256 76 (:REWRITE O-P-O-INFP-CAR))
 (190 190 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (190 190 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (190 190 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (190 190 (:REWRITE CONSP-BY-LEN))
 (120 120 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (96 12 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (92 92 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (87 10 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (81 81 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (68 68 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (57 10 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (52 52 (:REWRITE O-P-DEF-O-FINP-1))
 (34 34 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (24 24 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (20 20 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (15 15 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 (15 15 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (10 10 (:REWRITE ACL2S::DEF=>ALIST))
 )
(ACL2S::PRED-OF-OC)
(ACL2S::MAP-FORCE-LIST)
(ACL2S::MAP-FORCE-IC)
(ACL2S::WRAP-TEST-SKIP)
(ACL2S::ADD-OUTPUT-CONTRACT-CHECK)
(ACL2S::GET-UNDEF-NAME)
(ACL2S::MAKE-DEFUN-BODY/LOGIC)
(ACL2S::MAKE-DEFUN-BODY/EXEC)
(FIND-RUNED-TYPE-PRESCRIPTION
 (1289 471 (:REWRITE DEFAULT-+-2))
 (684 471 (:REWRITE DEFAULT-+-1))
 (328 82 (:DEFINITION INTEGER-ABS))
 (287 41 (:DEFINITION LENGTH))
 (267 113 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (256 9 (:REWRITE O<=-O-FINP-DEF))
 (164 41 (:REWRITE LEN-WHEN-ATOM))
 (127 94 (:REWRITE DEFAULT-<-2))
 (106 94 (:REWRITE DEFAULT-<-1))
 (82 82 (:REWRITE DEFAULT-UNARY-MINUS))
 (82 82 (:REWRITE DEFAULT-COERCE-2))
 (82 82 (:REWRITE DEFAULT-COERCE-1))
 (72 72 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (72 72 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (72 72 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (72 72 (:REWRITE CONSP-BY-LEN))
 (66 66 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (48 9 (:REWRITE AC-<))
 (48 8 (:REWRITE O-P-O-INFP-CAR))
 (41 41 (:REWRITE DEFAULT-REALPART))
 (41 41 (:REWRITE DEFAULT-NUMERATOR))
 (41 41 (:REWRITE DEFAULT-IMAGPART))
 (41 41 (:REWRITE DEFAULT-DENOMINATOR))
 (26 26 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (18 9 (:REWRITE O-INFP-O-FINP-O<=))
 (18 3 (:REWRITE O-FIRST-EXPT-<))
 (16 16 (:TYPE-PRESCRIPTION O-FINP))
 (15 15 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (12 6 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (9 9 (:REWRITE |a < b & b < c  =>  a < c|))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 3 (:REWRITE O-FIRST-COEFF-<))
 (4 4 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (3 1 (:REWRITE UNICITY-OF-0))
 (2 1 (:DEFINITION FIX))
 )
(TRUNCATED-CLASS
 (188 93 (:REWRITE DEFAULT-+-2))
 (128 93 (:REWRITE DEFAULT-+-1))
 (114 24 (:REWRITE DEFAULT-CDR))
 (95 23 (:REWRITE COMMUTATIVITY-OF-+))
 (89 39 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (88 22 (:DEFINITION INTEGER-ABS))
 (77 11 (:DEFINITION LENGTH))
 (76 4 (:REWRITE O<=-O-FINP-DEF))
 (44 11 (:REWRITE LEN-WHEN-ATOM))
 (42 17 (:REWRITE DEFAULT-CAR))
 (37 29 (:REWRITE DEFAULT-<-2))
 (36 29 (:REWRITE DEFAULT-<-1))
 (30 5 (:REWRITE O-P-O-INFP-CAR))
 (28 28 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (28 28 (:REWRITE CONSP-BY-LEN))
 (22 22 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 22 (:REWRITE DEFAULT-COERCE-2))
 (22 22 (:REWRITE DEFAULT-COERCE-1))
 (18 3 (:REWRITE O-FIRST-EXPT-<))
 (17 17 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (16 16 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (13 4 (:REWRITE AC-<))
 (12 6 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (11 11 (:REWRITE DEFAULT-REALPART))
 (11 11 (:REWRITE DEFAULT-NUMERATOR))
 (11 11 (:REWRITE DEFAULT-IMAGPART))
 (11 11 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:TYPE-PRESCRIPTION O-FINP))
 (8 4 (:REWRITE O-INFP-O-FINP-O<=))
 (6 3 (:REWRITE O-FIRST-COEFF-<))
 (4 4 (:REWRITE |a < b & b < c  =>  a < c|))
 (3 3 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (3 1 (:REWRITE UNICITY-OF-0))
 (2 1 (:DEFINITION FIX))
 )
(COROLLARY)
(FORMULA)
(ACL2S::MAKE-GENERIC-TYPED-DEFUNC-EVENTS)
(ACL2S::MAKE-CONTRACT-BODY)
(ACL2S::MAKE-CONTRACT-DEFTHM)
(ACL2S::JUST-TYPE-HYPS1)
(ACL2S::JUST-TYPE-HYPS)
(ACL2S::SUBLISS)
(ACL2S::NEG-LITERAL)
(ACL2S::NEG-HYPS)
(ACL2S::EXISTS-SUBSET)
(ACL2S::MAKE-GEN-HINT-BODY)
(ACL2S::MAKE-CONTRACT-EV)
(ACL2S::MAKE-VERIFY-GUARDS-EV
 (18 18 (:TYPE-PRESCRIPTION DEFDATA::GET1-FN))
 )
(ACL2S::ACL2S-UNDEFINED)
(ACL2S::ACL2S-D-UNDEFINED)
(ACL2S::GATHER-ALIAS1)
(ACL2S::GATHER-ALIAS)
(ACL2S::TYPE-OF-TYPE
 (2136 48 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (2040 24 (:DEFINITION SYMBOL-ALISTP))
 (1992 48 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (699 528 (:REWRITE DEFAULT-CAR))
 (564 94 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (528 528 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (388 121 (:REWRITE O-P-O-INFP-CAR))
 (374 304 (:REWRITE DEFAULT-CDR))
 (304 304 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (304 304 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (304 304 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (304 304 (:REWRITE CONSP-BY-LEN))
 (240 240 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (192 24 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (188 188 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (140 140 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (139 139 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (98 12 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (73 73 (:REWRITE O-P-DEF-O-FINP-1))
 (70 70 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (62 12 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (48 48 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (39 39 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 (27 27 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (24 24 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (12 12 (:REWRITE ACL2S::DEF=>ALIST))
 )
(ACL2S::PRED-OF-TYPE
 (2492 56 (:REWRITE CGEN::SYMBOL-DOUBLET-LISTP-=>-SYMBOL-ALISTP))
 (2380 28 (:DEFINITION SYMBOL-ALISTP))
 (2324 56 (:DEFINITION SYMBOL-DOUBLET-LISTP))
 (858 624 (:REWRITE DEFAULT-CAR))
 (660 110 (:REWRITE SYMBOLP-OF-CAAR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (624 624 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (476 147 (:REWRITE O-P-O-INFP-CAR))
 (458 363 (:REWRITE DEFAULT-CDR))
 (370 370 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (370 370 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (370 370 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (370 370 (:REWRITE CONSP-BY-LEN))
 (280 280 (:TYPE-PRESCRIPTION SYMBOL-DOUBLET-LISTP))
 (224 28 (:REWRITE SYMBOL-SYMBOL-ALISTP-OF-CDR-WHEN-SYMBOL-SYMBOL-ALISTP))
 (220 220 (:REWRITE SYMBOLP-OF-CAR-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP))
 (170 170 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (164 164 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-SUBSETP-EQUAL))
 (161 18 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (107 18 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (91 91 (:REWRITE O-P-DEF-O-FINP-1))
 (82 82 (:REWRITE SYMBOL-SYMBOL-ALISTP-WHEN-NOT-CONSP))
 (56 56 (:REWRITE ACL2S::DEF=>SYMBOL-ALIST))
 (47 47 (:REWRITE DEFDATA::DEF=>SYM-AALIST))
 (36 36 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (34 34 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (18 18 (:REWRITE ACL2S::DEF=>ALIST))
 )
(ACL2S::MAKE-CONTRACT)
(ACL2S::ACL2-COUNT-APPEND
 (551 264 (:REWRITE DEFAULT-+-2))
 (387 264 (:REWRITE DEFAULT-+-1))
 (321 117 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (185 32 (:REWRITE DEFAULT-CDR))
 (138 30 (:REWRITE LEN-WHEN-ATOM))
 (137 137 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (100 50 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (98 73 (:REWRITE DEFAULT-<-1))
 (87 87 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (87 87 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (87 87 (:REWRITE CONSP-BY-LEN))
 (87 73 (:REWRITE DEFAULT-<-2))
 (67 37 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE DEFAULT-UNARY-MINUS))
 (60 60 (:REWRITE DEFAULT-COERCE-2))
 (60 60 (:REWRITE DEFAULT-COERCE-1))
 (50 50 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (44 44 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (34 34 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (30 30 (:REWRITE DEFAULT-REALPART))
 (30 30 (:REWRITE DEFAULT-NUMERATOR))
 (30 30 (:REWRITE DEFAULT-IMAGPART))
 (30 30 (:REWRITE DEFAULT-DENOMINATOR))
 (11 11 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (11 5 (:REWRITE O-P-O-INFP-CAR))
 (4 4 (:TYPE-PRESCRIPTION O-P))
 (2 2 (:REWRITE O-P-DEF-O-FINP-1))
 )
(ACL2S::SIMPLIFY-CONSTANT-TYPES
 (315 1 (:REWRITE O<=-O-FINP-DEF))
 (182 89 (:REWRITE DEFAULT-+-2))
 (131 89 (:REWRITE DEFAULT-+-1))
 (130 47 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (96 15 (:REWRITE DEFAULT-CDR))
 (78 6 (:REWRITE CONSP-OF-APPEND))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (65 65 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (54 27 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (51 3 (:REWRITE CAR-OF-APPEND))
 (45 9 (:REWRITE LEN-WHEN-ATOM))
 (41 23 (:REWRITE DEFAULT-CAR))
 (38 38 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (38 38 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (38 38 (:REWRITE CONSP-BY-LEN))
 (32 3 (:REWRITE SUBSETP-CAR-MEMBER))
 (30 30 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (26 26 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (21 19 (:REWRITE DEFAULT-<-2))
 (21 3 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (21 3 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (20 19 (:REWRITE DEFAULT-<-1))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (13 3 (:REWRITE SUBSETP-CONS-2))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (5 5 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (5 5 (:REWRITE SUBSETP-TRANS2))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (4 4 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (4 1 (:REWRITE O-P-O-INFP-CAR))
 (4 1 (:REWRITE AC-<))
 (3 3 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (3 3 (:REWRITE SUBSETP-MEMBER . 4))
 (3 3 (:REWRITE SUBSETP-MEMBER . 3))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 3))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 2))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE O-P-DEF-O-FINP-1))
 )
(ACL2S::MERGE-SIMPLIFY-TYPES)
(ACL2S::GET1-ALIAS
 (6 6 (:TYPE-PRESCRIPTION DEFDATA::GET1-FN))
 )
(ACL2S::FILTER-KEYWORDS)
(ACL2S::SHOW-CONTRACT-VIOLATIONS?)
(ACL2S::SHOW-CONTRACT-VIOLATIONS)
(ACL2S::DO-NOT-SHOW-CONTRACT-VIOLATIONS)
(ACL2S::ACL2S-UNDEFINED-ATTACHED)
(ACL2S::ACL2S-D-UNDEFINED-ATTACHED)
(MODIFY-XARGS-DECL)
(UPDATE-XARGS-DECLS-FN
 (5 5 (:TYPE-PRESCRIPTION LAST))
 )
(ACL2S::PRINT-TIME-TAKEN)
(ACL2S::PRINT-SUMMARY-EV
 (1 1 (:TYPE-PRESCRIPTION DEFDATA::GET1-FN))
 )
(ACL2S::PRINT-*-OR-SPACE)
(ACL2S::MAKE-DEFUN-NO-GUARD-EV)
(ACL2S::TIMEOUT-ABORT-FN)
(ACL2S::DEFUNC-EVENTS-WITH-STATICP-FLAG)
(ACL2S::PROGRAM-MODE-DEFUNC-EVENTS)
(ACL2S::PRINT-GUARD-EXTRA-INFO-HYPS)
(ACL2S::TEST-BODY-CONTRACTS1)
(ACL2S::TEST-BODY-CONTRACTS)
(ACL2S::TEST?-PHASE)
(ACL2S::MAKE-SHOW-FAILURE-MSG-EV)
(ACL2S::EVENTS-SEEN-LIST)
(ACL2S::FILTER-XARGS-DECLS)
(ACL2S::UNION-KEYWORD-VALUE-LISTS
 (263 10 (:DEFINITION ACL2-COUNT))
 (143 1 (:REWRITE O<=-O-FINP-DEF))
 (77 35 (:REWRITE DEFAULT-+-2))
 (51 35 (:REWRITE DEFAULT-+-1))
 (28 6 (:REWRITE ACL2-COUNT-WHEN-MEMBER))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (21 3 (:DEFINITION LENGTH))
 (19 8 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (18 12 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE FOLD-CONSTS-IN-+))
 (12 3 (:REWRITE LEN-WHEN-ATOM))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (10 10 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (10 8 (:REWRITE DEFAULT-<-2))
 (10 8 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (5 5 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (4 4 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 (4 4 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (4 4 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 1 (:REWRITE AC-<))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(COLLECT-XARGS-INTO-SINGLE-DECLARE
 (3 3 (:TYPE-PRESCRIPTION ACL2S::UNION-KEYWORD-VALUE-LISTS))
 )
(ACL2S::SQUEEZE-MULTIPLE-XARG-DECLS)
(ACL2S::FIX-TERMINATION-XARG-DECLS)
(ACL2S::FILTER-STRINGS)
(DEFDATA::REMOVE1-ASSOC-EQ-LST)
(ACL2S::DEFUNC-TABLE)
(ACL2S::THEREIS-PROGRAMP)
(ACL2S::PROGRAM-MODE-P)
(ACL2S::REPLACE-ASSOC-EQUAL)
(ACL2S::PARSE-DEFUNC)
(ACL2S::MAKE-UNDEFINED-AUX)
(ACL2S::MAKE-UNDEFINED)
(ACL2S::DEFUNC-EVENTS)
(ACL2S::GENERATE-DEFUNC-DEFINEC-MACROS-FN)
(ACL2S::GENERATE-DEFUNC-DEFINEC-MACROS-FNS)
