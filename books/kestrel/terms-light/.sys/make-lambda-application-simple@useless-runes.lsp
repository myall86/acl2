(FILTER-FORMALS-AND-ACTUALS
 (41 21 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-1))
 (15 5 (:DEFINITION MEMBER-EQUAL))
 (11 11 (:REWRITE DEFAULT-CAR))
 )
(TRUE-LISTP-OF-MV-NTH-0-OF-FILTER-FORMALS-AND-ACTUALS
 (40 40 (:REWRITE DEFAULT-CDR))
 (39 39 (:REWRITE DEFAULT-CAR))
 (16 8 (:DEFINITION TRUE-LISTP))
 )
(TRUE-LISTP-OF-MV-NTH-1-OF-FILTER-FORMALS-AND-ACTUALS
 (40 40 (:REWRITE DEFAULT-CDR))
 (39 39 (:REWRITE DEFAULT-CAR))
 (16 8 (:DEFINITION TRUE-LISTP))
 )
(SYMBOL-LISTP-OF-MV-NTH-0-OF-FILTER-FORMALS-AND-ACTUALS
 (39 39 (:REWRITE DEFAULT-CAR))
 (32 32 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-1))
 )
(PSEUDO-TERM-LISTP-OF-MV-NTH-1-OF-FILTER-FORMALS-AND-ACTUALS
 (86 86 (:REWRITE DEFAULT-CAR))
 (84 42 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP-2))
 (83 83 (:REWRITE DEFAULT-CDR))
 (46 46 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (37 37 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (30 6 (:DEFINITION LEN))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP-CHEAP))
 (8 4 (:DEFINITION TRUE-LISTP))
 (6 6 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-1))
 )
(LEN-OF-MV-NTH-1-OF-FILTER-FORMALS-AND-ACTUALS
 (92 92 (:REWRITE DEFAULT-CDR))
 (78 78 (:REWRITE DEFAULT-CAR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 )
(MAKE-LAMBDA-APPLICATION-SIMPLE)
(PSEUDO-TERMP-OF-MAKE-LAMBDA-APPLICATION-SIMPLE
 (117 93 (:REWRITE DEFAULT-CAR))
 (116 110 (:REWRITE DEFAULT-CDR))
 (106 7 (:DEFINITION PSEUDO-TERM-LISTP))
 (67 22 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP-2))
 (66 6 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (60 30 (:REWRITE DEFAULT-+-2))
 (54 2 (:REWRITE PSEUDO-TERM-LISTP-OF-SET-DIFFERENCE-EQUAL))
 (34 30 (:REWRITE DEFAULT-+-1))
 (24 8 (:DEFINITION TRUE-LIST-FIX))
 (22 11 (:REWRITE PSEUDO-TERMP-OF-CAR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (22 11 (:REWRITE PSEUDO-TERM-LISTP-OF-CDR-WHEN-PSEUDO-TERM-LISTP-CHEAP))
 (20 20 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (18 6 (:DEFINITION MEMBER-EQUAL))
 (17 17 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 8 (:DEFINITION TRUE-LISTP))
 (14 14 (:REWRITE FREE-VARS-IN-TERM-WHEN-NOT-CONSP-CHEAP))
 (13 4 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP-CHEAP))
 (11 11 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-1))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 6 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
