(COUNT-OCCS)
(COUNT-OCCS-OF-APPEND (68 34 (:REWRITE DEFAULT-+-2))
                      (49 43 (:REWRITE DEFAULT-CDR))
                      (44 34 (:REWRITE DEFAULT-+-1))
                      (41 35 (:REWRITE DEFAULT-CAR))
                      (36 18
                          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
                      (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
                      (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
                      (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(NATP-OF-COUNT-OCCS)
(COUNT-OCCS-OF-TRUE-LIST-FIX (28 26 (:REWRITE DEFAULT-CDR))
                             (26 24 (:REWRITE DEFAULT-CAR))
                             (26 13 (:REWRITE DEFAULT-+-2))
                             (13 13 (:REWRITE DEFAULT-+-1)))
(COUNT-OCCS-OF-CONS (14 7 (:REWRITE DEFAULT-+-2))
                    (10 10 (:REWRITE DEFAULT-CDR))
                    (7 7 (:REWRITE DEFAULT-+-1))
                    (5 5 (:REWRITE DEFAULT-CAR)))
(COUNT-OCCS-OF-NIL)
(COUNT-OCCS-EQUAL-0-REWRITE (29 29 (:REWRITE DEFAULT-CAR))
                            (25 25 (:REWRITE DEFAULT-CDR))
                            (16 9 (:REWRITE DEFAULT-+-2))
                            (9 9 (:REWRITE DEFAULT-+-1)))
