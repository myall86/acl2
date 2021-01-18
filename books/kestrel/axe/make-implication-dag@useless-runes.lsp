(MAKE-IMPLICATION-DAG
     (308 154
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (154 154
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (48 48 (:REWRITE DEFAULT-CDR))
     (48 6 (:DEFINITION LEN))
     (26 26 (:REWRITE USE-ALL-CONSP-2))
     (26 26 (:REWRITE USE-ALL-CONSP))
     (24 24 (:REWRITE DEFAULT-CAR))
     (14 14
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (12 12 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (12 12 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (12 12
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (12 6 (:REWRITE DEFAULT-+-2))
     (6 6 (:REWRITE USE-ALL-<=-2))
     (6 6 (:REWRITE USE-ALL-<=))
     (6 6 (:REWRITE USE-ALL-<-2))
     (6 6 (:REWRITE USE-ALL-<))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-+-1))
     (6 6
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (6 6 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (6 6
        (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (2 2
        (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
     (2 2
        (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP)))
(MAKE-IMPLICATION-DAG-RETURN-TYPE
    (7515 369
          (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
    (6723 220 (:REWRITE USE-ALL-NATP-FOR-CAR))
    (5784 83 (:REWRITE USE-ALL-<-FOR-CAR))
    (3815 1191 (:REWRITE DEFAULT-CAR))
    (3641 87 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
    (2450 1225
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
    (2448 64 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
    (1784 64 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
    (1505 1505
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
    (1096 90 (:REWRITE ALL-<-WHEN-NOT-CONSP))
    (864 236
         (:REWRITE NATP-OF-CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
    (860 188 (:REWRITE USE-ALL-CONSP-FOR-CAR))
    (828 268 (:REWRITE DEFAULT-CDR))
    (520 52 (:DEFINITION LEN))
    (376 188
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
    (363 363 (:REWRITE USE-ALL-CONSP-2))
    (363 363 (:REWRITE USE-ALL-CONSP))
    (336 336 (:TYPE-PRESCRIPTION ALL-CONSP))
    (302 302
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
    (296 148
         (:TYPE-PRESCRIPTION NATP-OF-TOP-NODENUM-WHEN-PSEUDO-DAGP))
    (256 256
         (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (247 194 (:REWRITE DEFAULT-+-2))
    (242 121
         (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
    (242 121
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
    (242 121
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
    (242 121
         (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-AUX-CHEAP))
    (240 240 (:REWRITE USE-ALL-NATP-2))
    (240 240 (:REWRITE USE-ALL-NATP))
    (194 194 (:REWRITE DEFAULT-+-1))
    (188 188
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (188 188
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
    (184 92
         (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
    (174 87
         (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
    (168 168
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
    (168 168 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
    (156 141 (:REWRITE DEFAULT-<-1))
    (153 141 (:REWRITE DEFAULT-<-2))
    (143 143
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (141 141 (:REWRITE USE-ALL-<-2))
    (141 141 (:REWRITE USE-ALL-<))
    (141 141
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
    (138 138
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
    (128 128 (:REWRITE USE-ALL-<=-2))
    (128 128 (:REWRITE USE-ALL-<=))
    (121 121 (:TYPE-PRESCRIPTION WEAK-DAGP-AUX))
    (121 121 (:TYPE-PRESCRIPTION ALL-INTEGERP))
    (121 121
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
    (121 121
         (:REWRITE INTEGERP-OF-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (120 3
         (:REWRITE USE-ALL-DARGP-LESS-THAN-FOR-CAR))
    (109 109
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
    (104 104 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
    (103 103 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
    (103 103 (:REWRITE ALL-<-TRANSITIVE-FREE))
    (103 103 (:REWRITE ALL-<-TRANSITIVE))
    (99 99
        (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
    (95 5 (:REWRITE USE-ALL-DARGP-FOR-CAR))
    (92 92
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
    (90 90
        (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
    (87 87
        (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
    (83 83
        (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
    (72 72
        (:REWRITE <-OF-0-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (70 15 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
    (44 11
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
    (43 43
        (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
    (43 43
        (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
    (40 20
        (:REWRITE NATP-OF-TOP-NODENUM-WHEN-PSEUDO-DAGP))
    (32 32
        (:REWRITE NOT-<-OF-+-1-AND-CAR-WHEN-ALL-<))
    (32 16
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NO-ATOMS-CHEAP))
    (30 15
        (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
    (26 26 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
    (22 11
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
    (16 16 (:TYPE-PRESCRIPTION NO-ATOMS))
    (16 16 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
    (16 16
        (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
    (15 15
        (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
    (15 15
        (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
    (15 5
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
    (13 4 (:REWRITE ALL-NATP-OF-CONS))
    (11 11
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
    (11 11
        (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
    (10 10 (:TYPE-PRESCRIPTION ALL-DARGP))
    (10 10 (:REWRITE USE-ALL-DARGP-2))
    (10 10 (:REWRITE USE-ALL-DARGP))
    (10 10
        (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
    (10 5
        (:REWRITE DARGP-LESS-THAN-WHEN-MYQUOTEP-CHEAP))
    (10 5
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
    (8 8 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
    (6 6
       (:TYPE-PRESCRIPTION ALL-DARGP-LESS-THAN))
    (6 3 (:REWRITE DARGP-WHEN-MYQUOTEP-CHEAP))
    (5 5 (:REWRITE USE-ALL-RATIONALP-2))
    (5 5 (:REWRITE USE-ALL-RATIONALP))
    (5 5 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
    (5 5 (:REWRITE USE-ALL-DARGP-LESS-THAN))
    (5 5
       (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
    (5 5
       (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
    (5 5
       (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
    (5 5
       (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
    (5 5
       (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
    (5 5 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
    (3 3
       (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
    (3 3 (:REWRITE DARGP-LESS-THAN-MONO))
    (1 1
       (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP)))
(TRUE-LISTP-OF-CAR-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG
     (334 106 (:REWRITE DEFAULT-+-2))
     (320 168 (:REWRITE DEFAULT-CAR))
     (212 212 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (212 212 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (212 212
          (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (195 195 (:REWRITE USE-ALL-CONSP-2))
     (195 195 (:REWRITE USE-ALL-CONSP))
     (120 4
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (106 106 (:REWRITE DEFAULT-+-1))
     (105 105 (:REWRITE DEFAULT-CDR))
     (84 66 (:REWRITE DEFAULT-<-2))
     (84 66 (:REWRITE DEFAULT-<-1))
     (84 4 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
     (68 4
         (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
     (66 66 (:REWRITE USE-ALL-<=-2))
     (66 66 (:REWRITE USE-ALL-<=))
     (66 66 (:REWRITE USE-ALL-<-2))
     (66 66 (:REWRITE USE-ALL-<))
     (66 66
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (57 57
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (50 10 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (48 24
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (46 46 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (46 46
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (46 23
         (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (30 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (24 24
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (20 20 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (20 20 (:TYPE-PRESCRIPTION ALL-CONSP))
     (20 20
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (20 10
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (10 10
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (10 10
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (8 8 (:TYPE-PRESCRIPTION ALL-RATIONALP))
     (8 8
        (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (8 8
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (6 6
        (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (4 4 (:REWRITE USE-ALL-RATIONALP-2))
     (4 4 (:REWRITE USE-ALL-RATIONALP))
     (4 4
        (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
     (1 1
        (:TYPE-PRESCRIPTION
             TRUE-LISTP-OF-CAR-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG)))
(CONSP-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG
     (167 52 (:REWRITE DEFAULT-+-2))
     (140 52 (:REWRITE DEFAULT-CAR))
     (111 111 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (111 111 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (111 111
          (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (110 110 (:REWRITE USE-ALL-CONSP-2))
     (110 110 (:REWRITE USE-ALL-CONSP))
     (60 2
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (52 52 (:REWRITE DEFAULT-+-1))
     (50 50 (:REWRITE DEFAULT-CDR))
     (42 2 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
     (38 28 (:REWRITE DEFAULT-<-2))
     (38 28 (:REWRITE DEFAULT-<-1))
     (34 2
         (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
     (30 6 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (28 28 (:REWRITE USE-ALL-<=-2))
     (28 28 (:REWRITE USE-ALL-<=))
     (28 28 (:REWRITE USE-ALL-<-2))
     (28 28 (:REWRITE USE-ALL-<))
     (28 28
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (26 26
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (24 12
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (19 19 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (19 19
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (18 6
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (16 8
         (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (12 12 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (12 12 (:TYPE-PRESCRIPTION ALL-CONSP))
     (12 6
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (11 11
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (9 9
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (6 6
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (6 6
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (6 6
        (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (6 6
        (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (6 6 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (4 4 (:TYPE-PRESCRIPTION ALL-RATIONALP))
     (4 4
        (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (2 2 (:REWRITE USE-ALL-RATIONALP-2))
     (2 2 (:REWRITE USE-ALL-RATIONALP))
     (2 2
        (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
     (1 1
        (:TYPE-PRESCRIPTION CONSP-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG)))
(PSEUDO-DAGP-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG
    (12278 229 (:REWRITE USE-ALL-<-FOR-CAR))
    (10961 351 (:REWRITE USE-ALL-NATP-FOR-CAR))
    (6541 768
          (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
    (6390 2084 (:REWRITE DEFAULT-CAR))
    (5748 170 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
    (4708 242 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
    (3626 1813
          (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
    (3441 170
          (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
    (2938 706 (:REWRITE USE-ALL-CONSP-FOR-CAR))
    (2792 9
          (:REWRITE PSEUDO-DAGP-AUX-OF-MINUS1-OF-LEN))
    (2560 2560
          (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
    (1828 323 (:REWRITE ALL-<-WHEN-NOT-CONSP))
    (1412 706
          (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
    (1126 1126 (:REWRITE USE-ALL-CONSP-2))
    (1126 1126 (:REWRITE USE-ALL-CONSP))
    (1116 1116 (:TYPE-PRESCRIPTION ALL-CONSP))
    (706 706
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (706 706
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
    (706 706
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
    (671 520 (:REWRITE DEFAULT-<-1))
    (650 520 (:REWRITE DEFAULT-<-2))
    (621 425 (:REWRITE DEFAULT-+-2))
    (558 558
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
    (558 558 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
    (524 524
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
    (520 520 (:REWRITE USE-ALL-<-2))
    (520 520 (:REWRITE USE-ALL-<))
    (520 520
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (484 242
         (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
    (478 478 (:REWRITE DEFAULT-CDR))
    (468 13
         (:REWRITE USE-ALL-DARGP-LESS-THAN-FOR-CAR))
    (433 433 (:TYPE-PRESCRIPTION NATP))
    (425 425 (:REWRITE DEFAULT-+-1))
    (418 22 (:REWRITE USE-ALL-DARGP-FOR-CAR))
    (415 415 (:REWRITE ALL-<-TRANSITIVE-FREE))
    (415 415 (:REWRITE ALL-<-TRANSITIVE))
    (398 398 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
    (394 394 (:REWRITE USE-ALL-<=-2))
    (394 394 (:REWRITE USE-ALL-<=))
    (379 379 (:REWRITE USE-ALL-NATP-2))
    (379 379 (:REWRITE USE-ALL-NATP))
    (379 379
         (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
    (376 188
         (:TYPE-PRESCRIPTION NATP-OF-TOP-NODENUM-WHEN-PSEUDO-DAGP))
    (351 351
         (:REWRITE NATP-OF-CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
    (340 170
         (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
    (340 170
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
    (340 170
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
    (340 170
         (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-AUX-CHEAP))
    (326 84 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
    (323 323
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
    (242 242
         (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
    (216 216
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
    (209 209
         (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
    (209 209
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
    (209 66
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
    (207 207
         (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
    (196 196
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
    (194 97
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NO-ATOMS-CHEAP))
    (170 170 (:TYPE-PRESCRIPTION WEAK-DAGP-AUX))
    (170 170 (:TYPE-PRESCRIPTION ALL-INTEGERP))
    (170 170
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
    (170 170
         (:REWRITE INTEGERP-OF-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (170 170
         (:REWRITE <-OF-0-WHEN-WHEN-BOUNDED-NATP-ALISTP))
    (168 84
         (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
    (153 153
         (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
    (150 150 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
    (132 66
         (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
    (128 9
         (:REWRITE PSEUDO-DAGP-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK))
    (104 104
         (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
    (104 104
         (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
    (97 97 (:TYPE-PRESCRIPTION NO-ATOMS))
    (96 32
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
    (95 95 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
    (84 84
        (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
    (84 84
        (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
    (83 83
        (:REWRITE NOT-<-OF-+-1-AND-CAR-WHEN-ALL-<))
    (82 41
        (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
    (74 74
        (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
    (66 66
        (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
    (66 66
        (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
    (65 20 (:REWRITE ALL-NATP-OF-CONS))
    (62 62 (:REWRITE USE-ALL-DARGP-2))
    (62 62 (:REWRITE USE-ALL-DARGP))
    (62 62
        (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
    (62 31
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
    (53 52 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
    (52 26
        (:REWRITE NATP-OF-TOP-NODENUM-WHEN-PSEUDO-DAGP))
    (49 22
        (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-CAR-AND-QUOTE))
    (44 44 (:TYPE-PRESCRIPTION ALL-DARGP))
    (44 22 (:REWRITE DARGP-WHEN-MYQUOTEP-CHEAP))
    (32 32 (:REWRITE USE-ALL-RATIONALP-2))
    (32 32 (:REWRITE USE-ALL-RATIONALP))
    (32 32
        (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
    (31 31
        (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
    (31 31
        (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
    (31 31
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
    (31 31
        (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
    (31 31
        (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
    (26 26
        (:TYPE-PRESCRIPTION ALL-DARGP-LESS-THAN))
    (22 22 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
    (22 22 (:REWRITE USE-ALL-DARGP-LESS-THAN))
    (22 22
        (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
    (22 22 (:REWRITE DARGP-LESS-THAN-MONO)))
(TRUE-LISTP-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG
     (161 42 (:REWRITE DEFAULT-+-2))
     (151 95 (:REWRITE DEFAULT-CAR))
     (82 82 (:REWRITE USE-ALL-CONSP-2))
     (82 82 (:REWRITE USE-ALL-CONSP))
     (76 76 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (76 76 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (76 76
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (64 4
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (54 54 (:REWRITE DEFAULT-CDR))
     (48 48
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (48 24
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (48 24
         (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (42 42 (:REWRITE DEFAULT-+-1))
     (36 26 (:REWRITE DEFAULT-<-2))
     (36 26 (:REWRITE DEFAULT-<-1))
     (28 28
         (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
     (28 4 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
     (26 26 (:REWRITE USE-ALL-<=-2))
     (26 26 (:REWRITE USE-ALL-<=))
     (26 26 (:REWRITE USE-ALL-<-2))
     (26 26 (:REWRITE USE-ALL-<))
     (26 26
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (18 18 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
     (18 18
         (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
     (12 12
         (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
     (12 12
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (12 4
         (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
     (8 8 (:TYPE-PRESCRIPTION ALL-RATIONALP))
     (8 8
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (8 8
        (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (4 4 (:REWRITE USE-ALL-RATIONALP-2))
     (4 4 (:REWRITE USE-ALL-RATIONALP))
     (4 4
        (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
     (3 1
        (:TYPE-PRESCRIPTION TRUE-LISTP-OF-MV-NTH-1-OF-MAKE-IMPLICATION-DAG)))
(MAKE-IMPLICATION-DAG!)
