(AXE-BIND-FREE-RESULT-OKAYP
     (937 27 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (551 25 (:REWRITE DEFAULT-CDR))
     (222 15
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (106 106 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (106 106 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (106 106 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (92 46
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (71 40 (:REWRITE DEFAULT-+-2))
     (69 38 (:REWRITE DEFAULT-<-2))
     (48 48
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (40 40 (:REWRITE DEFAULT-+-1))
     (38 38 (:REWRITE USE-ALL-<-2))
     (38 38 (:REWRITE USE-ALL-<))
     (38 38 (:REWRITE DEFAULT-<-1))
     (38 38 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (27 27 (:REWRITE USE-ALL-CONSP-2))
     (27 27 (:REWRITE USE-ALL-CONSP))
     (27 27 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (25 25 (:REWRITE EQUAL-OF-LEN-AND-0))
     (23 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
     (21 21
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (12 6
         (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
     (10 10 (:REWRITE DEFAULT-CAR))
     (10 2 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (8 8
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (7 7
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (7 7
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (6 6 (:TYPE-PRESCRIPTION AXE-TREEP))
     (6 6 (:REWRITE USE-ALL-NATP-2))
     (6 6 (:REWRITE USE-ALL-NATP))
     (6 6
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (6 6
        (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (6 6
        (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (6 6
        (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (6 6 (:REWRITE MYQUOTEP-WHEN-AXE-TREEP))
     (6 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (4 4 (:TYPE-PRESCRIPTION ALL-CONSP))
     (4 2
        (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (2 2
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (2 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (2 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (2 2
        (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (2 2
        (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (1 1
        (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP)))
(AXE-BIND-FREE-RESULT-OKAYP-REWRITE
     (2581 176 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (558 12 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (450 225
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (446 194 (:REWRITE DEFAULT-CDR))
     (438 31 (:REWRITE ALISTP-OF-CDR))
     (286 163 (:REWRITE DEFAULT-<-2))
     (281 41 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (278 264 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (266 266
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (264 264 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (264 264 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (259 37
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (240 144 (:REWRITE DEFAULT-CAR))
     (186 7
          (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
     (164 163 (:REWRITE DEFAULT-<-1))
     (163 163 (:REWRITE USE-ALL-<-2))
     (163 163 (:REWRITE USE-ALL-<))
     (163 163 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (147 147 (:REWRITE USE-ALL-CONSP-2))
     (147 147 (:REWRITE USE-ALL-CONSP))
     (147 147 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (121 41
          (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (112 112 (:TYPE-PRESCRIPTION ALL-CONSP))
     (82 41
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (80 80 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (80 16 (:REWRITE ALL-CONSP-OF-CDR))
     (57 57
         (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
     (57 57
         (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
     (56 56
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (56 56 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (45 45 (:REWRITE DEFAULT-+-2))
     (45 45 (:REWRITE DEFAULT-+-1))
     (41 41
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (41 41
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (41 41
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (38 1 (:REWRITE ALL-<-OF-CONS))
     (37 37
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (32 32
         (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (32 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
     (28 2 (:LINEAR LEN-OF-CDR-LINEAR))
     (25 25
         (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (24 12
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (22 11
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
     (21 21
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (21 21
         (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (20 20 (:REWRITE USE-ALL-NATP-2))
     (20 20 (:REWRITE USE-ALL-NATP))
     (19 19 (:REWRITE MYQUOTEP-WHEN-AXE-TREEP))
     (14 7
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
     (13 13 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (13 13 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (13 13 (:REWRITE ALL-<-TRANSITIVE))
     (11 11 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (7 3 (:REWRITE USE-ALL-DARGP-LESS-THAN))
     (4 4 (:TYPE-PRESCRIPTION MEMBERP))
     (4 4
        (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
     (3 3 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
     (3 3
        (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
     (3 3
        (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-CAR-AND-QUOTE))
     (3 3 (:REWRITE DARGP-LESS-THAN-MONO))
     (1 1
        (:REWRITE DARGP-LESS-THAN-WHEN-CONSP-CHEAP)))
(AXE-BIND-FREE-RESULT-OKAYP-FORWARD-TO-ALISTP
     (1093 54 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (442 221
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (377 40 (:REWRITE LEN-OF-CDR))
     (231 231
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (169 19
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (117 117 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (117 117 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (117 117 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (117 73 (:REWRITE DEFAULT-<-2))
     (84 84 (:REWRITE DEFAULT-CAR))
     (73 73 (:REWRITE USE-ALL-<-2))
     (73 73 (:REWRITE USE-ALL-<))
     (73 73 (:REWRITE DEFAULT-<-1))
     (73 73 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (54 54 (:REWRITE USE-ALL-CONSP-2))
     (54 54 (:REWRITE USE-ALL-CONSP))
     (54 54 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (50 40 (:REWRITE DEFAULT-+-2))
     (50 10 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (40 40 (:REWRITE DEFAULT-+-1))
     (30 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (26 26
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (23 7 (:REWRITE +-COMBINE-CONSTANTS))
     (22 7
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (21 21
         (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (20 20 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (20 20 (:TYPE-PRESCRIPTION ALL-CONSP))
     (20 10
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (19 19
         (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (19 19
         (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (19 19 (:REWRITE MYQUOTEP-WHEN-AXE-TREEP))
     (12 2 (:REWRITE ALISTP-OF-CDR))
     (10 10
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (10 10
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (9 7 (:DEFINITION FIX))
     (8 8 (:REWRITE USE-ALL-NATP-2))
     (8 8 (:REWRITE USE-ALL-NATP))
     (8 8
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (8 8
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (8 8
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (8 8 (:REWRITE EQUAL-OF-LEN-AND-0))
     (8 8
        (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
     (8 8
        (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
     (7 7
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (6 6
        (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP)))
(MAKE-EQUALITIES-FROM-DOTTED-PAIRS
     (29 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (6 2 (:REWRITE USE-ALL-CONSP))
     (5 2
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (4 4 (:TYPE-PRESCRIPTION MEMBERP))
     (4 2 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (3 3 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (3 3 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (3 1 (:DEFINITION TRUE-LISTP))
     (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (2 2 (:REWRITE USE-ALL-CONSP-2))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2
        (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (2 2 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (1 1
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (1 1 (:REWRITE DEFAULT-CAR))
     (1 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (1 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (1 1
        (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (1 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP)))
(LOOKUP-EQ-SAFE2)
(CONS-IF-NOT-EQUAL-CAR)
(TRUE-LISTP-OF-CONS-IF-NOT-EQUAL-CAR
     (30 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (24 2 (:DEFINITION TRUE-LISTP))
     (10 10 (:TYPE-PRESCRIPTION LEN))
     (4 4
        (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (4 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE USE-ALL-CONSP-2))
     (2 2 (:REWRITE USE-ALL-CONSP))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (2 2 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (2 2 (:REWRITE DEFAULT-CDR))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (2 2 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (2 2
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (1 1 (:REWRITE DEFAULT-CAR)))
(ALL-AXE-TREEP-OF-CONS-IF-NOT-EQUAL-CAR
     (10779 31 (:DEFINITION PSEUDO-TERMP))
     (7748 22
           (:REWRITE AXE-TREEP-WHEN-PSEUDO-TERMP))
     (5584 5 (:DEFINITION AXE-TREEP))
     (5557 397 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (3445 9 (:REWRITE ALL-AXE-TREEP-OF-CDR))
     (2337 36 (:DEFINITION SYMBOL-LISTP))
     (2283 230 (:REWRITE LEN-OF-CDR))
     (2122 31
           (:REWRITE ALL-AXE-TREEP-WHEN-PSEUDO-TERM-LISTP))
     (1945 34 (:DEFINITION PSEUDO-TERM-LISTP))
     (1855 73 (:DEFINITION TRUE-LISTP))
     (1813 22 (:REWRITE AXE-TREEP-WHEN-DARGP))
     (1629 113
           (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (1485 358
           (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (1362 17 (:DEFINITION DARGP))
     (1335 26 (:DEFINITION MYQUOTEP))
     (1199 89 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (1181 608 (:REWRITE DEFAULT-CDR))
     (1000 544 (:REWRITE DEFAULT-CAR))
     (953 941 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (941 941 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (941 941 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (806 93 (:DEFINITION LENGTH))
     (784 49
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (679 127 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (618 309
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (505 45 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
     (485 26 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
     (398 398
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (376 199 (:REWRITE DEFAULT-<-2))
     (356 4 (:REWRITE ALL-DARGP-OF-CONS))
     (317 143 (:REWRITE DEFAULT-+-2))
     (300 26 (:DEFINITION NATP))
     (285 46 (:REWRITE ALL-CONSP-OF-CDR))
     (279 9 (:REWRITE ALL-AXE-TREEP-OF-CDR-2))
     (262 262 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
     (258 258 (:TYPE-PRESCRIPTION ALL-CONSP))
     (255 89
          (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (245 107 (:REWRITE EQUAL-OF-LEN-AND-0))
     (237 237 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
     (233 233
          (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
     (214 214 (:REWRITE USE-ALL-CONSP-2))
     (214 214 (:REWRITE USE-ALL-CONSP))
     (214 214 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (199 199 (:REWRITE USE-ALL-<-2))
     (199 199 (:REWRITE USE-ALL-<))
     (199 199 (:REWRITE DEFAULT-<-1))
     (199 199 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (194 97
          (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
     (178 89
          (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (176 176 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (168 8 (:REWRITE USE-ALL-NATP-FOR-CAR))
     (166 166 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (166 81
          (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
     (153 153
          (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (143 143 (:REWRITE DEFAULT-+-1))
     (142 142
          (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (140 4 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
     (128 4 (:DEFINITION NAT-LISTP))
     (127 127
          (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (99 99
         (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (98 49
         (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
     (97 97
         (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (94 94
         (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (89 89
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (89 89
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (89 89
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (82 41 (:DEFINITION FIX))
     (81 81
         (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (75 75 (:TYPE-PRESCRIPTION QUOTEP))
     (75 75
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (72 72
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (72 9 (:REWRITE ALL-DARGP-OF-CDR))
     (64 8 (:REWRITE USE-ALL-<-FOR-CAR))
     (49 49 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (49 49
         (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
     (45 45
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (41 41
         (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (34 26
         (:REWRITE DARGP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (34 17 (:REWRITE DARGP-WHEN-NATP-CHEAP))
     (34 17 (:REWRITE DARGP-WHEN-MYQUOTEP-CHEAP))
     (33 23
         (:REWRITE AXE-TREEP-WHEN-EQUAL-OF-CAR-AND-QUOTE-CHEAP))
     (32 4 (:REWRITE USE-ALL-DARGP-FOR-CAR))
     (31 31 (:REWRITE DEFAULT-COERCE-2))
     (31 31 (:REWRITE DEFAULT-COERCE-1))
     (30 30
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (26 26 (:REWRITE USE-ALL-NATP-2))
     (26 26 (:REWRITE USE-ALL-NATP))
     (26 26 (:REWRITE USE-ALL-DARGP-2))
     (26 26 (:REWRITE USE-ALL-DARGP))
     (26 26
         (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (26 26
         (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (26 26 (:REWRITE MYQUOTEP-WHEN-AXE-TREEP))
     (26 26
         (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
     (24 24 (:TYPE-PRESCRIPTION NAT-LISTP))
     (22 22 (:TYPE-PRESCRIPTION DARGP))
     (22 22
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (20 20 (:TYPE-PRESCRIPTION ALL-NATP))
     (19 19
         (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (17 17 (:TYPE-PRESCRIPTION NATP))
     (17 17 (:TYPE-PRESCRIPTION MYQUOTEP))
     (16 16 (:TYPE-PRESCRIPTION ALL-<))
     (16 8
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
     (16 8
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (8 8 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (8 8
        (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
     (8 8
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (8 8 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (8 8 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (8 8 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (8 8 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (8 8 (:REWRITE ALL-<-TRANSITIVE))
     (8 4
        (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
     (4 4
        (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
     (4 4 (:REWRITE ALL-NATP-WHEN-NOT-CONSP)))
(ALL-CONSP-OF-CONS-IF-NOT-EQUAL-CAR
     (201 14 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (44 8 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (31 14
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (28 4 (:REWRITE DEFAULT-CAR))
     (24 12 (:REWRITE DEFAULT-<-2))
     (22 12 (:REWRITE USE-ALL-CONSP))
     (19 19 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (19 19 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (19 19 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (12 12 (:REWRITE USE-ALL-CONSP-2))
     (12 12 (:REWRITE USE-ALL-<-2))
     (12 12 (:REWRITE USE-ALL-<))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (12 12 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
     (10 10 (:TYPE-PRESCRIPTION MEMBERP))
     (3 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (1 1
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (1 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (1 1
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX)))
