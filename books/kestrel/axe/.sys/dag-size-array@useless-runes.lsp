(SIZE-ARRAYP-AUX
 (139 139 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (4 3 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (1 1 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(SIZE-ARRAYP-AUX-OF-MINUS1)
(SIZE-ARRAYP-AUX-OF-0
 (8 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (4 2 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (2 2 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2 2 (:TYPE-PRESCRIPTION ARRAY1P))
 )
(SIZE-ARRAYP-AUX-MONOTONE
 (44 11 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (26 12 (:REWRITE INTEGERP-WHEN-NATP))
 (22 11 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (11 11 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (11 11 (:TYPE-PRESCRIPTION ARRAY1P))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX
 (28 7 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (14 7 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (7 7 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (7 7 (:TYPE-PRESCRIPTION ARRAY1P))
 (3 3 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(SIZE-ARRAYP-AUX-OF-ASET1-TOO-HIGH
 (169 169 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (43 14 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (22 8 (:REWRITE INTEGERP-WHEN-NATP))
 (15 10 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:LINEAR ARRAY2P-LINEAR))
 (6 6 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (6 2 (:REWRITE AREF1-OF-ASET1-DIFF))
 (5 5 (:TYPE-PRESCRIPTION ASET1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(SIZE-ARRAYP-AUX-OF-ASET1
 (209 209 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (16 8 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (12 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 3 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (6 6 (:LINEAR ARRAY2P-LINEAR))
 (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (4 4 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (3 1 (:REWRITE +-COMBINE-CONSTANTS))
 (2 2 (:TYPE-PRESCRIPTION ASET1))
 (2 2 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (1 1 (:REWRITE NATP-OF-+-WHEN-NATP-AND-NATP))
 (1 1 (:REWRITE INTEGERP-WHEN-NATP))
 (1 1 (:REWRITE <-OF-+-CANCEL-1-2))
 (1 1 (:DEFINITION FIX))
 )
(SIZE-ARRAYP-AUX-OF-ASET1-AT-END
 (32 32 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (12 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (11 5 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (9 3 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (8 3 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE DEFAULT-<-2))
 (3 1 (:REWRITE SIZE-ARRAYP-AUX-OF-ASET1-TOO-HIGH))
 (3 1 (:REWRITE +-COMBINE-CONSTANTS))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (2 2 (:REWRITE <-OF-+-CANCEL-1-2))
 (2 2 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (1 1 (:TYPE-PRESCRIPTION ASET1))
 (1 1 (:REWRITE NATP-OF-+-WHEN-NATP-AND-NATP))
 )
(SIZE-ARRAYP-AUX-OF-COMPRESS1
 (26 26 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (19 9 (:REWRITE DEFAULT-<-1))
 (18 9 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (10 10 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (10 10 (:LINEAR ARRAY2P-LINEAR))
 (7 3 (:REWRITE ACL2-NUMBERP-WHEN-NATP))
 (6 6 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SIZE-ARRAYP-AUX-OF-CONS-OF-CONS-OF-HEADER
 (40 10 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (24 4 (:REWRITE DEFAULT-CDR))
 (24 4 (:REWRITE DEFAULT-CAR))
 (20 10 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (19 13 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (10 10 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (10 10 (:TYPE-PRESCRIPTION ARRAY1P))
 (8 8 (:REWRITE USE-ALL-CONSP-2))
 (8 8 (:REWRITE USE-ALL-CONSP))
 (6 1 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-CANCEL-1-2))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(SIZE-ARRAYP-AUX-OF-CONS-OF-CONS-OF-HEADER-IRREL
 (76 19 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (38 19 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (36 6 (:REWRITE DEFAULT-CDR))
 (36 6 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (19 19 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (19 19 (:TYPE-PRESCRIPTION ARRAY1P))
 (12 12 (:REWRITE USE-ALL-CONSP-2))
 (12 12 (:REWRITE USE-ALL-CONSP))
 (10 10 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE NATP-OF-+-WHEN-NATP-AND-NATP))
 )
(SIZE-ARRAYP)
(ARRAY1P-WHEN-SIZE-ARRAYP)
(SIZE-ARRAYP-FORWARD-TO-ARRAY1P)
(SIZE-ARRAYP-FORWARD-TO-LEN-BOUNDSIZE-ARRAYP
 (10 10 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 )
(SIZE-ARRAYP-FORWARD-TO-LEN-BOUND-2SIZE-ARRAYP
 (3 3 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 )
(TYPE-OF-AREF1-WHEN-SIZE-ARRAYP
 (12 12 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (2 1 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-SPECIAL
 (16 16 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 )
(SIZE-ARRAYP-MONOTONE
 (12 12 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (5 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE ARRAY1P-WHEN-SIZE-ARRAYP))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 )
(SIZE-ARRAYP-OF-ASET1
 (32 1 (:DEFINITION SIZE-ARRAYP-AUX))
 (22 1 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-SPECIAL))
 (16 16 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (8 2 (:REWRITE +-COMBINE-CONSTANTS))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (5 3 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE ARRAY1P-WHEN-SIZE-ARRAYP))
 (2 2 (:REWRITE SIZE-ARRAYP-MONOTONE))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (2 1 (:REWRITE UNICITY-OF-0))
 (2 1 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (1 1 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (1 1 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (1 1 (:REWRITE NATP-OF-+-WHEN-NATP-AND-NATP))
 (1 1 (:DEFINITION FIX))
 )
(SIZE-ARRAYP-OF-ASET1-AT-END
 (54 2 (:DEFINITION SIZE-ARRAYP-AUX))
 (53 1 (:REWRITE SIZE-ARRAYP-OF-ASET1))
 (28 4 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-SPECIAL))
 (18 3 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (17 17 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (16 4 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (12 6 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (5 3 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (4 4 (:REWRITE ARRAY1P-WHEN-SIZE-ARRAYP))
 (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (4 4 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE SIZE-ARRAYP-MONOTONE))
 (3 3 (:REWRITE <-OF-+-CANCEL-1-2))
 (3 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (1 1 (:REWRITE NATP-OF-+-WHEN-NATP-AND-NATP))
 )
(SIZE-ARRAYP-OF-ASET1-AT-END-GEN
 (99 99 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (13 2 (:REWRITE SIZE-ARRAYP-OF-ASET1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-CANCEL-1-2))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(SIZE-ARRAYP-OF-MAKE-EMPTY-ARRAY-AND-0
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE INTEGERP-WHEN-NATP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE SIZE-ARRAYP-MONOTONE))
 (1 1 (:REWRITE SIZE-ARRAYP-AUX-MONOTONE))
 (1 1 (:REWRITE ARRAY1P-WHEN-SIZE-ARRAYP))
 )
(ADD-DARG-SIZES-WITH-NAME
 (351 351 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (239 239 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (58 29 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
 (58 29 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-CONSP-CHEAP))
 (51 11 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (49 49 (:TYPE-PRESCRIPTION ALL-CONSP))
 (49 16 (:REWRITE DEFAULT-+-2))
 (42 42 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
 (40 2 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (38 2 (:REWRITE <-OF-+-CANCEL-1+-1+))
 (31 29 (:REWRITE DEFAULT-CAR))
 (28 1 (:REWRITE NATP-OF-LARGEST-NON-QUOTEP-2))
 (22 11 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (19 19 (:REWRITE USE-ALL-CONSP-2))
 (19 19 (:REWRITE USE-ALL-CONSP))
 (17 7 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 8 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (13 7 (:REWRITE DEFAULT-<-2))
 (11 11 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (11 11 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (10 10 (:LINEAR ARRAY2P-LINEAR))
 (10 5 (:DEFINITION TRUE-LISTP))
 (10 1 (:REWRITE EQUAL-OF--1-AND-LARGEST-NON-QUOTEP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 2 (:REWRITE LARGEST-NON-QUOTEP-BOUND))
 (7 7 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (4 4 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (4 2 (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-OF-CDR-CHEAP))
 (2 2 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(NATP-OF-ADD-DARG-SIZES-WITH-NAME
 (1256 628 (:TYPE-PRESCRIPTION NATP-OF-LARGEST-NON-QUOTEP))
 (852 65 (:REWRITE ACL2-NUMBERP-WHEN-NATP))
 (735 64 (:REWRITE DEFAULT-+-1))
 (617 617 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (317 64 (:REWRITE DEFAULT-+-2))
 (252 12 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (244 244 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (224 12 (:REWRITE <-OF-+-CANCEL-1+-1+))
 (194 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (84 24 (:REWRITE DEFAULT-<-2))
 (84 24 (:REWRITE DEFAULT-<-1))
 (66 33 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
 (66 33 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-CONSP-CHEAP))
 (65 9 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (62 62 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (59 59 (:TYPE-PRESCRIPTION ALL-CONSP))
 (52 46 (:REWRITE DEFAULT-CAR))
 (32 8 (:REWRITE LARGEST-NON-QUOTEP-BOUND))
 (31 31 (:REWRITE USE-ALL-CONSP-2))
 (31 31 (:REWRITE USE-ALL-CONSP))
 (28 1 (:REWRITE NATP-OF-LARGEST-NON-QUOTEP-2))
 (24 24 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (24 24 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (22 22 (:REWRITE DEFAULT-CDR))
 (20 4 (:REWRITE ALL-CONSP-OF-CDR))
 (18 18 (:LINEAR ARRAY2P-LINEAR))
 (18 9 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (18 9 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (14 12 (:REWRITE +-COMBINE-CONSTANTS))
 (13 13 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (13 13 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (13 13 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (12 12 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (12 12 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (12 12 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (11 11 (:REWRITE FOLD-CONSTS-IN-+))
 (10 1 (:REWRITE EQUAL-OF--1-AND-LARGEST-NON-QUOTEP))
 (9 9 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (9 9 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (9 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-OF-CDR-CHEAP))
 )
(ADD-DARG-SIZES
 (351 351 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (239 239 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (58 29 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
 (58 29 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-CONSP-CHEAP))
 (51 11 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (49 49 (:TYPE-PRESCRIPTION ALL-CONSP))
 (49 16 (:REWRITE DEFAULT-+-2))
 (42 42 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
 (40 2 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (38 2 (:REWRITE <-OF-+-CANCEL-1+-1+))
 (31 29 (:REWRITE DEFAULT-CAR))
 (28 1 (:REWRITE NATP-OF-LARGEST-NON-QUOTEP-2))
 (22 11 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (19 19 (:REWRITE USE-ALL-CONSP-2))
 (19 19 (:REWRITE USE-ALL-CONSP))
 (17 7 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 8 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (13 7 (:REWRITE DEFAULT-<-2))
 (11 11 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (11 11 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (10 10 (:LINEAR ARRAY2P-LINEAR))
 (10 5 (:DEFINITION TRUE-LISTP))
 (10 1 (:REWRITE EQUAL-OF--1-AND-LARGEST-NON-QUOTEP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 2 (:REWRITE LARGEST-NON-QUOTEP-BOUND))
 (7 7 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (4 4 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (4 2 (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-OF-CDR-CHEAP))
 (2 2 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(NATP-OF-ADD-DARG-SIZES
 (1256 628 (:TYPE-PRESCRIPTION NATP-OF-LARGEST-NON-QUOTEP))
 (852 65 (:REWRITE ACL2-NUMBERP-WHEN-NATP))
 (735 64 (:REWRITE DEFAULT-+-1))
 (617 617 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (317 64 (:REWRITE DEFAULT-+-2))
 (252 12 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP))
 (244 244 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (224 12 (:REWRITE <-OF-+-CANCEL-1+-1+))
 (194 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (84 24 (:REWRITE DEFAULT-<-2))
 (84 24 (:REWRITE DEFAULT-<-1))
 (66 33 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
 (66 33 (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-CONSP-CHEAP))
 (65 9 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (62 62 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (59 59 (:TYPE-PRESCRIPTION ALL-CONSP))
 (52 46 (:REWRITE DEFAULT-CAR))
 (32 8 (:REWRITE LARGEST-NON-QUOTEP-BOUND))
 (31 31 (:REWRITE USE-ALL-CONSP-2))
 (31 31 (:REWRITE USE-ALL-CONSP))
 (28 1 (:REWRITE NATP-OF-LARGEST-NON-QUOTEP-2))
 (24 24 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (24 24 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (22 22 (:REWRITE DEFAULT-CDR))
 (20 4 (:REWRITE ALL-CONSP-OF-CDR))
 (18 18 (:LINEAR ARRAY2P-LINEAR))
 (18 9 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (18 9 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (14 12 (:REWRITE +-COMBINE-CONSTANTS))
 (13 13 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (13 13 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (13 13 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (12 12 (:REWRITE TYPE-OF-AREF1-WHEN-SIZE-ARRAYP-AUX))
 (12 12 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (12 12 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (11 11 (:REWRITE FOLD-CONSTS-IN-+))
 (10 1 (:REWRITE EQUAL-OF--1-AND-LARGEST-NON-QUOTEP))
 (9 9 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (9 9 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (9 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ALL-MYQUOTEP-OF-CDR-CHEAP))
 )
