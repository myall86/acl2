(EVAL-ARRAYP-AUX
     (145 145 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (79 79
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (13 11 (:REWRITE DEFAULT-<-2))
     (13 4 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (12 9 (:REWRITE DEFAULT-+-2))
     (11 11 (:REWRITE USE-ALL-<=-2))
     (11 11 (:REWRITE USE-ALL-<=))
     (11 11 (:REWRITE USE-ALL-<-2))
     (11 11 (:REWRITE USE-ALL-<))
     (11 11 (:REWRITE DEFAULT-<-1))
     (11 11
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (9 9 (:REWRITE DEFAULT-+-1))
     (7 7
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (5 5 (:REWRITE USE-ALL-CONSP-2))
     (5 5 (:REWRITE USE-ALL-CONSP))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (3 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 2
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (2 2 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (1 1 (:REWRITE USE-ALL-RATIONALP-2))
     (1 1 (:REWRITE USE-ALL-RATIONALP)))
(EVAL-ARRAYP-AUX-OF-MINUS1)
(EVAL-ARRAYP-AUX-OF-0
     (20 20
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (8 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (4 2 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (3 3 (:REWRITE USE-ALL-CONSP-2))
     (3 3 (:REWRITE USE-ALL-CONSP))
     (2 2 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (2 2 (:TYPE-PRESCRIPTION ARRAY1P)))
(EVAL-ARRAYP-AUX-MONOTONE
     (68 68
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (64 16
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (32 16 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (28 14 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (23 23 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (20 20 (:REWRITE USE-ALL-<=-2))
     (20 20 (:REWRITE USE-ALL-<=))
     (20 20 (:REWRITE USE-ALL-<-2))
     (20 20 (:REWRITE USE-ALL-<))
     (20 20 (:REWRITE DEFAULT-<-2))
     (20 20 (:REWRITE DEFAULT-<-1))
     (20 20
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (18 9 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (16 16 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (16 16 (:TYPE-PRESCRIPTION ARRAY1P))
     (14 14
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (14 14
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (14 14 (:REWRITE DEFAULT-+-2))
     (14 14 (:REWRITE DEFAULT-+-1))
     (9 9 (:REWRITE USE-ALL-NATP-2))
     (9 9 (:REWRITE USE-ALL-NATP))
     (9 9 (:REWRITE USE-ALL-CONSP-2))
     (9 9 (:REWRITE USE-ALL-CONSP))
     (9 9
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(TYPE-OF-AREF1-WHEN-EVAL-ARRAYP-AUX
     (191 191
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (60 15
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (30 15 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (15 15 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (15 15 (:TYPE-PRESCRIPTION ARRAY1P))
     (8 8 (:REWRITE USE-ALL-<=-2))
     (8 8 (:REWRITE USE-ALL-<=))
     (8 8 (:REWRITE USE-ALL-<-2))
     (8 8 (:REWRITE USE-ALL-<))
     (8 8 (:REWRITE DEFAULT-<-2))
     (8 8 (:REWRITE DEFAULT-<-1))
     (8 8
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (8 4 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 6 (:REWRITE USE-ALL-CONSP-2))
     (6 6 (:REWRITE USE-ALL-CONSP))
     (5 5 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (4 4 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (4 4
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (4 4
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1)))
(EVAL-ARRAYP-AUX-OF-ASET1-TOO-HIGH
     (201 201 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (111 111
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (64 23
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (25 19 (:REWRITE DEFAULT-<-2))
     (22 11 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (20 20 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (19 19 (:REWRITE USE-ALL-<=-2))
     (19 19 (:REWRITE USE-ALL-<=))
     (19 19 (:REWRITE USE-ALL-<-2))
     (19 19 (:REWRITE USE-ALL-<))
     (19 19 (:REWRITE DEFAULT-<-1))
     (19 19
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (18 18 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (14 7 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (12 12
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (11 11
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (10 10 (:REWRITE USE-ALL-CONSP-2))
     (10 10 (:REWRITE USE-ALL-CONSP))
     (10 10 (:LINEAR ARRAY2P-LINEAR))
     (8 8 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 7 (:REWRITE USE-ALL-NATP-2))
     (7 7 (:REWRITE USE-ALL-NATP))
     (7 7
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (7 7
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (6 6
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP)))
(EVAL-ARRAYP-AUX-OF-ASET1
     (501 501 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (203 203
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (61 29
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (59 49 (:REWRITE DEFAULT-<-2))
     (49 49 (:REWRITE USE-ALL-<-2))
     (49 49 (:REWRITE USE-ALL-<))
     (49 49 (:REWRITE DEFAULT-<-1))
     (49 49
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (41 41 (:REWRITE USE-ALL-<=-2))
     (41 41 (:REWRITE USE-ALL-<=))
     (24 12 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (19 19 (:REWRITE DEFAULT-+-2))
     (19 19 (:REWRITE DEFAULT-+-1))
     (15 15 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (13 13
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (12 12
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (11 11 (:REWRITE USE-ALL-CONSP-2))
     (11 11 (:REWRITE USE-ALL-CONSP))
     (10 10
         (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (8 8 (:TYPE-PRESCRIPTION ASET1))
     (8 8
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (6 6 (:LINEAR ARRAY2P-LINEAR))
     (6 3 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (3 3 (:REWRITE USE-ALL-NATP-2))
     (3 3 (:REWRITE USE-ALL-NATP))
     (3 3
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(EVAL-ARRAYP-AUX-OF-ASET1-AT-END
     (49 49 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (25 11 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (14 5 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (12 2
         (:REWRITE EVAL-ARRAYP-AUX-OF-ASET1-TOO-HIGH))
     (11 9 (:REWRITE DEFAULT-<-2))
     (9 9 (:REWRITE USE-ALL-<-2))
     (9 9 (:REWRITE USE-ALL-<))
     (9 9 (:REWRITE DEFAULT-<-1))
     (9 9 (:REWRITE DEFAULT-+-2))
     (9 9 (:REWRITE DEFAULT-+-1))
     (9 9
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (7 7
        (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (7 7 (:REWRITE USE-ALL-<=-2))
     (7 7 (:REWRITE USE-ALL-<=))
     (6 6 (:REWRITE USE-ALL-CONSP-2))
     (6 6 (:REWRITE USE-ALL-CONSP))
     (6 2 (:REWRITE FOLD-CONSTS-IN-+))
     (4 2 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (2 2 (:TYPE-PRESCRIPTION ASET1))
     (2 2
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (2 2
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (2 1 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (1 1 (:REWRITE USE-ALL-NATP-2))
     (1 1 (:REWRITE USE-ALL-NATP))
     (1 1
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(EVAL-ARRAYP-AUX-OF-COMPRESS1
     (89 89
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (34 34 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (31 19 (:REWRITE DEFAULT-<-2))
     (28 19 (:REWRITE DEFAULT-<-1))
     (22 22 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (19 19 (:REWRITE USE-ALL-<=-2))
     (19 19 (:REWRITE USE-ALL-<=))
     (19 19 (:REWRITE USE-ALL-<-2))
     (19 19 (:REWRITE USE-ALL-<))
     (19 19
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (16 16
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (14 7 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (12 12 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 10 (:LINEAR ARRAY2P-LINEAR))
     (10 5 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (9 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (8 8 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 7
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (7 7
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (7 7
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (6 6 (:REWRITE USE-ALL-CONSP-2))
     (6 6 (:REWRITE USE-ALL-CONSP))
     (5 5 (:REWRITE USE-ALL-NATP-2))
     (5 5 (:REWRITE USE-ALL-NATP))
     (5 5
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (4 4
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (3 3 (:REWRITE USE-ALL-RATIONALP-2))
     (3 3 (:REWRITE USE-ALL-RATIONALP)))
(EVAL-ARRAYP-AUX-OF-CONS-OF-CONS-OF-HEADER
     (80 20
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (40 20 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (37 23 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (36 6 (:REWRITE DEFAULT-CDR))
     (36 6 (:REWRITE DEFAULT-CAR))
     (20 20 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (20 20 (:TYPE-PRESCRIPTION ARRAY1P))
     (19 19 (:REWRITE USE-ALL-CONSP-2))
     (19 19 (:REWRITE USE-ALL-CONSP))
     (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (13 13 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 10 (:REWRITE USE-ALL-<=-2))
     (10 10 (:REWRITE USE-ALL-<=))
     (10 10 (:REWRITE USE-ALL-<-2))
     (10 10 (:REWRITE USE-ALL-<))
     (10 10 (:REWRITE DEFAULT-<-2))
     (10 10 (:REWRITE DEFAULT-<-1))
     (10 10
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (10 5 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (8 8
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (8 8
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (8 8 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (6 6
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (5 5 (:REWRITE USE-ALL-NATP-2))
     (5 5 (:REWRITE USE-ALL-NATP))
     (5 5
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(EVAL-ARRAYP-AUX-OF-CONS-OF-CONS-OF-HEADER-IRREL
     (112 28
          (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (94 9
         (:REWRITE EVAL-ARRAYP-AUX-OF-CONS-OF-CONS-OF-HEADER))
     (56 28 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (42 7 (:REWRITE DEFAULT-CDR))
     (42 7 (:REWRITE DEFAULT-CAR))
     (31 31 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (28 28 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (28 28 (:TYPE-PRESCRIPTION ARRAY1P))
     (23 23 (:REWRITE USE-ALL-CONSP-2))
     (23 23 (:REWRITE USE-ALL-CONSP))
     (12 12 (:REWRITE DEFAULT-+-2))
     (12 12 (:REWRITE DEFAULT-+-1))
     (11 11
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (8 4 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (4 4 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (4 4 (:REWRITE USE-ALL-<=-2))
     (4 4 (:REWRITE USE-ALL-<=))
     (4 4 (:REWRITE USE-ALL-<-2))
     (4 4 (:REWRITE USE-ALL-<))
     (4 4
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (4 4
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(ENSURE-DEFAULT-SATISFIES-PRED)
(EVAL-ARRAYP-AUX-OF-MAKE-EMPTY-ARRAY-WITH-DEFAULT
     (25 5 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (15 5 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (14 14 (:REWRITE USE-ALL-<=-2))
     (14 14 (:REWRITE USE-ALL-<=))
     (14 14 (:REWRITE USE-ALL-<-2))
     (14 14 (:REWRITE USE-ALL-<))
     (14 14 (:REWRITE DEFAULT-<-2))
     (14 14 (:REWRITE DEFAULT-<-1))
     (14 14
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (14 7 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (12 5 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (7 7 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (7 7
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (5 5 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (5 5 (:TYPE-PRESCRIPTION ARRAY1P))
     (4 4
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (3 3
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (3 3 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1)))
(EVAL-ARRAYP)
(ARRAY1P-WHEN-EVAL-ARRAYP)
(EVAL-ARRAYP-FORWARD-TO-ARRAY1P)
(EVAL-ARRAYP-FORWARD-TO-LEN-BOUNDEVAL-ARRAYP
     (10 10 (:TYPE-PRESCRIPTION POSP-OF-ALEN1)))
(EVAL-ARRAYP-FORWARD-TO-LEN-BOUND-2EVAL-ARRAYP
     (3 3 (:TYPE-PRESCRIPTION POSP-OF-ALEN1)))
(TYPE-OF-AREF1-WHEN-EVAL-ARRAYP
     (38 38
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (18 18 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (2 1 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (1 1 (:REWRITE USE-ALL-CONSP-2))
     (1 1 (:REWRITE USE-ALL-CONSP))
     (1 1 (:REWRITE USE-ALL-<=-2))
     (1 1 (:REWRITE USE-ALL-<=))
     (1 1 (:REWRITE USE-ALL-<-2))
     (1 1 (:REWRITE USE-ALL-<))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(EVAL-ARRAYP-MONOTONE (12 12 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
                      (8 2
                         (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
                      (7 5 (:REWRITE DEFAULT-<-1))
                      (5 5 (:REWRITE USE-ALL-<=-2))
                      (5 5 (:REWRITE USE-ALL-<=))
                      (5 5 (:REWRITE USE-ALL-<-2))
                      (5 5 (:REWRITE USE-ALL-<))
                      (5 5 (:REWRITE DEFAULT-<-2))
                      (5 5
                         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
                      (4 4
                         (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
                      (4 2 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
                      (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
                      (2 2 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
                      (2 2
                         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
                      (2 2
                         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
                      (2 2 (:REWRITE DEFAULT-+-2))
                      (2 2 (:REWRITE DEFAULT-+-1))
                      (2 2
                         (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
                      (2 2 (:REWRITE ARRAY1P-WHEN-EVAL-ARRAYP))
                      (2 2 (:LINEAR ARRAY2P-LINEAR)))
(EVAL-ARRAYP-OF-ASET1
     (28 1 (:DEFINITION EVAL-ARRAYP-AUX))
     (16 16 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (12 9 (:REWRITE DEFAULT-<-1))
     (12 3
         (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
     (11 9 (:REWRITE DEFAULT-<-2))
     (9 9 (:REWRITE USE-ALL-<=-2))
     (9 9 (:REWRITE USE-ALL-<=))
     (9 9 (:REWRITE USE-ALL-<-2))
     (9 9 (:REWRITE USE-ALL-<))
     (9 9
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (6 6
        (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 2 (:REWRITE FOLD-CONSTS-IN-+))
     (5 5 (:REWRITE DEFAULT-+-2))
     (5 5 (:REWRITE DEFAULT-+-1))
     (4 4 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (4 4
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (3 3
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (3 3 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (3 3
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (3 3 (:REWRITE ARRAY1P-WHEN-EVAL-ARRAYP))
     (2 2 (:REWRITE USE-ALL-CONSP-2))
     (2 2 (:REWRITE USE-ALL-CONSP))
     (2 2 (:REWRITE EVAL-ARRAYP-MONOTONE))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (2 1 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (2 1 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (1 1
        (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (1 1 (:REWRITE USE-ALL-NATP-2))
     (1 1 (:REWRITE USE-ALL-NATP))
     (1 1
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN)))
(EVAL-ARRAYP-OF-ASET1-AT-END
     (76 2 (:REWRITE EVAL-ARRAYP-OF-ASET1))
     (58 3 (:DEFINITION EVAL-ARRAYP-AUX))
     (23 9 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (17 17 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (13 13 (:REWRITE DEFAULT-+-2))
     (13 13 (:REWRITE DEFAULT-+-1))
     (12 9 (:REWRITE DEFAULT-<-1))
     (12 3
         (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
     (11 11
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (11 9 (:REWRITE DEFAULT-<-2))
     (9 9 (:REWRITE USE-ALL-<=-2))
     (9 9 (:REWRITE USE-ALL-<=))
     (9 9 (:REWRITE USE-ALL-<-2))
     (9 9 (:REWRITE USE-ALL-<))
     (9 9
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (6 6
        (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
     (6 6 (:REWRITE USE-ALL-CONSP-2))
     (6 6 (:REWRITE USE-ALL-CONSP))
     (5 5
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (5 5 (:REWRITE ARRAY1P-WHEN-EVAL-ARRAYP))
     (4 4 (:REWRITE EVAL-ARRAYP-MONOTONE))
     (4 3 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
     (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (2 2
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (2 2 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
     (2 2 (:LINEAR ARRAY2P-LINEAR))
     (2 1 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:REWRITE USE-ALL-NATP-2))
     (1 1 (:REWRITE USE-ALL-NATP))
     (1 1
        (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN)))
(EVAL-ARRAYP-OF-MAKE-EMPTY-ARRAY-WITH-DEFAULT
     (4 4 (:REWRITE USE-ALL-<=-2))
     (4 4 (:REWRITE USE-ALL-<=))
     (4 4 (:REWRITE USE-ALL-<-2))
     (4 4 (:REWRITE USE-ALL-<))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE EVAL-ARRAYP-MONOTONE))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (1 1 (:REWRITE ARRAY1P-WHEN-EVAL-ARRAYP)))
(EVAL-ARRAYP-OF-MAKE-EMPTY-ARRAY
     (2 2 (:REWRITE USE-ALL-<=-2))
     (2 2 (:REWRITE USE-ALL-<=))
     (2 2 (:REWRITE USE-ALL-<-2))
     (2 2 (:REWRITE USE-ALL-<))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN)))
(EVAL-ARRAYP-OF-MAKE-EMPTY-ARRAY-AND-0
     (4 4 (:REWRITE USE-ALL-<=-2))
     (4 4 (:REWRITE USE-ALL-<=))
     (4 4 (:REWRITE USE-ALL-<-2))
     (4 4 (:REWRITE USE-ALL-<))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4
        (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
     (1 1
        (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (1 1
        (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (1 1 (:REWRITE EVAL-ARRAYP-MONOTONE))
     (1 1
        (:REWRITE EVAL-ARRAYP-AUX-OF-MAKE-EMPTY-ARRAY-WITH-DEFAULT))
     (1 1 (:REWRITE EVAL-ARRAYP-AUX-MONOTONE))
     (1 1
        (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
     (1 1 (:REWRITE ARRAY1P-WHEN-EVAL-ARRAYP)))
(CONSP-OF-AREF1-WHEN-EVAL-ARRAYP
     (46 46
         (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (26 26 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (2 2 (:LINEAR ARRAY2P-LINEAR)))
(GET-ARGS-NOT-DONE-ARRAY
   (1176 34 (:DEFINITION NAT-LISTP))
   (991 45 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
   (980 24 (:REWRITE USE-ALL-<-FOR-CAR))
   (816 816
        (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
   (782 3 (:LINEAR LARGEST-NON-QUOTEP-BOUND))
   (592 39 (:REWRITE USE-ALL-NATP-FOR-CAR))
   (407 22 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
   (364 22 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
   (254 254 (:TYPE-PRESCRIPTION NAT-LISTP))
   (231 231 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
   (230 115
        (:TYPE-PRESCRIPTION NATP-OF-LARGEST-NON-QUOTEP))
   (186 6 (:REWRITE ALL-NATP-OF-CDR))
   (132 25 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
   (130 4 (:REWRITE ALL-<-OF-CDR))
   (113 41 (:REWRITE USE-ALL-NATP))
   (110 110 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
   (90 45
       (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
   (86 43 (:REWRITE NATP-WHEN-POWER-OF-2P))
   (84 84 (:TYPE-PRESCRIPTION MEMBERP))
   (73 61 (:REWRITE USE-ALL-CONSP))
   (71 45 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
   (66 66 (:TYPE-PRESCRIPTION POWER-OF-2P))
   (61 61 (:REWRITE USE-ALL-CONSP-2))
   (56 56 (:TYPE-PRESCRIPTION ALL-<))
   (55 55 (:REWRITE DEFAULT-CDR))
   (50 46 (:REWRITE DEFAULT-CAR))
   (46 23 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
   (45 45
       (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
   (43 43
       (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
   (42 26 (:REWRITE DEFAULT-<-1))
   (42 21
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
   (42 21
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
   (41 41 (:REWRITE USE-ALL-NATP-2))
   (40 30
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
   (36 36
       (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
   (31 25 (:REWRITE ALL-<-WHEN-NOT-CONSP))
   (30 30
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
   (30 30
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
   (30 15
       (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
   (26 26 (:REWRITE USE-ALL-<=-2))
   (26 26 (:REWRITE USE-ALL-<=))
   (26 26 (:REWRITE USE-ALL-<-2))
   (26 26 (:REWRITE USE-ALL-<))
   (26 26 (:REWRITE DEFAULT-<-2))
   (26 26
       (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
   (25 25
       (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
   (25 25
       (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
   (25 25 (:REWRITE ALL-<-TRANSITIVE-FREE))
   (25 25 (:REWRITE ALL-<-TRANSITIVE))
   (24 24
       (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
   (23 23
       (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
   (22 11
       (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
   (21 21 (:TYPE-PRESCRIPTION ALL-INTEGERP))
   (21 21
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
   (17 3 (:REWRITE DEFAULT-+-2))
   (16 2
       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
   (15 15
       (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
   (15 9 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
   (14 7
       (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
   (11 11
       (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
   (10 10 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
   (10 2 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
   (9 9
      (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
   (7 7
      (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
   (6 6
      (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
   (6 1
      (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
   (6 1
      (:REWRITE <-OF-CAR-AND-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
   (6 1 (:REWRITE <-OF-CAR-AND-ALEN1))
   (5 5 (:REWRITE NTH-WHEN-NOT-CDDR))
   (4 4 (:TYPE-PRESCRIPTION ALL-RATIONALP))
   (4 4 (:LINEAR <-OF-LARGEST-NON-QUOTEP))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL-ALT))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN))
   (3 3 (:REWRITE DEFAULT-+-1))
   (2 2 (:REWRITE USE-ALL-RATIONALP-2))
   (2 2 (:REWRITE USE-ALL-RATIONALP))
   (2 2
      (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
   (2 2
      (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
   (2 2
      (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
   (2 2
      (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
   (2 2 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
   (2 2 (:LINEAR ARRAY2P-LINEAR))
   (1 1 (:REWRITE CDR-CONS))
   (1 1 (:REWRITE CAR-CONS)))
(ALL-NATP-OF-MV-NTH-0-OF-GET-ARGS-NOT-DONE-ARRAY
     (1303 58 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
     (1257 27 (:DEFINITION NAT-LISTP))
     (462 21 (:REWRITE USE-ALL-<-FOR-CAR))
     (245 245 (:TYPE-PRESCRIPTION NAT-LISTP))
     (225 28 (:REWRITE USE-ALL-NATP-FOR-CAR))
     (212 19 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
     (152 58 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
     (116 58
          (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
     (113 113
          (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
     (98 19 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
     (78 28 (:REWRITE USE-ALL-NATP))
     (63 63 (:REWRITE USE-ALL-CONSP-2))
     (63 63 (:REWRITE USE-ALL-CONSP))
     (60 15
         (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
     (58 58
         (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
     (56 28 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (51 51 (:REWRITE DEFAULT-CAR))
     (50 50 (:TYPE-PRESCRIPTION MEMBERP))
     (50 10 (:REWRITE USE-ALL-CONSP-FOR-CAR))
     (47 47 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (42 42 (:REWRITE DEFAULT-CDR))
     (40 40 (:TYPE-PRESCRIPTION ALL-<))
     (38 19 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (38 19
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
     (38 19
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (30 15 (:TYPE-PRESCRIPTION ALEN1-TYPE))
     (30 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
     (28 28 (:REWRITE USE-ALL-NATP-2))
     (28 28
         (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (22 11
         (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
     (21 21 (:REWRITE USE-ALL-<=-2))
     (21 21 (:REWRITE USE-ALL-<=))
     (21 21 (:REWRITE USE-ALL-<-2))
     (21 21 (:REWRITE USE-ALL-<))
     (21 21
         (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
     (21 21
         (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
     (21 21 (:REWRITE DEFAULT-<-2))
     (21 21 (:REWRITE DEFAULT-<-1))
     (21 21
         (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
     (20 20 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
     (20 20 (:TYPE-PRESCRIPTION ALL-CONSP))
     (20 10
         (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
     (19 19 (:TYPE-PRESCRIPTION ALL-INTEGERP))
     (19 19
         (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
     (19 19
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
     (19 19
         (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
     (19 19 (:REWRITE ALL-<-WHEN-NOT-CONSP))
     (19 19 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
     (19 19 (:REWRITE ALL-<-TRANSITIVE-FREE))
     (19 19 (:REWRITE ALL-<-TRANSITIVE))
     (15 15 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
     (15 15 (:TYPE-PRESCRIPTION ARRAY1P))
     (11 11 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
     (11 11
         (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
     (11 7 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
     (10 10
         (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
     (10 10
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
     (10 10
         (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
     (10 10
         (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
     (10 10 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
     (4 4 (:TYPE-PRESCRIPTION NATP))
     (1 1 (:REWRITE CDR-CONS))
     (1 1 (:REWRITE CAR-CONS)))
(GET-VALS-OF-ARGS-ARRAY
   (675 15 (:DEFINITION NATP))
   (628 16 (:REWRITE USE-ALL-<-FOR-CAR))
   (587 19 (:DEFINITION NAT-LISTP))
   (576 288
        (:TYPE-PRESCRIPTION NATP-OF-LARGEST-NON-QUOTEP))
   (437 22 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
   (380 23 (:REWRITE USE-ALL-NATP-FOR-CAR))
   (285 285 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
   (250 250 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
   (249 13 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
   (235 13 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
   (133 133 (:TYPE-PRESCRIPTION NAT-LISTP))
   (120 17 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
   (110 110
        (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
   (91 45 (:REWRITE DEFAULT-CDR))
   (89 3 (:REWRITE ALL-NATP-OF-CDR))
   (75 75 (:TYPE-PRESCRIPTION ALL-NATP))
   (70 50 (:REWRITE USE-ALL-CONSP))
   (63 2 (:REWRITE ALL-<-OF-CDR))
   (53 49 (:REWRITE DEFAULT-CAR))
   (52 26 (:REWRITE NATP-WHEN-POWER-OF-2P))
   (50 50 (:REWRITE USE-ALL-CONSP-2))
   (48 20
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
   (44 22
       (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
   (42 42 (:TYPE-PRESCRIPTION POWER-OF-2P))
   (42 18 (:REWRITE DEFAULT-<-1))
   (40 20
       (:REWRITE LARGEST-NON-QUOTEP-WHEN-ALL-MYQUOTEP-CHEAP))
   (38 38 (:TYPE-PRESCRIPTION ALL-<))
   (36 36
       (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
   (32 22 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
   (32 16 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
   (31 6 (:REWRITE DEFAULT-+-2))
   (28 28 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
   (28 14
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
   (28 14
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
   (26 26
       (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
   (25 25 (:REWRITE USE-ALL-NATP-2))
   (25 25 (:REWRITE USE-ALL-NATP))
   (24 24 (:TYPE-PRESCRIPTION MEMBERP))
   (24 3
       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
   (22 22
       (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
   (22 18 (:REWRITE DEFAULT-<-2))
   (22 17 (:REWRITE ALL-<-WHEN-NOT-CONSP))
   (20 20
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
   (20 20
       (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
   (20 10
       (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
   (19 14 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
   (18 18 (:REWRITE USE-ALL-<-2))
   (18 18 (:REWRITE USE-ALL-<))
   (18 18
       (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
   (18 9
       (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
   (17 17 (:REWRITE USE-ALL-<=-2))
   (17 17 (:REWRITE USE-ALL-<=))
   (17 17
       (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
   (17 17 (:REWRITE ALL-<-TRANSITIVE-FREE))
   (17 17 (:REWRITE ALL-<-TRANSITIVE))
   (16 16
       (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
   (16 16
       (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
   (15 15
       (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
   (15 3 (:REWRITE USE-ALL-RATIONALP-FOR-CAR))
   (14 14 (:TYPE-PRESCRIPTION ALL-INTEGERP))
   (14 14
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
   (14 14
       (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
   (10 10 (:REWRITE NTH-WHEN-NOT-CDDR))
   (10 10
       (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
   (10 10 (:LINEAR ARRAY2P-LINEAR))
   (9 9
      (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
   (8 8 (:LINEAR <-OF-LARGEST-NON-QUOTEP))
   (7 7
      (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
   (7 7
      (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
   (7 7 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
   (6 6
      (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
   (6 6 (:TYPE-PRESCRIPTION ALL-RATIONALP))
   (6 6 (:REWRITE DEFAULT-+-1))
   (6 2 (:REWRITE USE-ALL-DARGP))
   (6 1
      (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
   (6 1
      (:REWRITE <-OF-CAR-AND-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
   (6 1 (:REWRITE <-OF-CAR-AND-ALEN1))
   (4 4 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
   (3 3 (:REWRITE USE-ALL-RATIONALP-2))
   (3 3 (:REWRITE USE-ALL-RATIONALP))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL-ALT))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
   (3 3
      (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN))
   (3 3
      (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP-CHEAP))
   (3 3
      (:REWRITE ALL-RATIONALP-WHEN-NOT-CONSP))
   (2 2 (:REWRITE USE-ALL-DARGP-2))
   (2 2
      (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
   (2 2
      (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
   (2 2
      (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
   (2 2
      (:REWRITE DARGP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
   (2 2 (:REWRITE DARGP-WHEN-DARGP-LESS-THAN))
   (2 1
      (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
   (1 1
      (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
   (1 1 (:REWRITE NTH-0-CONS))
   (1 1 (:REWRITE <-OF-+-OF-1-STRENGTHEN)))
(EMPTY-TRACE)
(ENQUOTE-LIST)
(ADD-CALL-TO-CALLS)
(MAKE-EVALUATOR-FN
     (12 6
         (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-OF-STRIP-CARS-WHEN-REV-DAGP))
     (12 6
         (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-2))
     (6 6 (:TYPE-PRESCRIPTION WEAK-DAGP-AUX))
     (6 6
        (:TYPE-PRESCRIPTION RATIONALP-OF-MAXELEM))
     (6 6 (:TYPE-PRESCRIPTION NAT-LISTP)))
(ADD-TRACING-TO-EVALUATOR)
