(ROUND-AS-FLOOR-&-CEILING
 (1384 126 (:REWRITE NIQ-TYPE . 3))
 (830 724 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (828 688 (:REWRITE DEFAULT-*-2))
 (702 688 (:REWRITE DEFAULT-*-1))
 (378 256 (:REWRITE DEFAULT-UNARY-MINUS))
 (362 362 (:REWRITE DEFAULT-UNARY-/))
 (342 126 (:REWRITE NIQ-TYPE . 2))
 (318 172 (:REWRITE DEFAULT-+-2))
 (308 260 (:REWRITE DEFAULT-<-1))
 (291 260 (:REWRITE DEFAULT-<-2))
 (200 172 (:REWRITE DEFAULT-+-1))
 (198 198 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (92 92 (:REWRITE DEFAULT-NUMERATOR))
 (76 76 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (76 76 (:REWRITE DEFAULT-DENOMINATOR))
 (54 54 (:REWRITE FOLD-CONSTS-IN-*))
 (48 16 (:LINEAR NIQ-TYPE))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (32 16 (:LINEAR X*Y>1-POSITIVE))
 (6 2 (:REWRITE <-*-/-LEFT))
 )
(CEILING-AS-FLOOR
 (68 6 (:REWRITE NIQ-TYPE . 3))
 (54 38 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (32 4 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (28 28 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (25 25 (:REWRITE DEFAULT-*-2))
 (25 25 (:REWRITE DEFAULT-*-1))
 (24 6 (:REWRITE COMMUTATIVITY-OF-*))
 (19 19 (:REWRITE DEFAULT-UNARY-/))
 (16 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 6 (:REWRITE NIQ-TYPE . 2))
 (11 5 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (7 5 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (6 6 (:REWRITE RATIONAL-IMPLIES2))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 )
(CLOSURE-LAWS)
(EQUIVALENCE-LAW)
(CONGRUENCE-LAWS)
(CLOSURE-OF-IDENTITY)
(EQUIVALENCE-CLASS-LAWS)
(COMMUTATIVITY-LAWS
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
(ASSOCIATIVITY-LAWS)
(LEFT-DISTRIBUTIVITY-LAW
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(LEFT-UNICITY-LAWS)
(RIGHT-INVERSE-LAW
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(ZERO-DIVISOR-LAW
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(ABS-3)
(RND-REM)
(NATP-ABS-3
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:TYPE-PRESCRIPTION NATP-ABS-3))
 )
(CONGRUENCE-FOR-ABS-3)
(CLOSURE-OF-ROUND-&-RND-REM
 (371 61 (:REWRITE DEFAULT-+-2))
 (327 83 (:REWRITE DEFAULT-*-2))
 (238 238 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (238 238 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (238 238 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (238 238 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (199 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (196 28 (:REWRITE FLOOR-=-X/Y . 2))
 (161 61 (:REWRITE DEFAULT-+-1))
 (156 132 (:REWRITE DEFAULT-<-1))
 (146 88 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (144 132 (:REWRITE DEFAULT-<-2))
 (103 83 (:REWRITE DEFAULT-*-1))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 2))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 2))
 (58 58 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (44 44 (:REWRITE DEFAULT-UNARY-/))
 (28 28 (:REWRITE FLOOR-=-X/Y . 3))
 (16 16 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE FOLD-CONSTS-IN-*))
 (6 2 (:REWRITE <-*-/-LEFT))
 )
(CONGRUENCE-FOR-ROUND-&-RND-REM)
(DIVISION-PROPERTY
 (11081 7487 (:REWRITE DEFAULT-*-2))
 (7575 7487 (:REWRITE DEFAULT-*-1))
 (7127 3225 (:REWRITE DEFAULT-+-2))
 (7008 1060 (:REWRITE FLOOR-=-X/Y . 2))
 (5958 4245 (:REWRITE DEFAULT-<-1))
 (5081 4245 (:REWRITE DEFAULT-<-2))
 (4896 3524 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (4141 3225 (:REWRITE DEFAULT-+-1))
 (3066 1474 (:REWRITE DEFAULT-UNARY-MINUS))
 (2120 1060 (:REWRITE FLOOR-TYPE-4 . 2))
 (2094 1060 (:REWRITE FLOOR-TYPE-3 . 3))
 (2033 1060 (:REWRITE FLOOR-TYPE-4 . 3))
 (1762 1762 (:REWRITE DEFAULT-UNARY-/))
 (1666 1060 (:REWRITE FLOOR-TYPE-3 . 2))
 (1372 1372 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1320 1060 (:REWRITE FLOOR-=-X/Y . 3))
 (811 359 (:LINEAR X*Y>1-POSITIVE))
 (70 14 (:REWRITE X*Y>1-POSITIVE))
 (30 6 (:REWRITE <-*-/-RIGHT))
 )
(COUNTER-EXAMPLE)
