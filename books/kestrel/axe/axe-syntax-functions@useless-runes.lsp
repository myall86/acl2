(AXE-QUOTEP)
(NOT-QUOTEP)
(HEAVIER-DAG-TERM (26 26 (:REWRITE DEFAULT-CDR))
                  (18 18 (:REWRITE DEFAULT-CAR))
                  (15 15 (:REWRITE USE-ALL-CONSP-2))
                  (15 15 (:REWRITE USE-ALL-CONSP))
                  (14 7 (:REWRITE DARGP-WHEN-MYQUOTEP-CHEAP))
                  (10 10 (:REWRITE USE-ALL-DARGP-2))
                  (10 10 (:REWRITE USE-ALL-DARGP))
                  (10 10
                      (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
                  (10 10
                      (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
                  (10 10
                      (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
                  (9 7 (:REWRITE DARGP-WHEN-NATP-CHEAP))
                  (7 7 (:TYPE-PRESCRIPTION MYQUOTEP))
                  (7 7
                     (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
                  (7 7 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
                  (2 2 (:TYPE-PRESCRIPTION NATP))
                  (2 2 (:REWRITE USE-ALL-NATP-2))
                  (2 2 (:REWRITE USE-ALL-NATP))
                  (2 2 (:REWRITE USE-ALL-<=-2))
                  (2 2 (:REWRITE USE-ALL-<=))
                  (2 2 (:REWRITE USE-ALL-<-2))
                  (2 2 (:REWRITE USE-ALL-<))
                  (2 2
                     (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
                  (2 2
                     (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
                  (2 2
                     (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
                  (2 2 (:REWRITE DEFAULT-<-2))
                  (2 2 (:REWRITE DEFAULT-<-1))
                  (2 2
                     (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(GET-EXPR (5 5
             (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX)))
(SHOULD-REVERSE-EQUALITY
     (306 153 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (153 153 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (153 153 (:TYPE-PRESCRIPTION ARRAY1P))
     (24 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (18 18 (:REWRITE DEFAULT-CDR))
     (12 12
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (12 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
     (12 12
         (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
     (12 12 (:REWRITE USE-ALL-CONSP-2))
     (12 12 (:REWRITE USE-ALL-CONSP))
     (10 10 (:REWRITE DEFAULT-CAR))
     (6 6
        (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (2 2 (:REWRITE USE-ALL-<=-2))
     (2 2 (:REWRITE USE-ALL-<=))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (2 2
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (2 2
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (2 2
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(SYNTACTIC-CALL-OF
     (121 121 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (64 64
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (28 14
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (14 14
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
     (5 5 (:REWRITE DEFAULT-CDR))
     (4 4 (:REWRITE USE-ALL-<=-2))
     (4 4 (:REWRITE USE-ALL-<=))
     (4 4 (:REWRITE USE-ALL-<-2))
     (4 4 (:REWRITE USE-ALL-<))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (3 3 (:REWRITE USE-ALL-CONSP-2))
     (3 3 (:REWRITE USE-ALL-CONSP))
     (3 3 (:REWRITE DEFAULT-CAR))
     (2 2
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP)))
(SYNTACTIC-CONSTANTP
     (147 96 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (96 96 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (26 13
         (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
     (24 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (18 18
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (12 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
     (12 12
         (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
     (1 1 (:REWRITE USE-ALL-<=-2))
     (1 1 (:REWRITE USE-ALL-<=))
     (1 1 (:REWRITE USE-ALL-<-2))
     (1 1 (:REWRITE USE-ALL-<))
     (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (1 1
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(STRIP-INVISIBLE-FNS
     (378 39 (:DEFINITION LEN))
     (126 14 (:DEFINITION POSP))
     (84 45 (:REWRITE DEFAULT-+-2))
     (83 50 (:REWRITE DEFAULT-<-2))
     (78 78 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (78 78 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (78 78
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (55 55 (:REWRITE USE-ALL-CONSP-2))
     (55 55 (:REWRITE USE-ALL-CONSP))
     (50 50 (:REWRITE USE-ALL-<=-2))
     (50 50 (:REWRITE USE-ALL-<=))
     (50 50 (:REWRITE USE-ALL-<-2))
     (50 50 (:REWRITE USE-ALL-<))
     (50 50 (:REWRITE DEFAULT-<-1))
     (50 50
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (48 28 (:REWRITE DEFAULT-CAR))
     (45 45 (:REWRITE DEFAULT-+-1))
     (41 41 (:REWRITE DEFAULT-CDR))
     (33 33 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (33 33
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (31 1 (:DEFINITION SYMBOL-ALISTP))
     (28 1 (:DEFINITION ALISTP))
     (21 21
         (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (21 21
         (:REWRITE TRUE-LISTP-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP-AND-CONSP))
     (21 21
         (:REWRITE TRUE-LISTP-OF-DARGS-BETTER))
     (18 18
         (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (14 14
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (12 12
         (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
     (10 2 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (9 9
        (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (9 9
        (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (9 9
        (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
     (7 7 (:REWRITE LOOKUP-EQUAL-OF-CONS-SAFE))
     (6 6
        (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (6 6
        (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
     (6 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (6 1 (:REWRITE ALISTP-OF-CDR))
     (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (4 4 (:TYPE-PRESCRIPTION ALL-CONSP))
     (4 2
        (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (4 2
        (:REWRITE SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (4 2
        (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (3 3
        (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (3 3
        (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
     (3 3
        (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
     (3 3 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (2 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (2 2
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (2 2
        (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (1 1
        (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX)))
(INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-SPECIAL
     (1299 13 (:DEFINITION ALL-DARGP-LESS-THAN))
     (963 29
          (:REWRITE ALL-DARGP-LESS-THAN-OF-CDR))
     (701 44
          (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
     (274 37 (:REWRITE ALL-<-OF-CDR))
     (213 17
          (:REWRITE USE-ALL-DARGP-LESS-THAN-FOR-CAR))
     (158 77 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (154 154 (:TYPE-PRESCRIPTION ALL-<))
     (123 44
          (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
     (105 10 (:DEFINITION NTH))
     (104 100 (:REWRITE DEFAULT-CDR))
     (88 44
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
     (82 82 (:REWRITE USE-ALL-CONSP-2))
     (82 82 (:REWRITE USE-ALL-CONSP))
     (77 77
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (77 77 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (77 77 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (77 77 (:REWRITE ALL-<-TRANSITIVE))
     (51 17
         (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-CAR-AND-QUOTE))
     (44 44 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (44 44
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
     (44 44
         (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
     (34 17
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (34 17
         (:REWRITE DARGP-LESS-THAN-WHEN-NATP-CHEAP))
     (34 17
         (:REWRITE DARGP-LESS-THAN-WHEN-MYQUOTEP-CHEAP))
     (32 20 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
     (30 21 (:REWRITE DEFAULT-+-2))
     (29 29 (:TYPE-PRESCRIPTION DARGP-LESS-THAN))
     (24 4
         (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
     (21 21 (:REWRITE DEFAULT-+-1))
     (20 20 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
     (20 20 (:REWRITE NTH-WHEN-NOT-CDDR))
     (20 2 (:REWRITE ZP-OPEN))
     (19 19 (:REWRITE DEFAULT-CAR))
     (17 17
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (17 17 (:TYPE-PRESCRIPTION NATP))
     (17 17 (:TYPE-PRESCRIPTION MYQUOTEP))
     (17 17 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
     (17 17 (:REWRITE USE-ALL-DARGP-LESS-THAN))
     (17 17
         (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
     (17 17
         (:REWRITE DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
     (17 17
         (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
     (17 17
         (:REWRITE DARGP-LESS-THAN-WHEN-CONSP-CHEAP))
     (17 17 (:REWRITE DARGP-LESS-THAN-MONO))
     (17 3
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (16 12 (:REWRITE DEFAULT-<-1))
     (14 14 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (14 14 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (14 14
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (13 13
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (13 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE USE-ALL-<=-2))
     (12 12 (:REWRITE USE-ALL-<=))
     (12 12 (:REWRITE USE-ALL-<-2))
     (12 12 (:REWRITE USE-ALL-<))
     (12 10 (:REWRITE NTH-WHEN-ZP-CHEAP))
     (9 9
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (8 8 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (8 4
        (:REWRITE ALL-NATP-IMPLIES-ALL-INTEGERP-CHEAP))
     (6 2 (:REWRITE +-COMBINE-CONSTANTS))
     (4 4 (:TYPE-PRESCRIPTION ALL-NATP))
     (4 4
        (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:TYPE-PRESCRIPTION ZP))
     (2 2
        (:REWRITE NTH-OF-CONS-CONSTANT-VERSION))
     (1 1
        (:REWRITE <-OF-+-COMBINE-CONSTANTS-1)))
(NATP-OF-STRIP-INVISIBLE-FNS
     (225 18
          (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
     (216 18
          (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
     (171 18
          (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
     (136 15 (:DEFINITION MEMBER-EQUAL))
     (112 12
          (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (89 89 (:REWRITE USE-ALL-CONSP-2))
     (89 89 (:REWRITE USE-ALL-CONSP))
     (75 75 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (75 5
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (71 5
         (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (54 18
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
     (51 17 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (40 20 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
     (36 18
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
     (36 2 (:DEFINITION NATP))
     (35 22 (:REWRITE DEFAULT-<-2))
     (34 34 (:TYPE-PRESCRIPTION ALL-<))
     (32 32
         (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
     (25 20 (:REWRITE NTH-WHEN-ZP-CHEAP))
     (24 12
         (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
     (22 22 (:REWRITE USE-ALL-<-2))
     (22 22 (:REWRITE USE-ALL-<))
     (22 22 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (22 22 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (22 22
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (22 22 (:REWRITE DEFAULT-<-1))
     (22 22
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (20 20 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
     (20 20 (:REWRITE NTH-WHEN-NOT-CDDR))
     (18 18 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (18 18 (:REWRITE LOOKUP-EQUAL-OF-CONS-SAFE))
     (18 18
         (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (18 18
         (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
     (18 18
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
     (18 18
         (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
     (17 17 (:REWRITE USE-ALL-<=-2))
     (17 17 (:REWRITE USE-ALL-<=))
     (17 17
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (17 17 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (17 17 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (17 17 (:REWRITE ALL-<-TRANSITIVE))
     (15 15 (:REWRITE DEFAULT-CDR))
     (15 10 (:REWRITE DEFAULT-+-2))
     (12 12 (:TYPE-PRESCRIPTION MYQUOTEP))
     (12 12
         (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
     (12 12
         (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (12 12
         (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
     (11 11
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (10 10 (:REWRITE DEFAULT-+-1))
     (8 8
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (6 6
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (5 5 (:TYPE-PRESCRIPTION ZP))
     (5 5 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (5 5 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (5 5
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (2 2 (:REWRITE USE-ALL-NATP-2))
     (2 2 (:REWRITE USE-ALL-NATP))
     (2 2
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN)))
(RATIONALP-OF-STRIP-INVISIBLE-FNS
     (10 1
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
     (9 1
        (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
     (9 1
        (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
     (6 3
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
     (3 3 (:TYPE-PRESCRIPTION MYQUOTEP))
     (3 3 (:REWRITE USE-ALL-CONSP-2))
     (3 3 (:REWRITE USE-ALL-CONSP))
     (3 3
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
     (3 3
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (3 3 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
     (3 1
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
     (3 1 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (2 2 (:TYPE-PRESCRIPTION ALL-<))
     (2 1
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
     (1 1 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (1 1
        (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (1 1 (:REWRITE DEFAULT-CAR))
     (1 1
        (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
     (1 1
        (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
     (1 1
        (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
     (1 1 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (1 1 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (1 1 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (1 1 (:REWRITE ALL-<-TRANSITIVE)))
(RATIONALP-OF-STRIP-INVISIBLE-FNS-2
     (62 31 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (31 31 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (31 31 (:TYPE-PRESCRIPTION ARRAY1P))
     (12 6
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (6 6
        (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (6 6
        (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
     (3 3
        (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP)))
(SHOULD-COMMUTE-ARGS-DAG
     (2476 1446 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (1446 1446 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (524 524
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (392 196
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (162 18
          (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (120 84
          (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
     (96 12 (:REWRITE <-OF-+-AND-+-CANCEL-1))
     (89 89 (:REWRITE DEFAULT-CDR))
     (68 58 (:REWRITE DEFAULT-CAR))
     (56 56 (:REWRITE USE-ALL-CONSP-2))
     (56 56 (:REWRITE USE-ALL-CONSP))
     (48 12
         (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
     (40 4
         (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
     (36 36 (:REWRITE USE-ALL-<-2))
     (36 36 (:REWRITE USE-ALL-<))
     (36 36 (:REWRITE DEFAULT-<-2))
     (36 36 (:REWRITE DEFAULT-<-1))
     (36 36
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (32 32 (:REWRITE USE-ALL-<=-2))
     (32 32 (:REWRITE USE-ALL-<=))
     (32 4
         (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
     (32 4
         (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (24 24 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
     (23 23
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (22 22 (:REWRITE DEFAULT-+-2))
     (22 22 (:REWRITE DEFAULT-+-1))
     (22 22
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (19 19
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (18 18
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (16 16
         (:TYPE-PRESCRIPTION
              TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
     (16 16
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (16 16
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (16 8 (:REWRITE NTH-WHEN-ZP-CHEAP))
     (16 8 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
     (16 8 (:REWRITE NTH-WHEN-NOT-CDDR))
     (16 8 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
     (12 12
         (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
     (12 12
         (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
     (12 12
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (12 12
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (8 8 (:TYPE-PRESCRIPTION ZP))
     (7 7
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (7 7
        (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (5 5
        (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (5 5
        (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (4 4 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2 (:REWRITE USE-ALL-RATIONALP-2))
     (2 2 (:REWRITE USE-ALL-RATIONALP)))
(SHOULD-COMMUTE-ARGS-INCREASING-DAG
     (2468 1442 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (1442 1442 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (510 510
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (364 182
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (162 18
          (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (120 84
          (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
     (96 12 (:REWRITE <-OF-+-AND-+-CANCEL-1))
     (89 89 (:REWRITE DEFAULT-CDR))
     (68 58 (:REWRITE DEFAULT-CAR))
     (56 56 (:REWRITE USE-ALL-CONSP-2))
     (56 56 (:REWRITE USE-ALL-CONSP))
     (48 12
         (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
     (40 4
         (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
     (36 36 (:REWRITE USE-ALL-<-2))
     (36 36 (:REWRITE USE-ALL-<))
     (36 36 (:REWRITE DEFAULT-<-2))
     (36 36 (:REWRITE DEFAULT-<-1))
     (36 36
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (32 32 (:REWRITE USE-ALL-<=-2))
     (32 32 (:REWRITE USE-ALL-<=))
     (32 4
         (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
     (32 4
         (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (24 24 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
     (23 23
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (22 22 (:REWRITE DEFAULT-+-2))
     (22 22 (:REWRITE DEFAULT-+-1))
     (22 22
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (19 19
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (18 18
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (16 16
         (:TYPE-PRESCRIPTION
              TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
     (16 16
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (16 16
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (16 8 (:REWRITE NTH-WHEN-ZP-CHEAP))
     (16 8 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
     (16 8 (:REWRITE NTH-WHEN-NOT-CDDR))
     (16 8 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
     (12 12
         (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
     (12 12
         (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
     (12 12
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (12 12
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (8 8 (:TYPE-PRESCRIPTION ZP))
     (7 7
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (7 7
        (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
     (5 5
        (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (5 5
        (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
     (4 4 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2 (:REWRITE USE-ALL-RATIONALP-2))
     (2 2 (:REWRITE USE-ALL-RATIONALP)))
(COUNT-MYIF-BRANCHES
 (34076 182 (:DEFINITION BOUNDED-DAG-EXPRP))
 (23652 182
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (21736 346
        (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-BOUNDED-DAG-EXPRP-OF-AREF1))
 (17158 320 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (16688 78 (:REWRITE <-OF-NTH-OF-DARGS))
 (15010 314 (:DEFINITION NAT-LISTP))
 (10852 182 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (10176 162 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (9248 44
       (:REWRITE NOT-<-OF-0-AND-NTH-OF-DARGS))
 (6320 324 (:REWRITE NATP-OF-NTH-OF-DARGS))
 (5904 2952
       (:TYPE-PRESCRIPTION
            TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (5904 2952
       (:TYPE-PRESCRIPTION
            TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (5836 182
       (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (4730 20 (:REWRITE NATP-OF-NTH-FROM-ALL-NATP))
 (3564 162 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (3512 320 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (2980 70
       (:REWRITE ALL-DARGP-OF-DARGS-WHEN-DAG-EXPRP0))
 (2952
    2952
    (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2940 10
       (:REWRITE NOT-CDDR-OF-NTH-WHEN-ALL-DARGP))
 (2856 714
       (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (2616 138
       (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (2520 10 (:REWRITE MYQUOTEP-OF-NTH-OF-DARGS))
 (2520 10
       (:REWRITE EQUAL-OF-QUOTE-AND-NTH-0-OF-NTH-OF-DARGS))
 (2520 10
       (:REWRITE CONSP-OF-CDR-OF-NTH-OF-DARGS))
 (1762 1762 (:TYPE-PRESCRIPTION NAT-LISTP))
 (1670 320
       (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (1453 1453 (:REWRITE USE-ALL-CONSP-2))
 (1453 1453 (:REWRITE USE-ALL-CONSP))
 (1428 714 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (1384 346
       (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (1341 909 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (1341 909 (:REWRITE NTH-WHEN-NOT-CDDR))
 (1256 346
       (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (1160 580
       (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (1134 346
       (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (1114 909 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (1088 452
       (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (972 162
      (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (916 226
      (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (910 70 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (909 909 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (904 226
      (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (816 816
      (:TYPE-PRESCRIPTION BOUNDED-DAG-EXPRP))
 (800 20
      (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP))
 (728 138
      (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (714 714 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (714 714 (:TYPE-PRESCRIPTION ARRAY1P))
 (710 44 (:REWRITE ALL-DARGP-LESS-THAN-OF-0))
 (692 692 (:TYPE-PRESCRIPTION DAG-EXPRP0))
 (650 650 (:TYPE-PRESCRIPTION ALL-<))
 (624 78
      (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-GEN))
 (622 44
      (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (593 591 (:REWRITE DEFAULT-+-2))
 (591 591 (:REWRITE DEFAULT-+-1))
 (580 580
      (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (530 10
      (:REWRITE EQUAL-OF-QUOTE-AND-NTH-0-OF-NTH-WHEN-ALL-DARGP))
 (530 10
      (:REWRITE CONSP-OF-CDR-OF-NTH-WHEN-ALL-DARGP))
 (478 478
      (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 (474
    78
    (:REWRITE
         NOT-<-OF-NTH-OF-DARGS-OF-AREF1-AND-CONSTANT-WHEN-PSEUDO-DAG-ARRAYP))
 (452 452
      (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (452 226
      (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
 (424 424
      (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (394 394 (:TYPE-PRESCRIPTION ALL-NATP))
 (364 182
      (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
 (364 182
      (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
 (346 346 (:REWRITE DEFAULT-CDR))
 (346 346
      (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
 (326 326
      (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (324 324
      (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (324 324
      (:REWRITE NATP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (324 162
      (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (320 320 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (320 320 (:REWRITE ALL-<-TRANSITIVE))
 (320 70
      (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (320 70
      (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (290 20
      (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP))
 (276 138
      (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (264
  44
  (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (252 252 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (226 226
      (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
 (226 226
      (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
 (220 44
      (:REWRITE NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (220 20 (:REWRITE INTEGERP-OF-NTH-OF-DARGS))
 (212 212
      (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (204 34
      (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SPECIAL))
 (182 182
      (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-BETTER))
 (182 182
      (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (182
     182
     (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (182 182
      (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1))
 (176 176
      (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (170 34
      (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (170 20
      (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (158 158
      (:TYPE-PRESCRIPTION SYMBOLP-OF-NTH-0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (148 148
      (:TYPE-PRESCRIPTION ALL-DARGP-LESS-THAN))
 (140 140 (:TYPE-PRESCRIPTION ALL-DARGP))
 (140 70
      (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (138 138
      (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
 (121 121 (:REWRITE USE-ALL-<=-2))
 (121 121 (:REWRITE USE-ALL-<=))
 (121 121 (:REWRITE USE-ALL-<-2))
 (121 121 (:REWRITE USE-ALL-<))
 (121 121 (:REWRITE DEFAULT-<-2))
 (121 121 (:REWRITE DEFAULT-<-1))
 (121 121
      (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (120
  20
  (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (100 10
      (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (80 10
     (:REWRITE NOT-CDDR-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (80 10
     (:REWRITE MYQUOTEP-OF-NTH-OF-DARGS-OF-AREF1))
 (80 10
     (:REWRITE EQUAL-OF-QUOTE-AND-NTH-0-OF-NTH-OF-DARGS-OF-AREF1))
 (80 10
     (:REWRITE CONSP-OF-CDR-OF-NTH-OF-DARGS-OF-AREF1))
 (80 10
     (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (80 10
     (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (79 79
     (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (78 78
     (:REWRITE NOT-<-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN-CONSTANT))
 (78 78
     (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-2))
 (78 78
     (:REWRITE <-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-FREE))
 (78 78
     (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (70 70
     (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (70 70
     (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (70 70
     (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (70 20
     (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (60
   10
   (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (44 44
     (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (40 40 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (40 20
     (:REWRITE ALL-NATP-IMPLIES-ALL-INTEGERP-CHEAP))
 (40 2 (:DEFINITION LEN))
 (32 32
     (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (24 24
     (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (24 24
     (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (23 23
     (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (22 22 (:REWRITE USE-ALL-NATP-2))
 (22 22 (:REWRITE USE-ALL-NATP))
 (20 20
     (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
 (20 20
     (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (20 20
     (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (20 10
     (:REWRITE <-OF-NTH-OF-0-WHEN-ALL-<-CHEAP))
 (20 10
     (:REWRITE <-OF-NTH-OF-0-AND-0-WHEN-ALL-NATP-CHEAP))
 (20 10
     (:REWRITE <-OF-NTH-0-WHEN-ALL-DARGP-LESS-THAN))
 (11 11
     (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN))
 (10 10
     (:REWRITE NOT-CDDR-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (10 10
     (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (10 10
     (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (10 10
     (:REWRITE <-OF-0-WHEN-ALL-DARGP-LESS-THAN))
 (10 10
     (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (4 4 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (4 4
    (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP)))
(NATP-OF-COUNT-MYIF-BRANCHES)
(COUNT-MYIF-BRANCHES
 (11702 2 (:DEFINITION COUNT-MYIF-BRANCHES))
 (1992 6 (:REWRITE <-OF-NTH-OF-DARGS))
 (1914 6
       (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (1423 902 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (1423 902 (:REWRITE NTH-WHEN-NOT-CDDR))
 (1395 902 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (1376 24
       (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-2))
 (1320 120
       (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (1306 328
       (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (984 492
      (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (939 939
      (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (902 902 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (752 94
      (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (752 94
      (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (720 30
      (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (652 652
      (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (630 6 (:REWRITE NOT-<-OF-NTH-WHEN-ALL-<))
 (496 162 (:REWRITE DEFAULT-+-2))
 (420 12 (:DEFINITION NAT-LISTP))
 (328 328
      (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (326 326
      (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (312 6 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (251 148 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (228 6 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (228 6 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (217 217
      (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (176 162 (:REWRITE DEFAULT-+-1))
 (160 80
      (:TYPE-PRESCRIPTION
           TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (148 148 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (135 135 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (135 135 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (135 135
      (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (114 34 (:REWRITE DEFAULT-<-2))
 (86 18 (:REWRITE DEFAULT-CDR))
 (85 85 (:REWRITE USE-ALL-CONSP-2))
 (85 85 (:REWRITE USE-ALL-CONSP))
 (80
    80
    (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (73 23
     (:REWRITE MYQUOTEP-OF-NTH-OF-DARGS-OF-AREF1))
 (66 66 (:TYPE-PRESCRIPTION NAT-LISTP))
 (56 56
     (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (56 56
     (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (48
    6
    (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-GEN))
 (48 6
     (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-GEN))
 (42 6 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (42 6 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (40 40 (:REWRITE USE-ALL-<=-2))
 (40 40 (:REWRITE USE-ALL-<=))
 (40 40
     (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (34 34 (:REWRITE USE-ALL-<-2))
 (34 34 (:REWRITE USE-ALL-<))
 (34 34 (:REWRITE DEFAULT-<-1))
 (28 28 (:REWRITE USE-ALL-NATP-2))
 (28 28 (:REWRITE USE-ALL-NATP))
 (28 28
     (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (26 26
     (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
 (26 26
     (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (26 26
     (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (26 13
     (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
 (24
    24
    (:REWRITE
         NOT-<-OF-NTH-OF-DARGS-OF-AREF1-AND-CONSTANT-WHEN-PSEUDO-DAG-ARRAYP))
 (23 23
     (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (23 23
     (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (12 12 (:TYPE-PRESCRIPTION ALL-NATP))
 (12 12 (:TYPE-PRESCRIPTION ALL-<))
 (12 6
     (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (12 6
     (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (12 6 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (7 7
    (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN))
 (6 6
    (:TYPE-PRESCRIPTION BOUNDED-DAG-EXPRP))
 (6 6
    (:REWRITE NOT-<-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN-CONSTANT))
 (6 6 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (6 6 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (6 6 (:REWRITE ALL-<-TRANSITIVE))
 (6 6 (:REWRITE <=-OF-NTH-WHEN-ALL-<=-FREE))
 (6 6 (:REWRITE <-+-CANCEL-2-ALT))
 (4 4
    (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (4 4
    (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN)))
(IS-A-MYIF
     (140 89 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (89 89 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (26 13
         (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
     (24 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
     (18 18
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (12 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
     (12 12
         (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
     (1 1 (:REWRITE USE-ALL-<=-2))
     (1 1 (:REWRITE USE-ALL-<=))
     (1 1 (:REWRITE USE-ALL-<-2))
     (1 1 (:REWRITE USE-ALL-<))
     (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (1 1
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(NOT-IS-A-MYIF)
