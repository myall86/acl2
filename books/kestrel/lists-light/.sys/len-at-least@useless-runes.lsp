(LEN-AT-LEAST)
(LEN-AT-LEAST-CORRECT
 (33 22 (:REWRITE DEFAULT-<-1))
 (32 21 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-<-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE ZP-OPEN))
 )
(LEN-AT-LEAST-OF-APPEND
 (180 90 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (90 90 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (90 90 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (73 44 (:REWRITE DEFAULT-+-2))
 (64 55 (:REWRITE DEFAULT-CDR))
 (48 28 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-CAR))
 (15 5 (:DEFINITION NATP))
 (13 13 (:REWRITE ZP-OPEN))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 )
