(BV-ARRAYP)
(BV-ARRAYP-FORWARD-TO-NATP)
(LEN-WHEN-BV-ARRAYP)
(TRUE-LISTP-WHEN-BV-ARRAYP)
(BV-ARRAYP-OF-CONS
 (28 14 (:REWRITE DEFAULT-+-2))
 (20 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (14 14 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (14 14 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 2 (:DEFINITION MEMBER-EQUAL))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (10 10 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (5 5 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (5 5 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (4 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(ALL-UNSIGNED-BYTE-P-WHEN-BV-ARRAYP)
(BV-ARRAYP-WHEN-LENGTH-IS-0
 (11 6 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (10 10 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (10 10 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-BV-ARRAYP))
 (7 7 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 )
(BV-ARRAYP-WHEN-NOT-CONSP
 (1 1 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-BV-ARRAYP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 )
(INTEGERP-OF-NTH-WHEN-BV-ARRAYP
 (6 1 (:DEFINITION NTH))
 (6 1 (:DEFINITION LEN))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 2 (:REWRITE DEFAULT-<-2))
 (3 2 (:REWRITE DEFAULT-+-2))
 (3 1 (:DEFINITION TRUE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (2 2 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-BV-ARRAYP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 )
(<=-OF-0-AND-NTH-WHEN-BV-ARRAYP
 (31 22 (:REWRITE DEFAULT-<-2))
 (30 22 (:REWRITE DEFAULT-<-1))
 (26 15 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (13 13 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (10 10 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-BV-ARRAYP))
 (10 10 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-CAR))
 )
