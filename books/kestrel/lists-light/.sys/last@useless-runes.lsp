(LAST-OF-CDR)
(CAR-OF-LAST-BECOMES-NTH
 (38 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(NTH-OF-LEN-MINUS-1-BECOMES-CAR-OF-LAST
 (38 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(LAST-OF-CONS
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(LAST-WHEN-NOT-CONSP-CHEAP
 (19 19 (:TYPE-PRESCRIPTION LAST))
 )
(CONSP-OF-LAST
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE LAST-WHEN-NOT-CONSP-CHEAP))
 )
(LAST-IFF
 (4 1 (:DEFINITION LAST))
 (2 2 (:REWRITE LAST-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(LEN-OF-LAST
 (22 17 (:REWRITE DEFAULT-CDR))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-LAST))
 )
(ACL2-COUNT-OF-LAST-LINEAR
 (373 238 (:REWRITE DEFAULT-+-2))
 (295 238 (:REWRITE DEFAULT-+-1))
 (106 74 (:REWRITE DEFAULT-<-1))
 (105 74 (:REWRITE DEFAULT-<-2))
 (69 69 (:REWRITE FOLD-CONSTS-IN-+))
 (50 10 (:DEFINITION LEN))
 (32 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 24 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE DEFAULT-NUMERATOR))
 (16 16 (:REWRITE DEFAULT-DENOMINATOR))
 (14 8 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 )
(LAST-OF-APPEND-2
 (458 229 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (229 229 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (54 31 (:REWRITE DEFAULT-CAR))
 (38 25 (:REWRITE DEFAULT-CDR))
 )
(LAST-WHEN-NOT-CDR-CHEAP
 (19 19 (:TYPE-PRESCRIPTION LAST))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE LAST-WHEN-NOT-CONSP-CHEAP))
 )
