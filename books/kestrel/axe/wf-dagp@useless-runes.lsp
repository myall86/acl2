(WF-DAGP (119 119 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
         (2 2 (:LINEAR ARRAY2P-LINEAR))
         (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
         (1 1
            (:REWRITE BOUNDED-DAG-PARENT-ARRAYP-MONOTONE)))
(WF-DAGP-EXPANDER (84 84 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
                  (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
                  (3 3
                     (:REWRITE BOUNDED-DAG-PARENT-ARRAYP-MONOTONE))
                  (2 2 (:LINEAR ARRAY2P-LINEAR))
                  (1 1
                     (:REWRITE BOUNDED-DAG-CONSTANT-ALISTP-MONOTONE)))
(WF-DAGP-FORWARD (106 106 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
                 (2 2 (:LINEAR ARRAY2P-LINEAR)))
(WF-DAGP-FORWARD-TO-<=-OF-LEN (8 4 (:TYPE-PRESCRIPTION ALEN1-TYPE))
                              (4 4 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
                              (4 4 (:TYPE-PRESCRIPTION ARRAY1P)))
(WF-DAGP-OF-MAKE-EMPTY-ARRAY
     (2 2 (:REWRITE USE-ALL-<=-2))
     (2 2 (:REWRITE USE-ALL-<=))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE BOUNDED-DAG-PARENT-ARRAYP-MONOTONE)))
(WF-DAGP-OF-MAKE-INTO-ARRAY-ETC
     (72 9 (:DEFINITION LEN))
     (40 20
         (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
     (20 20
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (20 11 (:REWRITE DEFAULT-+-2))
     (18 18 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
     (18 18 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
     (18 18
         (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
     (11 11 (:REWRITE DEFAULT-+-1))
     (9 9 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE USE-ALL-<=-2))
     (3 3 (:REWRITE USE-ALL-<=))
     (3 3 (:REWRITE USE-ALL-<-2))
     (3 3 (:REWRITE USE-ALL-<))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (3 3
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (2 2 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (1 1 (:REWRITE DEFAULT-CAR)))
(WF-DAGP-OF-MAKE-DAG-PARENT-ARRAY-WITH-NAME2-ETC
     (84 42 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (42 42 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (42 42 (:TYPE-PRESCRIPTION ARRAY1P)))
