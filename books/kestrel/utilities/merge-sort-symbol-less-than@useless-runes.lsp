(SYMBOL-LISTP-OF-MERGE-SYMBOL-<
 (180 166 (:REWRITE DEFAULT-CAR))
 (114 100 (:REWRITE DEFAULT-CDR))
 (46 31 (:REWRITE SYMBOL-<-TRANSITIVE))
 (31 31 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (26 26 (:REWRITE SYMBOL-<-ASYMMETRIC))
 )
(SYMBOL-LISTP-OF-EVENS
 (24 21 (:REWRITE DEFAULT-CDR))
 (20 17 (:REWRITE DEFAULT-CAR))
 )
(SYMBOL-LISTP-OF-MERGE-SORT-SYMBOL-<
 (104 8 (:DEFINITION MERGE-SYMBOL-<))
 (95 83 (:REWRITE DEFAULT-CDR))
 (67 67 (:REWRITE DEFAULT-CAR))
 (52 12 (:DEFINITION EVENS))
 (22 22 (:TYPE-PRESCRIPTION EVENS))
 (20 2 (:REWRITE SYMBOL-LISTP-OF-MERGE-SYMBOL-<))
 (16 16 (:DEFINITION REVAPPEND))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-<))
 (8 8 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (8 8 (:REWRITE SYMBOL-<-TRANSITIVE))
 (8 8 (:REWRITE SYMBOL-<-ASYMMETRIC))
 )
(CONSP-OF-MERGE-SYMBOL-<
 (38 38 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 (12 9 (:REWRITE SYMBOL-<-TRANSITIVE))
 (9 9 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (8 8 (:REWRITE SYMBOL-<-ASYMMETRIC))
 )
(CONSP-OF-MERGE-SORT-SYMBOL-<
 (119 9 (:DEFINITION MERGE-SYMBOL-<))
 (80 80 (:REWRITE DEFAULT-CAR))
 (18 18 (:DEFINITION REVAPPEND))
 (9 9 (:TYPE-PRESCRIPTION SYMBOL-<))
 (9 9 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (9 9 (:REWRITE SYMBOL-<-TRANSITIVE))
 (9 9 (:REWRITE SYMBOL-<-ASYMMETRIC))
 )
