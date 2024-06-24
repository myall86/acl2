(GET-DEFUN-WRLD)
(REPLACE-ARGUMENTS
 (199 92 (:REWRITE DEFAULT-+-2))
 (129 92 (:REWRITE DEFAULT-+-1))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (45 9 (:DEFINITION LEN))
 (31 23 (:REWRITE DEFAULT-<-2))
 (27 23 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 )
(REPLACE-ATOM
 (58 28 (:REWRITE DEFAULT-+-2))
 (39 28 (:REWRITE DEFAULT-+-1))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (24 3 (:DEFINITION LENGTH))
 (15 3 (:DEFINITION LEN))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 7 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:TYPE-PRESCRIPTION LEN))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(REPLACEFNS
 (695 299 (:REWRITE DEFAULT-+-2))
 (421 299 (:REWRITE DEFAULT-+-1))
 (216 54 (:DEFINITION INTEGER-ABS))
 (216 27 (:DEFINITION LENGTH))
 (135 27 (:DEFINITION LEN))
 (91 66 (:REWRITE DEFAULT-<-2))
 (74 66 (:REWRITE DEFAULT-<-1))
 (54 54 (:REWRITE DEFAULT-UNARY-MINUS))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (27 27 (:REWRITE DEFAULT-REALPART))
 (27 27 (:REWRITE DEFAULT-NUMERATOR))
 (27 27 (:REWRITE DEFAULT-IMAGPART))
 (27 27 (:REWRITE DEFAULT-DENOMINATOR))
 (27 27 (:REWRITE DEFAULT-COERCE-2))
 (27 27 (:REWRITE DEFAULT-COERCE-1))
 )
(COPYFUN-FN)
(USED-IN)
(GET-DERIVED-FUNS-FROM)
(GET-DERIVED-FUNS)
(USED-IN-ONEOF)
(USED-IN-ONEOF-FILTER)
(GET-DERIVED-THEOREMS
 (50 25 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 6 (:REWRITE DEFAULT-<-1))
 )
(SUBALL-PICK)
(SUBALL)
(MAP-COPYFUN)
(COPYTHM)
(NUMERATE-NAME
 (8176 84 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (4368 168 (:DEFINITION FLOOR))
 (3276 84 (:DEFINITION MOD))
 (3024 3024 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (2688 168 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (2604 84 (:DEFINITION DIGIT-TO-CHAR))
 (894 615 (:REWRITE DEFAULT-+-2))
 (840 252 (:REWRITE COMMUTATIVITY-OF-*))
 (615 615 (:REWRITE DEFAULT-+-1))
 (588 504 (:REWRITE DEFAULT-*-2))
 (588 504 (:REWRITE DEFAULT-*-1))
 (558 545 (:REWRITE DEFAULT-<-1))
 (549 545 (:REWRITE DEFAULT-<-2))
 (504 168 (:REWRITE COMMUTATIVITY-OF-+))
 (504 168 (:DEFINITION NFIX))
 (364 280 (:REWRITE DEFAULT-UNARY-MINUS))
 (243 243 (:REWRITE DEFAULT-CAR))
 (234 234 (:REWRITE DEFAULT-CDR))
 (196 196 (:REWRITE DEFAULT-NUMERATOR))
 (196 196 (:REWRITE DEFAULT-DENOMINATOR))
 (195 13 (:DEFINITION REMOVE-EQUAL))
 (170 70 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (168 168 (:DEFINITION IFIX))
 (161 27 (:DEFINITION LEN))
 (117 14 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (70 70 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (67 67 (:REWRITE DEFAULT-COERCE-2))
 (65 14 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (62 14 (:REWRITE DEFAULT-COERCE-3))
 (53 53 (:REWRITE DEFAULT-COERCE-1))
 (35 35 (:REWRITE DEFAULT-SYMBOL-NAME))
 (35 32 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (28 28 (:TYPE-PRESCRIPTION SYMBOLP-INTERN-IN-PACKAGE-OF-SYMBOL))
 (28 28 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (28 28 (:REWRITE ZP-OPEN))
 (28 28 (:REWRITE DEFAULT-REALPART))
 (28 28 (:REWRITE DEFAULT-IMAGPART))
 (14 7 (:REWRITE DEFAULT-PKG-IMPORTS))
 )
(DISAMB-NAME)
(MAP-COPYTHM)
(SIGNATURE-FNS)
(ACCESS-EVENT-TUPLE-TYPE)
(ACCESS-EVENT-TUPLE-NAMEX)
(FIND-ENCAPSULATE)
(REMOVE-DUPLICATES-ON-CDR
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GET-FUN-NAMES)
(INSTANCEOF-DEFSPEC-FN)
(MAP-CONSTRAINT)
(NAMETHMS)
(OLDSPEC)
(XFIRSTN)
(N-ARY-FUNCTION)
(FUNCTION-SIZE)
(N-ARY-DESTRUCTOR)
(CONSTANT-NATP)
(CONSTANT-FUNCTION)
(CONSTANT-AS-N-ARY-FUNCTION)
(CONSTANT-AS-N-ARY)
(UNARY-FUNCTION
 (1 1 (:TYPE-PRESCRIPTION UNARY-FUNCTION))
 )
(UNARY-AS-N-ARY-FUNCTION)
(UNARY-AS-N-ARY
 (6 6 (:TYPE-PRESCRIPTION XFIRSTN))
 )
(N-ARY-AS-UNARY-FUNCTION)
(N-ARY-AS-UNARY)
(BINARY-FUNCTION)
(BINARY-AS-N-ARY-FUNCTION)
(BINARY-AS-N-ARY
 (27 27 (:TYPE-PRESCRIPTION XFIRSTN))
 )
(TERNARY-FUNCTION)
(TERNARY-AS-N-ARY-FUNCTION)
(TERNARY-AS-N-ARY
 (45 45 (:TYPE-PRESCRIPTION XFIRSTN))
 )
