(MAKE-TERM-INTO-DAG-BASIC
 (240 16 (:DEFINITION LEN))
 (165 165 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (128 4 (:DEFINITION SYMBOL-LISTP))
 (112 8 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (84 60 (:REWRITE DEFAULT-CAR))
 (72 64 (:REWRITE DEFAULT-CDR))
 (52 52 (:REWRITE USE-ALL-CONSP-2))
 (52 52 (:REWRITE USE-ALL-CONSP))
 (48 16 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (40 8 (:REWRITE ALL-CONSP-OF-CDR))
 (32 32 (:TYPE-PRESCRIPTION ALL-CONSP))
 (32 32 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (32 32 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (32 32 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (32 16 (:REWRITE DEFAULT-+-2))
 (24 8 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (16 16 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (16 16 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (16 16 (:REWRITE EQUAL-WHEN-BVLT))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (16 16 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (16 16 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (16 16 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (16 8 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (12 12 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (8 8 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (8 8 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 8 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (8 8 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (8 8 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (8 8 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (8 4 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (4 4 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (4 4 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:LINEAR ARRAY2P-LINEAR))
 (1 1 (:REWRITE BOUND-WHEN-USB))
 (1 1 (:REWRITE <-WHEN-BVLT))
 )
(EQUAL-OF-QUOTE-AND-CAR-WHEN-DARGP
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE USE-ALL-CONSP-2))
 (2 2 (:REWRITE USE-ALL-CONSP))
 (2 1 (:REWRITE DARGP-WHEN-NATP-CHEAP))
 (2 1 (:REWRITE DARGP-WHEN-MYQUOTEP-CHEAP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:TYPE-PRESCRIPTION MYQUOTEP))
 (1 1 (:REWRITE USE-ALL-NATP-2))
 (1 1 (:REWRITE USE-ALL-NATP))
 (1 1 (:REWRITE USE-ALL-DARGP-2))
 (1 1 (:REWRITE USE-ALL-DARGP))
 (1 1 (:REWRITE USE-ALL-<=-2))
 (1 1 (:REWRITE USE-ALL-<=))
 (1 1 (:REWRITE USE-ALL-<-2))
 (1 1 (:REWRITE USE-ALL-<))
 (1 1 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE NATP-WHEN-BOUNDED-DARG-LISTP-GEN))
 (1 1 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (1 1 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-BVLT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DARGP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (1 1 (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
 (1 1 (:REWRITE BOUND-WHEN-USB))
 (1 1 (:REWRITE <-WHEN-BVLT))
 (1 1 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 )
(MAKE-TERM-INTO-DAG-BASIC-RETURN-TYPE
 (648 3 (:DEFINITION PSEUDO-TERMP))
 (231 9 (:DEFINITION LENGTH))
 (180 12 (:DEFINITION LEN))
 (96 3 (:DEFINITION SYMBOL-LISTP))
 (84 6 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (63 45 (:REWRITE DEFAULT-CAR))
 (54 48 (:REWRITE DEFAULT-CDR))
 (41 41 (:REWRITE USE-ALL-CONSP-2))
 (41 41 (:REWRITE USE-ALL-CONSP))
 (36 12 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (30 6 (:REWRITE ALL-CONSP-OF-CDR))
 (30 3 (:REWRITE EQUAL-OF-QUOTE-AND-CAR-WHEN-DARGP))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (24 24 (:TYPE-PRESCRIPTION ALL-CONSP))
 (24 24 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (24 24 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (24 24 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (24 12 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (12 12 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (12 12 (:REWRITE EQUAL-WHEN-BVLT))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (12 12 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (12 12 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (12 12 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (12 6 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (12 3 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
 (9 9 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (6 6 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (6 6 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 6 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (6 6 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (6 6 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (6 6 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (6 3 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (4 4 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (4 4 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (3 3 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (3 3 (:TYPE-PRESCRIPTION DARGP))
 (3 3 (:REWRITE USE-ALL-DARGP-2))
 (3 3 (:REWRITE USE-ALL-DARGP))
 (3 3 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (3 3 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:REWRITE DARGP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (3 3 (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
 )
(PSEUDO-DAGP-OF-MV-NTH-1-OF-MAKE-TERM-INTO-DAG-BASIC)
(<-OF-LEN-OF-MV-NTH-1-OF-MAKE-TERM-INTO-DAG-BASIC
 (452 2 (:DEFINITION PSEUDO-TERMP))
 (154 6 (:DEFINITION LENGTH))
 (128 9 (:DEFINITION LEN))
 (70 3 (:DEFINITION MYQUOTEP))
 (64 2 (:DEFINITION SYMBOL-LISTP))
 (56 42 (:REWRITE DEFAULT-CDR))
 (56 4 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (51 5 (:REWRITE EQUAL-OF-QUOTE-AND-CAR-WHEN-DARGP))
 (45 33 (:REWRITE DEFAULT-CAR))
 (39 3 (:DEFINITION QUOTEP))
 (33 33 (:REWRITE USE-ALL-CONSP-2))
 (33 33 (:REWRITE USE-ALL-CONSP))
 (33 3 (:REWRITE DARGP-WHEN-CONSP-CHEAP))
 (24 8 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (20 4 (:REWRITE ALL-CONSP-OF-CDR))
 (19 19 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (18 18 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (18 18 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (18 9 (:REWRITE DEFAULT-+-2))
 (16 16 (:TYPE-PRESCRIPTION ALL-CONSP))
 (12 4 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-ARRAY-TO-ALIST-TYPE))
 (9 9 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (9 9 (:REWRITE EQUAL-WHEN-BVLT))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (9 9 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (9 9 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (9 9 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (8 8 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (8 4 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (6 6 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (5 5 (:TYPE-PRESCRIPTION DARGP))
 (5 5 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (4 4 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (4 4 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (4 4 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (4 4 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (4 2 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (3 3 (:REWRITE USE-ALL-DARGP-2))
 (3 3 (:REWRITE USE-ALL-DARGP))
 (3 3 (:REWRITE DARGP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (3 3 (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION QUOTEP))
 (1 1 (:REWRITE USE-ALL-<=-2))
 (1 1 (:REWRITE USE-ALL-<=))
 (1 1 (:REWRITE USE-ALL-<-2))
 (1 1 (:REWRITE USE-ALL-<))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE BOUND-WHEN-USB))
 (1 1 (:REWRITE <-WHEN-BVLT))
 (1 1 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (1 1 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 )
(MAKE-TERM-INTO-DAG-BASIC-UNGUARDED)
(MAKE-TERM-INTO-DAG-BASIC!)
