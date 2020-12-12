(BOUNDED-DAG-PARENT-ENTRIESP
     (201 3 (:DEFINITION ALL-DAG-PARENT-ENTRIESP))
     (199 199 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (156 3 (:DEFINITION NAT-LISTP))
     (54 3 (:REWRITE USE-ALL-NATP-FOR-CAR))
     (32 11 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (28 11 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (27 11
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (27 3 (:DEFINITION RATIONAL-LISTP))
     (24 3 (:REWRITE USE-ALL-<-FOR-CAR))
     (24 3 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
     (23 19 (:REWRITE DEFAULT-<-2))
     (21 7
         (:REWRITE NAT-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (19 19 (:REWRITE USE-ALL-<-2))
     (19 19 (:REWRITE USE-ALL-<))
     (19 19 (:REWRITE DEFAULT-<-1))
     (16 10
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (14 14
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (12 12
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (11 11 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (11 11 (:REWRITE ALL-<-TRANSITIVE))
     (11 10 (:REWRITE DEFAULT-+-2))
     (10 10 (:REWRITE DEFAULT-+-1))
     (9 9 (:TYPE-PRESCRIPTION ALL-NATP))
     (9 3
        (:REWRITE ALL-NATP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (9 3
        (:REWRITE ALL->-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (8 8 (:REWRITE USE-ALL-CONSP-2))
     (8 8 (:REWRITE USE-ALL-CONSP))
     (8 8 (:LINEAR ARRAY2P-LINEAR))
     (7 7 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (7 7
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (6 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:REWRITE DEFAULT-CAR))
     (6 3
        (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
     (6 3
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
     (6 3
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (6 3
        (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
     (3 3 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (3 3 (:REWRITE USE-ALL-NATP-2))
     (3 3 (:REWRITE USE-ALL-NATP))
     (3 3
        (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
     (3 3
        (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (3 3
        (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
     (3 3 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
     (3 3
        (:REWRITE ALL->-OF-AREF1-WHEN-ALL-DAG-PARENT-ENTRIESP))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(ALL-<-OF-AREF1-WHEN-BOUNDED-DAG-PARENT-ENTRIESP
     (106 10 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (102 51
          (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (76 19
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (53 13 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (38 19 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (30 10
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (19 19 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (19 19 (:TYPE-PRESCRIPTION ARRAY1P))
     (17 14 (:REWRITE DEFAULT-<-2))
     (17 14 (:REWRITE DEFAULT-<-1))
     (16 14 (:REWRITE USE-ALL-<))
     (14 14 (:REWRITE USE-ALL-<-2))
     (13 13 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (8 8 (:REWRITE USE-ALL-CONSP-2))
     (8 8 (:REWRITE USE-ALL-CONSP))
     (8 8 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (8 8
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (7 7
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (7 7
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (2 2 (:TYPE-PRESCRIPTION MEMBERP))
     (2 2 (:REWRITE USE-ALL-NATP-2))
     (2 2 (:REWRITE USE-ALL-NATP)))
(BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE
     (56 14
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (52 4 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (44 22
         (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (28 14 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (22 16 (:REWRITE DEFAULT-<-2))
     (22 16 (:REWRITE DEFAULT-<-1))
     (18 16 (:REWRITE USE-ALL-<))
     (16 16 (:REWRITE USE-ALL-<-2))
     (14 14 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (14 14 (:TYPE-PRESCRIPTION ARRAY1P))
     (12 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 4 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (8 8
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (8 8
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (5 5 (:REWRITE USE-ALL-NATP-2))
     (5 5 (:REWRITE USE-ALL-NATP))
     (5 5 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (5 5 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (4 4 (:REWRITE USE-ALL-CONSP-2))
     (4 4 (:REWRITE USE-ALL-CONSP))
     (4 4 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (4 4
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1))
     (2 2 (:TYPE-PRESCRIPTION MEMBERP)))
(BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE-GEN
     (136 12 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (112 28
          (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (104 52
          (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (56 28 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (39 12 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (38 31 (:REWRITE DEFAULT-<-2))
     (38 31 (:REWRITE DEFAULT-<-1))
     (36 12
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (35 31 (:REWRITE USE-ALL-<))
     (31 31 (:REWRITE USE-ALL-<-2))
     (28 28 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (28 28 (:TYPE-PRESCRIPTION ARRAY1P))
     (17 17
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (17 17 (:REWRITE DEFAULT-+-2))
     (17 17 (:REWRITE DEFAULT-+-1))
     (14 14
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (13 13
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (12 12 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (12 12 (:REWRITE ALL-<-TRANSITIVE))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (11 11 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (11 11
         (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (10 10 (:REWRITE USE-ALL-CONSP-2))
     (10 10 (:REWRITE USE-ALL-CONSP))
     (6 6 (:REWRITE USE-ALL-NATP-2))
     (6 6 (:REWRITE USE-ALL-NATP))
     (4 4 (:TYPE-PRESCRIPTION MEMBERP)))
(BOUNDED-DAG-PARENT-ENTRIESP-OF-MAYBE-EXPAND-ARRAY
     (88 8 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (72 36
         (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (60 6
         (:REWRITE MAYBE-EXPAND-ARRAY-DOES-NOTHING))
     (36 18
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (31 25 (:REWRITE DEFAULT-<-2))
     (25 25 (:REWRITE USE-ALL-<-2))
     (25 25 (:REWRITE USE-ALL-<))
     (25 25 (:REWRITE DEFAULT-<-1))
     (24 8 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (16 16
         (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE-GEN))
     (16 16
         (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE))
     (13 13
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (13 13
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (10 10 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (10 10 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (10 10
         (:REWRITE ALL-<-OF-AREF1-WHEN-BOUNDED-DAG-PARENT-ENTRIESP))
     (10 10 (:LINEAR ARRAY2P-LINEAR))
     (8 8 (:REWRITE USE-ALL-CONSP-2))
     (8 8 (:REWRITE USE-ALL-CONSP))
     (8 8 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (8 8
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (5 5 (:REWRITE USE-ALL-NATP-2))
     (5 5 (:REWRITE USE-ALL-NATP))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1)))
(BOUNDED-DAG-PARENT-ENTRIESP-SUFF
     (105 7 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (90 37
         (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
     (55 8 (:DEFINITION NFIX))
     (48 48 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (41 30 (:REWRITE DEFAULT-<-1))
     (36 30 (:REWRITE DEFAULT-<-2))
     (30 30 (:REWRITE USE-ALL-<-2))
     (30 30 (:REWRITE USE-ALL-<))
     (26 14 (:REWRITE DEFAULT-+-2))
     (25 7 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (16 4 (:REWRITE FOLD-CONSTS-IN-+))
     (14 14 (:REWRITE DEFAULT-+-1))
     (14 14 (:LINEAR ARRAY2P-LINEAR))
     (13 13
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (13 13
         (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE))
     (10 5
         (:REWRITE DEFAULT-WHEN-DAG-PARENT-ARRAYP))
     (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (8 8 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (8 8
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (7 7 (:REWRITE USE-ALL-CONSP-2))
     (7 7 (:REWRITE USE-ALL-CONSP))
     (5 5
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN)))
(BOUNDED-DAG-PARENT-ENTRIESP-OF-MAKE-EMPTY-ARRAY
     (25 5 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (19 19 (:REWRITE USE-ALL-<-2))
     (19 19 (:REWRITE USE-ALL-<))
     (19 19 (:REWRITE DEFAULT-<-2))
     (19 19 (:REWRITE DEFAULT-<-1))
     (17 6
         (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE-GEN))
     (15 5 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (9 9
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (6 6
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (6 6
        (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE))
     (6 1 (:DEFINITION NFIX))
     (5 5 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (5 5 (:TYPE-PRESCRIPTION ARRAY1P))
     (5 5 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
     (5 5
        (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
     (5 5 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (5 5 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (5 5 (:REWRITE ALL-<-TRANSITIVE))
     (4 4
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (3 3 (:REWRITE USE-ALL-NATP-2))
     (3 3 (:REWRITE USE-ALL-NATP))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1 (:TYPE-PRESCRIPTION NFIX)))
(BOUNDED-DAG-PARENT-ARRAYP (34 34 (:TYPE-PRESCRIPTION POSP-OF-ALEN1)))
(BOUNDED-DAG-PARENT-ARRAYP-FORWARD-TO-BOUNDED-DAG-PARENT-ARRAYP)
(BOUNDED-DAG-PARENT-ARRAYP-OF-MAKE-EMPTY-ARRAY
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(BOUNDED-DAG-PARENT-ARRAYP-OF-MAKE-EMPTY-ARRAY-GEN
     (4 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE USE-ALL-<-2))
     (3 3 (:REWRITE USE-ALL-<))
     (3 3 (:REWRITE DEFAULT-<-1))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(ALL-<-OF-AREF1-WHEN-BOUNDED-DAG-PARENT-ARRAYP
     (59 59 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (3 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (2 1 (:REWRITE DEFAULT-+-2))
     (1 1
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE-GEN))
     (1 1
        (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE))
     (1 1
        (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP)))
