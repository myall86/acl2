(SYMBOL-LISTP-OF-MERGE-SYMBOL<
 (180 166 (:REWRITE DEFAULT-CAR))
 (130 26 (:REWRITE SYMBOL<-ASYMMETRIC))
 (114 100 (:REWRITE DEFAULT-CDR))
 (72 57 (:REWRITE SYMBOL<-TRANSITIVE))
 (57 57 (:REWRITE SYMBOL<-TRICHOTOMY))
 )
(SYMBOL-LISTP-OF-EVENS
 (24 21 (:REWRITE DEFAULT-CDR))
 (20 17 (:REWRITE DEFAULT-CAR))
 )
(SYMBOL-LISTP-OF-MERGE-SORT-SYMBOL<
 (136 8 (:DEFINITION MERGE-SYMBOL<))
 (95 83 (:REWRITE DEFAULT-CDR))
 (67 67 (:REWRITE DEFAULT-CAR))
 (52 12 (:DEFINITION EVENS))
 (40 8 (:REWRITE SYMBOL<-ASYMMETRIC))
 (24 24 (:TYPE-PRESCRIPTION SYMBOL<))
 (22 22 (:TYPE-PRESCRIPTION EVENS))
 (20 2 (:REWRITE SYMBOL-LISTP-OF-MERGE-SYMBOL<))
 (16 16 (:REWRITE SYMBOL<-TRICHOTOMY))
 (16 16 (:REWRITE SYMBOL<-TRANSITIVE))
 (16 16 (:DEFINITION REVAPPEND))
 )
(CONSP-OF-MERGE-SYMBOL<
 (40 8 (:REWRITE SYMBOL<-ASYMMETRIC))
 (38 38 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 (20 17 (:REWRITE SYMBOL<-TRANSITIVE))
 (17 17 (:REWRITE SYMBOL<-TRICHOTOMY))
 )
(CONSP-OF-MERGE-SORT-SYMBOL<
 (155 9 (:DEFINITION MERGE-SYMBOL<))
 (80 80 (:REWRITE DEFAULT-CAR))
 (45 9 (:REWRITE SYMBOL<-ASYMMETRIC))
 (27 27 (:TYPE-PRESCRIPTION SYMBOL<))
 (18 18 (:REWRITE SYMBOL<-TRICHOTOMY))
 (18 18 (:REWRITE SYMBOL<-TRANSITIVE))
 (18 18 (:DEFINITION REVAPPEND))
 )
