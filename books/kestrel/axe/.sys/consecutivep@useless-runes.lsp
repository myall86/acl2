(CONSECUTIVEP
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 )
(CONSECUTIVEP-OF-CONS
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CONSECUTIVEP-OF-CDR
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CONSECUTIVEP-OF-APPEND
 (2399 807 (:REWRITE DEFAULT-+-2))
 (2263 1837 (:REWRITE DEFAULT-CDR))
 (960 351 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (807 807 (:REWRITE DEFAULT-+-1))
 )
(CAR-OF-CADR-WHEN-CONSECUTIVEP-OF-STRIP-CARS
 (121 121 (:REWRITE DEFAULT-CDR))
 (48 27 (:REWRITE DEFAULT-+-2))
 (27 27 (:REWRITE DEFAULT-+-1))
 (25 7 (:REWRITE CONSECUTIVEP-OF-CDR))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CAAR-OF-CDR-WHEN-CONSECUTIVEP-OF-STRIP-CARS
 (100 100 (:REWRITE DEFAULT-CDR))
 (39 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
