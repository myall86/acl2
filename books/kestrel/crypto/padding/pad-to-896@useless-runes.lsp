(PADDING::PAD-TO-896-NUMBER-OF-ZEROS
     (5 5
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (5 5
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (5 5
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE)))
(PADDING::PAD-TO-896-NUMBER-OF-ZEROS-TYPE)
(PADDING::PAD-TO-896)
(PADDING::PAD-TO-896-CORRECT-1
     (28 1 (:REWRITE REPEAT-WHEN-ZP))
     (22 1 (:REWRITE ZP-OPEN))
     (21 8 (:REWRITE DEFAULT-+-2))
     (9 8 (:REWRITE DEFAULT-+-1))
     (9 4 (:REWRITE DEFAULT-<-2))
     (9 4 (:REWRITE DEFAULT-<-1))
     (6 5 (:REWRITE DEFAULT-CDR))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
(PADDING::PAD-TO-896-CORRECT-2
     (28 1 (:REWRITE REPEAT-WHEN-ZP))
     (22 1 (:REWRITE ZP-OPEN))
     (20 10
         (:TYPE-PRESCRIPTION PADDING::PAD-TO-896-NUMBER-OF-ZEROS-TYPE))
     (12 12 (:TYPE-PRESCRIPTION LEN))
     (10 2 (:DEFINITION LEN))
     (9 9 (:REWRITE DEFAULT-CDR))
     (6 2 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-CAR))
     (4 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
(PADDING::PAD-TO-896-CORRECT-3
     (9989 730
           (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (8757 618 (:REWRITE MOD-WHEN-MULTIPLE))
     (6740 910 (:REWRITE COMMUTATIVITY-OF-*))
     (4152 2116 (:REWRITE DEFAULT-*-2))
     (3723 421 (:REWRITE MOD-WHEN-<))
     (3696 2116 (:REWRITE DEFAULT-*-1))
     (2942 913 (:REWRITE DEFAULT-+-2))
     (2518 684
           (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (2430 288 (:REWRITE DISTRIBUTIVITY))
     (1437 478
           (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (1437 478
           (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (1437 478
           (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (1279 913 (:REWRITE DEFAULT-+-1))
     (1257 304 (:REWRITE DEFAULT-<-1))
     (730 730
          (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (478 478
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (344 304 (:REWRITE DEFAULT-<-2))
     (235 212 (:REWRITE DEFAULT-UNARY-MINUS))
     (208 1 (:REWRITE REPEAT-WHEN-ZP))
     (166 1 (:REWRITE ZP-OPEN))
     (89 88 (:REWRITE DEFAULT-CDR))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
(PADDING::PAD-TO-896-CORRECT-4
     (183 1 (:REWRITE REPEAT-WHEN-ZP))
     (173 1 (:REWRITE ZP-OPEN))
     (110 10 (:REWRITE COMMUTATIVITY-OF-*))
     (90 5 (:REWRITE MOD-WHEN-MULTIPLE))
     (90 5
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (77 26 (:REWRITE DEFAULT-+-2))
     (70 10 (:REWRITE DISTRIBUTIVITY))
     (61 1 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (55 5 (:REWRITE MOD-WHEN-<))
     (50 30 (:REWRITE DEFAULT-*-2))
     (40 30 (:REWRITE DEFAULT-*-1))
     (34 26 (:REWRITE DEFAULT-+-1))
     (24 10 (:REWRITE DEFAULT-<-2))
     (20 10 (:REWRITE DEFAULT-<-1))
     (10 5
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (10 5
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (10 5
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (9 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (6 5 (:REWRITE DEFAULT-CDR))
     (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (5 5
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (5 5
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
(PADDING::ALL-UNSIGNED-BYTE-P-OF-PAD-TO-896
     (28 1 (:REWRITE REPEAT-WHEN-ZP))
     (9 3 (:REWRITE DEFAULT-<-2))
     (7 3
        (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
     (5 1 (:DEFINITION LEN))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2 (:TYPE-PRESCRIPTION REPEAT))
     (2 1
        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (2 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (1 1 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
(PADDING::MOD-OF-LEN-OF-PAD-TO-896-AND-64
     (15060 1100 (:REWRITE MOD-WHEN-MULTIPLE))
     (15060 1100
            (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (9976 1848 (:REWRITE COMMUTATIVITY-OF-*))
     (6550 3984 (:REWRITE DEFAULT-*-2))
     (6138 3984 (:REWRITE DEFAULT-*-1))
     (5632 1606
           (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (5298 708 (:REWRITE MOD-WHEN-<))
     (5206 1410 (:REWRITE DEFAULT-+-2))
     (2369 560 (:REWRITE DEFAULT-<-1))
     (2278 280 (:REWRITE DISTRIBUTIVITY))
     (2112 1410 (:REWRITE DEFAULT-+-1))
     (2053 829
           (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (2053 829
           (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (2053 829
           (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (829 829
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (600 560 (:REWRITE DEFAULT-<-2))
     (331 330 (:REWRITE DEFAULT-UNARY-MINUS))
     (208 1 (:REWRITE REPEAT-WHEN-ZP))
     (166 1 (:REWRITE ZP-OPEN))
     (122 121 (:REWRITE DEFAULT-CDR))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP)))
