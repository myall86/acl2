(CRUNCH-DAG-ARRAY-AUX
 (6408 3204
       (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (4162 4162 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (3204 3204
       (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (1150 10
       (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (1073 24 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (850 425
      (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (739 18 (:DEFINITION NAT-LISTP))
 (488 10 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (422 10 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (386 16 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (276 186
      (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (239 4
      (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-BOUNDED-DAG-EXPRP-OF-AREF1))
 (229 4
      (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
 (227 184 (:REWRITE DEFAULT-<-1))
 (222 1
      (:REWRITE ALL-DARGP-OF-DARGS-WHEN-DAG-EXPRP0))
 (218 36
      (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (214 4
      (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
 (202 184 (:REWRITE DEFAULT-<-2))
 (184 184 (:REWRITE USE-ALL-<-2))
 (184 184 (:REWRITE USE-ALL-<))
 (171
   6
   (:REWRITE ALL-DARGP-LESS-THAN-OF-MV-NTH-1-OF-TRANSLATE-ARGS-WITH-CHANGEP))
 (164 164 (:REWRITE USE-ALL-<=-2))
 (164 164 (:REWRITE USE-ALL-<=))
 (162 17 (:DEFINITION MEMBER-EQUAL))
 (142 71
      (:TYPE-PRESCRIPTION
           TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (134 67
      (:TYPE-PRESCRIPTION
           TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (128 103 (:REWRITE DEFAULT-+-2))
 (127 127 (:TYPE-PRESCRIPTION NAT-LISTP))
 (127 127 (:REWRITE USE-ALL-CONSP-2))
 (127 127 (:REWRITE USE-ALL-CONSP))
 (118
   27
   (:REWRITE
        NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (106 103 (:REWRITE DEFAULT-+-1))
 (99 78
     (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (95 6
     (:REWRITE BOUNDED-TRANSLATION-ARRAYP-AUX-WHEN-NOT-NATP))
 (84 84
     (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (83 24 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (77 14 (:REWRITE USE-ALL-NATP-FOR-CAR))
 (76 19
     (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (75 17
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (72 32
     (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (69 69 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (68 16 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (67 67
     (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (65 65 (:TYPE-PRESCRIPTION ALL-<))
 (65 54 (:REWRITE DEFAULT-CAR))
 (64 64 (:LINEAR ARRAY2P-LINEAR))
 (59 8
     (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (53 53 (:TYPE-PRESCRIPTION ALL-NATP))
 (47 27
     (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (38 38 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (37 6
     (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (34 34 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE USE-ALL-NATP-2))
 (32 32 (:REWRITE USE-ALL-NATP))
 (32 16
     (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (32 2
     (:REWRITE TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (28 14 (:REWRITE USE-ALL-<-FOR-CAR))
 (28 14
     (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
 (28 14
     (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
 (28 14
     (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (26 13
     (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NO-ATOMS-CHEAP))
 (26 13
     (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-DARGP-LESS-THAN-OF-CDR-CHEAP))
 (25 4
     (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (24 24
     (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (24 24 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (24 24 (:REWRITE ALL-<-TRANSITIVE))
 (24 8 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (22 22
     (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (22 22
     (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (21 21
     (:REWRITE MV-NTH-1-OF-TRANSLATE-ARGS-WITH-CHANGEP-WHEN-NO-CHANGE))
 (21 1 (:DEFINITION MYQUOTEP))
 (20 10
     (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (19 19
     (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (19 19
     (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (18 18
     (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (18 18
     (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (18 3
     (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-BETTER))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:REWRITE USE-ALL-RATIONALP-2))
 (16 16 (:REWRITE USE-ALL-RATIONALP))
 (16 16
     (:REWRITE TRANSLATION-ARRAYP-AUX-WHEN-BOUNDED-TRANSLATION-ARRAYP-AUX))
 (16 16
     (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (16 8
     (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (16 8
     (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (16 8
     (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
 (16
   2
   (:REWRITE TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (14 14 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (14 14
     (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
 (14 14
     (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
 (13 13 (:TYPE-PRESCRIPTION NO-ATOMS))
 (12 12
     (:TYPE-PRESCRIPTION BOUNDED-TRANSLATION-ARRAYP-AUX))
 (12 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 2
     (:REWRITE TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (11 11 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (11 8
     (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
 (11 8
     (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (9 1 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (8 8 (:TYPE-PRESCRIPTION MYQUOTEP))
 (8 8 (:TYPE-PRESCRIPTION DAG-EXPRP0))
 (8 8 (:TYPE-PRESCRIPTION ALL-CONSP))
 (8 8
    (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (8 8
    (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (8 8
    (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (8 8 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
 (8 8
    (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (8 2
    (:REWRITE RATIONALP-OF-ALEN1-WHEN-ARRAY1P))
 (8 1 (:REWRITE SYMBOLP-OF-CAR-OF-AREF1))
 (6 6
    (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (6 6
    (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
 (6 6
    (:REWRITE BOUNDED-TRANSLATION-ARRAYP-AUX-MONOTONE))
 (6 1
    (:REWRITE SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (6 1
    (:REWRITE NOT-CDR-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (6 1
    (:REWRITE CONSP-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (6 1
    (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (5 5 (:REWRITE USE-ALL-DARGP-2))
 (5 5 (:REWRITE USE-ALL-DARGP))
 (5 5 (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
 (4 4
    (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1))
 (4 4
    (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
 (3 3
    (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2
    (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (2 2
    (:REWRITE TRUE-LISTP-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP-AND-CONSP))
 (2 2
    (:REWRITE TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2 (:REWRITE TRUE-LISTP-OF-DARGS-BETTER))
 (2 1
    (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-2))
 (2 1
    (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-1))
 (2 1
    (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (2 1 (:DEFINITION QUOTEP))
 (1 1
    (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (1 1
    (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (1 1
    (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (1 1
    (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (1 1
    (:REWRITE CONSP-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-AND-QUOTEP))
 (1 1
    (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (1 1
    (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (1 1
    (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX)))
(ALL-<-OF-+-OF-1-AND-MAXELEM-ALT
     (17101 95 (:REWRITE USE-ALL-<-FOR-CAR))
     (15972 130 (:DEFINITION NAT-LISTP))
     (15247 201 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
     (8981 156
           (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (8511 107 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (6594 131 (:REWRITE USE-ALL-NATP-FOR-CAR))
     (4381 34 (:REWRITE ALL-<-OF-CDR))
     (4092 104 (:LINEAR MAXELEM-OF-CDR-LINEAR))
     (2755 133 (:LINEAR NTH-0-<-MAXELEM))
     (2402 276 (:REWRITE DEFAULT-<-2))
     (2232 1116
           (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-2))
     (2112 2112 (:TYPE-PRESCRIPTION NAT-LISTP))
     (2112 1116
           (:TYPE-PRESCRIPTION RATIONALP-OF-MAXELEM))
     (2092 188 (:DEFINITION LEN))
     (1755 133 (:LINEAR MAXELEM-CAR-LINEAR))
     (1618 85 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
     (1319 46
           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1154 1154
           (:TYPE-PRESCRIPTION RATIONAL-LISTP))
     (1068 292 (:REWRITE DEFAULT-+-2))
     (960 960 (:TYPE-PRESCRIPTION LEN))
     (935 79 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
     (832 832 (:REWRITE DEFAULT-CDR))
     (557 42 (:REWRITE ACL2-NUMBERP-OF-MAXELEM))
     (502 502 (:REWRITE DEFAULT-CAR))
     (458 43 (:REWRITE RATIONALP-OF-MAXELEM))
     (441 42
          (:REWRITE INTEGER-LISTP-WHEN-ALL-NATP))
     (402 201
          (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
     (380 380 (:REWRITE USE-ALL-CONSP-2))
     (380 380 (:REWRITE USE-ALL-CONSP))
     (376 376 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (376 376 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (376 376
          (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (352 276 (:REWRITE DEFAULT-<-1))
     (338 192 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
     (292 292 (:REWRITE DEFAULT-+-1))
     (282 276 (:REWRITE USE-ALL-<))
     (276 276 (:REWRITE USE-ALL-<-2))
     (276 276
          (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (273 2 (:REWRITE <-OF-+-AND-+-CANCEL-1))
     (266 34 (:DEFINITION RATIONAL-LISTP))
     (252 126 (:DEFINITION NTH))
     (243 64
          (:REWRITE NOT-<-OF-MAXELEM-WHEN-ALL-<))
     (220 10
          (:REWRITE ALL-<-OF-+-OF-1-AND-MAXELEM))
     (191 131 (:REWRITE USE-ALL-NATP))
     (191 64 (:REWRITE <-OF-MAXELEM-WHEN-ALL->))
     (172 172 (:REWRITE USE-ALL-<=-2))
     (172 172 (:REWRITE USE-ALL-<=))
     (157 64
          (:REWRITE NOT-<-OF-MAXELEM-WHEN-ALL-<-2))
     (157 2 (:REWRITE <-OF-MAXELEM-WHEN-ALL-<))
     (156 156
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (152 76
          (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
     (146 73
          (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (139 68
          (:REWRITE RATIONAL-LISTP-WHEN-ALL-NATP-CHEAP))
     (131 131 (:REWRITE USE-ALL-NATP-2))
     (131 131
          (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (126 126 (:REWRITE NTH-WHEN-NOT-CDDR))
     (124 62 (:REWRITE MAXELEM-BOUND-WHEN-ALL-<))
     (120 103 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (114 107 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (106 106 (:TYPE-PRESCRIPTION ALL->))
     (104 104
          (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (104 104
          (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (99 99
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (95 95
         (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
     (80 80
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (76 76
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (74 74 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (73 73 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (66 66 (:TYPE-PRESCRIPTION MEMBERP))
     (64 64
         (:REWRITE LESS-THAN-MAXELEM-WHEN-LESS-THAN-SOME-ELEM))
     (63 21 (:REWRITE ALL->-OF-CDR))
     (50 50 (:TYPE-PRESCRIPTION NATP))
     (48 48 (:REWRITE USE-ALL-RATIONALP-2))
     (48 48 (:REWRITE USE-ALL-RATIONALP))
     (41 1
         (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG1))
     (30 1 (:DEFINITION FIX))
     (20 20 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (20 20
         (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (20 2
         (:REWRITE <=-OF-MAXELEM-WHEN-MEMBER-EQUAL))
     (18 1
         (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG2))
     (15 3 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
     (14 2 (:DEFINITION MEMBER-EQUAL))
     (13 13 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (13 13
         (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (7 7 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (6 6 (:TYPE-PRESCRIPTION ALL-RATIONALP))
     (4 2
        (:REWRITE <-OF-MAXELEM-WHEN-ALL-<-CHEAP))
     (3 3
        (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
     (3 3
        (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
     (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (2 2
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT)))
(NOT-<-OF-+-OF-1-AND-MAXELEM-WHEN-ALL-<
     (343 3 (:DEFINITION ALL-NATP))
     (322 5 (:DEFINITION NAT-LISTP))
     (316 15 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
     (299 4 (:DEFINITION NATP))
     (227 4 (:REWRITE USE-ALL-<-FOR-CAR))
     (121 7 (:REWRITE USE-ALL-NATP-FOR-CAR))
     (90 5 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
     (70 70 (:TYPE-PRESCRIPTION NAT-LISTP))
     (45 5 (:REWRITE ALL-NATP-OF-CDR))
     (42 6 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (37 1 (:REWRITE ALL-<-OF-CDR))
     (34 6 (:REWRITE ALL-<-TRANSITIVE))
     (33 5 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
     (30 15
         (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
     (24 15 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
     (20 12 (:REWRITE USE-ALL-<))
     (16 8
         (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-2))
     (15 15
         (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
     (14 14 (:REWRITE DEFAULT-CDR))
     (14 14
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (12 12 (:REWRITE USE-ALL-<=-2))
     (12 12 (:REWRITE USE-ALL-<=))
     (12 12 (:REWRITE USE-ALL-<-2))
     (12 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 8
         (:TYPE-PRESCRIPTION RATIONALP-OF-MAXELEM))
     (12 3 (:REWRITE MAXELEM-SINGLETON-ALT))
     (10 10 (:REWRITE DEFAULT-CAR))
     (8 8 (:TYPE-PRESCRIPTION MEMBERP))
     (8 8 (:REWRITE USE-ALL-CONSP-2))
     (8 8 (:REWRITE USE-ALL-CONSP))
     (8 4
        (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
     (8 4
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
     (8 4
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (8 1 (:LINEAR MAXELEM-CAR-LINEAR))
     (7 7 (:REWRITE USE-ALL-NATP-2))
     (7 7 (:REWRITE USE-ALL-NATP))
     (7 7
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (6 6 (:TYPE-PRESCRIPTION NATP))
     (6 6 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (6 6 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (6 6 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (5 5
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (4 4 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
     (4 4 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (4 4
        (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
     (4 4
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (4 4
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (3 3 (:REWRITE MAXELEM-WHEN-NON-CONSP))
     (2 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE NTH-WHEN-NOT-CDDR))
     (1 1 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (1 1
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (1 1
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT)))
(CRUNCH-DAG-ARRAY-FOR-NODENUMS
    (154 154 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
    (147 7 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
    (138 3 (:DEFINITION NAT-LISTP))
    (90 2 (:DEFINITION NATP))
    (71 20 (:REWRITE MAXELEM-SINGLETON-ALT))
    (54 2 (:REWRITE USE-ALL-<-FOR-CAR))
    (40 40 (:TYPE-PRESCRIPTION NAT-LISTP))
    (26 13 (:REWRITE DEFAULT-+-2))
    (20 20 (:REWRITE MAXELEM-WHEN-NON-CONSP))
    (20 20 (:REWRITE DEFAULT-CDR))
    (20 10
        (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-2))
    (19 19 (:REWRITE USE-ALL-CONSP-2))
    (19 19 (:REWRITE USE-ALL-CONSP))
    (19 19 (:REWRITE DEFAULT-CAR))
    (19 3 (:REWRITE USE-ALL-NATP-FOR-CAR))
    (19 3 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
    (14 7
        (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
    (13 13 (:REWRITE DEFAULT-+-1))
    (12 10
        (:TYPE-PRESCRIPTION RATIONALP-OF-MAXELEM))
    (12 3 (:REWRITE ALL-<-TRANSITIVE-FREE))
    (10 3 (:REWRITE ALL-<-TRANSITIVE))
    (8 8 (:REWRITE NTH-WHEN-NOT-CDDR))
    (8 8
       (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (7 7
       (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
    (7 7 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
    (6 4 (:REWRITE USE-ALL-<))
    (5 5 (:REWRITE USE-ALL-<=-2))
    (5 5 (:REWRITE USE-ALL-<=))
    (5 3 (:REWRITE USE-ALL-NATP))
    (4 4 (:TYPE-PRESCRIPTION MEMBERP))
    (4 4 (:REWRITE USE-ALL-<-2))
    (4 4 (:REWRITE DEFAULT-<-2))
    (4 4 (:REWRITE DEFAULT-<-1))
    (4 2
       (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
    (4 2
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
    (4 2
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
    (4 2 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
    (3 3 (:REWRITE USE-ALL-NATP-2))
    (3 3
       (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
    (3 3
       (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (3 3 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
    (3 3 (:REWRITE ALL-<-WHEN-NOT-CONSP))
    (2 2 (:TYPE-PRESCRIPTION ALL-INTEGERP))
    (2 2
       (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
    (2 2
       (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
    (2 2
       (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
    (2 2
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
    (2 2
       (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
    (2 1
       (:REWRITE <-OF-MAXELEM-WHEN-ALL-<-CHEAP))
    (1 1
       (:REWRITE TRANSLATION-ARRAYP-AUX-WHEN-BOUNDED-TRANSLATION-ARRAYP-AUX))
    (1 1
       (:REWRITE TRANSLATION-ARRAYP-AUX-MONOTONE))
    (1 1 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
    (1 1
       (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
    (1 1
       (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
    (1 1 (:REWRITE <-OF-+-OF-1-STRENGTHEN)))
