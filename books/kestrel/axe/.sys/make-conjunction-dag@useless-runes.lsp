(MAKE-CONJUNCTION-DAG
 (48 48 (:REWRITE DEFAULT-CDR))
 (48 6 (:DEFINITION LEN))
 (26 26 (:REWRITE USE-ALL-CONSP-2))
 (26 26 (:REWRITE USE-ALL-CONSP))
 (24 24 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (12 12 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (12 12 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (12 12 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE USE-ALL-<=-2))
 (6 6 (:REWRITE USE-ALL-<=))
 (6 6 (:REWRITE USE-ALL-<-2))
 (6 6 (:REWRITE USE-ALL-<))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (6 6 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (6 6 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (2 2 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (2 2 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 )
(TRUE-LISTP-OF-CAR-OF-MV-NTH-1-OF-MAKE-CONJUNCTION-DAG
 (831 198 (:REWRITE DEFAULT-+-2))
 (384 192 (:TYPE-PRESCRIPTION NATP-OF-TOP-NODENUM-OF-DAG))
 (312 208 (:REWRITE DEFAULT-CAR))
 (289 289 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (289 289 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (289 289 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (288 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (256 256 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (224 224 (:REWRITE USE-ALL-CONSP-2))
 (224 224 (:REWRITE USE-ALL-CONSP))
 (198 198 (:REWRITE DEFAULT-+-1))
 (183 183 (:REWRITE DEFAULT-CDR))
 (99 69 (:REWRITE DEFAULT-<-2))
 (98 69 (:REWRITE DEFAULT-<-1))
 (96 32 (:REWRITE TOP-NODENUM-OF-DAG-BECOMES-LEN-MINUS-1))
 (69 69 (:REWRITE USE-ALL-<=-2))
 (69 69 (:REWRITE USE-ALL-<=))
 (69 69 (:REWRITE USE-ALL-<-2))
 (69 69 (:REWRITE USE-ALL-<))
 (69 69 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (43 43 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (43 43 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (40 20 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (32 32 (:REWRITE USE-ALL-RATIONALP-2))
 (32 32 (:REWRITE USE-ALL-RATIONALP))
 (31 31 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (17 17 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (14 14 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (14 14 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (9 9 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-CAR-OF-MV-NTH-1-OF-MAKE-CONJUNCTION-DAG))
 )
(TRUE-LISTP-OF-MV-NTH-1-OF-MAKE-CONJUNCTION-DAG
 (300 30 (:DEFINITION LEN))
 (149 82 (:REWRITE DEFAULT-+-2))
 (115 63 (:REWRITE DEFAULT-CAR))
 (82 82 (:REWRITE DEFAULT-+-1))
 (80 80 (:REWRITE USE-ALL-CONSP-2))
 (80 80 (:REWRITE USE-ALL-CONSP))
 (60 60 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (60 60 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (60 60 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (56 56 (:REWRITE DEFAULT-CDR))
 (26 13 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (24 24 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (16 10 (:REWRITE DEFAULT-<-2))
 (16 10 (:REWRITE DEFAULT-<-1))
 (13 13 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (10 10 (:REWRITE USE-ALL-<=-2))
 (10 10 (:REWRITE USE-ALL-<=))
 (10 10 (:REWRITE USE-ALL-<-2))
 (10 10 (:REWRITE USE-ALL-<))
 (10 10 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (10 10 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (10 10 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (8 8 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (3 1 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-MV-NTH-1-OF-MAKE-CONJUNCTION-DAG))
 )
(MAKE-CONJUNCTION-DAG!)
