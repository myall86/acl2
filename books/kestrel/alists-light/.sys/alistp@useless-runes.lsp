(ALISTP-OF-CONS
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(ALISTP-OF-ACONS
 (6 2 (:DEFINITION ALISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(ALISTP-OF-APPEND
 (32 16 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (16 16 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 )
(ALISTP-TRUE-LIST-FIX
 (15 15 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 )
(ALISTP-OF-UNION-EQUAL
 (120 120 (:REWRITE DEFAULT-CAR))
 (96 96 (:REWRITE DEFAULT-CDR))
 (63 21 (:REWRITE ALISTP-TRUE-LIST-FIX))
 (38 38 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(ALISTP-OF-REVAPPEND-2
 (92 48 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (81 9 (:REWRITE ALISTP-TRUE-LIST-FIX))
 (67 55 (:REWRITE DEFAULT-CAR))
 (63 51 (:REWRITE DEFAULT-CDR))
 (48 48 (:TYPE-PRESCRIPTION REVAPPEND))
 (44 44 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ALISTP-OF-REVERSE-2
 (37 5 (:REWRITE ALISTP-TRUE-LIST-FIX))
 (17 17 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE DEFAULT-CAR))
 (12 4 (:DEFINITION TRUE-LIST-FIX))
 (9 3 (:DEFINITION REVAPPEND))
 (7 1 (:REWRITE DEFAULT-COERCE-3))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(CONSP-OF-NTH-WHEN-ALISTP
 (234 135 (:REWRITE DEFAULT-+-2))
 (192 192 (:REWRITE DEFAULT-CDR))
 (154 106 (:REWRITE DEFAULT-<-2))
 (135 135 (:REWRITE DEFAULT-+-1))
 (119 106 (:REWRITE DEFAULT-<-1))
 (88 88 (:REWRITE DEFAULT-CAR))
 (33 18 (:REWRITE ZP-OPEN))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 )
(CONSP-OF-NTH-WHEN-ALISTP-CHEAP
 (234 135 (:REWRITE DEFAULT-+-2))
 (192 192 (:REWRITE DEFAULT-CDR))
 (154 106 (:REWRITE DEFAULT-<-2))
 (135 135 (:REWRITE DEFAULT-+-1))
 (119 106 (:REWRITE DEFAULT-<-1))
 (88 88 (:REWRITE DEFAULT-CAR))
 (33 18 (:REWRITE ZP-OPEN))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ALISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CONSP-OF-CAR-WHEN-ALISTP-ALT
 (4 1 (:REWRITE ALISTP-OF-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(CONSP-OF-CAR-WHEN-ALISTP-CHEAP
 (4 1 (:REWRITE ALISTP-OF-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(CAR-WHEN-ALISTP-IFF
 (4 1 (:REWRITE ALISTP-OF-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP-CHEAP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(CAR-WHEN-ALISTP-IFF-CHEAP
 (4 1 (:REWRITE ALISTP-OF-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP-CHEAP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ALISTP-OF-REMOVE1-EQUAL
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 3 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (3 3 (:TYPE-PRESCRIPTION BOOLEANP))
 )
