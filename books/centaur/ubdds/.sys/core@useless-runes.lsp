(UBDDP
 (27 27 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE DEFAULT-CDR))
 )
(UBDDP-MEMOIZE-CONDITION)
(UBDDP-MEMOIZE-CONDITION)
(UBDDP-COMPOUND-RECOGNIZER)
(UBDD-LISTP)
(UBDD-LISTP-WHEN-ATOM)
(UBDD-LISTP-OF-CONS
 (6 6 (:REWRITE UBDD-LISTP-WHEN-ATOM))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(EVAL-BDD)
(QCAR$INLINE)
(QCDR$INLINE)
(QCONS$INLINE)
(Q-NOT)
(Q-NOT-MEMOIZE-CONDITION)
(Q-NOT-MEMOIZE-CONDITION)
(Q-ITE-FN)
(Q-ITE-FN-MEMOIZE-CONDITION)
(Q-ITE-FN-MEMOIZE-CONDITION)
(EQUAL-OF-BOOLEANS-REWRITE)
(EVAL-BDD-WHEN-NOT-CONSP)
(EVAL-BDD-OF-NON-CONSP-CHEAP)
(EVAL-BDD-OF-NIL)
(EVAL-BDD-OF-T)
(EVAL-BDD-WHEN-NON-CONSP-VALUES
 (24 24 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(MAX-DEPTH)
(MAX-DEPTH-MEMOIZE-CONDITION)
(MAX-DEPTH-MEMOIZE-CONDITION)
(BDD-HYPS)
(BDD-LHS)
(BDD-RHS)
(BDD-EQUIVALENCE-CONSTRAINT)
(FIND-CONFLICTING-VALUES
 (2987 1386 (:REWRITE DEFAULT-+-2))
 (2029 1386 (:REWRITE DEFAULT-+-1))
 (1104 276 (:DEFINITION INTEGER-ABS))
 (1104 138 (:DEFINITION LENGTH))
 (690 138 (:DEFINITION LEN))
 (409 313 (:REWRITE DEFAULT-<-2))
 (387 313 (:REWRITE DEFAULT-<-1))
 (332 332 (:REWRITE DEFAULT-CDR))
 (276 276 (:REWRITE DEFAULT-UNARY-MINUS))
 (216 216 (:REWRITE DEFAULT-CAR))
 (138 138 (:TYPE-PRESCRIPTION LEN))
 (138 138 (:REWRITE DEFAULT-REALPART))
 (138 138 (:REWRITE DEFAULT-NUMERATOR))
 (138 138 (:REWRITE DEFAULT-IMAGPART))
 (138 138 (:REWRITE DEFAULT-DENOMINATOR))
 (138 138 (:REWRITE DEFAULT-COERCE-2))
 (138 138 (:REWRITE DEFAULT-COERCE-1))
 )
(MV-NTH-1
 (6 2 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(LEMMA1
 (1024 641 (:REWRITE DEFAULT-CAR))
 (649 507 (:REWRITE DEFAULT-CDR))
 (210 78 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (192 192 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 )
(LEMMA2
 (492 394 (:REWRITE DEFAULT-CAR))
 (268 252 (:REWRITE DEFAULT-CDR))
 (216 216 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(LEMMA3
 (1520 86 (:REWRITE LEMMA2))
 (1422 883 (:REWRITE DEFAULT-CAR))
 (1264 86 (:DEFINITION UBDDP))
 (1097 395 (:REWRITE DEFAULT-<-1))
 (1070 898 (:REWRITE DEFAULT-CDR))
 (749 395 (:REWRITE DEFAULT-<-2))
 (711 319 (:REWRITE DEFAULT-+-2))
 (590 590 (:TYPE-PRESCRIPTION UBDDP))
 (319 319 (:REWRITE DEFAULT-+-1))
 (256 256 (:TYPE-PRESCRIPTION BOOLEANP))
 (255 85 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 )
(LEMMA4
 (251 113 (:REWRITE DEFAULT-CAR))
 (115 80 (:REWRITE DEFAULT-CDR))
 (99 33 (:REWRITE LEMMA2))
 (66 66 (:TYPE-PRESCRIPTION UBDDP))
 (60 20 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (40 40 (:TYPE-PRESCRIPTION BOOLEANP))
 (14 8 (:DEFINITION QCDR$INLINE))
 (14 8 (:DEFINITION QCAR$INLINE))
 )
(EXTEND-TO-LEN
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(EXTEND-TO-LEN-OF-CONS
 (23 14 (:REWRITE DEFAULT-+-2))
 (16 4 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-+-1))
 (14 13 (:REWRITE DEFAULT-<-2))
 (14 13 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 5 (:REWRITE DEFAULT-CDR))
 (7 5 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 )
(EVAL-EXTEND-INDUCT
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(EVAL-BDD-OF-EXTEND
 (155 143 (:REWRITE DEFAULT-CDR))
 (124 124 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (124 124 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 (83 75 (:REWRITE DEFAULT-CAR))
 (66 66 (:TYPE-PRESCRIPTION EXTEND-TO-LEN))
 (64 64 (:REWRITE DEFAULT-+-2))
 (64 64 (:REWRITE DEFAULT-+-1))
 (63 21 (:REWRITE FOLD-CONSTS-IN-+))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 )
(LEN-OF-EXTEND
 (232 148 (:REWRITE DEFAULT-+-2))
 (170 126 (:REWRITE DEFAULT-<-2))
 (148 148 (:REWRITE DEFAULT-+-1))
 (134 126 (:REWRITE DEFAULT-<-1))
 (102 98 (:REWRITE DEFAULT-CDR))
 (84 47 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (42 42 (:TYPE-PRESCRIPTION EXTEND-TO-LEN))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:REWRITE DEFAULT-CAR))
 )
(BOOLEAN-LISTP-OF-EXTEND
 (63 21 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (54 54 (:REWRITE DEFAULT-CAR))
 (43 43 (:REWRITE DEFAULT-<-2))
 (43 43 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-CDR))
 (23 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(EQUAL-BY-EVAL-BDDS
 (86 1 (:DEFINITION EXTEND-TO-LEN))
 (46 10 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (42 13 (:REWRITE DEFAULT-<-1))
 (35 5 (:DEFINITION LEN))
 (32 1 (:REWRITE ZP-OPEN))
 (29 13 (:REWRITE DEFAULT-<-2))
 (27 9 (:REWRITE DEFAULT-CAR))
 (22 14 (:REWRITE DEFAULT-CDR))
 (12 7 (:REWRITE DEFAULT-+-2))
 (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
 (7 7 (:REWRITE DEFAULT-+-1))
 (5 2 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (2 2 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (2 2 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 )
(TERM-IS-BDD)
(EQUAL-BY-EVAL-BDDS-HINT-FN)
(LIT-FIND-EQUALITY)
(COLLECT-UBDDP-EQ-AND-INEQS)
(COLLECT-EQ-HYPS)
(COLLECT-HINTS)
(EQUAL-BY-EVAL-BDDS-HINT-HEAVY-FN)
(EQUAL-BY-EVAL-BDDS-INST-FN)
(CONSP-OF-Q-NOT
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(EQUAL-T-AND-Q-NOT
 (42 7 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (14 14 (:TYPE-PRESCRIPTION BOOLEANP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(EQUAL-NIL-AND-Q-NOT
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (2 1 (:DEFINITION IFF))
 )
(Q-NOT-UNDER-IFF
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(UBDDP-OF-Q-NOT
 (90 61 (:REWRITE DEFAULT-CAR))
 (72 17 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (70 43 (:REWRITE DEFAULT-CDR))
 )
(EVAL-BDD-OF-Q-NOT
 (196 82 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (126 77 (:REWRITE DEFAULT-CDR))
 (70 47 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE CONSP-OF-Q-NOT))
 )
(Q-ITE-INDUCT)
(UBDDP-OF-Q-ITE)
(Q-ITE-INDUCT-VALS)
(EVAL-BDD-OF-Q-ITE
 (2216 554 (:DEFINITION Q-NOT))
 (105 105 (:REWRITE Q-NOT-UNDER-IFF))
 (80 80 (:TYPE-PRESCRIPTION QCONS$INLINE))
 (64 64 (:TYPE-PRESCRIPTION Q-NOT))
 )
(CANONICALIZE-Q-NOT
 (8 2 (:DEFINITION Q-NOT))
 (6 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:DEFINITION HONS))
 )
(|(q-ite x (q-ite y nil t) z)|
 (2376 96 (:DEFINITION QCONS$INLINE))
 (588 588 (:TYPE-PRESCRIPTION BOOLEANP))
 (288 288 (:DEFINITION HONS))
 (280 118 (:DEFINITION QCDR$INLINE))
 (280 118 (:DEFINITION QCAR$INLINE))
 (219 219 (:REWRITE DEFAULT-CDR))
 (218 218 (:REWRITE DEFAULT-CAR))
 (38 2 (:DEFINITION IFF))
 (24 24 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (16 16 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (16 16 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 (16 2 (:DEFINITION BOOLEAN-LISTP))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|(q-ite x (q-ite y nil t) t)|
 (484 22 (:DEFINITION QCONS$INLINE))
 (144 144 (:TYPE-PRESCRIPTION BOOLEANP))
 (66 66 (:DEFINITION HONS))
 (49 49 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE DEFAULT-CAR))
 (44 22 (:DEFINITION QCDR$INLINE))
 (44 22 (:DEFINITION QCAR$INLINE))
 (24 24 (:REWRITE |(q-ite x (q-ite y nil t) z)|))
 (20 20 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (16 2 (:DEFINITION BOOLEAN-LISTP))
 (8 8 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (8 8 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|(q-ite (q-ite a b c) x y)|
 (5407 45 (:DEFINITION Q-ITE-FN))
 (3186 135 (:DEFINITION QCONS$INLINE))
 (818 818 (:TYPE-PRESCRIPTION BOOLEANP))
 (468 135 (:DEFINITION HONS-EQUAL))
 (405 405 (:DEFINITION HONS))
 (396 180 (:DEFINITION QCDR$INLINE))
 (396 180 (:DEFINITION QCAR$INLINE))
 (320 320 (:REWRITE DEFAULT-CDR))
 (319 319 (:REWRITE DEFAULT-CAR))
 (70 45 (:DEFINITION CANONICALIZE-Q-NOT))
 (54 2 (:DEFINITION IFF))
 (24 24 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (24 24 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (24 24 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 (16 2 (:DEFINITION BOOLEAN-LISTP))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|(q-ite x y y)|
 (132 6 (:DEFINITION QCONS$INLINE))
 (110 28 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (40 40 (:TYPE-PRESCRIPTION BOOLEANP))
 (18 18 (:DEFINITION HONS))
 (14 8 (:DEFINITION QCDR$INLINE))
 (14 8 (:DEFINITION QCAR$INLINE))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 )
(|(q-ite x x y)|
 (648 18 (:DEFINITION Q-ITE-FN))
 (396 18 (:DEFINITION QCONS$INLINE))
 (308 77 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (126 54 (:DEFINITION HONS-EQUAL))
 (116 116 (:TYPE-PRESCRIPTION BOOLEANP))
 (54 54 (:DEFINITION HONS))
 (41 41 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (36 18 (:DEFINITION QCDR$INLINE))
 (36 18 (:DEFINITION QCAR$INLINE))
 (16 2 (:DEFINITION BOOLEAN-LISTP))
 (12 12 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (10 10 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (10 10 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|(q-ite x y x)|
 (791 170 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (282 282 (:TYPE-PRESCRIPTION BOOLEANP))
 (98 98 (:REWRITE DEFAULT-CDR))
 (91 91 (:REWRITE DEFAULT-CAR))
 (12 4 (:REWRITE UBDDP-OF-Q-ITE))
 (4 2 (:REWRITE |(q-ite x x y)|))
 )
(|(q-ite x t nil)|
 (3 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(|(q-ite non-nil y z)|
 (21 21 (:TYPE-PRESCRIPTION Q-ITE-FN))
 )
(|(q-ite t x y)|
 (11 11 (:TYPE-PRESCRIPTION Q-ITE-FN))
 )
(|(q-ite nil x y)|
 (11 11 (:TYPE-PRESCRIPTION Q-ITE-FN))
 (1 1 (:REWRITE |(q-ite non-nil y z)|))
 )
