(SPLIT-CHARS-AUX
 (12 12 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 )
(SPLIT-CHARS-AUX-CORRECT-1
 (129 112 (:REWRITE DEFAULT-CDR))
 (93 86 (:REWRITE DEFAULT-CAR))
 (90 49 (:REWRITE DEFAULT-+-2))
 (69 3 (:REWRITE EQUAL-OF-APPEND-AND-APPEND-WHEN-EQUAL-OF-LEN-AND-LEN))
 (55 49 (:REWRITE DEFAULT-+-1))
 (27 22 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (22 11 (:REWRITE DEFAULT-<-2))
 (17 11 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:DEFINITION LAST))
 )
(SPLIT-CHARS-AUX-CORRECT-2
 (69 61 (:REWRITE DEFAULT-CDR))
 (61 56 (:REWRITE DEFAULT-CAR))
 (60 12 (:DEFINITION LEN))
 (33 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (18 9 (:REWRITE DEFAULT-<-2))
 (12 9 (:REWRITE DEFAULT-<-1))
 (5 3 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(BOOLEANP-OF-MV-NTH-0-OF-SPLIT-CHARS-AUX
 (22 17 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-CDR))
 )
(CHARACTER-LISTP-OF-MV-NTH-1-OF-SPLIT-CHARS-AUX
 (169 112 (:REWRITE DEFAULT-CDR))
 (90 72 (:REWRITE DEFAULT-CAR))
 (69 21 (:DEFINITION LAST))
 (8 8 (:TYPE-PRESCRIPTION SPLIT-CHARS-AUX))
 (2 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(CHARACTER-LISTP-OF-MV-NTH-2-OF-SPLIT-CHARS-AUX
 (29 29 (:REWRITE DEFAULT-CAR))
 (29 25 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION SPLIT-CHARS-AUX))
 )
(<=-OF-LEN-OF-MV-NTH-2-OF-SPLIT-CHARS-AUX
 (23 19 (:REWRITE DEFAULT-CDR))
 (20 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 5 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION SPLIT-CHARS-AUX))
 (8 8 (:REWRITE DEFAULT-CAR))
 )
(<-OF-LEN-OF-MV-NTH-2-OF-SPLIT-CHARS-AUX
 (40 35 (:REWRITE DEFAULT-CDR))
 (30 24 (:REWRITE DEFAULT-CAR))
 (24 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (13 7 (:REWRITE DEFAULT-<-1))
 (12 7 (:REWRITE DEFAULT-<-2))
 )
(SPLIT-CHARS)
(BOOLEANP-OF-MV-NTH-0-OF-SPLIT-CHARS)
(CHARACTER-LISTP-OF-MV-NTH-1-OF-SPLIT-CHARS)
(CHARACTER-LISTP-OF-MV-NTH-2-OF-SPLIT-CHARS)
(<=-OF-LEN-OF-MV-NTH-2-OF-SPLIT-CHARS)
(<-OF-LEN-OF-MV-NTH-2-OF-SPLIT-CHARS
 (10 2 (:DEFINITION LEN))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-CAR))
 )
(SPLIT-CHARS-CORRECT-1)
(SPLIT-CHARS-CORRECT-2
 (1 1 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
