(MAKE-TUPLE
 (11 10 (:REWRITE DEFAULT-+-1))
 (11 9 (:REWRITE DEFAULT-<-2))
 (11 9 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(MAKE-TUPLE-DROPPER-HELPER
 (75 15 (:DEFINITION LEN))
 (40 25 (:REWRITE DEFAULT-+-2))
 (39 27 (:REWRITE DEFAULT-<-2))
 (30 5 (:DEFINITION NTH))
 (27 27 (:REWRITE DEFAULT-<-1))
 (27 7 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-+-1))
 (15 5 (:DEFINITION POSP))
 (12 6 (:DEFINITION TRUE-LISTP))
 (8 8 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (7 7 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(MAKE-TUPLE-DROPPER
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(MAKE-TUPLE-OPENER
 (50 7 (:DEFINITION NTH))
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE UNICITY-OF-0))
 (2 2 (:DEFINITION FIX))
 )
(MAKE-TUPLE-BASE
 (26 4 (:DEFINITION NTH))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE FOLD-CONSTS-IN-+))
 (7 5 (:REWRITE DEFAULT-<-2))
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:DEFINITION FIX))
 )
