(MINSTD-RANDP)
(MINSTD-RANDP-FORWARD)
(MINSTD-RAND-NEXT
 (5 5 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (5 5 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (5 5 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 )
(MINSTD-RANDP-OF-MINSTD-RAND-NEXT
 (10 1 (:REWRITE MOD-WHEN-MULTIPLE))
 (10 1 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
 (6 2 (:REWRITE COMMUTATIVITY-OF-*))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE MOD-WHEN-<))
 (1 1 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (1 1 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (1 1 (:REWRITE MOD-WHEN-<-OF-0))
 (1 1 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG2))
 (1 1 (:REWRITE MOD-OF-*-SUBST-CONSTANT-ARG1))
 )
(EXTRACT-BOUNDED-VAL-USING-MINSTD-RAND
 (1 1 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
 (1 1 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (1 1 (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
 )
(NATP-OF-MV-NTH-0-OF-EXTRACT-BOUNDED-VAL-USING-MINSTD-RAND
 (12 3 (:REWRITE MOD-WHEN-MULTIPLE))
 (12 3 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (11 8 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE MOD-WHEN-<))
 (8 8 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (3 3 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (3 3 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (3 3 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (3 3 (:REWRITE MOD-WHEN-<-OF-0))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(<=-OF-MV-NTH-0-OF-EXTRACT-BOUNDED-VAL-USING-MINSTD-RAND
 (12 3 (:REWRITE MOD-WHEN-MULTIPLE))
 (12 3 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (11 11 (:TYPE-PRESCRIPTION NATP))
 (11 7 (:REWRITE DEFAULT-<-2))
 (9 3 (:REWRITE MOD-WHEN-<))
 (7 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (4 4 (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (3 3 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (3 3 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (3 3 (:REWRITE MOD-WHEN-<-OF-0))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MINSTD-RANDP-OF-MV-NTH-1-OF-EXTRACT-BOUNDED-VAL-USING-MINSTD-RAND
 (4 1 (:REWRITE MOD-WHEN-MULTIPLE))
 (4 1 (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE MOD-WHEN-<))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
 (1 1 (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
 (1 1 (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
 (1 1 (:REWRITE MOD-WHEN-<-OF-0))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
