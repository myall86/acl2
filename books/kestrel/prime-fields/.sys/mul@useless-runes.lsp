(PFIELD::MUL
 (289 12 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (281 12 (:REWRITE MOD-WHEN-<))
 (248 12 (:REWRITE MOD-WHEN-<-OF-0))
 (241 12 (:REWRITE MOD-WHEN-MULTIPLE))
 (210 6 (:REWRITE <-OF-*-AND-0))
 (200 30 (:REWRITE COMMUTATIVITY-OF-*))
 (128 8 (:REWRITE COMMUTATIVITY-2-OF-*))
 (107 19 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (102 62 (:REWRITE DEFAULT-*-2))
 (102 62 (:REWRITE DEFAULT-*-1))
 (98 72 (:REWRITE DEFAULT-<-2))
 (92 72 (:REWRITE DEFAULT-<-1))
 (70 26 (:REWRITE INTEGERP-OF-*))
 (58 14 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (38 38 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (38 38 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (38 38 (:LINEAR <-OF-*-AND-*))
 (38 22 (:REWRITE DEFAULT-UNARY-/))
 (37 19 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (37 19 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (35 35 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (30 30 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (24 12 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (20 12 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (20 12 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (19 19 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (19 19 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (16 12 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (12 12 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (12 12 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (12 12 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 )
(PFIELD::NATP-OF-MUL)
(PFIELD::FEP-OF-MUL
 (23 1 (:REWRITE MOD-WHEN-<-OF-0))
 (16 1 (:REWRITE MOD-WHEN-<))
 (13 1 (:REWRITE MOD-WHEN-MULTIPLE))
 (13 1 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (9 1 (:REWRITE <-OF-*-AND-0))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (8 2 (:REWRITE COMMUTATIVITY-OF-*))
 (6 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (4 4 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (4 4 (:LINEAR <-OF-*-AND-*))
 (2 2 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (2 2 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 (2 2 (:REWRITE INTEGERP-OF-*))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (1 1 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (1 1 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (1 1 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (1 1 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 )
(PFIELD::MUL-OF-1-ARG1
 (28 24 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (28 24 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 (24 24 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (13 1 (:REWRITE MOD-WHEN-MULTIPLE))
 (13 1 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (10 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG2-STRONG))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG2))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (6 2 (:REWRITE COMMUTATIVITY-OF-*))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE INTEGERP-OF-*))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (1 1 (:REWRITE MOD-WHEN-<-OF-0))
 (1 1 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 )
(PFIELD::MUL-OF-1-ARG1-GEN
 (20 20 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG2-STRONG))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG2))
 (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (6 2 (:REWRITE MOD-WHEN-MULTIPLE))
 (6 2 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE MOD-WHEN-<-OF-0))
 (4 2 (:REWRITE MOD-WHEN-<))
 (2 2 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (2 2 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (2 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (2 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (2 2 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (2 2 (:REWRITE INTEGERP-OF-*))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-OF-1-ARG2
 (165 5 (:REWRITE MOD-WHEN-<-OF-0))
 (157 5 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (156 6 (:REWRITE <-OF-*-AND-0))
 (141 5 (:REWRITE MOD-WHEN-MULTIPLE))
 (120 8 (:REWRITE COMMUTATIVITY-2-OF-*))
 (84 2 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (62 38 (:REWRITE DEFAULT-*-2))
 (62 38 (:REWRITE DEFAULT-*-1))
 (44 22 (:REWRITE DEFAULT-<-1))
 (26 22 (:REWRITE DEFAULT-<-2))
 (26 10 (:REWRITE INTEGERP-OF-*))
 (26 10 (:REWRITE DEFAULT-UNARY-/))
 (20 20 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (20 20 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (20 20 (:LINEAR <-OF-*-AND-*))
 (12 4 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (10 10 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (10 10 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (10 10 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (10 10 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (10 10 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (10 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (8 8 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (8 4 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (8 4 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (8 4 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (5 5 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (4 4 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (4 4 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 )
(PFIELD::MUL-OF-0-ARG1)
(PFIELD::MUL-OF-0-ARG2)
(PFIELD::MUL-OF-0-ARG3)
(PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP
 (121 3 (:REWRITE MOD-WHEN-<-OF-0))
 (105 3 (:REWRITE <-OF-*-AND-0))
 (74 2 (:REWRITE MOD-WHEN-MULTIPLE))
 (72 8 (:REWRITE COMMUTATIVITY-OF-*))
 (70 2 (:REWRITE MOD-WHEN-<))
 (64 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (62 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (40 5 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (36 16 (:REWRITE DEFAULT-*-2))
 (36 16 (:REWRITE DEFAULT-*-1))
 (34 21 (:REWRITE DEFAULT-<-2))
 (31 21 (:REWRITE DEFAULT-<-1))
 (28 6 (:REWRITE INTEGERP-OF-*))
 (12 4 (:REWRITE DEFAULT-UNARY-/))
 (10 10 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (10 10 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (10 10 (:LINEAR <-OF-*-AND-*))
 (8 8 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (8 2 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (6 2 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (6 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (5 1 (:REWRITE POS-FIX-WHEN-POSP))
 (4 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (2 2 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (2 2 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP
 (121 3 (:REWRITE MOD-WHEN-<-OF-0))
 (105 3 (:REWRITE <-OF-*-AND-0))
 (74 2 (:REWRITE MOD-WHEN-MULTIPLE))
 (70 2 (:REWRITE MOD-WHEN-<))
 (64 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (62 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (40 5 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (37 17 (:REWRITE DEFAULT-*-2))
 (37 17 (:REWRITE DEFAULT-*-1))
 (34 21 (:REWRITE DEFAULT-<-2))
 (31 21 (:REWRITE DEFAULT-<-1))
 (28 6 (:REWRITE INTEGERP-OF-*))
 (12 4 (:REWRITE DEFAULT-UNARY-/))
 (10 10 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (10 10 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (10 10 (:LINEAR <-OF-*-AND-*))
 (8 8 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (8 2 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (6 2 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (6 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (5 5 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (5 1 (:REWRITE POS-FIX-WHEN-POSP))
 (4 2 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (2 2 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (2 2 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(PFIELD::STRIP-INV
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(PFIELD::SMALLER-MUL-TERMP
 (200 24 (:DEFINITION LENGTH))
 (160 32 (:DEFINITION LEN))
 (146 146 (:REWRITE DEFAULT-CDR))
 (116 116 (:REWRITE DEFAULT-CAR))
 (72 72 (:TYPE-PRESCRIPTION LEN))
 (64 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (14 14 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(PFIELD::MUL-COMMUTATIVE
 (504 10 (:REWRITE MOD-WHEN-<-OF-0))
 (434 10 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (429 13 (:REWRITE <-OF-*-AND-0))
 (337 10 (:REWRITE MOD-WHEN-MULTIPLE))
 (322 26 (:REWRITE COMMUTATIVITY-2-OF-*))
 (297 10 (:REWRITE MOD-WHEN-<))
 (248 4 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (171 83 (:REWRITE DEFAULT-*-2))
 (171 83 (:REWRITE DEFAULT-*-1))
 (166 22 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (138 86 (:REWRITE DEFAULT-<-2))
 (126 86 (:REWRITE DEFAULT-<-1))
 (115 27 (:REWRITE INTEGERP-OF-*))
 (50 18 (:REWRITE DEFAULT-UNARY-/))
 (44 44 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (44 44 (:LINEAR <-OF-*-AND-*))
 (34 10 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (26 10 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (26 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (18 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (10 10 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-COMMUTATIVE-2
 (2110 36 (:REWRITE MOD-WHEN-<-OF-0))
 (1594 36 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (1505 48 (:REWRITE <-OF-*-AND-0))
 (1080 98 (:REWRITE INTEGERP-OF-*))
 (866 2 (:REWRITE INTEGERP-OF-*-OF-/-AND-MOD-SAME))
 (780 112 (:REWRITE COMMUTATIVITY-OF-*))
 (756 82 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (694 36 (:REWRITE MOD-WHEN-MULTIPLE))
 (665 34 (:REWRITE MOD-WHEN-<))
 (478 14 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (371 307 (:REWRITE DEFAULT-<-2))
 (353 307 (:REWRITE DEFAULT-<-1))
 (347 253 (:REWRITE DEFAULT-*-2))
 (329 253 (:REWRITE DEFAULT-*-1))
 (164 164 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (164 164 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (164 164 (:LINEAR <-OF-*-AND-*))
 (139 139 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (98 66 (:REWRITE DEFAULT-UNARY-/))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (58 34 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (50 34 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (50 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (48 8 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (42 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (36 36 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (36 36 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (36 36 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE POS-FIX-WHEN-POSP))
 (3 3 (:REWRITE <-OF-CONSTANT-AND-*-OF-CONSTANT))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-ASSOCIATIVE
 (2110 36 (:REWRITE MOD-WHEN-<-OF-0))
 (1543 36 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (1505 48 (:REWRITE <-OF-*-AND-0))
 (1025 95 (:REWRITE INTEGERP-OF-*))
 (866 2 (:REWRITE INTEGERP-OF-*-OF-/-AND-MOD-SAME))
 (756 82 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (698 36 (:REWRITE MOD-WHEN-MULTIPLE))
 (665 34 (:REWRITE MOD-WHEN-<))
 (478 14 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (371 307 (:REWRITE DEFAULT-<-2))
 (353 307 (:REWRITE DEFAULT-<-1))
 (333 247 (:REWRITE DEFAULT-*-2))
 (318 247 (:REWRITE DEFAULT-*-1))
 (164 164 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (164 164 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (164 164 (:LINEAR <-OF-*-AND-*))
 (131 131 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (98 66 (:REWRITE DEFAULT-UNARY-/))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (82 82 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (80 12 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (58 34 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (50 34 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (50 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (42 34 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (36 36 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (36 36 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (36 36 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE POS-FIX-WHEN-POSP))
 (3 3 (:REWRITE <-OF-CONSTANT-AND-*-OF-CONSTANT))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-OF-MOD-ARG1
 (2098 71 (:REWRITE MOD-WHEN-<-OF-0))
 (1538 35 (:REWRITE <-OF-*-AND-0))
 (933 69 (:REWRITE MOD-WHEN-MULTIPLE))
 (834 56 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (704 39 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (692 64 (:REWRITE MOD-WHEN-<))
 (401 310 (:REWRITE DEFAULT-*-2))
 (391 310 (:REWRITE DEFAULT-*-1))
 (384 316 (:REWRITE DEFAULT-<-2))
 (368 316 (:REWRITE DEFAULT-<-1))
 (291 125 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (222 142 (:REWRITE INTEGERP-OF-*))
 (178 12 (:REWRITE COMMUTATIVITY-2-OF-*))
 (171 136 (:REWRITE DEFAULT-UNARY-/))
 (163 163 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (112 112 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (112 112 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (112 112 (:LINEAR <-OF-*-AND-*))
 (93 64 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (87 64 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (85 64 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (73 64 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (71 71 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (64 64 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (32 28 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (27 27 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-OF-MOD-ARG2
 (2199 80 (:REWRITE MOD-WHEN-<-OF-0))
 (1613 38 (:REWRITE <-OF-*-AND-0))
 (961 71 (:REWRITE MOD-WHEN-MULTIPLE))
 (889 61 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (767 53 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (750 66 (:REWRITE MOD-WHEN-<))
 (420 321 (:REWRITE DEFAULT-*-2))
 (405 321 (:REWRITE DEFAULT-*-1))
 (403 335 (:REWRITE DEFAULT-<-2))
 (387 335 (:REWRITE DEFAULT-<-1))
 (287 125 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (282 150 (:REWRITE INTEGERP-OF-*))
 (266 20 (:REWRITE COMMUTATIVITY-2-OF-*))
 (175 140 (:REWRITE DEFAULT-UNARY-/))
 (160 160 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (122 122 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (122 122 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (122 122 (:LINEAR <-OF-*-AND-*))
 (95 66 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (89 66 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (87 66 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (80 80 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (76 76 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (75 66 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (35 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (29 29 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (29 29 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::<-OF-MUL
 (143 3 (:REWRITE MOD-WHEN-<-OF-0))
 (114 4 (:REWRITE <-OF-*-AND-0))
 (111 3 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (87 3 (:REWRITE MOD-WHEN-MULTIPLE))
 (86 3 (:REWRITE MOD-WHEN-<))
 (80 10 (:REWRITE COMMUTATIVITY-OF-*))
 (64 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (62 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (46 7 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (41 28 (:REWRITE DEFAULT-<-2))
 (41 21 (:REWRITE DEFAULT-*-2))
 (41 21 (:REWRITE DEFAULT-*-1))
 (38 28 (:REWRITE DEFAULT-<-1))
 (30 8 (:REWRITE INTEGERP-OF-*))
 (14 14 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (14 14 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (14 14 (:LINEAR <-OF-*-AND-*))
 (14 6 (:REWRITE DEFAULT-UNARY-/))
 (10 10 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (9 3 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (7 7 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (7 7 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (7 7 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (7 7 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (7 3 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (7 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (5 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (3 3 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (3 3 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(PFIELD::MUL-OF-+-SAME-ARG1-ARG1
 (866 24 (:REWRITE MOD-WHEN-<-OF-0))
 (638 32 (:REWRITE <-OF-*-AND-0))
 (549 24 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (501 22 (:REWRITE MOD-WHEN-<))
 (473 24 (:REWRITE MOD-WHEN-MULTIPLE))
 (383 9 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (289 53 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (262 210 (:REWRITE DEFAULT-<-2))
 (250 210 (:REWRITE DEFAULT-<-1))
 (193 129 (:REWRITE DEFAULT-*-2))
 (193 129 (:REWRITE DEFAULT-*-1))
 (182 16 (:REWRITE COMMUTATIVITY-2-OF-*))
 (144 33 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (122 54 (:REWRITE INTEGERP-OF-*))
 (106 106 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (106 106 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (106 106 (:LINEAR <-OF-*-AND-*))
 (78 46 (:REWRITE DEFAULT-UNARY-/))
 (62 62 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (57 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (46 22 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (38 22 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (38 22 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (30 22 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (24 24 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (24 24 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (24 24 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (24 24 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (24 24 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (23 23 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (16 15 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (9 9 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-2))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-1))
 )
(PFIELD::MUL-OF-+-SAME-ARG1-ARG2
 (866 24 (:REWRITE MOD-WHEN-<-OF-0))
 (638 32 (:REWRITE <-OF-*-AND-0))
 (549 24 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (501 22 (:REWRITE MOD-WHEN-<))
 (473 24 (:REWRITE MOD-WHEN-MULTIPLE))
 (383 9 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (289 53 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (262 210 (:REWRITE DEFAULT-<-2))
 (250 210 (:REWRITE DEFAULT-<-1))
 (193 129 (:REWRITE DEFAULT-*-2))
 (193 129 (:REWRITE DEFAULT-*-1))
 (182 16 (:REWRITE COMMUTATIVITY-2-OF-*))
 (144 33 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (122 54 (:REWRITE INTEGERP-OF-*))
 (106 106 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (106 106 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (106 106 (:LINEAR <-OF-*-AND-*))
 (78 46 (:REWRITE DEFAULT-UNARY-/))
 (62 62 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (57 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (53 53 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (46 22 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (38 22 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (38 22 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (30 22 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (24 24 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (24 24 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (24 24 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (24 24 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (24 24 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (23 23 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (18 16 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (9 9 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-2))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-1))
 )
(PFIELD::MUL-OF-+-SAME-ARG2-ARG2
 (935 33 (:REWRITE MOD-WHEN-<-OF-0))
 (683 35 (:REWRITE <-OF-*-AND-0))
 (537 24 (:REWRITE MOD-WHEN-<))
 (501 26 (:REWRITE MOD-WHEN-MULTIPLE))
 (422 12 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (314 58 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (284 232 (:REWRITE DEFAULT-<-2))
 (272 232 (:REWRITE DEFAULT-<-1))
 (270 24 (:REWRITE COMMUTATIVITY-2-OF-*))
 (216 144 (:REWRITE DEFAULT-*-2))
 (216 144 (:REWRITE DEFAULT-*-1))
 (182 62 (:REWRITE INTEGERP-OF-*))
 (140 33 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (116 116 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (116 116 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (116 116 (:LINEAR <-OF-*-AND-*))
 (82 50 (:REWRITE DEFAULT-UNARY-/))
 (74 74 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (62 58 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (58 58 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (58 58 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (58 58 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (48 24 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (40 24 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (40 24 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (33 33 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (32 32 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (32 32 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (32 24 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (27 27 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (26 26 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (26 26 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (21 19 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 (12 12 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-2))
 (1 1 (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-1))
 )
(PFIELD::MUL-OF--1-AND--1
 (84 7 (:REWRITE MOD-WHEN-MULTIPLE))
 (84 7 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (51 7 (:REWRITE MOD-WHEN-<))
 (40 14 (:REWRITE UNICITY-OF-1))
 (38 14 (:REWRITE DEFAULT-UNARY-/))
 (26 14 (:REWRITE DEFAULT-*-2))
 (26 14 (:DEFINITION FIX))
 (14 14 (:REWRITE DEFAULT-*-1))
 (14 8 (:REWRITE DEFAULT-<-2))
 (13 7 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (13 7 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (7 7 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (7 7 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (7 7 (:REWRITE MOD-WHEN-<-OF-0))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(PFIELD::MUL-OF-IFIX-ARG1
 (504 10 (:REWRITE MOD-WHEN-<-OF-0))
 (429 13 (:REWRITE <-OF-*-AND-0))
 (358 10 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (297 10 (:REWRITE MOD-WHEN-MULTIPLE))
 (297 10 (:REWRITE MOD-WHEN-<))
 (248 4 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (222 28 (:REWRITE COMMUTATIVITY-OF-*))
 (166 22 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (146 10 (:REWRITE COMMUTATIVITY-2-OF-*))
 (138 86 (:REWRITE DEFAULT-<-2))
 (126 86 (:REWRITE DEFAULT-<-1))
 (122 58 (:REWRITE DEFAULT-*-2))
 (122 58 (:REWRITE DEFAULT-*-1))
 (79 23 (:REWRITE INTEGERP-OF-*))
 (56 8 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (50 18 (:REWRITE DEFAULT-UNARY-/))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (44 44 (:LINEAR <-OF-*-AND-*))
 (34 10 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (28 28 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (26 10 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (26 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (18 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (10 10 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-OF-IFIX-ARG2
 (504 10 (:REWRITE MOD-WHEN-<-OF-0))
 (429 13 (:REWRITE <-OF-*-AND-0))
 (410 10 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (297 10 (:REWRITE MOD-WHEN-<))
 (293 10 (:REWRITE MOD-WHEN-MULTIPLE))
 (270 28 (:REWRITE COMMUTATIVITY-OF-*))
 (248 4 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (234 18 (:REWRITE COMMUTATIVITY-2-OF-*))
 (166 22 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (138 86 (:REWRITE DEFAULT-<-2))
 (138 66 (:REWRITE DEFAULT-*-2))
 (138 66 (:REWRITE DEFAULT-*-1))
 (135 27 (:REWRITE INTEGERP-OF-*))
 (126 86 (:REWRITE DEFAULT-<-1))
 (50 18 (:REWRITE DEFAULT-UNARY-/))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (44 44 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (44 44 (:LINEAR <-OF-*-AND-*))
 (36 36 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (34 10 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (26 10 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (26 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (24 4 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (22 22 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (18 10 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (10 10 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (10 10 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1
 (2668 71 (:REWRITE MOD-WHEN-<-OF-0))
 (1994 35 (:REWRITE <-OF-*-AND-0))
 (1140 69 (:REWRITE MOD-WHEN-MULTIPLE))
 (1065 56 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (890 39 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (692 64 (:REWRITE MOD-WHEN-<))
 (555 125 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (434 310 (:REWRITE DEFAULT-*-2))
 (426 316 (:REWRITE DEFAULT-<-2))
 (421 310 (:REWRITE DEFAULT-*-1))
 (383 316 (:REWRITE DEFAULT-<-1))
 (222 142 (:REWRITE INTEGERP-OF-*))
 (178 12 (:REWRITE COMMUTATIVITY-2-OF-*))
 (173 173 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (171 136 (:REWRITE DEFAULT-UNARY-/))
 (112 112 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (112 112 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (112 112 (:LINEAR <-OF-*-AND-*))
 (93 64 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (87 64 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (85 64 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (73 64 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (71 71 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (64 64 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (56 56 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (32 28 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (27 27 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2
 (2769 80 (:REWRITE MOD-WHEN-<-OF-0))
 (2069 38 (:REWRITE <-OF-*-AND-0))
 (1168 71 (:REWRITE MOD-WHEN-MULTIPLE))
 (1120 61 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (953 53 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (750 66 (:REWRITE MOD-WHEN-<))
 (551 125 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (453 321 (:REWRITE DEFAULT-*-2))
 (445 335 (:REWRITE DEFAULT-<-2))
 (435 321 (:REWRITE DEFAULT-*-1))
 (402 335 (:REWRITE DEFAULT-<-1))
 (282 150 (:REWRITE INTEGERP-OF-*))
 (266 20 (:REWRITE COMMUTATIVITY-2-OF-*))
 (175 140 (:REWRITE DEFAULT-UNARY-/))
 (172 172 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (122 122 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (122 122 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (122 122 (:LINEAR <-OF-*-AND-*))
 (95 66 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (89 66 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (87 66 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (80 80 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (76 76 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (75 66 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (61 61 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (35 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (29 29 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (29 29 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(PFIELD::MUL-OF-EXPT-SUBST-CONSTANT-ARG2
 (2673 33 (:REWRITE MOD-WHEN-<-OF-0))
 (2377 30 (:REWRITE <-OF-*-AND-0))
 (1696 757 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (1430 14 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (1365 51 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
 (1354 33 (:REWRITE MOD-WHEN-<))
 (1313 33 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (1094 33 (:REWRITE MOD-WHEN-MULTIPLE))
 (829 829 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (829 829 (:TYPE-PRESCRIPTION <-OF-0-AND-EXPT))
 (756 756 (:TYPE-PRESCRIPTION NATP))
 (624 264 (:REWRITE DEFAULT-<-2))
 (504 264 (:REWRITE DEFAULT-<-1))
 (501 161 (:REWRITE DEFAULT-*-2))
 (431 161 (:REWRITE DEFAULT-*-1))
 (381 53 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (294 20 (:REWRITE COMMUTATIVITY-2-OF-*))
 (280 74 (:REWRITE INTEGERP-OF-*))
 (268 22 (:REWRITE <-OF-1-AND-EXPT-GEN))
 (253 17 (:REWRITE <-OF-0-AND-EXPT))
 (219 219 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (154 33 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (146 33 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (146 33 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (102 102 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
 (102 102 (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
 (102 102 (:LINEAR <-OF-*-AND-*))
 (99 64 (:REWRITE DEFAULT-UNARY-/))
 (62 62 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
 (51 51 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
 (51 51 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
 (51 51 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
 (51 51 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
 (42 33 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (35 1 (:REWRITE INTEGERP-OF-EXPT-WHEN-NATP))
 (33 33 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (22 22 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (22 22 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 (17 13 (:REWRITE DEFAULT-+-2))
 (14 1 (:REWRITE INTEGERP-OF-EXPT))
 (13 13 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE <=-OF-0-AND-EXPT))
 (6 2 (:REWRITE POS-FIX-WHEN-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE INTEGERP-OF-MOD))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
