(FIXUP-POSSIBLY-NEGATED-NODENUMS
 (4690 108 (:REWRITE USE-ALL-<-FOR-CAR))
 (4021 149 (:DEFINITION NAT-LISTP))
 (3201 186 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (3138 173 (:REWRITE USE-ALL-NATP-FOR-CAR))
 (1668 114 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (1393 113 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (1378 65 (:REWRITE ALL-<-OF-CDR))
 (996 530 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (851 851 (:TYPE-PRESCRIPTION NAT-LISTP))
 (745 66 (:REWRITE ALL-NATP-OF-CDR))
 (615 351 (:REWRITE DEFAULT-CDR))
 (591 591 (:TYPE-PRESCRIPTION ALL-NATP))
 (530 530 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (430 215 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (378 27 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (370 185 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (358 302 (:REWRITE DEFAULT-CAR))
 (337 337 (:TYPE-PRESCRIPTION ALL-<))
 (327 51 (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (318 318 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
 (306 30 (:REWRITE <-OF-CAR-AND-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (230 230 (:TYPE-PRESCRIPTION NATP))
 (222 72 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-OF-CDR))
 (215 215 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (201 30 (:REWRITE <-OF-CAR-AND-ALEN1))
 (189 185 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (185 185 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (173 173 (:REWRITE USE-ALL-NATP-2))
 (173 173 (:REWRITE USE-ALL-NATP))
 (173 173 (:REWRITE NATP-WHEN-BOUNDED-DARG-LISTP-GEN))
 (172 164 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (170 85 (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
 (170 85 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
 (170 85 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (164 164 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (164 164 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (164 164 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (164 164 (:REWRITE ALL-<-TRANSITIVE))
 (162 18 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-OF-CAR))
 (159 159 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP-SPECIAL-ALT))
 (159 159 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP-SPECIAL))
 (159 159 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP))
 (146 146 (:REWRITE USE-ALL-CONSP-2))
 (146 146 (:REWRITE USE-ALL-CONSP))
 (141 110 (:REWRITE DEFAULT-<-2))
 (138 110 (:REWRITE DEFAULT-<-1))
 (110 110 (:REWRITE USE-ALL-<=-2))
 (110 110 (:REWRITE USE-ALL-<=))
 (110 110 (:REWRITE USE-ALL-<-2))
 (110 110 (:REWRITE USE-ALL-<))
 (110 110 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (108 108 (:REWRITE NOT-<-OF-CAR-WHEN-BOUNDED-DARG-LISTP-2))
 (108 27 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (86 86 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (85 85 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (85 85 (:REWRITE INTEGERP-OF-CAR-WHEN-POSSIBLY-NEGATED-NODENUMSP-WEAKEN-CHEAP))
 (85 85 (:REWRITE INTEGERP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (85 11 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (79 79 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (54 54 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (50 50 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (44 44 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (42 42 (:LINEAR ARRAY2P-LINEAR))
 (34 34 (:TYPE-PRESCRIPTION ALL-CONSP))
 (33 11 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (32 32 (:REWRITE CONSP-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-AND-QUOTEP))
 (32 32 (:REWRITE CONSP-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (30 6 (:REWRITE ALL-CONSP-OF-CDR))
 (28 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (27 27 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (27 27 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (27 27 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (27 27 (:REWRITE NOT-CDR-OF-CDR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (27 27 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (27 27 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (27 27 (:REWRITE MYQUOTEP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (24 12 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (23 23 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (22 22 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (22 11 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (19 2 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
 (17 17 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (17 17 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (17 17 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (12 12 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 (12 12 (:REWRITE ARRAY1P-WHEN-CONTEXT-ARRAYP))
 (12 11 (:REWRITE CONSP-OF-CAR-WHEN-POSSIBLY-NEGATED-NODENUMSP-WEAKEN-CHEAP))
 (11 11 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (11 11 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (11 11 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (9 9 (:TYPE-PRESCRIPTION QUOTEP))
 (8 4 (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-CHEAP))
 (8 4 (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-AUX-CHEAP))
 (7 3 (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
 (6 6 (:TYPE-PRESCRIPTION ALL-RATIONALP))
 (5 1 (:REWRITE ALL-RATIONALP-OF-CDR))
 (4 4 (:TYPE-PRESCRIPTION WEAK-DAGP-AUX))
 (4 4 (:TYPE-PRESCRIPTION WEAK-DAGP))
 (4 4 (:REWRITE INTEGERP-OF-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (4 4 (:REWRITE <-OF-0-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (3 3 (:REWRITE USE-ALL-RATIONALP-2))
 (3 3 (:REWRITE USE-ALL-RATIONALP))
 (3 3 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (3 3 (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE NATP-OF-CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (1 1 (:TYPE-PRESCRIPTION POSSIBLY-NEGATED-NODENUMSP))
 )
(FIXUP-CONTEXT
 (233 6 (:REWRITE USE-ALL-<-FOR-CAR))
 (184 8 (:DEFINITION NAT-LISTP))
 (159 10 (:REWRITE USE-ALL-NATP-FOR-CAR))
 (154 10 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (81 6 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (61 6 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (58 3 (:REWRITE ALL-<-OF-CDR))
 (42 42 (:TYPE-PRESCRIPTION NAT-LISTP))
 (31 31 (:TYPE-PRESCRIPTION ALL-NATP))
 (21 3 (:REWRITE ALL-NATP-OF-CDR))
 (20 10 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (19 3 (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (18 18 (:TYPE-PRESCRIPTION ALL-<))
 (18 2 (:REWRITE <-OF-CAR-AND-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (16 16 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
 (14 14 (:TYPE-PRESCRIPTION NATP))
 (13 13 (:REWRITE DEFAULT-CDR))
 (13 2 (:REWRITE <-OF-CAR-AND-ALEN1))
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE USE-ALL-NATP-2))
 (10 10 (:REWRITE USE-ALL-NATP))
 (10 10 (:REWRITE NATP-WHEN-BOUNDED-DARG-LISTP-GEN))
 (10 10 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (9 9 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (9 9 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (9 9 (:REWRITE ALL-<-TRANSITIVE))
 (8 8 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP-SPECIAL-ALT))
 (8 8 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP-SPECIAL))
 (8 8 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-BOUNDED-DARG-LISTP))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
 (8 4 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
 (8 4 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (8 3 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-OF-CDR))
 (6 6 (:REWRITE USE-ALL-<=-2))
 (6 6 (:REWRITE USE-ALL-<=))
 (6 6 (:REWRITE USE-ALL-<-2))
 (6 6 (:REWRITE USE-ALL-<))
 (6 6 (:REWRITE NOT-<-OF-CAR-WHEN-BOUNDED-DARG-LISTP-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (5 1 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (4 4 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (4 4 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (4 4 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (4 4 (:REWRITE INTEGERP-OF-CAR-WHEN-POSSIBLY-NEGATED-NODENUMSP-WEAKEN-CHEAP))
 (4 4 (:REWRITE INTEGERP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (3 3 (:REWRITE USE-ALL-CONSP-2))
 (3 3 (:REWRITE USE-ALL-CONSP))
 (3 3 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (3 1 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (2 2 (:TYPE-PRESCRIPTION ALL-CONSP))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (1 1 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (1 1 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE CONTEXTP-WITH-BOUND-MONOTONE))
 (1 1 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (1 1 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (1 1 (:REWRITE CONSP-OF-CAR-WHEN-POSSIBLY-NEGATED-NODENUMSP-WEAKEN-CHEAP))
 (1 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 )
