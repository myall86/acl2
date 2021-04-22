(DEFUN::TRUE-LISTP-APPEND-REWRITE)
(DEFUN::TRUE-LISTP-REVAPPEND)
(DEFUN::DECLARATION-P)
(DEFUN::DECLARATION-LISTP)
(DEFUN::WF-DEFUN-SUBBODY-REC)
(DEFUN::STRIP-DECLS-REC)
(DEFUN::DECLARATION-LISTP-STRIP-DECLS-REC
 (20 20 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::STRIP-DECLS)
(DEFUN::WF-DEFUN-SUBBODY)
(DEFUN::DECLARATION-LISTP-STRIP-DECLS
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION DEFUN::WF-DEFUN-SUBBODY-REC))
 (10 2 (:DEFINITION DEFUN::STRIP-DECLS-REC))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 3 (:DEFINITION DEFUN::DECLARATION-P))
 (5 1 (:DEFINITION DEFUN::DECLARATION-LISTP))
 (4 4 (:REWRITE MV-NTH-TO-VAL))
 )
(DEFUN::WF-DEFUN-BODY)
(DEFUN::DECOMPOSE-DEFUN-BODY)
(DEFUN::DECLARATION-LISTP-DECOMPOSE-DEFUN-BODY
 (5 1 (:DEFINITION DEFUN::DECLARATION-LISTP))
 )
(DEFUN::MAKE-DEFUN-BODY
 (20 20 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 5 (:DEFINITION TRUE-LISTP))
 )
(DEFUN::CAR-APPEND
 (69 69 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (45 15 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::WF-DEFUN-BODY-MAKE-DEFUN-BODY-1
 (190 120 (:REWRITE DEFAULT-CDR))
 (183 177 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::WF-DEFUN-BODY-MAKE-DEFUN-BODY-2
 (141 89 (:REWRITE DEFAULT-CDR))
 (132 120 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::WF-DEFUN)
(DEFUN::DEFUN-TYPE)
(DEFUN::DEFUN-NAME)
(DEFUN::DEFUN-ARGS)
(DEFUN::DEFUN-BODY)
(DEFUN::MAKE-DEFUN)
(DEFUN::MAKE-DEFUN-TYPE
 (42 42 (:REWRITE DEFAULT-CDR))
 (29 29 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::SYMBOLP-DEFUN-TYPE)
(DEFUN::SYMBOLP-DEFUN-NAME)
(DEFUN::SYMBOL-LISTP-DEFUN-ARGS)
(DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP)
(DEFUN::WF-DEFUN-BODY-DEFUN-BODY
 (39 39 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 )
(DEFUN::DECLARATION-BODY)
(DEFUN::SIGNATURE-DECLARATION-P)
(DEFUN::FUNCTION-DECLARATION-P)
(DEFUN::FUNCTION-DECLARATION)
(DEFUN::FUNCTION-DECLARATION-P-FUNCTION-DECLARATION
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (24 4 (:DEFINITION SYMBOL-LISTP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (11 11 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::SIGNATURE-TO-DECLARATION)
(DEFUN::FUNCTION-DECLARATION-P-SIGNATURE-TO-DECLARATION
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (24 4 (:DEFINITION SYMBOL-LISTP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (13 13 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::FUNCTION-DECLARATION-ARGS)
(DEFUN::FUNCTION-DECLARATION-VALS)
(DEFUN::CONSP-FUNCTION-DECLARATION-VALS)
(DEFUN::XARG-P)
(DEFUN::XARG-BODY)
(DEFUN::GET-XARG-KEY-FROM-BODY
 (153 71 (:REWRITE DEFAULT-+-2))
 (99 71 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (28 28 (:REWRITE DEFAULT-CDR))
 (24 18 (:REWRITE DEFAULT-<-2))
 (22 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::TRUE-LISTP-GET-XARG-KEY-FROM-BODY)
(DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC
 (153 71 (:REWRITE DEFAULT-+-2))
 (99 71 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (28 28 (:REWRITE DEFAULT-CDR))
 (24 18 (:REWRITE DEFAULT-<-2))
 (22 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::TRUE-LISTP-EXTRACT-XARG-KEY-FROM-BODY-REC
 (504 56 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (336 56 (:DEFINITION SYMBOL-LISTP))
 (308 28 (:DEFINITION TRUE-LISTP))
 (280 280 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (175 175 (:REWRITE DEFAULT-CDR))
 (98 98 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::EXTRACT-XARG-KEY-FROM-BODY)
(DEFUN::DECLARATION-LISTP-REVAPPEND
 (40 34 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::EXTRACT-KEY-FROM-XARG-BODIES)
(DEFUN::TRUE-LISTP-EXTRACT-KEY-FROM-XARG-BODIES
 (198 22 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (132 22 (:DEFINITION SYMBOL-LISTP))
 (128 128 (:REWRITE DEFAULT-CDR))
 (121 11 (:DEFINITION TRUE-LISTP))
 (110 110 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (99 11 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (75 75 (:REWRITE DEFAULT-CAR))
 (47 7 (:DEFINITION REVAPPEND))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC
 (108 12 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (72 12 (:DEFINITION SYMBOL-LISTP))
 (66 6 (:DEFINITION TRUE-LISTP))
 (60 60 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (33 33 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE DEFAULT-CAR))
 (19 1 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (9 1 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (2 1 (:DEFINITION DEFUN::XARG-P))
 (2 1 (:DEFINITION DEFUN::XARG-BODY))
 )
(DEFUN::DECLARATION-LISTP-EXTRACT-KEY-FROM-XARG-DECLS-REC
 (228 12 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (145 145 (:REWRITE DEFAULT-CDR))
 (108 12 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (93 93 (:REWRITE DEFAULT-CAR))
 (67 7 (:DEFINITION REVAPPEND))
 (24 12 (:DEFINITION DEFUN::XARG-P))
 (24 12 (:DEFINITION DEFUN::XARG-BODY))
 )
(DEFUN::TRUE-LISTP-EXTRACT-KEY-FROM-XARG-DECLS-REC-1
 (209 11 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (145 145 (:REWRITE DEFAULT-CDR))
 (126 14 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (99 11 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (84 14 (:DEFINITION SYMBOL-LISTP))
 (77 7 (:DEFINITION TRUE-LISTP))
 (76 76 (:REWRITE DEFAULT-CAR))
 (70 70 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (67 7 (:DEFINITION REVAPPEND))
 (22 11 (:DEFINITION DEFUN::XARG-P))
 (22 11 (:DEFINITION DEFUN::XARG-BODY))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(DEFUN::TRUE-LISTP-EXTRACT-KEY-FROM-XARG-DECLS-REC-0
 (209 11 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (145 145 (:REWRITE DEFAULT-CDR))
 (126 14 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (99 11 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (84 14 (:DEFINITION SYMBOL-LISTP))
 (77 7 (:DEFINITION TRUE-LISTP))
 (76 76 (:REWRITE DEFAULT-CAR))
 (70 70 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (67 7 (:DEFINITION REVAPPEND))
 (22 11 (:DEFINITION DEFUN::XARG-P))
 (22 11 (:DEFINITION DEFUN::XARG-BODY))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(DEFUN::EXTRACT-XARG-KEY-FROM-DECLS)
(DEFUN::GET-XARG-KEYS-FROM-BODY
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(DEFUN::TRUE-LISTP-GET-XARG-KEYS-FROM-BODY)
(DEFUN::GET-XARG-KEYS-FROM-DECLS
 (9 9 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::TRUE-LISTP-GET-XARG-KEYS-FROM-DECLS)
(DEFUN::TYPE-DECLARATION)
(DEFUN::GET-TYPE-DECLARATIONS-FROM-BODY)
(DEFUN::GET-TYPE-DECLARATIONS-FROM-DECLS
 (9 9 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC)
(DEFUN::TRUE-LISTP-VAL-3-EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC
 (882 98 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (588 98 (:DEFINITION SYMBOL-LISTP))
 (539 49 (:DEFINITION TRUE-LISTP))
 (490 490 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (395 395 (:REWRITE DEFAULT-CDR))
 (247 247 (:REWRITE DEFAULT-CAR))
 (216 24 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 )
(DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY)
(DEFUN::EXTRACT-FUNCTION-DECLARATION-REC
 (83 1 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (49 1 (:DEFINITION DEFUN::FUNCTION-DECLARATION-P))
 (44 1 (:DEFINITION DEFUN::SIGNATURE-DECLARATION-P))
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (32 32 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (24 4 (:DEFINITION SYMBOL-LISTP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (18 2 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (3 1 (:DEFINITION COI-DEBUG::ASSERT-FN))
 (2 1 (:DEFINITION DEFUN::XARG-P))
 (2 1 (:DEFINITION DEFUN::XARG-BODY))
 (1 1 (:REWRITE COI-DEBUG::FAIL-FN-VALUE))
 )
(DEFUN::TRUE-LISTP-VAL-3-EXTRACT-FUNCTION-DECLARATION-REC
 (1079 13 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (637 13 (:DEFINITION DEFUN::FUNCTION-DECLARATION-P))
 (594 66 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (572 13 (:DEFINITION DEFUN::SIGNATURE-DECLARATION-P))
 (399 399 (:REWRITE DEFAULT-CDR))
 (396 66 (:DEFINITION SYMBOL-LISTP))
 (363 33 (:DEFINITION TRUE-LISTP))
 (330 330 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (234 26 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (203 203 (:REWRITE DEFAULT-CAR))
 (39 13 (:DEFINITION COI-DEBUG::ASSERT-FN))
 (26 13 (:DEFINITION DEFUN::XARG-P))
 (26 13 (:DEFINITION DEFUN::XARG-BODY))
 (21 7 (:DEFINITION REVAPPEND))
 (13 13 (:REWRITE COI-DEBUG::FAIL-FN-VALUE))
 )
(DEFUN::DECLARATION-LISTP-VAL-3-EXTRACT-FUNCTION-DECLARATION-REC
 (1162 14 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (686 14 (:DEFINITION DEFUN::FUNCTION-DECLARATION-P))
 (616 14 (:DEFINITION DEFUN::SIGNATURE-DECLARATION-P))
 (504 56 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (417 417 (:REWRITE DEFAULT-CDR))
 (336 56 (:DEFINITION SYMBOL-LISTP))
 (308 28 (:DEFINITION TRUE-LISTP))
 (280 280 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (252 28 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (226 224 (:REWRITE DEFAULT-CAR))
 (42 14 (:DEFINITION COI-DEBUG::ASSERT-FN))
 (28 14 (:DEFINITION DEFUN::XARG-P))
 (28 14 (:DEFINITION DEFUN::XARG-BODY))
 (24 8 (:DEFINITION REVAPPEND))
 (14 14 (:REWRITE COI-DEBUG::FAIL-FN-VALUE))
 )
(DEFUN::EXTRACT-FUNCTION-DECLARATION)
(DEFUN::FUNCTION-DECLARATION-P-VAL-0-EXTRACT-FUNCTION-DECLARATION
 (288 32 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (192 32 (:DEFINITION SYMBOL-LISTP))
 (186 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-REC))
 (176 16 (:DEFINITION TRUE-LISTP))
 (162 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (161 161 (:REWRITE DEFAULT-CDR))
 (160 160 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (90 90 (:REWRITE DEFAULT-CAR))
 (54 6 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (50 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC))
 (40 8 (:DEFINITION LEN))
 (38 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (16 8 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-+-2))
 (12 4 (:DEFINITION REVAPPEND))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 4 (:DEFINITION DEFUN::XARG-P))
 (8 4 (:DEFINITION DEFUN::XARG-BODY))
 (4 2 (:DEFINITION DEFUN::DECLARATION-BODY))
 )
(DEFUN::FUNCTION-DECLARATION-P-VAL-1-EXTRACT-FUNCTION-DECLARATION
 (252 28 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (186 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-REC))
 (168 28 (:DEFINITION SYMBOL-LISTP))
 (162 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (154 14 (:DEFINITION TRUE-LISTP))
 (142 142 (:REWRITE DEFAULT-CDR))
 (140 140 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (82 82 (:REWRITE DEFAULT-CAR))
 (54 6 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (50 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC))
 (40 8 (:DEFINITION LEN))
 (38 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (16 8 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-+-2))
 (12 4 (:DEFINITION REVAPPEND))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 4 (:DEFINITION DEFUN::XARG-P))
 (8 4 (:DEFINITION DEFUN::XARG-BODY))
 (4 2 (:DEFINITION DEFUN::DECLARATION-BODY))
 )
(DEFUN::FUNCTION-DECLARATION-P-VAL-2-EXTRACT-FUNCTION-DECLARATION
 (252 28 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (186 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-REC))
 (168 28 (:DEFINITION SYMBOL-LISTP))
 (162 2 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (154 14 (:DEFINITION TRUE-LISTP))
 (142 142 (:REWRITE DEFAULT-CDR))
 (140 140 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (83 83 (:REWRITE DEFAULT-CAR))
 (54 6 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (50 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC))
 (40 8 (:DEFINITION LEN))
 (38 2 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (16 8 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-+-2))
 (12 4 (:DEFINITION REVAPPEND))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 4 (:DEFINITION DEFUN::XARG-P))
 (8 4 (:DEFINITION DEFUN::XARG-BODY))
 (4 2 (:DEFINITION DEFUN::DECLARATION-BODY))
 )
(DEFUN::TRUE-LISTP-VAL-4-EXTRACT-FUNCTION-DECLARATION
 (180 20 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (120 20 (:DEFINITION SYMBOL-LISTP))
 (110 10 (:DEFINITION TRUE-LISTP))
 (100 100 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (93 1 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-REC))
 (84 84 (:REWRITE DEFAULT-CDR))
 (81 1 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (49 49 (:REWRITE DEFAULT-CAR))
 (27 3 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (25 1 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC))
 (20 4 (:DEFINITION LEN))
 (19 1 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (8 4 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:DEFINITION REVAPPEND))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION DEFUN::XARG-P))
 (4 2 (:DEFINITION DEFUN::XARG-BODY))
 (2 1 (:DEFINITION DEFUN::DECLARATION-BODY))
 )
(DEFUN::DECLARATION-LISTP-VAL-4-EXTRACT-FUNCTION-DECLARATION
 (180 20 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (120 20 (:DEFINITION SYMBOL-LISTP))
 (110 10 (:DEFINITION TRUE-LISTP))
 (100 100 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (93 1 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-REC))
 (85 85 (:REWRITE DEFAULT-CDR))
 (81 1 (:DEFINITION DEFUN::EXTRACT-FUNCTION-DECLARATION-FROM-BODY-REC))
 (51 51 (:REWRITE DEFAULT-CAR))
 (27 3 (:DEFINITION DEFUN::EXTRACT-XARG-KEY-FROM-BODY-REC))
 (25 1 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-DECLS-REC))
 (20 4 (:DEFINITION LEN))
 (19 1 (:DEFINITION DEFUN::EXTRACT-KEY-FROM-XARG-BODIES))
 (8 4 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 2 (:DEFINITION REVAPPEND))
 (5 1 (:DEFINITION DEFUN::DECLARATION-LISTP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION DEFUN::XARG-P))
 (4 2 (:DEFINITION DEFUN::XARG-BODY))
 (2 1 (:DEFINITION DEFUN::DECLARATION-P))
 (2 1 (:DEFINITION DEFUN::DECLARATION-BODY))
 )
(DEFUN::TRANSLATE-DECLARATION-TO-GUARD/INTEGER)
(DEFUN::UNARY-LAMBDA-FUNCTION)
(DEFUN::UNARY-LAMBDA-IMPLIES-LAMBDA-EXPR-P
 (129 10 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (108 16 (:DEFINITION SYMBOL-LISTP))
 (100 1 (:DEFINITION PSEUDO-TERMP))
 (72 72 (:REWRITE DEFAULT-CDR))
 (37 37 (:REWRITE DEFAULT-CAR))
 (30 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::LAMBDA-FORMALS
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::LAMBDA-BODY
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (7 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::LAMBDA-ARGS)
(DEFUN::MAKE-LAMBDA-APPLICATION)
(DEFUN::PSEUDO-TERMP-MAKE-LAMBDA-APPLICATION
 (39 39 (:REWRITE DEFAULT-CDR))
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (34 34 (:REWRITE DEFAULT-CAR))
 (24 12 (:REWRITE DEFAULT-+-2))
 (22 2 (:DEFINITION TRUE-LISTP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (6 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::SYMBOL-LISTP-LAMBDA-FORMALS
 (58 6 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (21 21 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(DEFUN::PSEUDO-TERM-LISTP-LAMBDA-ARGS
 (31 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (20 4 (:DEFINITION SYMBOL-LISTP))
 (16 16 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(DEFUN::PSEUDO-TERMP-LAMBDA-BODY
 (121 8 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (104 13 (:DEFINITION SYMBOL-LISTP))
 (48 48 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE DEFAULT-CAR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(DEFUN::LAMBDA-BODY-MEASURE
 (281 124 (:REWRITE DEFAULT-+-2))
 (167 124 (:REWRITE DEFAULT-+-1))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (57 57 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (34 25 (:REWRITE DEFAULT-<-2))
 (30 25 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::LAMBDA-FORMALS-MEASURE
 (212 96 (:REWRITE DEFAULT-+-2))
 (130 96 (:REWRITE DEFAULT-+-1))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (34 34 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (27 20 (:REWRITE DEFAULT-<-2))
 (24 20 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::LAMBDA-ARGS-MEASURE
 (49 23 (:REWRITE DEFAULT-+-2))
 (32 23 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (16 4 (:DEFINITION INTEGER-ABS))
 (16 2 (:DEFINITION LENGTH))
 (15 3 (:DEFINITION LEN))
 (9 9 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::MEMBERX)
(DEFUN::REVAPPENDX)
(DEFUN::LEN-REVAPPENDX
 (50 24 (:REWRITE DEFAULT-+-2))
 (30 24 (:REWRITE DEFAULT-+-1))
 (17 15 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::TRUE-LISTP-REVAPPENDX
 (218 22 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (155 22 (:DEFINITION SYMBOL-LISTP))
 (107 107 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (39 35 (:REWRITE DEFAULT-CDR))
 (28 26 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CAR-CONS))
 )
(DEFUN::SYMBOL-LISTP-REVAPPENDX
 (19 18 (:REWRITE DEFAULT-CAR))
 (15 14 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::PSEUDO-TERM-LISTP-REVAPPENDX
 (200 2 (:DEFINITION PSEUDO-TERMP))
 (72 8 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (61 60 (:REWRITE DEFAULT-CDR))
 (57 56 (:REWRITE DEFAULT-CAR))
 (54 10 (:DEFINITION SYMBOL-LISTP))
 (50 6 (:DEFINITION LENGTH))
 (44 4 (:DEFINITION TRUE-LISTP))
 (42 42 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (40 8 (:DEFINITION LEN))
 (36 36 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (22 22 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::COLLECT-FREE-VARIABLES
 (252 8 (:DEFINITION ACL2-COUNT))
 (96 46 (:REWRITE DEFAULT-+-2))
 (62 46 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (26 26 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION DEFUN::REVAPPENDX))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::PROMOTE-FREE-VARIABLES
 (6 6 (:TYPE-PRESCRIPTION DEFUN::REVAPPENDX))
 (1 1 (:TYPE-PRESCRIPTION DEFUN::PROMOTE-FREE-VARIABLES))
 )
(DEFUN::LAMBDA-EXPR-P-PROMOTE-FREE-VARIABLES
 (123 6 (:DEFINITION DEFUN::COLLECT-FREE-VARIABLES))
 (60 54 (:REWRITE DEFAULT-CAR))
 (39 39 (:REWRITE DEFAULT-CDR))
 (37 11 (:DEFINITION DEFUN::REVAPPENDX))
 (24 12 (:REWRITE DEFAULT-+-2))
 (24 12 (:DEFINITION DEFUN::MEMBERX))
 (15 3 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION DEFUN::REVAPPENDX))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::MEMBERX))
 )
(DEFUN::LAMBDA-FORMALS-ARGS-LEN-EQUAL
 (414 42 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (316 55 (:DEFINITION SYMBOL-LISTP))
 (162 162 (:REWRITE DEFAULT-CDR))
 (142 142 (:REWRITE DEFAULT-CAR))
 (90 45 (:REWRITE DEFAULT-+-2))
 (45 45 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (7 7 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (6 1 (:DEFINITION PSEUDO-TERM-LISTP))
 )
(DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP
 (13 13 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(DEFUN::PSEUDO-TERM-LISTP-IMPLIES-TRUE-LISTP)
(DEFUN::PSEUDO-TERMP-PROMOTE-FREE-VARIABLES
 (456 12 (:DEFINITION ACL2-COUNT))
 (192 94 (:REWRITE DEFAULT-+-2))
 (142 25 (:DEFINITION SYMBOL-LISTP))
 (135 14 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (130 127 (:REWRITE DEFAULT-CDR))
 (126 94 (:REWRITE DEFAULT-+-1))
 (124 115 (:REWRITE DEFAULT-CAR))
 (78 6 (:DEFINITION DEFUN::COLLECT-FREE-VARIABLES))
 (64 16 (:DEFINITION INTEGER-ABS))
 (49 49 (:TYPE-PRESCRIPTION LEN))
 (40 12 (:DEFINITION DEFUN::REVAPPENDX))
 (24 12 (:DEFINITION DEFUN::MEMBERX))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-COERCE-2))
 (11 11 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::MEMBERX))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(DEFUN::EQUAL-COMMON-PLUS-REDUCTION
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::TRANSLATE-DECLARATION-TO-GUARD1
 (843 66 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (461 461 (:REWRITE DEFAULT-CDR))
 (287 287 (:REWRITE DEFAULT-CAR))
 (156 78 (:REWRITE DEFAULT-+-2))
 (96 12 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (78 78 (:REWRITE DEFAULT-+-1))
 (21 21 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (12 12 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::TRANSLATE-DECLARATION-TO-GUARD
 (190 92 (:REWRITE DEFAULT-+-2))
 (120 92 (:REWRITE DEFAULT-+-1))
 (81 9 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (60 60 (:REWRITE DEFAULT-CDR))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 10 (:DEFINITION SYMBOL-LISTP))
 (43 43 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (33 33 (:REWRITE DEFAULT-CAR))
 (25 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(DEFUN::EXTRACT-FAPP-FROM-DECLARATION)
(DEFUN::TRANSLATE-DECLARATION-TO-GUARD-LIST)
(DEFUN::TRUE-LISTP-TRANSLATE-DECLARATION-TO-GUARD-LIST)
(DEFUN::MERGE-TYPE-DECL-FN-NAMES)
(DEFUN::MAP-ARG-TYPES-OVER-ARGS)
(DEFUN::TRUE-LISTP-MAP-ARG-TYPES-OVER-ARGS)
(DEFUN::MAP-TYPE-DECLARATION-OVER-VARS)
(DEFUN::TYPE-DECLARATION-TO-PREDICATE)
(DEFUN::FUNCTION-DECLARATION-TO-GUARD)
(DEFUN::GUARDS-FROM-DECLARE-BODY
 (216 24 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (144 24 (:DEFINITION SYMBOL-LISTP))
 (132 12 (:DEFINITION TRUE-LISTP))
 (120 120 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (76 76 (:REWRITE DEFAULT-CDR))
 (70 55 (:REWRITE DEFAULT-CAR))
 (28 4 (:DEFINITION LEN))
 (18 2 (:DEFINITION DEFUN::GET-XARG-KEY-FROM-BODY))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::VALS-TO-THMS-REC)
(DEFUN::TRUE-LISTP-VALS-TO-THMS-REC)
(DEFUN::VALS-TO-THMS)
(DEFUN::TRUE-LISTP-VALS-TO-THMS)
(DEFUN::GUARDS-FROM-DECLARE-LIST
 (162 1 (:DEFINITION DEFUN::GUARDS-FROM-DECLARE-BODY))
 (92 2 (:DEFINITION DEFUN::SIGNATURE-DECLARATION-P))
 (72 8 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (48 48 (:REWRITE DEFAULT-CDR))
 (48 8 (:DEFINITION SYMBOL-LISTP))
 (44 4 (:DEFINITION TRUE-LISTP))
 (40 40 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (39 33 (:REWRITE DEFAULT-CAR))
 (19 19 (:TYPE-PRESCRIPTION DEFUN::GET-XARG-KEY-FROM-BODY))
 (18 2 (:DEFINITION DEFUN::GET-XARG-KEY-FROM-BODY))
 (12 2 (:DEFINITION BINARY-APPEND))
 (7 1 (:DEFINITION LEN))
 (5 5 (:TYPE-PRESCRIPTION LEN))
 (5 1 (:DEFINITION COI-DEBUG::ASSERT-FN))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE COI-DEBUG::FAIL-FN-VALUE))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::FUNCTION-DECLARATION-TO-TYPE-STATEMENT)
(DEFUN::TRUE-LISTP-FUNCTION-DECLARATION-TO-TYPE-STATEMENT)
(DEFUN::FUNCTION-DECLARATION-TO-TYPE-THM
 (288 2 (:DEFINITION DEFUN::MERGE-TYPE-DECL-FN-NAMES))
 (240 6 (:DEFINITION SYMBOL-FNS::LIST-TO-STRING))
 (110 6 (:DEFINITION STRING-APPEND))
 (87 85 (:REWRITE DEFAULT-CDR))
 (54 54 (:TYPE-PRESCRIPTION SYMBOL-FNS::TO-STRING))
 (54 6 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (52 10 (:REWRITE DEFAULT-COERCE-3))
 (40 38 (:REWRITE DEFAULT-CAR))
 (38 8 (:DEFINITION BINARY-APPEND))
 (36 6 (:DEFINITION SYMBOL-LISTP))
 (33 3 (:DEFINITION TRUE-LISTP))
 (32 16 (:REWRITE DEFAULT-COERCE-1))
 (30 30 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (28 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (26 26 (:REWRITE DEFAULT-COERCE-2))
 (22 2 (:REWRITE COERCE-INVERSE-1))
 (18 2 (:DEFINITION CHARACTER-LISTP))
 (14 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (8 8 (:REWRITE CDR-CONS))
 (8 8 (:REWRITE CAR-CONS))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL-FNS::TO-SYMBOL-IN-PACKAGE-OF))
 (6 2 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 2 (:REWRITE DEFAULT-PKG-IMPORTS))
 (4 2 (:REWRITE COERCE-INVERSE-2))
 (4 2 (:REWRITE APPEND-TO-NIL))
 (2 2 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (2 2 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (2 2 (:REWRITE CHARACTER-LISTP-COERCE))
 )
(DEFUN::TRUE-LISTP-FUNCTION-DECLARATION-TO-TYPE-THM)
(DEFUN::DECLS-TO-TYPE-STATEMENT
 (54 6 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (36 6 (:DEFINITION SYMBOL-LISTP))
 (33 3 (:DEFINITION TRUE-LISTP))
 (30 30 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (15 3 (:DEFINITION DEFUN::DECLARATION-LISTP))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 3 (:DEFINITION DEFUN::DECLARATION-P))
 )
(DEFUN::DEFUN-TO-TYPE-STATEMENT)
(DEFUN::CLEAN-DEFUN
 (33 5 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (21 4 (:DEFINITION SYMBOL-LISTP))
 (16 16 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CAR-CONS))
 )
(DEFUN::MV-EQUIV)
(DEFUN::MV-EQUIVP)
(DEFUN::MV-EQUIVP-IMPLIES-SYMBOLP-MV-EQUIV
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFUN::OUTER-EQUIVP)
(DEFUN::OUTER-EQUIVP-FROM-SYMBOLP)
(DEFUN::OUTER-EQUIVP-FROM-MV-EQUIVP
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFUN::OUTER-EQUIV)
(DEFUN::MV-OFFSET)
(DEFUN::OUTER-EQUIVP-IMPLIES-SYMBOLP-OUTER-EQUIV
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFUN::MV-EQUIVP-IMPLIES-NATP-MV-OFFSET)
(DEFUN::SYMBOLP-IMPLIES-NOT-MV-EQUIVP)
(DEFUN::OUTER-EQUIV-LISTP)
(DEFUN::OUTER-EQUIV-LISTP-IMPLIES-TRUE-LISTP
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (24 4 (:DEFINITION SYMBOL-LISTP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::CONGRUENCE-SPEC)
(DEFUN::MV-CONGRUENCEP)
(DEFUN::CONGRUENCE-OFFSET)
(DEFUN::CONGRUENCE-EQUIV)
(DEFUN::CONGRUENCE-PATTERN)
(DEFUN::SYMBOL-LISTP-CONGRENCE-PATTERN)
(DEFUN::SYMBOL-CONGRENCE-EQUIV)
(DEFUN::NATP-CONGRENCE-OFFSET)
(DEFUN::CONGRUENCE-SPEC-LISTP)
(DEFUN::CONGRUENCE-SPEC-LISTP-IMPLIES-TRUE-LISTP
 (36 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (24 4 (:DEFINITION SYMBOL-LISTP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::WF-CONGRUENCE-SPEC)
(DEFUN::WF-CONGRUENCE-PATTERN)
(DEFUN::SYMBOL-LISTP-WF-CONGRENCE-PATTERN)
(DEFUN::WF-CONGRUENCE-SPEC-LISTP)
(DEFUN::WF-CONGRUENCE-HINT)
(DEFUN::WF-CONGRUENCE-HINT-LISTP)
(DEFUN::NULLIFY-LIST-APPEND)
(DEFUN::SYMBOL-LISTP-NULLIFY-LIST-APPEND
 (13 12 (:REWRITE DEFAULT-CDR))
 (11 10 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::MAP-LIST
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::CONGRUENCE-SPEC-LISTP-MAP-LIST
 (34 33 (:REWRITE DEFAULT-CDR))
 (29 28 (:REWRITE DEFAULT-CAR))
 )
(DEFUN::SPLIT-PATTERN
 (18 17 (:REWRITE DEFAULT-CAR))
 (17 16 (:REWRITE DEFAULT-CDR))
 (16 4 (:DEFINITION DEFUN::OUTER-EQUIV-LISTP))
 (4 4 (:TYPE-PRESCRIPTION DEFUN::OUTER-EQUIVP))
 (4 2 (:DEFINITION DEFUN::NULLIFY-LIST-APPEND))
 )
(DEFUN::CONGRUENCE-SPEC-LISTP-APPEND
 (24 21 (:REWRITE DEFAULT-CAR))
 (18 15 (:REWRITE DEFAULT-CDR))
 (18 9 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (9 3 (:REWRITE DEFUN::CAR-APPEND))
 )
(DEFUN::CONGRUENCE-SPEC-LIST-SPLIT-PATTERN
 (100 99 (:REWRITE DEFAULT-CDR))
 (91 90 (:REWRITE DEFAULT-CAR))
 (32 8 (:DEFINITION DEFUN::OUTER-EQUIV-LISTP))
 (25 5 (:DEFINITION BINARY-APPEND))
 (22 10 (:DEFINITION DEFUN::NULLIFY-LIST-APPEND))
 (15 5 (:DEFINITION DEFUN::MAP-LIST))
 (10 10 (:TYPE-PRESCRIPTION DEFUN::MAP-LIST))
 )
(DEFUN::MAP-CONS)
(DEFUN::WF-CONGRUENCE-PAIRING)
(DEFUN::CONGRUENCE-PAIRING)
(DEFUN::CONGRUENCE-PAIRING-APPEND
 (234 26 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (156 26 (:DEFINITION SYMBOL-LISTP))
 (143 13 (:DEFINITION TRUE-LISTP))
 (130 130 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (112 103 (:REWRITE DEFAULT-CAR))
 (81 78 (:REWRITE DEFAULT-CDR))
 (27 9 (:REWRITE DEFUN::CAR-APPEND))
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (11 11 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(DEFUN::CONGRUENCE-PAIRING-MAP-CONS
 (162 18 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (108 18 (:DEFINITION SYMBOL-LISTP))
 (99 9 (:DEFINITION TRUE-LISTP))
 (90 90 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (53 50 (:REWRITE DEFAULT-CAR))
 (49 48 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::OUTER-EQUIV-LIST
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::OUTER-EQUIV-LISTP-OUTER-EQUIV-LIST
 (24 23 (:REWRITE DEFAULT-CAR))
 (13 12 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::WF-CONGRUENCE-OUTER-EQUIV-LIST
 (20 4 (:DEFINITION LEN))
 (10 10 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFUN::OUTER-EQUIV-LISTP-WF-CONGRUENCE-OUTER-EQUIV-LIST
 (35 35 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (5 1 (:DEFINITION DEFUN::OUTER-EQUIV-LIST))
 (2 2 (:TYPE-PRESCRIPTION DEFUN::OUTER-EQUIV-LIST))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFUN::SPLIT-PAIRED-CONGRUENCES
 (184 8 (:DEFINITION TRUE-LIST-LISTP))
 (144 16 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (100 100 (:REWRITE DEFAULT-CDR))
 (95 95 (:REWRITE DEFAULT-CAR))
 (88 8 (:DEFINITION TRUE-LISTP))
 (20 1 (:DEFINITION DEFUN::SPLIT-PATTERN))
 (18 9 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION DEFUN::MAP-LIST))
 (5 1 (:DEFINITION DEFUN::MAP-CONS))
 (5 1 (:DEFINITION BINARY-APPEND))
 (3 2 (:DEFINITION DEFUN::NULLIFY-LIST-APPEND))
 (2 2 (:TYPE-PRESCRIPTION DEFUN::MAP-LIST))
 )
(DEFUN::CONGRUENCE-PAIRING-SPLIT-PAIRED-CONGRUENCES
 (306 34 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (190 17 (:DEFINITION TRUE-LISTP))
 (183 183 (:REWRITE DEFAULT-CAR))
 (176 176 (:REWRITE DEFAULT-CDR))
 (105 3 (:DEFINITION DEFUN::CONGRUENCE-PAIRING))
 (60 3 (:DEFINITION DEFUN::SPLIT-PATTERN))
 (30 6 (:DEFINITION BINARY-APPEND))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 3 (:DEFINITION DEFUN::MAP-LIST))
 (15 3 (:DEFINITION DEFUN::MAP-CONS))
 (12 7 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 6 (:DEFINITION DEFUN::NULLIFY-LIST-APPEND))
 (7 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::WF-CONGRUENCE-OUTER-EQUIV-LIST))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::SPLIT-PATTERN))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::SPLIT-PAIRED-CONGRUENCES))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::MAP-LIST))
 (6 6 (:TYPE-PRESCRIPTION DEFUN::MAP-CONS))
 (3 3 (:TYPE-PRESCRIPTION DEFUN::CONGRUENCE-SPEC))
 )
(DEFUN::PAIR-HINTS-AND-PATTERNS)
(DEFUN::CONGRUENCE-PAIRING-PAIR-HINTS-AND-PATTERNS
 (198 22 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (138 136 (:REWRITE DEFAULT-CDR))
 (128 122 (:REWRITE DEFAULT-CAR))
 (121 11 (:DEFINITION TRUE-LISTP))
 (70 14 (:DEFINITION LEN))
 (28 14 (:REWRITE DEFAULT-+-2))
 (26 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::PAIR-HINTS-WITH-PATTERNS-AND-SPLIT)
(DEFUN::CONGRUENCE-PAIRING-PAIR-HINTS-WITH-PATTERNS-AND-SPLIT)
(DEFUN::ALT-ARGS-FROM-PATTERN
 (15 15 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE SYMBOL-FNS::SYMBOLP-SAFE-WITNESS))
 )
(DEFUN::ARG-EQUIV)
(DEFUN::SYMBOLP-ARG-EQUIV
 (18 18 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(DEFUN::ADD-TO-GOAL-HINT
 (90 10 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (60 10 (:DEFINITION SYMBOL-LISTP))
 (55 5 (:DEFINITION TRUE-LISTP))
 (50 50 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(DEFUN::TRUE-LISTP-ADD-TO-GOAL-HINT
 (151 14 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (111 15 (:DEFINITION SYMBOL-LISTP))
 (68 68 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (67 64 (:REWRITE DEFAULT-CAR))
 (55 49 (:REWRITE DEFAULT-CDR))
 (27 9 (:DEFINITION REVAPPEND))
 (18 6 (:DEFINITION BINARY-APPEND))
 )
(DEFUN::MAKE-CONGRUENCE-HINT
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (2 2 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(DEFUN::TRUE-LISTP-MAKE-CONGRUENCE-HINT
 (102 2 (:DEFINITION DEFUN::ADD-TO-GOAL-HINT))
 (75 17 (:DEFINITION BINARY-APPEND))
 (52 4 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (41 39 (:REWRITE DEFAULT-CAR))
 (41 37 (:REWRITE DEFAULT-CDR))
 (40 4 (:DEFINITION SYMBOL-LISTP))
 (32 2 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:REWRITE CDR-CONS))
 (8 8 (:REWRITE CAR-CONS))
 (4 4 (:DEFINITION REVAPPEND))
 )
(DEFUN::INDEXED-EQUIV-PREFIX)
(DEFUN::SYMBOLP-INDEXED-EQUIV-PREFIX)
(DEFUN::MAKE-CONGRUENCE-CONCLUSION)
(DEFUN::MAKE-CONGRUENCE-THEOREM)
(DEFUN::MAKE-CONGRUENCE-THEOREMS
 (126 14 (:REWRITE DEFUN::SYMBOL-LISTP-IMPLIES-TRUE-LISTP))
 (77 7 (:DEFINITION TRUE-LISTP))
 (54 54 (:REWRITE DEFAULT-CAR))
 (45 45 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFUN::PROCESS-CONGRUENCE-ARGUMENTS)
(DEFUN::TRUE-LISTP-PROCESS-CONGRUENCE-ARGUMENTS)
(DEFUN::REPLACE-FUNCTION-NAMES-ARGS
 (504 16 (:DEFINITION ACL2-COUNT))
 (168 80 (:REWRITE DEFAULT-+-2))
 (112 80 (:REWRITE DEFAULT-+-1))
 (64 16 (:REWRITE COMMUTATIVITY-OF-+))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (24 24 (:REWRITE FOLD-CONSTS-IN-+))
 (24 24 (:REWRITE DEFAULT-CDR))
 (20 18 (:REWRITE DEFAULT-<-1))
 (18 18 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-FNS::SAFE-WITNESS))
 )
