(ASSOC-AFTER-REMOVE1-ASSOC
 (74 74 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE DEFAULT-CDR))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-OPEN-INPUT-CHANNEL
 (1401 3 (:DEFINITION EXPLODE-ATOM))
 (1275 9 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (687 18 (:DEFINITION FLOOR))
 (528 9 (:DEFINITION MOD))
 (468 468 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (384 24 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (369 9 (:DEFINITION DIGIT-TO-CHAR))
 (200 135 (:REWRITE DEFAULT-+-2))
 (156 27 (:REWRITE COMMUTATIVITY-OF-*))
 (144 135 (:REWRITE DEFAULT-+-1))
 (96 30 (:REWRITE COMMUTATIVITY-OF-+))
 (81 66 (:REWRITE DEFAULT-*-2))
 (78 66 (:REWRITE DEFAULT-*-1))
 (76 68 (:REWRITE DEFAULT-CAR))
 (75 75 (:REWRITE DEFAULT-<-2))
 (75 75 (:REWRITE DEFAULT-<-1))
 (72 51 (:REWRITE DEFAULT-UNARY-MINUS))
 (72 24 (:DEFINITION NFIX))
 (63 12 (:REWRITE DISTRIBUTIVITY))
 (60 12 (:DEFINITION ASSOC-EQUAL))
 (57 6 (:REWRITE ASSOCIATIVITY-OF-+))
 (56 2 (:DEFINITION ADD-PAIR))
 (54 12 (:DEFINITION BINARY-APPEND))
 (48 40 (:REWRITE DEFAULT-CDR))
 (24 24 (:DEFINITION IFIX))
 (24 6 (:REWRITE ZP-OPEN))
 (21 21 (:REWRITE DEFAULT-NUMERATOR))
 (21 21 (:REWRITE DEFAULT-DENOMINATOR))
 (21 3 (:REWRITE IMAGPART-+))
 (20 20 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (15 3 (:REWRITE REALPART-+))
 (15 3 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (13 3 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (12 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (12 3 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (12 3 (:REWRITE DEFAULT-COERCE-3))
 (9 6 (:REWRITE DEFAULT-REALPART))
 (9 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 3 (:REWRITE UNICITY-OF-0))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (3 3 (:REWRITE RATIONALP-+))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:DEFINITION FIX))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-OPEN-OUTPUT-CHANNEL
 (2802 6 (:DEFINITION EXPLODE-ATOM))
 (2550 18 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (1374 36 (:DEFINITION FLOOR))
 (1056 18 (:DEFINITION MOD))
 (936 936 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (768 48 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (738 18 (:DEFINITION DIGIT-TO-CHAR))
 (394 267 (:REWRITE DEFAULT-+-2))
 (312 54 (:REWRITE COMMUTATIVITY-OF-*))
 (285 267 (:REWRITE DEFAULT-+-1))
 (192 60 (:REWRITE COMMUTATIVITY-OF-+))
 (162 132 (:REWRITE DEFAULT-*-2))
 (156 132 (:REWRITE DEFAULT-*-1))
 (150 150 (:REWRITE DEFAULT-<-2))
 (150 150 (:REWRITE DEFAULT-<-1))
 (144 102 (:REWRITE DEFAULT-UNARY-MINUS))
 (144 48 (:DEFINITION NFIX))
 (126 24 (:REWRITE DISTRIBUTIVITY))
 (114 12 (:REWRITE ASSOCIATIVITY-OF-+))
 (100 4 (:DEFINITION ADD-PAIR))
 (99 21 (:DEFINITION BINARY-APPEND))
 (97 97 (:REWRITE DEFAULT-CAR))
 (74 64 (:REWRITE DEFAULT-CDR))
 (71 71 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-ATOM))
 (60 12 (:DEFINITION ASSOC-EQUAL))
 (48 48 (:DEFINITION IFIX))
 (48 12 (:REWRITE ZP-OPEN))
 (42 42 (:REWRITE DEFAULT-NUMERATOR))
 (42 42 (:REWRITE DEFAULT-DENOMINATOR))
 (42 6 (:REWRITE IMAGPART-+))
 (37 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (32 16 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (32 4 (:REWRITE SYMBOL<-ASYMMETRIC))
 (30 6 (:REWRITE REALPART-+))
 (30 6 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (22 6 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (21 6 (:REWRITE DEFAULT-COERCE-3))
 (20 8 (:REWRITE SYMBOL<-TRICHOTOMY))
 (18 12 (:REWRITE DEFAULT-REALPART))
 (18 12 (:REWRITE DEFAULT-IMAGPART))
 (18 6 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (16 16 (:TYPE-PRESCRIPTION SYMBOLP-INTERN-IN-PACKAGE-OF-SYMBOL))
 (16 16 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (12 12 (:TYPE-PRESCRIPTION SYMBOL<))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (12 6 (:REWRITE UNICITY-OF-0))
 (12 4 (:DEFINITION MEMBER-EQUAL))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (8 8 (:REWRITE SYMBOL<-TRANSITIVE))
 (6 6 (:REWRITE RATIONALP-+))
 (6 6 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 6 (:DEFINITION FIX))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:TYPE-PRESCRIPTION UPDATE-NTH))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-CLOSE-INPUT-CHANNEL
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (15 15 (:REWRITE DEFAULT-CDR))
 (6 1 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-CLOSE-OUTPUT-CHANNEL
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (17 17 (:REWRITE DEFAULT-CDR))
 (6 1 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-READ-CHAR$
 (35 35 (:REWRITE DEFAULT-CAR))
 (32 2 (:DEFINITION ADD-PAIR))
 (30 6 (:DEFINITION ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-READ-BYTE$
 (35 35 (:REWRITE DEFAULT-CAR))
 (32 2 (:DEFINITION ADD-PAIR))
 (30 6 (:DEFINITION ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-READ-OBJECT
 (51 51 (:REWRITE DEFAULT-CAR))
 (50 10 (:DEFINITION ASSOC-EQUAL))
 (34 34 (:REWRITE DEFAULT-CDR))
 (32 2 (:DEFINITION ADD-PAIR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (2 1 (:DEFINITION MV-NTH))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-PRINC$
 (4776 38 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (2300 76 (:DEFINITION FLOOR))
 (1662 38 (:DEFINITION MOD))
 (1620 1620 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (1408 88 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (1358 38 (:DEFINITION DIGIT-TO-CHAR))
 (970 38 (:DEFINITION BINARY-APPEND))
 (540 12 (:DEFINITION PRINT-BASE-P))
 (530 106 (:DEFINITION ASSOC-EQUAL))
 (528 60 (:DEFINITION MEMBER-EQUAL))
 (470 326 (:REWRITE DEFAULT-+-2))
 (414 406 (:REWRITE DEFAULT-CAR))
 (356 102 (:REWRITE COMMUTATIVITY-OF-*))
 (338 326 (:REWRITE DEFAULT-+-1))
 (312 100 (:REWRITE COMMUTATIVITY-OF-+))
 (278 270 (:REWRITE DEFAULT-CDR))
 (266 216 (:REWRITE DEFAULT-*-2))
 (266 216 (:REWRITE DEFAULT-*-1))
 (264 88 (:DEFINITION NFIX))
 (262 262 (:REWRITE DEFAULT-<-2))
 (262 262 (:REWRITE DEFAULT-<-1))
 (216 160 (:REWRITE DEFAULT-UNARY-MINUS))
 (106 94 (:REWRITE DEFAULT-NUMERATOR))
 (100 94 (:REWRITE DEFAULT-DENOMINATOR))
 (96 6 (:DEFINITION ADD-PAIR))
 (88 88 (:DEFINITION IFIX))
 (44 44 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-ATOM))
 (30 12 (:REWRITE DEFAULT-UNARY-/))
 (30 6 (:REWRITE SYMBOL<-ASYMMETRIC))
 (26 6 (:DEFINITION REVAPPEND))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:TYPE-PRESCRIPTION SYMBOL<))
 (18 12 (:REWRITE RATIONALP-*))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-NONNEGATIVE-INTEGER))
 (12 12 (:TYPE-PRESCRIPTION EXPLODE-NONNEGATIVE-INTEGER))
 (12 12 (:TYPE-PRESCRIPTION EXPLODE-ATOM+))
 (12 12 (:REWRITE SYMBOL<-TRICHOTOMY))
 (12 12 (:REWRITE SYMBOL<-TRANSITIVE))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 11 (:REWRITE DEFAULT-COERCE-1))
 (10 10 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE DEFAULT-SYMBOL-NAME))
 (8 8 (:TYPE-PRESCRIPTION STRING-DOWNCASE1))
 (6 6 (:REWRITE RATIONALP-UNARY-/))
 (6 2 (:DEFINITION STRING-DOWNCASE1))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 1 (:REWRITE DEFAULT-COERCE-3))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-WRITE-BYTE$
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (16 1 (:DEFINITION ADD-PAIR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE SYMBOL<-ASYMMETRIC))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL<))
 (2 2 (:REWRITE SYMBOL<-TRICHOTOMY))
 (2 2 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-PRINT-OBJECT$
 (25 25 (:REWRITE DEFAULT-CAR))
 (25 5 (:DEFINITION ASSOC-EQUAL))
 (16 1 (:DEFINITION ADD-PAIR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE SYMBOL<-ASYMMETRIC))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL<))
 (2 2 (:REWRITE SYMBOL<-TRICHOTOMY))
 (2 2 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-INPUT-CHANNEL-P1-UNDER-SET-SERIALIZE-CHARACTER
 (80 5 (:DEFINITION ADD-PAIR))
 (77 77 (:REWRITE DEFAULT-CAR))
 (60 12 (:DEFINITION ASSOC-EQUAL))
 (38 38 (:REWRITE DEFAULT-CDR))
 (25 5 (:REWRITE SYMBOL<-ASYMMETRIC))
 (15 15 (:TYPE-PRESCRIPTION SYMBOL<))
 (10 10 (:REWRITE SYMBOL<-TRICHOTOMY))
 (10 10 (:REWRITE SYMBOL<-TRANSITIVE))
 (3 3 (:TYPE-PRESCRIPTION SET-SERIALIZE-CHARACTER))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-OPEN-INPUT-CHANNEL
 (934 2 (:DEFINITION EXPLODE-ATOM))
 (850 6 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (458 12 (:DEFINITION FLOOR))
 (352 6 (:DEFINITION MOD))
 (312 312 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (256 16 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (246 6 (:DEFINITION DIGIT-TO-CHAR))
 (137 92 (:REWRITE DEFAULT-+-2))
 (104 18 (:REWRITE COMMUTATIVITY-OF-*))
 (98 92 (:REWRITE DEFAULT-+-1))
 (69 69 (:REWRITE DEFAULT-CAR))
 (65 13 (:DEFINITION ASSOC-EQUAL))
 (64 20 (:REWRITE COMMUTATIVITY-OF-+))
 (56 2 (:DEFINITION ADD-PAIR))
 (54 44 (:REWRITE DEFAULT-*-2))
 (52 44 (:REWRITE DEFAULT-*-1))
 (50 50 (:REWRITE DEFAULT-<-2))
 (50 50 (:REWRITE DEFAULT-<-1))
 (48 34 (:REWRITE DEFAULT-UNARY-MINUS))
 (48 16 (:DEFINITION NFIX))
 (42 8 (:REWRITE DISTRIBUTIVITY))
 (40 40 (:REWRITE DEFAULT-CDR))
 (38 4 (:REWRITE ASSOCIATIVITY-OF-+))
 (36 8 (:DEFINITION BINARY-APPEND))
 (18 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (16 16 (:DEFINITION IFIX))
 (16 4 (:REWRITE ZP-OPEN))
 (15 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (14 2 (:REWRITE IMAGPART-+))
 (12 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (12 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (10 2 (:REWRITE REALPART-+))
 (10 2 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (8 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (8 2 (:REWRITE DEFAULT-COERCE-3))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (6 4 (:REWRITE DEFAULT-REALPART))
 (6 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 2 (:REWRITE UNICITY-OF-0))
 (2 2 (:REWRITE RATIONALP-+))
 (2 2 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:DEFINITION FIX))
 (2 1 (:DEFINITION MV-NTH))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-OPEN-OUTPUT-CHANNEL
 (1868 4 (:DEFINITION EXPLODE-ATOM))
 (1700 12 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (916 24 (:DEFINITION FLOOR))
 (704 12 (:DEFINITION MOD))
 (624 624 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (512 32 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (492 12 (:DEFINITION DIGIT-TO-CHAR))
 (264 177 (:REWRITE DEFAULT-+-2))
 (208 36 (:REWRITE COMMUTATIVITY-OF-*))
 (189 177 (:REWRITE DEFAULT-+-1))
 (128 40 (:REWRITE COMMUTATIVITY-OF-+))
 (108 88 (:REWRITE DEFAULT-*-2))
 (104 88 (:REWRITE DEFAULT-*-1))
 (100 100 (:REWRITE DEFAULT-<-2))
 (100 100 (:REWRITE DEFAULT-<-1))
 (96 68 (:REWRITE DEFAULT-UNARY-MINUS))
 (96 32 (:DEFINITION NFIX))
 (87 75 (:REWRITE DEFAULT-CAR))
 (84 16 (:REWRITE DISTRIBUTIVITY))
 (76 8 (:REWRITE ASSOCIATIVITY-OF-+))
 (66 14 (:DEFINITION BINARY-APPEND))
 (59 47 (:REWRITE DEFAULT-CDR))
 (55 11 (:DEFINITION ASSOC-EQUAL))
 (50 2 (:DEFINITION ADD-PAIR))
 (32 32 (:DEFINITION IFIX))
 (32 8 (:REWRITE ZP-OPEN))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (28 4 (:REWRITE IMAGPART-+))
 (27 27 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (20 4 (:REWRITE REALPART-+))
 (20 4 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (20 4 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (16 4 (:REWRITE DEFAULT-COERCE-3))
 (16 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (12 8 (:REWRITE DEFAULT-REALPART))
 (12 8 (:REWRITE DEFAULT-IMAGPART))
 (12 4 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (12 4 (:DEFINITION MEMBER-EQUAL))
 (10 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (8 8 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 4 (:REWRITE UNICITY-OF-0))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (4 4 (:REWRITE RATIONALP-+))
 (4 4 (:REWRITE DEFAULT-SYMBOL-NAME))
 (4 4 (:DEFINITION FIX))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-CLOSE-INPUT-CHANNEL
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (15 15 (:REWRITE DEFAULT-CDR))
 (6 1 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-CLOSE-OUTPUT-CHANNEL
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (17 17 (:REWRITE DEFAULT-CDR))
 (6 1 (:DEFINITION REMOVE1-ASSOC-EQUAL))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-READ-CHAR$
 (35 35 (:REWRITE DEFAULT-CAR))
 (32 2 (:DEFINITION ADD-PAIR))
 (30 6 (:DEFINITION ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-READ-BYTE$
 (35 35 (:REWRITE DEFAULT-CAR))
 (32 2 (:DEFINITION ADD-PAIR))
 (30 6 (:DEFINITION ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-READ-OBJECT
 (51 51 (:REWRITE DEFAULT-CAR))
 (50 10 (:DEFINITION ASSOC-EQUAL))
 (34 34 (:REWRITE DEFAULT-CDR))
 (32 2 (:DEFINITION ADD-PAIR))
 (10 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (4 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (2 1 (:DEFINITION MV-NTH))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-PRINC$
 (4776 38 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (2300 76 (:DEFINITION FLOOR))
 (1662 38 (:DEFINITION MOD))
 (1620 1620 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (1408 88 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (1358 38 (:DEFINITION DIGIT-TO-CHAR))
 (970 38 (:DEFINITION BINARY-APPEND))
 (540 12 (:DEFINITION PRINT-BASE-P))
 (530 106 (:DEFINITION ASSOC-EQUAL))
 (528 60 (:DEFINITION MEMBER-EQUAL))
 (470 326 (:REWRITE DEFAULT-+-2))
 (436 406 (:REWRITE DEFAULT-CAR))
 (356 102 (:REWRITE COMMUTATIVITY-OF-*))
 (338 326 (:REWRITE DEFAULT-+-1))
 (312 100 (:REWRITE COMMUTATIVITY-OF-+))
 (300 270 (:REWRITE DEFAULT-CDR))
 (266 216 (:REWRITE DEFAULT-*-2))
 (266 216 (:REWRITE DEFAULT-*-1))
 (264 88 (:DEFINITION NFIX))
 (262 262 (:REWRITE DEFAULT-<-2))
 (262 262 (:REWRITE DEFAULT-<-1))
 (216 160 (:REWRITE DEFAULT-UNARY-MINUS))
 (106 94 (:REWRITE DEFAULT-NUMERATOR))
 (100 94 (:REWRITE DEFAULT-DENOMINATOR))
 (96 6 (:DEFINITION ADD-PAIR))
 (88 88 (:DEFINITION IFIX))
 (44 44 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-ATOM))
 (30 12 (:REWRITE DEFAULT-UNARY-/))
 (30 6 (:REWRITE SYMBOL<-ASYMMETRIC))
 (26 6 (:DEFINITION REVAPPEND))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:TYPE-PRESCRIPTION SYMBOL<))
 (18 12 (:REWRITE RATIONALP-*))
 (15 15 (:TYPE-PRESCRIPTION REVAPPEND))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-NONNEGATIVE-INTEGER))
 (12 12 (:TYPE-PRESCRIPTION EXPLODE-NONNEGATIVE-INTEGER))
 (12 12 (:REWRITE SYMBOL<-TRICHOTOMY))
 (12 12 (:REWRITE SYMBOL<-TRANSITIVE))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 11 (:REWRITE DEFAULT-COERCE-1))
 (10 10 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 6 (:REWRITE RATIONALP-UNARY-/))
 (6 2 (:DEFINITION STRING-DOWNCASE1))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 1 (:REWRITE DEFAULT-COERCE-3))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-WRITE-BYTE$
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (16 1 (:DEFINITION ADD-PAIR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE SYMBOL<-ASYMMETRIC))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL<))
 (2 2 (:REWRITE SYMBOL<-TRICHOTOMY))
 (2 2 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-PRINT-OBJECT$
 (25 25 (:REWRITE DEFAULT-CAR))
 (25 5 (:DEFINITION ASSOC-EQUAL))
 (16 1 (:DEFINITION ADD-PAIR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE SYMBOL<-ASYMMETRIC))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL<))
 (2 2 (:REWRITE SYMBOL<-TRICHOTOMY))
 (2 2 (:REWRITE SYMBOL<-TRANSITIVE))
 )
(OPEN-OUTPUT-CHANNEL-P1-UNDER-SET-SERIALIZE-CHARACTER
 (80 5 (:DEFINITION ADD-PAIR))
 (77 77 (:REWRITE DEFAULT-CAR))
 (60 12 (:DEFINITION ASSOC-EQUAL))
 (38 38 (:REWRITE DEFAULT-CDR))
 (25 5 (:REWRITE SYMBOL<-ASYMMETRIC))
 (15 15 (:TYPE-PRESCRIPTION SYMBOL<))
 (10 10 (:REWRITE SYMBOL<-TRICHOTOMY))
 (10 10 (:REWRITE SYMBOL<-TRANSITIVE))
 (3 3 (:TYPE-PRESCRIPTION SET-SERIALIZE-CHARACTER))
 )
