(HACK0
 (56 56 (:REWRITE DEFAULT-*-2))
 (56 56 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE DEFAULT-COMPLEX-2))
 (14 14 (:REWRITE DEFAULT-COMPLEX-1))
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HACK1
 (1 1 (:REWRITE DEFAULT-COMPLEX-2))
 (1 1 (:REWRITE DEFAULT-COMPLEX-1))
 )
(STEP-ONE
 (552 552 (:REWRITE DEFAULT-*-1))
 (288 288 (:REWRITE DEFAULT-COMPLEX-2))
 (288 288 (:REWRITE DEFAULT-COMPLEX-1))
 (274 274 (:REWRITE DEFAULT-REALPART))
 (160 160 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (82 82 (:REWRITE DEFAULT-IMAGPART))
 )
(HELPER-0
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE DEFAULT-*-2))
 (4 3 (:REWRITE DEFAULT-*-1))
 )
(HELPER-1
 (10 7 (:REWRITE DEFAULT-*-1))
 (9 7 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-2
 (14 10 (:REWRITE DEFAULT-*-1))
 (12 10 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-3
 (45 45 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (36 23 (:REWRITE DEFAULT-*-2))
 (32 23 (:REWRITE DEFAULT-*-1))
 (28 18 (:REWRITE DEFAULT-+-2))
 (28 18 (:REWRITE DEFAULT-+-1))
 )
(HELPER-4
 (39 27 (:REWRITE DEFAULT-*-2))
 (36 36 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 10 (:REWRITE DEFAULT-+-2))
 (14 10 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(HELPER-5
 (36 25 (:REWRITE DEFAULT-*-1))
 (35 25 (:REWRITE DEFAULT-*-2))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 6 (:REWRITE DEFAULT-+-2))
 (8 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-6
 (54 50 (:REWRITE DEFAULT-*-2))
 (26 26 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE <-*-0))
 (8 8 (:REWRITE 0-<-*))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE <-*-RIGHT-CANCEL))
 )
(HELPER-6A
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 6 (:REWRITE DEFAULT-<-2))
 (10 6 (:REWRITE DEFAULT-<-1))
 (6 4 (:REWRITE DEFAULT-*-2))
 (6 4 (:REWRITE DEFAULT-*-1))
 )
(HELPER-7
 (131 125 (:REWRITE DEFAULT-*-2))
 (63 63 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE <-*-0))
 (8 8 (:REWRITE 0-<-*))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-8
 (131 125 (:REWRITE DEFAULT-*-2))
 (63 63 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE 0-<-*))
 (8 8 (:REWRITE <-*-0))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-9
 (45 45 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (17 17 (:REWRITE FOLD-CONSTS-IN-*))
 (13 13 (:REWRITE <-*-0))
 (13 13 (:REWRITE 0-<-*))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 )
(HELPER-10
 (45 45 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (17 17 (:REWRITE FOLD-CONSTS-IN-*))
 (13 13 (:REWRITE <-*-0))
 (13 13 (:REWRITE 0-<-*))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 )
(HELPER-11
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 9 (:REWRITE DEFAULT-*-2))
 (9 9 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE 0-<-*))
 )
(HELPER-12
 (18 15 (:REWRITE DEFAULT-*-1))
 (17 15 (:REWRITE DEFAULT-*-2))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (3 3 (:REWRITE HELPER-11))
 (3 3 (:REWRITE 0-<-*))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 )
(HELPER-13
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 9 (:REWRITE DEFAULT-*-2))
 (9 9 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE <-*-0))
 )
(HELPER-14
 (18 15 (:REWRITE DEFAULT-*-1))
 (17 17 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE DEFAULT-<-1))
 (17 15 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-UNARY-/))
 (3 3 (:REWRITE HELPER-13))
 (3 3 (:REWRITE <-*-0))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 )
