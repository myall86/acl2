(CAR-OF-REVAPPEND
 (62 21 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE DEFAULT-CDR))
 )
(CONSP-OF-REVAPPEND
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(REVAPPEND-IFF
 (4 4 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(REVAPPEND-OF-APPEND-ARG2
 (334 334 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (112 10 (:DEFINITION BINARY-APPEND))
 (45 25 (:REWRITE DEFAULT-CDR))
 (44 20 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (30 4 (:REWRITE CAR-OF-REVAPPEND))
 (25 21 (:REWRITE DEFAULT-CAR))
 (12 4 (:DEFINITION LAST))
 (4 4 (:TYPE-PRESCRIPTION LAST))
 (4 4 (:REWRITE CONSP-OF-REVAPPEND))
 (2 2 (:REWRITE CAR-CONS))
 )
(REVAPPEND-NORMALIZE-ACC
 (23 23 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(APPEND-OF-REVAPPEND-OF-NIL-ARG1
 (11 11 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (6 2 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(REVAPPEND-OF-APPEND-ARG1
 (36 22 (:REWRITE DEFAULT-CDR))
 (33 16 (:REWRITE DEFAULT-CAR))
 (12 4 (:DEFINITION LAST))
 )
(TRUE-LIST-FIX-OF-REVAPPEND
 (382 22 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (248 20 (:DEFINITION TRUE-LISTP))
 (88 48 (:REWRITE DEFAULT-CDR))
 (28 24 (:REWRITE DEFAULT-CAR))
 (12 4 (:DEFINITION LAST))
 (8 8 (:REWRITE CONSP-OF-REVAPPEND))
 (4 4 (:TYPE-PRESCRIPTION LAST))
 )
(TRUE-LISTP-OF-REVAPPEND
 (33 13 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE CONSP-OF-REVAPPEND))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(LEN-OF-REVAPPEND
 (54 26 (:REWRITE DEFAULT-+-2))
 (35 15 (:REWRITE DEFAULT-CDR))
 (34 26 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE CONSP-OF-REVAPPEND))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(REVAPPEND-OF-NIL-ARG1
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (11 11 (:TYPE-PRESCRIPTION REVAPPEND))
 )
(REVAPPEND-OF-SINGLETON-ARG1
 (11 11 (:TYPE-PRESCRIPTION REVAPPEND))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(REVAPPEND-OF-CONS
 (43 22 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(REVAPPEND-OF-REVAPPEND
 (144 18 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (92 19 (:DEFINITION TRUE-LISTP))
 (88 88 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (34 34 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE DEFAULT-CAR))
 )
(REVAPPEND-OF-TRUE-LIST-FIX-ARG1
 (248 31 (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (157 32 (:DEFINITION TRUE-LISTP))
 (156 12 (:DEFINITION LAST))
 (134 92 (:REWRITE DEFAULT-CDR))
 (90 48 (:REWRITE DEFAULT-CAR))
 )
(CDR-OF-REVAPPEND
 (147 82 (:REWRITE DEFAULT-CDR))
 (103 9 (:REWRITE TAKE-DOES-NOTHING))
 (85 53 (:REWRITE DEFAULT-+-2))
 (53 53 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-CAR))
 (19 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE CONSP-OF-REVAPPEND))
 )
