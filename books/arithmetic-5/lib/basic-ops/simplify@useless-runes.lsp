(REWRITE-EQUAL-<-TO-IFF-<
 (10 6 (:REWRITE DEFAULT-<-2))
 (10 6 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(EQUAL-*-1
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(EQUAL-*-2
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(SIMPLIFY-TERMS-SUCH-AS-AX+BX-REL-0-FN)
(SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE BIG-HELPER-1))
 (7 7 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (16 16 (:REWRITE BIG-HELPER-1))
 (15 3 (:REWRITE HELPER-14))
 (15 3 (:REWRITE HELPER-13))
 (9 3 (:REWRITE HELPER-16))
 (9 3 (:REWRITE HELPER-15))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 )
(SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (11 11 (:REWRITE BIG-HELPER-1))
 (7 7 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (18 3 (:REWRITE HELPER-12))
 (18 3 (:REWRITE HELPER-11))
 (15 15 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (13 13 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (13 13 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (13 13 (:REWRITE BIG-HELPER-1))
 (12 3 (:REWRITE HELPER-18))
 (12 3 (:REWRITE HELPER-17))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 )
(ADDEND-VAL
 (141 64 (:REWRITE DEFAULT-+-2))
 (112 16 (:DEFINITION INTEGER-ABS))
 (84 64 (:REWRITE DEFAULT-+-1))
 (64 16 (:REWRITE |(+ y x)|))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (34 34 (:REWRITE DEFAULT-CDR))
 (27 21 (:REWRITE DEFAULT-<-2))
 (26 21 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (16 16 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE BIG-HELPER-1))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(ADDEND-INFO-ENTRY)
(ADDEND-INFO-LIST
 (188 83 (:REWRITE DEFAULT-+-2))
 (140 20 (:DEFINITION INTEGER-ABS))
 (109 83 (:REWRITE DEFAULT-+-1))
 (80 20 (:REWRITE |(+ y x)|))
 (80 10 (:DEFINITION LENGTH))
 (53 53 (:REWRITE DEFAULT-CDR))
 (50 10 (:DEFINITION LEN))
 (32 25 (:REWRITE DEFAULT-<-2))
 (30 25 (:REWRITE DEFAULT-<-1))
 (29 29 (:REWRITE FOLD-CONSTS-IN-+))
 (27 27 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (20 20 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:REWRITE BIG-HELPER-1))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 )
(TEMP-1
 (140 130 (:REWRITE DEFAULT-CDR))
 (124 120 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE BIG-HELPER-1))
 (1 1 (:TYPE-PRESCRIPTION QUOTEP))
 )
(ADDEND-INFO-LIST-THM
 (373 360 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (23 23 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 23 (:REWRITE DEFAULT-<-2))
 (23 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE BIG-HELPER-1))
 (16 4 (:DEFINITION TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION QUOTEP))
 )
(ASSOC-ADDEND
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(FIRST-MATCH-IN-ADDEND-INFO-LISTS
 (2741 2741 (:REWRITE DEFAULT-CAR))
 (1957 1957 (:REWRITE DEFAULT-CDR))
 (690 230 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 )
(FIND-MATCHING-ADDENDS)
(FIND-MATCHING-ADDENDS)
(SIMPLIFY-SUMS-EQUAL
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(SIMPLIFY-SUMS-<
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(NEGATIVE-ADDEND-P)
(FIND-NEGATIVE-ADDEND1
 (3984 1624 (:REWRITE DEFAULT-+-2))
 (2240 40 (:DEFINITION NEGATE-MATCH))
 (2182 312 (:DEFINITION INTEGER-ABS))
 (2133 1624 (:REWRITE DEFAULT-+-1))
 (1256 157 (:DEFINITION LENGTH))
 (785 157 (:DEFINITION LEN))
 (655 655 (:REWRITE FOLD-CONSTS-IN-+))
 (572 389 (:REWRITE DEFAULT-<-2))
 (560 80 (:DEFINITION NUMERIC-CONSTANT-P))
 (464 389 (:REWRITE DEFAULT-<-1))
 (390 390 (:REWRITE DEFAULT-UNARY-MINUS))
 (317 317 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (317 317 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (317 317 (:REWRITE BIG-HELPER-1))
 (157 157 (:TYPE-PRESCRIPTION LEN))
 (157 157 (:REWRITE DEFAULT-REALPART))
 (157 157 (:REWRITE DEFAULT-IMAGPART))
 (157 157 (:REWRITE DEFAULT-COERCE-2))
 (157 157 (:REWRITE DEFAULT-COERCE-1))
 (156 156 (:REWRITE DEFAULT-NUMERATOR))
 (156 156 (:REWRITE DEFAULT-DENOMINATOR))
 (85 85 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (80 80 (:DEFINITION KWOTE))
 (2 2 (:TYPE-PRESCRIPTION QUOTEP))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 )
(FIND-NEGATIVE-ADDEND)
(PREFER-POSITIVE-ADDENDS-EQUAL
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(PREFER-POSITIVE-ADDENDS-<
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(SIMPLIFY-PRODUCTS-SCATTER-EXPONENTS-EQUAL
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(SIMPLIFY-PRODUCTS-SCATTER-EXPONENTS-<
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(FIND-DIVISIVE-FACTOR-SCATTER-EXPONENTS2
 (542 242 (:REWRITE DEFAULT-+-2))
 (420 60 (:DEFINITION INTEGER-ABS))
 (320 242 (:REWRITE DEFAULT-+-1))
 (240 60 (:REWRITE |(+ y x)|))
 (240 30 (:DEFINITION LENGTH))
 (150 30 (:DEFINITION LEN))
 (146 146 (:REWRITE DEFAULT-CDR))
 (99 76 (:REWRITE DEFAULT-<-2))
 (91 76 (:REWRITE DEFAULT-<-1))
 (85 85 (:REWRITE FOLD-CONSTS-IN-+))
 (83 83 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (60 60 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (60 60 (:REWRITE DEFAULT-UNARY-MINUS))
 (60 60 (:REWRITE BIG-HELPER-1))
 (30 30 (:TYPE-PRESCRIPTION LEN))
 (30 30 (:REWRITE DEFAULT-REALPART))
 (30 30 (:REWRITE DEFAULT-NUMERATOR))
 (30 30 (:REWRITE DEFAULT-IMAGPART))
 (30 30 (:REWRITE DEFAULT-DENOMINATOR))
 (30 30 (:REWRITE DEFAULT-COERCE-2))
 (30 30 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 )
(FIND-DIVISIVE-FACTOR-SCATTER-EXPONENTS1
 (11312 5 (:DEFINITION FIND-DIVISIVE-FACTOR-SCATTER-EXPONENTS2))
 (9090 130 (:DEFINITION INVERT-MATCH))
 (6720 120 (:DEFINITION NEGATE-MATCH))
 (4698 4698 (:REWRITE DEFAULT-CDR))
 (3336 3336 (:REWRITE DEFAULT-CAR))
 (2070 370 (:DEFINITION NUMERIC-CONSTANT-P))
 (800 400 (:DEFINITION QUOTEP))
 (552 65 (:DEFINITION STABLE-UNDER-REWRITING-PRODUCTS))
 (268 268 (:REWRITE DEFAULT-UNARY-MINUS))
 (260 114 (:REWRITE DEFAULT-+-2))
 (240 240 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (240 240 (:DEFINITION KWOTE))
 (196 28 (:DEFINITION INTEGER-ABS))
 (167 15 (:DEFINITION MEMBER-EQUAL))
 (165 55 (:DEFINITION FN-SYMB))
 (152 114 (:REWRITE DEFAULT-+-1))
 (150 25 (:DEFINITION RATIONAL-CONSTANT-P))
 (112 28 (:REWRITE |(+ y x)|))
 (112 14 (:DEFINITION LENGTH))
 (70 70 (:DEFINITION STABLE-UNDER-REWRITING))
 (70 59 (:REWRITE DEFAULT-<-2))
 (70 14 (:DEFINITION LEN))
 (64 59 (:REWRITE DEFAULT-<-1))
 (53 53 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (53 53 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (53 53 (:REWRITE BIG-HELPER-1))
 (43 43 (:REWRITE FOLD-CONSTS-IN-+))
 (19 19 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 )
(FIND-DIVISIVE-FACTOR-SCATTER-EXPONENTS)
(PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-EQUAL
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(FIND-RATIONAL-DIVISIVE-FACTOR-SCATTER-EXPONENTS2
 (542 242 (:REWRITE DEFAULT-+-2))
 (420 60 (:DEFINITION INTEGER-ABS))
 (320 242 (:REWRITE DEFAULT-+-1))
 (240 60 (:REWRITE |(+ y x)|))
 (240 30 (:DEFINITION LENGTH))
 (150 30 (:DEFINITION LEN))
 (146 146 (:REWRITE DEFAULT-CDR))
 (99 76 (:REWRITE DEFAULT-<-2))
 (91 76 (:REWRITE DEFAULT-<-1))
 (85 85 (:REWRITE FOLD-CONSTS-IN-+))
 (83 83 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (60 60 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (60 60 (:REWRITE DEFAULT-UNARY-MINUS))
 (60 60 (:REWRITE BIG-HELPER-1))
 (30 30 (:TYPE-PRESCRIPTION LEN))
 (30 30 (:REWRITE DEFAULT-REALPART))
 (30 30 (:REWRITE DEFAULT-NUMERATOR))
 (30 30 (:REWRITE DEFAULT-IMAGPART))
 (30 30 (:REWRITE DEFAULT-DENOMINATOR))
 (30 30 (:REWRITE DEFAULT-COERCE-2))
 (30 30 (:REWRITE DEFAULT-COERCE-1))
 (24 12 (:REWRITE PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-EQUAL))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 )
(FIND-RATIONAL-DIVISIVE-FACTOR-SCATTER-EXPONENTS1
 (13172 5 (:DEFINITION FIND-RATIONAL-DIVISIVE-FACTOR-SCATTER-EXPONENTS2))
 (10290 130 (:DEFINITION INVERT-MATCH))
 (7920 120 (:DEFINITION NEGATE-MATCH))
 (4698 4698 (:REWRITE DEFAULT-CDR))
 (3336 3336 (:REWRITE DEFAULT-CAR))
 (2550 370 (:DEFINITION NUMERIC-CONSTANT-P))
 (1803 939 (:REWRITE PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-EQUAL))
 (1340 400 (:DEFINITION QUOTEP))
 (1104 1104 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (742 65 (:DEFINITION STABLE-UNDER-REWRITING-PRODUCTS))
 (268 268 (:REWRITE DEFAULT-UNARY-MINUS))
 (260 114 (:REWRITE DEFAULT-+-2))
 (240 240 (:DEFINITION KWOTE))
 (220 55 (:DEFINITION FN-SYMB))
 (212 15 (:DEFINITION MEMBER-EQUAL))
 (210 70 (:DEFINITION STABLE-UNDER-REWRITING))
 (200 25 (:DEFINITION RATIONAL-CONSTANT-P))
 (196 28 (:DEFINITION INTEGER-ABS))
 (195 65 (:DEFINITION PROVEABLY-REAL/RATIONAL))
 (152 114 (:REWRITE DEFAULT-+-1))
 (112 28 (:REWRITE |(+ y x)|))
 (112 14 (:DEFINITION LENGTH))
 (70 59 (:REWRITE DEFAULT-<-2))
 (70 14 (:DEFINITION LEN))
 (64 59 (:REWRITE DEFAULT-<-1))
 (53 53 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (53 53 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (53 53 (:REWRITE BIG-HELPER-1))
 (43 43 (:REWRITE FOLD-CONSTS-IN-+))
 (19 19 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 )
(FIND-RATIONAL-DIVISIVE-FACTOR-SCATTER-EXPONENTS)
(PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-<
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-EQUAL))
 )
(PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-<-2
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-<))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE RATIONALP-*))
 (4 4 (:REWRITE HELPER-6))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE PREFER-POSITIVE-EXPONENTS-SCATTER-EXPONENTS-EQUAL))
 )
