(PADDING::PAD-TO-896-NUMBER-OF-ZEROS
 (5 5 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (5 5 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (5 5 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 )
(PADDING::PAD-TO-896-NUMBER-OF-ZEROS-TYPE)
(PADDING::PAD-TO-896)
(PADDING::PAD-TO-896-CORRECT-1
 (28 1 (:REWRITE REPEAT-WHEN-ZP))
 (24 9 (:REWRITE DEFAULT-+-2))
 (22 1 (:REWRITE ZP-OPEN))
 (11 9 (:REWRITE DEFAULT-+-1))
 (9 4 (:REWRITE DEFAULT-<-2))
 (9 4 (:REWRITE DEFAULT-<-1))
 (6 5 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(PADDING::PAD-TO-896-CORRECT-2
 (28 1 (:REWRITE REPEAT-WHEN-ZP))
 (22 1 (:REWRITE ZP-OPEN))
 (20 10 (:TYPE-PRESCRIPTION PADDING::PAD-TO-896-NUMBER-OF-ZEROS-TYPE))
 (12 12 (:TYPE-PRESCRIPTION LEN))
 (10 2 (:DEFINITION LEN))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 2 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(PADDING::PAD-TO-896-CORRECT-3
 (7914 461 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (6682 349 (:REWRITE MOD-WHEN-MULTIPLE))
 (5552 538 (:REWRITE COMMUTATIVITY-OF-*))
 (3658 1267 (:REWRITE DEFAULT-+-2))
 (3216 1372 (:REWRITE DEFAULT-*-2))
 (2872 242 (:REWRITE MOD-WHEN-<))
 (2760 1372 (:REWRITE DEFAULT-*-1))
 (2550 288 (:REWRITE DISTRIBUTIVITY))
 (1646 1267 (:REWRITE DEFAULT-+-1))
 (1606 312 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (1177 294 (:REWRITE DEFAULT-<-1))
 (835 242 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (835 242 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (835 242 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (461 461 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (362 294 (:REWRITE DEFAULT-<-2))
 (242 242 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (219 169 (:REWRITE MOD-OF-+-SUBST-CONSTANT))
 (208 1 (:REWRITE REPEAT-WHEN-ZP))
 (166 1 (:REWRITE ZP-OPEN))
 (147 123 (:REWRITE DEFAULT-UNARY-MINUS))
 (135 135 (:REWRITE MOD-OF-+-OF---WHEN-EQUAL-OF-MOD-ARG2))
 (89 88 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE MOD-OF-+-OF---WHEN-EQUAL-OF-MOD-ARG1))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(PADDING::PAD-TO-896-CORRECT-4
 (203 1 (:REWRITE REPEAT-WHEN-ZP))
 (193 1 (:REWRITE ZP-OPEN))
 (110 10 (:REWRITE COMMUTATIVITY-OF-*))
 (96 30 (:REWRITE DEFAULT-+-2))
 (90 5 (:REWRITE MOD-WHEN-MULTIPLE))
 (90 5 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (71 1 (:LINEAR MOD-BOUND-LINEAR-ARG2))
 (70 10 (:REWRITE DISTRIBUTIVITY))
 (55 5 (:REWRITE MOD-WHEN-<))
 (50 30 (:REWRITE DEFAULT-*-2))
 (41 30 (:REWRITE DEFAULT-+-1))
 (40 30 (:REWRITE DEFAULT-*-1))
 (40 5 (:REWRITE MOD-WHEN-<-OF-0))
 (30 15 (:REWRITE DEFAULT-<-1))
 (29 15 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (10 5 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (10 5 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (9 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (5 5 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (5 5 (:REWRITE MOD-OF-+-SUBST-CONSTANT))
 (5 5 (:REWRITE MOD-OF-+-OF---WHEN-EQUAL-OF-MOD-ARG2))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(PADDING::ALL-UNSIGNED-BYTE-P-OF-PAD-TO-896
 (28 1 (:REWRITE REPEAT-WHEN-ZP))
 (9 3 (:REWRITE DEFAULT-<-2))
 (7 3 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (5 1 (:DEFINITION LEN))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:TYPE-PRESCRIPTION REPEAT))
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
(PADDING::MOD-OF-LEN-OF-PAD-TO-896-AND-64
 (15097 1101 (:REWRITE MOD-WHEN-MULTIPLE))
 (15097 1101 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (10048 1848 (:REWRITE COMMUTATIVITY-OF-*))
 (6550 3984 (:REWRITE DEFAULT-*-2))
 (6173 1703 (:REWRITE DEFAULT-+-2))
 (6138 3984 (:REWRITE DEFAULT-*-1))
 (5632 1606 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (5299 709 (:REWRITE MOD-WHEN-<))
 (4207 1645 (:REWRITE MOD-WHEN-<-OF-0))
 (2565 752 (:REWRITE DEFAULT-<-1))
 (2418 1703 (:REWRITE DEFAULT-+-1))
 (2350 280 (:REWRITE DISTRIBUTIVITY))
 (1769 709 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (1769 709 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (1769 709 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (792 752 (:REWRITE DEFAULT-<-2))
 (709 709 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (333 331 (:REWRITE DEFAULT-UNARY-MINUS))
 (208 1 (:REWRITE REPEAT-WHEN-ZP))
 (171 121 (:REWRITE MOD-OF-+-SUBST-CONSTANT))
 (166 1 (:REWRITE ZP-OPEN))
 (122 121 (:REWRITE DEFAULT-CDR))
 (99 99 (:REWRITE MOD-OF-+-OF---WHEN-EQUAL-OF-MOD-ARG2))
 (9 9 (:REWRITE MOD-OF-+-OF---WHEN-EQUAL-OF-MOD-ARG1))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 )
