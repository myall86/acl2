(MOVE-NEGATIVE-ADDEND-1
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (2 2 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (1 1 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(PLUS-CANCEL-HACK-LEMMA
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE +-COMBINE-CONSTANTS))
 )
(HALF-HACK
 (3 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EQUAL-/-BETTER))
 (2 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:TYPE-PRESCRIPTION BOOLEANP))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(EXPT-HACK
 (190 6 (:DEFINITION EXPT))
 (78 12 (:REWRITE DEFAULT-*-2))
 (61 61 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (61 61 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (40 12 (:REWRITE COMMUTATIVITY-OF-+))
 (38 26 (:REWRITE DEFAULT-+-2))
 (38 26 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE <-0-+-NEGATIVE-1))
 (14 6 (:REWRITE ZIP-OPEN))
 (12 12 (:REWRITE DEFAULT-*-1))
 (12 4 (:REWRITE +-COMBINE-CONSTANTS))
 (11 3 (:LINEAR EXPT->-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE MINUS-CANCELLATION-ON-LEFT))
 (8 4 (:REWRITE EQUAL-CONSTANT-+))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (4 4 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (4 4 (:REWRITE EXPONENTS-ADD))
 (4 4 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (4 4 (:DEFINITION FIX))
 )
(EQUAL-OF-PLUS-MINUS-MOVE
 (5 5 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INVERSE-OF-+-2)
(COLLECT-CONSTANTS-OVER-<)
(COLLECT-CONSTANTS-OVER-<-2
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (2 2 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (1 1 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(DROP-<-HYPS)
(DROP->-HYPS)
(DROP-<=-HYPS)
(INTEGERP-SQUEEZE)
(INTEGERP-SQUEEZE-NEG)
(INTEGERP-OF-/
 (24 5 (:REWRITE INTEGERP-SQUEEZE))
 (14 6 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (12 12 (:REWRITE DROP->-HYPS))
 (12 12 (:REWRITE DROP-<-HYPS))
 (12 1 (:REWRITE <-UNARY-/-POSITIVE-LEFT-BETTER))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 2 (:REWRITE <-OF-CONSTANT-AND-MINUS))
 (4 4 (:REWRITE MOVE-MINUS-TO-CONSTANT))
 (4 4 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
 (4 4 (:REWRITE EQUAL-OF---AND-CONSTANT))
 (3 3 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE <-UNARY-/-NEGATIVE-LEFT-BETTER))
 )
(EXPT-2-POSITIVE
 (3 3 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (3 3 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (3 3 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 )
(EXPT-GATHER-TIMES
 (578 4 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (165 165 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (165 165 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (146 2 (:REWRITE <-UNARY-/-POSITIVE-RIGHT-BETTER))
 (146 2 (:REWRITE <-*-/-RIGHT))
 (91 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (78 4 (:LINEAR X*Y>1-POSITIVE))
 (70 10 (:REWRITE DEFAULT-*-2))
 (66 2 (:REWRITE X*Y>1-POSITIVE))
 (40 8 (:LINEAR EXPT->-1))
 (35 10 (:REWRITE DEFAULT-*-1))
 (34 22 (:REWRITE DEFAULT-<-1))
 (34 2 (:REWRITE COMMUTATIVITY-OF-*))
 (32 32 (:REWRITE DROP->-HYPS))
 (32 32 (:REWRITE DROP-<-HYPS))
 (32 4 (:REWRITE UNICITY-OF-1))
 (28 4 (:DEFINITION FIX))
 (26 2 (:REWRITE DEFAULT-UNARY-/))
 (25 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (24 22 (:REWRITE DEFAULT-<-2))
 (20 4 (:REWRITE <-OF-1-AND-EXPT-GEN))
 (16 16 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (14 2 (:REWRITE <-UNARY-/-NEGATIVE-RIGHT-BETTER))
 (12 1 (:REWRITE INTEGERP-OF-EXPT-WHEN-NATP))
 (10 2 (:REWRITE EXPT-IS-INCREASING-FOR-BASE>1))
 (10 2 (:REWRITE <-OF-EXPT-AND-EXPT))
 (8 8 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (8 8 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (8 8 (:LINEAR <-OF-*-AND-*))
 (7 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (7 1 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 (2 2 (:REWRITE EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (2 2 (:REWRITE DROP-<=-HYPS))
 (2 2 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(INTEGERP-TIMES-EXPTS
 (40 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (11 2 (:REWRITE DEFAULT-*-2))
 (9 9 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (9 9 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (7 1 (:REWRITE DEFAULT-UNARY-/))
 (5 2 (:REWRITE DEFAULT-*-1))
 (5 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (4 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (4 1 (:LINEAR EXPT->-1))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(EXPT-COLLECT-HACK
 (61 61 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (61 61 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (29 4 (:LINEAR EXPT->-1))
 (15 3 (:REWRITE DEFAULT-*-2))
 (15 3 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (11 5 (:REWRITE DEFAULT-+-2))
 (11 5 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DROP->-HYPS))
 (8 8 (:REWRITE DROP-<-HYPS))
 (8 8 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (3 3 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE DROP-<=-HYPS))
 )
(INTEGERP-OF-POW2-LEMMA-ANOTHER
 (97 97 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (97 97 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (83 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (62 2 (:REWRITE INTEGERP-OF-*))
 (25 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (20 2 (:REWRITE DEFAULT-*-2))
 (18 1 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (13 1 (:REWRITE DEFAULT-UNARY-/))
 (12 2 (:REWRITE INTEGERP-OF-EXPT))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DROP->-HYPS))
 (10 10 (:REWRITE DROP-<=-HYPS))
 (10 10 (:REWRITE DROP-<-HYPS))
 (8 2 (:REWRITE DEFAULT-*-1))
 (8 1 (:REWRITE INTEGERP-TIMES-EXPTS))
 (7 1 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION NATP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE +-COMBINE-CONSTANTS))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE FOLD-CONSTS-IN-*))
 (1 1 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (1 1 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (1 1 (:DEFINITION FIX))
 )
(INVERSE-OF-*-BETTER
 (64 4 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (22 4 (:REWRITE <-UNARY-/-POSITIVE-RIGHT-BETTER))
 (22 4 (:REWRITE <-UNARY-/-NEGATIVE-RIGHT-BETTER))
 (22 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (22 4 (:LINEAR X*Y>1-POSITIVE))
 (20 16 (:REWRITE DEFAULT-<-2))
 (18 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DROP->-HYPS))
 (16 16 (:REWRITE DROP-<-HYPS))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (8 8 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (8 8 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (8 8 (:LINEAR <-OF-*-AND-*))
 (6 2 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (3 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE MOVE-MINUS-TO-CONSTANT))
 (2 2 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
 (2 2 (:REWRITE EQUAL-OF---AND-CONSTANT))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 1 (:REWRITE EQUAL-*-/-2))
 (1 1 (:REWRITE EQUAL-OF-*-AND-CONSTANT))
 )
(PLUS-OF-MINUS-AND-TIMES-TWO)
(PLUS-OF-EXPT-AND-MINUS-OF-EXPT-ONE-LESS
 (76 2 (:LINEAR EXPT-HALF-LINEAR))
 (50 50 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (50 50 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (39 9 (:REWRITE DEFAULT-*-2))
 (26 11 (:REWRITE DEFAULT-+-2))
 (26 11 (:REWRITE DEFAULT-+-1))
 (21 3 (:LINEAR EXPT->-1))
 (10 2 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (9 9 (:REWRITE DEFAULT-*-1))
 (8 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (6 6 (:REWRITE EXPONENTS-ADD))
 (6 6 (:REWRITE DROP->-HYPS))
 (6 6 (:REWRITE DROP-<-HYPS))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 (1 1 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (1 1 (:REWRITE DROP-<=-HYPS))
 )
(PLUS-OF-EXPT-AND-MINUS-OF-EXPT-ONE-LESS-EXTRA
 (76 2 (:LINEAR EXPT-HALF-LINEAR))
 (50 50 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (50 50 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (48 17 (:REWRITE DEFAULT-+-2))
 (42 17 (:REWRITE DEFAULT-+-1))
 (39 9 (:REWRITE DEFAULT-*-2))
 (21 3 (:LINEAR EXPT->-1))
 (10 2 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (9 9 (:REWRITE DEFAULT-*-1))
 (8 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (6 6 (:REWRITE EXPONENTS-ADD))
 (6 6 (:REWRITE DROP->-HYPS))
 (6 6 (:REWRITE DROP-<-HYPS))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE +-COMBINE-CONSTANTS))
 (1 1 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (1 1 (:REWRITE DROP-<=-HYPS))
 )
(/-EQUAL-0
 (11 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (5 5 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (5 1 (:REWRITE DEFAULT-UNARY-/))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 1 (:REWRITE EQUAL-/-BETTER))
 (1 1 (:REWRITE MOVE-MINUS-TO-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
 (1 1 (:REWRITE EQUAL-OF---AND-CONSTANT))
 )
(PLUS-OF-EXPT-AND-EXPT-ONE-LESS
 (128 128 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (128 128 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (118 2 (:LINEAR EXPT-HALF-LINEAR))
 (78 17 (:REWRITE DEFAULT-+-2))
 (69 9 (:REWRITE DEFAULT-*-2))
 (66 17 (:REWRITE DEFAULT-+-1))
 (21 3 (:LINEAR EXPT->-1))
 (14 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 2 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (9 9 (:REWRITE DEFAULT-*-1))
 (7 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (6 6 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (6 6 (:REWRITE EXPONENTS-ADD))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (5 5 (:REWRITE DROP->-HYPS))
 (5 5 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE +-COMBINE-CONSTANTS))
 (1 1 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 )
(<-OF-EXPT-AND-PLUS-OF-EXPT-ONE-LESS
 (44 44 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (44 44 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (13 4 (:REWRITE DEFAULT-<-1))
 (9 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE DEFAULT-*-2))
 (8 2 (:REWRITE <-*-/-LEFT-COMMUTED))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DROP->-HYPS))
 (4 4 (:REWRITE DROP-<=-HYPS))
 (4 4 (:REWRITE DROP-<-HYPS))
 (2 2 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (2 2 (:REWRITE EXPONENTS-ADD))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(MOVE-NEGATIVE-ADDEND-2
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE DEFAULT-<-2))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE COLLECT-CONSTANTS-OVER-<-2))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (1 1 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(EQUAL-OF-SUM-CANCEL-3
 (8 6 (:REWRITE DEFAULT-+-1))
 (7 6 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (4 4 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (4 4 (:REWRITE EQUAL-CONSTANT-+))
 (3 3 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE +-COMBINE-CONSTANTS))
 )
(EQUAL-WHEN-<-OF-+)
(EQUAL-WHEN-<-OF-+-ALT)
(HACK1)
(EQUAL-OF-SAME-CANCEL-1
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (4 4 (:REWRITE EQUAL-WHEN-<-OF-+))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(EQUAL-OF-SAME-CANCEL-2
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+))
 (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:REWRITE DEFAULT-+-1))
 )
(EQUAL-OF-SAME-CANCEL-3
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+))
 (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 )
(EQUAL-OF-SAME-CANCEL-4
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+))
 (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 )
(COLLECT-CONSTANTS-TIMES-EQUAL
 (11 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (6 6 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+))
 (5 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE EQUAL-OF-*-AND-CONSTANT))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE MOVE-MINUS-TO-CONSTANT))
 (1 1 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
 (1 1 (:REWRITE EQUAL-OF---AND-CONSTANT))
 (1 1 (:REWRITE DEFAULT-UNARY-/))
 )
(<-OF-+-CANCEL-SECOND-OF-MORE-AND-ONLY
 (7 5 (:REWRITE DEFAULT-+-1))
 (6 5 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE COLLECT-CONSTANTS-OVER-<-2))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (3 3 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE +-COMBINE-CONSTANTS))
 )
(<-OF-+-CANCEL-ONLY-AND-THIRD-OF-MORE
 (20 16 (:REWRITE DEFAULT-+-1))
 (19 16 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE +-COMBINE-CONSTANTS))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (3 3 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+))
 )
(<-OF-+-CANCEL-THIRD-OF-MORE-AND-ONLY
 (21 17 (:REWRITE DEFAULT-+-1))
 (20 17 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE +-COMBINE-CONSTANTS))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DROP->-HYPS))
 (2 2 (:REWRITE DROP-<=-HYPS))
 (2 2 (:REWRITE DROP-<-HYPS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE COLLECT-CONSTANTS-OVER-<-2))
 (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 )
(COMMUTATIVITY-2-OF-+-WHEN-CONSTANT)
(RATIONALP-OF-+)
(COMMUTATIVITY-OF-*-WHEN-CONSTANT
 (12 2 (:LINEAR X*Y>1-POSITIVE))
 (12 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 4 (:REWRITE DEFAULT-<-2))
 (5 3 (:REWRITE DEFAULT-*-2))
 (5 3 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE DROP->-HYPS))
 (4 4 (:REWRITE DROP-<-HYPS))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 )
(CANCEL-1-2
 (42 42 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (12 12 (:REWRITE EQUAL-WHEN-<-OF-+))
 (12 12 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (10 10 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (10 10 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (10 10 (:REWRITE EQUAL-CONSTANT-+))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE +-COMBINE-CONSTANTS))
 (1 1 (:REWRITE COMMUTATIVITY-2-OF-+-WHEN-CONSTANT))
 )
(CANCEL-2-2
 (26 17 (:REWRITE DEFAULT-+-1))
 (25 17 (:REWRITE DEFAULT-+-2))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+))
 (5 5 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (5 5 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (5 5 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (5 5 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE +-COMBINE-CONSTANTS))
 (1 1 (:REWRITE COMMUTATIVITY-2-OF-+-WHEN-CONSTANT))
 )
(RATIONALP-*2)
(EQUAL-OF-0-AND-+-OF-MINUS
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-<-OF-+))
 (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 )
(EQUAL-OF-+-AND-+-CANCEL-CROSS
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (5 5 (:REWRITE EQUAL-WHEN-<-OF-+))
 (5 5 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 2 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 )
(<-OF-CONSTANT-WHEN-<=-OF-FREE)
(<-OF-SUMS-CANCEL)
(NO-ROOM-BETWEEN-INTS-LEMMA)
(<-OF-EXPT-CANCEL-LEMMA
 (115 115 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (115 115 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (44 1 (:REWRITE <-*-/-RIGHT-COMMUTED))
 (30 6 (:REWRITE DEFAULT-+-2))
 (23 2 (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG2))
 (21 3 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE NO-ROOM-BETWEEN-INTS-LEMMA))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE COLLECT-CONSTANTS-OVER-<-2))
 (3 3 (:REWRITE <-OF-CONSTANT-WHEN-<=-OF-FREE))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (3 3 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE RATIONALP-OF-+))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (2 2 (:REWRITE EXPONENTS-ADD))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE +-COMBINE-CONSTANTS))
 (2 1 (:DEFINITION FIX))
 (1 1 (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG1))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+))
 (1 1 (:REWRITE <-OF-CONSTANT-AND-*-OF-CONSTANT))
 )
(<-OF-EXPT-CANCEL-LEMMA-2
 (110 110 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (110 110 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (23 1 (:REWRITE <-*-/-RIGHT-COMMUTED))
 (21 3 (:REWRITE DEFAULT-<-1))
 (16 4 (:REWRITE DEFAULT-+-2))
 (14 2 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE DEFAULT-<-2))
 (9 1 (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG2))
 (5 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE NO-ROOM-BETWEEN-INTS-LEMMA))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE COLLECT-CONSTANTS-OVER-<-2))
 (3 3 (:REWRITE <-OF-CONSTANT-WHEN-<=-OF-FREE))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (3 3 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (2 2 (:REWRITE EXPONENTS-ADD))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 1 (:DEFINITION FIX))
 (1 1 (:REWRITE RATIONALP-OF-+))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+))
 (1 1 (:REWRITE <-OF-CONSTANT-AND-*-OF-CONSTANT))
 )
(<-OF-EXPT-CANCEL-LEMMA-3
 (113 113 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (113 113 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (29 1 (:REWRITE <-*-/-LEFT-COMMUTED))
 (21 3 (:REWRITE DEFAULT-<-2))
 (19 6 (:REWRITE DEFAULT-+-2))
 (19 6 (:REWRITE DEFAULT-+-1))
 (14 2 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE DEFAULT-<-1))
 (9 1 (:REWRITE RATIONALP-OF-+-WHEN-RATIONALP-ARG2))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<=-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE COLLECT-CONSTANTS-OVER-<))
 (3 3 (:REWRITE <-OF-CONSTANT-WHEN-<=-OF-FREE))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (3 3 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (2 2 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (2 2 (:REWRITE EXPONENTS-ADD))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 1 (:DEFINITION FIX))
 (1 1 (:REWRITE RATIONALP-OF-+))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+))
 )
(<-OF-ONE-MORE)
(<-OF-/-AND-1
 (16 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (9 9 (:REWRITE DROP->-HYPS))
 (7 7 (:REWRITE DROP-<=-HYPS))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE <-UNARY-/-NEGATIVE-LEFT-BETTER))
 (3 3 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 2 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:REWRITE MOVE-MINUS-TO-CONSTANT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-<-OF-+))
 (1 1 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
 (1 1 (:REWRITE EQUAL-OF---AND-CONSTANT))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
