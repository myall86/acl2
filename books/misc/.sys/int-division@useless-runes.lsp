(INTEGER-QUOTIENT)
(INTEGER-QUOTIENT-TYPE)
(INTEGER-QUOTIENT-ARG-1-TYPE)
(INTEGER-QUOTIENT-ARG-2-TYPE)
(INTEGER-QUOTIENT-SPEC-0-0)
(INTEGER-QUOTIENT-SPEC-A-0
 (6 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(INTEGER-QUOTIENT-SPEC-0-B
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(INTEGER-QUOTIENT-SPEC-A-A
 (6 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(INEQUALITY-LEMMA-1)
(INEQUALITY-LEMMA-2)
(INEQUALITY-LEMMA-3
 (24 20 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (10 10 (:REWRITE DEFAULT-UNARY-/))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 2 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (4 2 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(INTEGER-QUOTIENT-SPEC-A-1
 (5 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 )
(INTEGER-QUOTIENT-SPEC-1-B
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 )
(INTEGER-QUOTIENT-COMMUTES-WITH-+
 (34 20 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (24 24 (:REWRITE DEFAULT-*-2))
 (24 24 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 10 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(INTEGER-QUOTIENT-COMMUTES-WITH-UNARY-MINUS-1
 (6 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INTEGER-QUOTIENT-COMMUTES-WITH-UNARY-MINUS-2
 (14 8 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (4 4 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 1 (:REWRITE EQUAL-MINUS-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(IND-INT-ABS
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INTEGER-QUOTIENT-COMMUTES-WITH-*
 (210 116 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (170 166 (:REWRITE DEFAULT-*-2))
 (170 166 (:REWRITE DEFAULT-*-1))
 (161 4 (:REWRITE INTEGER-QUOTIENT-COMMUTES-WITH-+))
 (94 94 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (58 58 (:REWRITE DEFAULT-UNARY-/))
 (36 36 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (34 34 (:REWRITE FOLD-CONSTS-IN-*))
 (34 32 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE DEFAULT-+-2))
 (21 5 (:LINEAR X*Y>1-POSITIVE))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (9 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 2 (:REWRITE ZERO-IS-ONLY-ZERO-DIVISOR))
 (5 5 (:REWRITE EQUAL-CONSTANT-+))
 (3 1 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (3 1 (:REWRITE <-UNARY-/-NEGATIVE-RIGHT))
 )
(INTEGER-QUOTIENT-COMMUTES-WITH-*-ALT
 (422 236 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (283 275 (:REWRITE DEFAULT-*-2))
 (186 186 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (118 118 (:REWRITE DEFAULT-UNARY-/))
 (62 62 (:REWRITE FOLD-CONSTS-IN-*))
 (56 56 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (53 53 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (43 41 (:REWRITE DEFAULT-+-1))
 (41 41 (:REWRITE DEFAULT-+-2))
 (34 12 (:REWRITE INTEGER-QUOTIENT-SPEC-A-0))
 (29 5 (:LINEAR X*Y>1-POSITIVE))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 3 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (9 3 (:REWRITE <-UNARY-/-NEGATIVE-RIGHT))
 (4 4 (:REWRITE EQUAL-CONSTANT-+))
 )
(INTEGER-QUOTIENT-*-CANCELLATION
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(CRAP001
 (10 6 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 3 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (3 3 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (3 3 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(CRAP002
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (2 2 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(CRAP003
 (218 218 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (30 18 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (23 17 (:REWRITE DEFAULT-*-2))
 (17 17 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (9 9 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE FOLD-CONSTS-IN-*))
 )
(INTEGER-QUOTIENT-FACTORIZATION
 (38 22 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (29 28 (:REWRITE DEFAULT-*-2))
 (28 28 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (11 11 (:REWRITE DEFAULT-UNARY-/))
 (8 2 (:LINEAR X*Y>1-POSITIVE))
 (6 6 (:REWRITE FOLD-CONSTS-IN-*))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(DIVIDES
 (7 7 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (7 7 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(DIVIDES-INTEGER-QUOTIENT-EQUIVALENCE
 (36 36 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (33 14 (:REWRITE DEFAULT-*-2))
 (24 12 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (14 14 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE DEFAULT-UNARY-/))
 (3 3 (:REWRITE CRAP003))
 )
(DIVIDES-SPEC-0-0)
(DIVIDES-SPEC-A-0
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(DIVIDES-SPEC-0-B)
(DIVIDES-SPEC-A-1)
(DIVIDES-SPEC-1-B
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(DIVIDE-SUM
 (76 48 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (28 28 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (25 25 (:REWRITE DEFAULT-*-2))
 (25 25 (:REWRITE DEFAULT-*-1))
 (24 24 (:REWRITE DEFAULT-UNARY-/))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(DIVIDE-FACTOR
 (8 8 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (8 8 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(DIVIDES-REFLEXIVITY
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (1 1 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (1 1 (:REWRITE DIVIDE-FACTOR))
 )
(DIVIDE-PRODUCT
 (60 36 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (47 32 (:REWRITE DEFAULT-*-2))
 (32 32 (:REWRITE DEFAULT-*-1))
 (24 24 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (18 18 (:REWRITE DEFAULT-UNARY-/))
 (10 10 (:REWRITE FOLD-CONSTS-IN-*))
 (9 3 (:LINEAR X*Y>1-POSITIVE))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DIVIDE-FACTOR))
 )
(DIVIDE-FACTORIZATION
 (3 3 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (3 3 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 )
(INEQUALITY-LEMMA-4
 (10 10 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-2-TYPE))
 (10 10 (:TYPE-PRESCRIPTION INTEGER-QUOTIENT-ARG-1-TYPE))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (3 1 (:LINEAR X*Y>1-POSITIVE))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(DIVIDER-<
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(DIVIDE-TRANSITIVITY
 (84 50 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (41 41 (:REWRITE DEFAULT-*-2))
 (41 41 (:REWRITE DEFAULT-*-1))
 (34 34 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (25 25 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE CRAP003))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE DIVIDE-FACTOR))
 (2 2 (:REWRITE INTEGER-QUOTIENT-SPEC-A-0))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(EQUALITY-FROM-DIVISION
 (230 34 (:LINEAR X*Y>1-POSITIVE))
 (80 8 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (56 8 (:REWRITE X*Y>1-POSITIVE))
 (50 50 (:REWRITE DEFAULT-<-2))
 (50 50 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-*-2))
 (36 36 (:REWRITE DEFAULT-*-1))
 (32 16 (:REWRITE UNICITY-OF-1))
 (28 4 (:REWRITE <-*-/-RIGHT-COMMUTED))
 (28 4 (:REWRITE <-*-/-RIGHT))
 (22 16 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (8 8 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 (2 2 (:REWRITE DIVIDE-TRANSITIVITY))
 (1 1 (:REWRITE CRAP003))
 )
(DIVIDE-LINEAR-COMBINATION
 (52 32 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (20 20 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (18 18 (:REWRITE DEFAULT-*-2))
 (18 18 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE DEFAULT-UNARY-/))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (5 5 (:REWRITE DIVIDE-TRANSITIVITY))
 (4 4 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE DIVIDE-FACTOR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 )
