(CHOOSE
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(FACTORIAL-N/N-1
 (40 4 (:LINEAR X*Y>1-POSITIVE))
 (20 3 (:LINEAR FACTORIAL-NON-NEGATIVE))
 (14 8 (:REWRITE DEFAULT-*-2))
 (13 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (11 8 (:REWRITE DEFAULT-*-1))
 (7 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE DEFAULT-UNARY-/))
 (2 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE FOLD-CONSTS-IN-*))
 )
(FACTORIAL-N/N-1/X
 (20 2 (:LINEAR X*Y>1-POSITIVE))
 (13 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (7 5 (:REWRITE DEFAULT-*-2))
 (7 5 (:REWRITE DEFAULT-*-1))
 (6 3 (:LINEAR FACTORIAL-NON-NEGATIVE))
 (5 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE FOLD-CONSTS-IN-*))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CHOOSE-REDUCTION
 (223 30 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (138 9 (:LINEAR X*Y>1-POSITIVE))
 (87 39 (:REWRITE DEFAULT-*-2))
 (72 4 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (70 39 (:REWRITE DEFAULT-*-1))
 (65 37 (:REWRITE DEFAULT-+-2))
 (64 37 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE DEFAULT-UNARY-/))
 (31 23 (:REWRITE DEFAULT-<-2))
 (29 23 (:REWRITE DEFAULT-<-1))
 (29 13 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (14 14 (:REWRITE FOLD-CONSTS-IN-*))
 (12 4 (:REWRITE UNICITY-OF-1))
 (10 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE FACTORIAL-NON-NEGATIVE))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(CHOOSE-MK
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CHOOSE-MK-CHOOSE
 (68 8 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (56 51 (:REWRITE DEFAULT-<-2))
 (52 5 (:LINEAR X*Y>1-POSITIVE))
 (51 51 (:REWRITE DEFAULT-<-1))
 (21 11 (:REWRITE DEFAULT-*-2))
 (19 11 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (9 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (9 3 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(CHOOSE-IS-NON-NEGATIVE-INTEGER)
(BINOMIAL-EXPANSION
 (29 29 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (17 11 (:REWRITE DEFAULT-+-2))
 (12 11 (:REWRITE DEFAULT-+-1))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (5 5 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BINOMIAL-EXPANSION-TIMES-X
 (29 29 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (17 11 (:REWRITE DEFAULT-+-2))
 (12 11 (:REWRITE DEFAULT-+-1))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (5 5 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BINOMIAL-EXPANSION-TIMES-X-CORRECT
 (872 25 (:DEFINITION EXPT))
 (712 103 (:REWRITE DEFAULT-*-2))
 (286 103 (:REWRITE DEFAULT-*-1))
 (246 246 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (246 246 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (246 246 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (222 222 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (210 130 (:REWRITE DEFAULT-+-2))
 (175 130 (:REWRITE DEFAULT-+-1))
 (96 96 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (86 73 (:REWRITE DEFAULT-<-2))
 (73 73 (:REWRITE DEFAULT-<-1))
 (72 24 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (70 24 (:REWRITE ZIP-OPEN))
 (55 12 (:LINEAR X*Y>1-POSITIVE))
 (48 12 (:REWRITE DEFAULT-UNARY-/))
 (41 31 (:REWRITE FOLD-CONSTS-IN-+))
 (38 12 (:REWRITE <-0-+-NEGATIVE-1))
 (33 33 (:REWRITE FOLD-CONSTS-IN-*))
 (30 1 (:REWRITE ASSOCIATIVITY-OF-*))
 (27 9 (:REWRITE <-MINUS-ZERO))
 (24 24 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (20 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (19 15 (:REWRITE EQUAL-CONSTANT-+))
 (17 17 (:REWRITE EXPONENTS-ADD))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 12 (:REWRITE DEFAULT-CDR))
 (14 12 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (8 2 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (6 2 (:REWRITE MINUS-CANCELLATION-ON-LEFT))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(BINOMIAL-EXPANSION-TIMES-Y
 (29 29 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (17 11 (:REWRITE DEFAULT-+-2))
 (12 11 (:REWRITE DEFAULT-+-1))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (6 6 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BINOMIAL-EXPANSION-TIMES-Y-CORRECT
 (837 24 (:DEFINITION EXPT))
 (655 93 (:REWRITE DEFAULT-*-2))
 (236 93 (:REWRITE DEFAULT-*-1))
 (232 232 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (232 232 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (232 232 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (212 212 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (210 128 (:REWRITE DEFAULT-+-2))
 (170 128 (:REWRITE DEFAULT-+-1))
 (90 90 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (88 76 (:REWRITE DEFAULT-<-2))
 (76 76 (:REWRITE DEFAULT-<-1))
 (72 24 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (65 24 (:REWRITE ZIP-OPEN))
 (55 12 (:LINEAR X*Y>1-POSITIVE))
 (39 33 (:REWRITE FOLD-CONSTS-IN-+))
 (37 12 (:REWRITE <-0-+-NEGATIVE-1))
 (36 12 (:REWRITE DEFAULT-UNARY-/))
 (32 32 (:REWRITE FOLD-CONSTS-IN-*))
 (30 10 (:REWRITE <-MINUS-ZERO))
 (24 24 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (20 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (17 17 (:REWRITE EXPONENTS-ADD))
 (16 14 (:REWRITE EQUAL-CONSTANT-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 12 (:REWRITE DEFAULT-CDR))
 (14 12 (:REWRITE DEFAULT-CAR))
 (8 2 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (6 2 (:REWRITE MINUS-CANCELLATION-ON-LEFT))
 (6 2 (:REWRITE <-+-NEGATIVE-0-1))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(BINOMIAL-EXPANSION-TRIANGLE
 (29 29 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (17 11 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (12 12 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (12 12 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (12 11 (:REWRITE DEFAULT-+-1))
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BINOMIAL-EXPANSION-TIMES-X-PLUS-TIMES-Y
 (532 75 (:REWRITE DEFAULT-*-2))
 (390 84 (:REWRITE DEFAULT-+-2))
 (273 75 (:REWRITE DEFAULT-*-1))
 (263 263 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (263 263 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (263 263 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (244 84 (:REWRITE DEFAULT-+-1))
 (149 149 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (47 47 (:REWRITE DEFAULT-<-2))
 (47 47 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE FOLD-CONSTS-IN-*))
 (36 12 (:REWRITE <-MINUS-ZERO))
 (29 29 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (29 29 (:REWRITE EXPONENTS-ADD))
 (20 16 (:REWRITE DEFAULT-CDR))
 (20 16 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (12 4 (:REWRITE <-+-NEGATIVE-0-1))
 (4 4 (:REWRITE EQUAL-CONSTANT-+))
 )
(BINOMIAL-EXPANSION-PASCAL-TRIANGLE
 (18 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (18 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (18 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (17 11 (:REWRITE DEFAULT-+-2))
 (12 11 (:REWRITE DEFAULT-+-1))
 (8 6 (:REWRITE DEFAULT-<-1))
 (7 6 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SILLY-INEQUALITY)
(CHOOSE-K-K
 (13 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (5 3 (:REWRITE DEFAULT-*-2))
 (5 3 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE DEFAULT-UNARY-/))
 (2 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 1 (:LINEAR FACTORIAL-NON-NEGATIVE))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(EXPT-X-0
 (16 4 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (15 15 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (15 15 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (15 15 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (15 15 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (12 6 (:REWRITE DEFAULT-<-2))
 (8 2 (:LINEAR EXPT->-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(BINOMIAL-EXPANSION-TRIANGLE-X-Y-K-1+K
 (297 105 (:REWRITE DEFAULT-*-2))
 (296 105 (:REWRITE DEFAULT-*-1))
 (102 20 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (69 69 (:REWRITE FOLD-CONSTS-IN-*))
 (64 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (38 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (30 30 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 10 (:REWRITE DEFAULT-UNARY-/))
 (20 14 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (18 6 (:REWRITE SILLY-INEQUALITY))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (12 6 (:LINEAR FACTORIAL-NON-NEGATIVE))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 6 (:REWRITE EXPONENTS-ADD))
 (4 4 (:REWRITE ZIP-OPEN))
 )
(BINOMIAL-EXPANSION-TRIANGLE-X-Y-K-K-LEMMA
 (183 45 (:REWRITE DEFAULT-*-2))
 (51 39 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (39 39 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (39 39 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (39 39 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (36 12 (:REWRITE COMMUTATIVITY-OF-+))
 (29 29 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE DEFAULT-+-1))
 (25 25 (:REWRITE DEFAULT-<-2))
 (25 25 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (20 20 (:REWRITE ZIP-OPEN))
 (12 12 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (3 3 (:REWRITE FOLD-CONSTS-IN-*))
 (2 2 (:REWRITE EXPONENTS-ADD))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(BINOMIAL-EXPANSION-PASCAL-TRIANGLE-CORRECT
 (826 826 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (826 826 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (826 826 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (631 88 (:REWRITE DEFAULT-*-2))
 (433 138 (:REWRITE DEFAULT-+-2))
 (349 138 (:REWRITE DEFAULT-+-1))
 (224 15 (:LINEAR X*Y>1-POSITIVE))
 (93 62 (:REWRITE DEFAULT-<-2))
 (62 62 (:REWRITE DEFAULT-<-1))
 (31 31 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (31 31 (:REWRITE DEFAULT-UNARY-MINUS))
 (29 29 (:REWRITE FOLD-CONSTS-IN-*))
 (22 22 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 17 (:REWRITE DEFAULT-CDR))
 (21 17 (:REWRITE DEFAULT-CAR))
 (16 8 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (8 4 (:LINEAR EXPT->-1))
 (5 5 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE EXPONENTS-ADD))
 )
(BINOMIAL-EXPANSION-ZERO
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(PASCAL-TRIANGLE-BINOMIAL
 (2716 983 (:REWRITE DEFAULT-+-2))
 (2694 2694 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (2694 2694 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (2694 2694 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (2626 326 (:REWRITE DEFAULT-*-2))
 (1701 983 (:REWRITE DEFAULT-+-1))
 (1281 326 (:REWRITE DEFAULT-*-1))
 (304 14 (:LINEAR X*Y>1-POSITIVE))
 (260 204 (:REWRITE DEFAULT-<-2))
 (204 204 (:REWRITE DEFAULT-<-1))
 (182 182 (:REWRITE DEFAULT-UNARY-MINUS))
 (130 130 (:REWRITE FOLD-CONSTS-IN-*))
 (51 51 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (49 40 (:REWRITE DEFAULT-CDR))
 (49 40 (:REWRITE DEFAULT-CAR))
 (48 12 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (46 45 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (34 34 (:REWRITE EQUAL-CONSTANT-+))
 (24 6 (:LINEAR EXPT->-1))
 (2 2 (:REWRITE MINUS-CANCELLATION-ON-RIGHT))
 )
(CHOOSE-0-N
 (13 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (4 2 (:REWRITE DEFAULT-*-2))
 (3 2 (:REWRITE DEFAULT-*-1))
 (3 1 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 1 (:LINEAR FACTORIAL-NON-NEGATIVE))
 )
(BINOMIAL-THEOREM-INDUCTION-LEMMA
 (237 1 (:DEFINITION BINOMIAL-EXPANSION-PASCAL-TRIANGLE))
 (211 36 (:REWRITE DEFAULT-*-2))
 (161 5 (:DEFINITION CHOOSE))
 (93 1 (:DEFINITION BINOMIAL-EXPANSION-TRIANGLE))
 (83 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (81 50 (:REWRITE DEFAULT-+-1))
 (77 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (76 76 (:TYPE-PRESCRIPTION FACTORIAL-POSITIVE-INTEGER))
 (65 50 (:REWRITE DEFAULT-+-2))
 (65 10 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (53 53 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 36 (:REWRITE DEFAULT-*-1))
 (33 2 (:REWRITE COMMUTATIVITY-OF-*))
 (24 8 (:REWRITE RIGHT-UNICITY-OF-1-FOR-EXPT))
 (20 12 (:REWRITE BINOMIAL-EXPANSION-ZERO))
 (15 5 (:REWRITE DEFAULT-UNARY-/))
 (14 14 (:REWRITE FOLD-CONSTS-IN-*))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (10 5 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 5 (:LINEAR FACTORIAL-NON-NEGATIVE))
 (8 8 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (8 8 (:REWRITE EXPONENTS-ADD))
 (6 5 (:REWRITE DEFAULT-CDR))
 (6 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE FACTORIAL-N/N-1))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 )
(N-EXPT
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(DISTRIBUTIVITY-2
 (11 8 (:REWRITE DEFAULT-*-2))
 (11 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (4 3 (:REWRITE DEFAULT-+-2))
 (4 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(BINOMIAL-THEOREM-FAKE
 (97 62 (:REWRITE DEFAULT-+-2))
 (88 62 (:REWRITE DEFAULT-+-1))
 (54 6 (:DEFINITION SUMLIST))
 (52 26 (:REWRITE DEFAULT-*-2))
 (52 26 (:REWRITE DEFAULT-*-1))
 (50 50 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (27 27 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (27 9 (:REWRITE FOLD-CONSTS-IN-+))
 (27 9 (:REWRITE <-0-+-NEGATIVE-1))
 (26 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (16 4 (:LINEAR X*Y>1-POSITIVE))
 (12 12 (:TYPE-PRESCRIPTION BINOMIAL-EXPANSION))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(N-EXPT-EXPT
 (158 158 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (48 48 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (36 8 (:REWRITE DEFAULT-*-2))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (14 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 )
(BINOMIAL-THEOREM
 (80 2 (:DEFINITION BINOMIAL-EXPANSION))
 (21 21 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (21 21 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (21 21 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (20 4 (:DEFINITION N-EXPT))
 (18 2 (:DEFINITION SUMLIST))
 (12 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-+-1))
 (12 6 (:REWRITE DEFAULT-*-2))
 (12 4 (:REWRITE UNICITY-OF-1))
 (10 10 (:TYPE-PRESCRIPTION N-EXPT))
 (10 6 (:DEFINITION FIX))
 (10 2 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 6 (:REWRITE DEFAULT-*-1))
 (8 4 (:REWRITE BINOMIAL-EXPANSION-ZERO))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE CHOOSE-0-N))
 (4 4 (:TYPE-PRESCRIPTION BINOMIAL-EXPANSION))
 (4 2 (:REWRITE UNICITY-OF-0))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(BINOMIAL-SUM-COMMUTES
 (160 4 (:DEFINITION BINOMIAL-EXPANSION))
 (40 8 (:DEFINITION N-EXPT))
 (36 4 (:DEFINITION SUMLIST))
 (26 19 (:REWRITE DEFAULT-+-2))
 (26 19 (:REWRITE DEFAULT-+-1))
 (24 12 (:REWRITE DEFAULT-*-2))
 (24 8 (:REWRITE UNICITY-OF-1))
 (20 20 (:TYPE-PRESCRIPTION N-EXPT))
 (20 12 (:DEFINITION FIX))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (16 12 (:REWRITE DEFAULT-*-1))
 (16 8 (:REWRITE BINOMIAL-EXPANSION-ZERO))
 (14 14 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 13 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (13 13 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (13 13 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (12 4 (:REWRITE CHOOSE-0-N))
 (8 8 (:TYPE-PRESCRIPTION BINOMIAL-EXPANSION))
 (8 4 (:REWRITE UNICITY-OF-0))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
