(READ-CHARS-TO-TERMINATOR-AUX
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 )
(CHARACTER-LISTP-OF-MV-NTH-0-OF-READ-CHARS-TO-TERMINATOR-AUX
 (58 58 (:REWRITE DEFAULT-CAR))
 (42 12 (:DEFINITION REVAPPEND))
 (39 39 (:REWRITE DEFAULT-CDR))
 (6 2 (:DEFINITION TRUE-LIST-FIX))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(CHARACTER-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR-AUX
 (55 55 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE DEFAULT-CDR))
 (36 10 (:DEFINITION REVAPPEND))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(TRUE-LISTP-OF-MV-NTH-0-OF-READ-CHARS-TO-TERMINATOR-AUX
 (24 12 (:DEFINITION TRUE-LISTP))
 (24 8 (:DEFINITION REVAPPEND))
 (22 22 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE DEFAULT-CAR))
 )
(TRUE-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR-AUX
 (42 6 (:REWRITE DEFAULT-COERCE-3))
 (36 12 (:DEFINITION REVAPPEND))
 (21 21 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (18 18 (:TYPE-PRESCRIPTION REVAPPEND))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(READ-CHARS-TO-TERMINATOR-AUX-LEN-BOUND
 (89 43 (:REWRITE DEFAULT-+-2))
 (57 43 (:REWRITE DEFAULT-+-1))
 (56 8 (:REWRITE DEFAULT-COERCE-3))
 (48 16 (:DEFINITION REVAPPEND))
 (38 38 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (24 24 (:TYPE-PRESCRIPTION REVAPPEND))
 (23 8 (:REWRITE DEFAULT-<-1))
 (20 10 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR-AUX))
 (16 16 (:REWRITE DEFAULT-COERCE-2))
 (16 8 (:REWRITE DEFAULT-<-2))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 )
(READ-CHARS-TO-TERMINATOR)
(CHARACTER-LISTP-OF-MV-NTH-0-OF-READ-CHARS-TO-TERMINATOR)
(CHARACTER-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR)
(TRUE-LISTP-OF-MV-NTH-0-OF-READ-CHARS-TO-TERMINATOR)
(TRUE-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR)
(READ-CHARS-TO-TERMINATOR-LEN-BOUND
 (14 2 (:DEFINITION LEN))
 (7 4 (:REWRITE DEFAULT-+-2))
 (5 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-MV-NTH-1-OF-READ-CHARS-TO-TERMINATOR-AUX))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
