(PERM-COUNTER-EXAMPLE)
(HOW-MANY-RM
 (48 48 (:REWRITE DEFAULT-CDR))
 (41 41 (:REWRITE DEFAULT-CAR))
 (36 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 )
(NOT-MEMB-IMPLIES-RM-IS-NO-OP
 (14 14 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-CDR))
 )
(TRUE-LISTP-RM
 (17 17 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE DEFAULT-CAR))
 )
(NOT-MEMB-IMPLIES-HOW-MANY-IS-0
 (17 17 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(HOW-MANY-RM-GENERAL
 (400 200 (:TYPE-PRESCRIPTION TRUE-LISTP-RM))
 (381 52 (:REWRITE NOT-MEMB-IMPLIES-RM-IS-NO-OP))
 (353 337 (:REWRITE DEFAULT-CDR))
 (348 328 (:REWRITE DEFAULT-CAR))
 (216 216 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (114 57 (:REWRITE DEFAULT-+-2))
 (57 57 (:REWRITE DEFAULT-+-1))
 (16 4 (:DEFINITION TRUE-LISTP))
 )
(PERM-COUNTER-EXAMPLE-IS-COUNTEREXAMPLE-FOR-TRUE-LISTS
 (525 36 (:DEFINITION RM))
 (503 491 (:REWRITE DEFAULT-CAR))
 (432 432 (:REWRITE DEFAULT-CDR))
 (115 58 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-+-1))
 )
(TLFIX)
(PERM-TLFIX
 (37 7 (:REWRITE NOT-MEMB-IMPLIES-RM-IS-NO-OP))
 (28 26 (:REWRITE DEFAULT-CAR))
 (21 20 (:REWRITE DEFAULT-CDR))
 (19 19 (:TYPE-PRESCRIPTION MEMB))
 )
(PERM-COUNTER-EXAMPLE-TLFIX-1
 (107 7 (:DEFINITION RM))
 (79 69 (:REWRITE DEFAULT-CAR))
 (75 14 (:REWRITE NOT-MEMB-IMPLIES-RM-IS-NO-OP))
 (41 40 (:REWRITE DEFAULT-CDR))
 (16 8 (:TYPE-PRESCRIPTION TRUE-LISTP-RM))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(RM-TLFIX
 (58 51 (:REWRITE DEFAULT-CAR))
 (45 40 (:REWRITE DEFAULT-CDR))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:DEFINITION TRUE-LISTP))
 )
(MEMB-TLFIX
 (19 17 (:REWRITE DEFAULT-CAR))
 (9 8 (:REWRITE DEFAULT-CDR))
 )
(PERM-COUNTER-EXAMPLE-TLFIX-2
 (70 5 (:DEFINITION RM))
 (50 10 (:REWRITE NOT-MEMB-IMPLIES-RM-IS-NO-OP))
 (42 42 (:REWRITE DEFAULT-CDR))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-RM))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(HOW-MANY-TLFIX
 (64 61 (:REWRITE DEFAULT-CDR))
 (64 60 (:REWRITE DEFAULT-CAR))
 (56 7 (:REWRITE MEMB-TLFIX))
 (26 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 )
(CONVERT-PERM-TO-HOW-MANY)
