(ADE::B-TO-F
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
 )
(ADE::FN-TO-MODULE-OUTS
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ADE::FN-TO-MODULE-BODY
 (1350 645 (:REWRITE DEFAULT-+-2))
 (966 69 (:DEFINITION LENGTH))
 (870 645 (:REWRITE DEFAULT-+-1))
 (759 69 (:DEFINITION LEN))
 (552 138 (:REWRITE COMMUTATIVITY-OF-+))
 (552 138 (:DEFINITION INTEGER-ABS))
 (216 171 (:REWRITE DEFAULT-<-2))
 (207 207 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (207 138 (:REWRITE STR::CONSP-OF-EXPLODE))
 (195 171 (:REWRITE DEFAULT-<-1))
 (138 138 (:REWRITE DEFAULT-UNARY-MINUS))
 (138 69 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (69 69 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (69 69 (:REWRITE DEFAULT-REALPART))
 (69 69 (:REWRITE DEFAULT-NUMERATOR))
 (69 69 (:REWRITE DEFAULT-IMAGPART))
 (69 69 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ADE::FLATTEN-EXPR)
(ADE::FLATTEN-BINDING
 (1350 645 (:REWRITE DEFAULT-+-2))
 (966 69 (:DEFINITION LENGTH))
 (870 645 (:REWRITE DEFAULT-+-1))
 (759 69 (:DEFINITION LEN))
 (552 138 (:REWRITE COMMUTATIVITY-OF-+))
 (552 138 (:DEFINITION INTEGER-ABS))
 (216 171 (:REWRITE DEFAULT-<-2))
 (207 207 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (207 138 (:REWRITE STR::CONSP-OF-EXPLODE))
 (195 171 (:REWRITE DEFAULT-<-1))
 (138 138 (:REWRITE DEFAULT-UNARY-MINUS))
 (138 69 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (69 69 (:TYPE-PRESCRIPTION LEN))
 (69 69 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (69 69 (:REWRITE DEFAULT-REALPART))
 (69 69 (:REWRITE DEFAULT-NUMERATOR))
 (69 69 (:REWRITE DEFAULT-IMAGPART))
 (69 69 (:REWRITE DEFAULT-DENOMINATOR))
 (22 22 (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ADE::ADD-PREFIX-TO-NAME)
(ADE::ADD-PREFIX-TO-NAMES
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ADE::ADD-PREFIX-TO-STATE-NAMES
 (7 7 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ADE::DEFINE-CONTROL-STATES
 (22 22 (:REWRITE DEFAULT-CAR))
 (16 4 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (8 8 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (8 4 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (6 6 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 2 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 )
(ADE::DEFINE-CONTROL-VECTOR-ACCESSORS)
(ADE::CONTROL-LET)
(ADE::BUILD-ST)
(ADE::CV-LEMMA-CONCL)
(ADE::UPDATE-TEMPLATE)
(ADE::ADD-PREFIX-AND-SUFFIX-TO-NAME
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(ADE::ADD-PREFIX-AND-SUFFIX-TO-STATE-NAMES
 (7 7 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ADE::DEFINE-CONTROL-VECTOR-FUNCTIONS)
(ADE::BIND-VALUES)
(ADE::WIRE-OCCS)
(ADE::B-AND-EXPR
 (1 1 (:TYPE-PRESCRIPTION ADE::B-AND-EXPR))
 )
(ADE::UNWIND
 (666 304 (:REWRITE DEFAULT-+-2))
 (420 30 (:DEFINITION LENGTH))
 (405 304 (:REWRITE DEFAULT-+-1))
 (330 30 (:DEFINITION LEN))
 (240 60 (:REWRITE COMMUTATIVITY-OF-+))
 (240 60 (:DEFINITION INTEGER-ABS))
 (95 73 (:REWRITE DEFAULT-<-2))
 (90 90 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (90 60 (:REWRITE STR::CONSP-OF-EXPLODE))
 (81 73 (:REWRITE DEFAULT-<-1))
 (60 60 (:REWRITE DEFAULT-UNARY-MINUS))
 (60 30 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (30 30 (:TYPE-PRESCRIPTION LEN))
 (30 30 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (30 30 (:REWRITE DEFAULT-REALPART))
 (30 30 (:REWRITE DEFAULT-NUMERATOR))
 (30 30 (:REWRITE DEFAULT-IMAGPART))
 (30 30 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:TYPE-PRESCRIPTION ADE::B-AND-EXPR))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ADE::UNWIND-NEXT-ST)
(ADE::COLLECT-FROM-ALIST
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(ADE::COMPUTE-NEXT-ST)
(ADE::DEFINE-NEXT-STATE)
(ADE::WIRE-OCCS-FROM-DECODED-STATE
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ADE::TRANSLATE-B-FNS
 (1066 519 (:REWRITE DEFAULT-+-2))
 (784 56 (:DEFINITION LENGTH))
 (685 519 (:REWRITE DEFAULT-+-1))
 (616 56 (:DEFINITION LEN))
 (448 112 (:REWRITE COMMUTATIVITY-OF-+))
 (448 112 (:DEFINITION INTEGER-ABS))
 (175 139 (:REWRITE DEFAULT-<-2))
 (168 168 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (168 112 (:REWRITE STR::CONSP-OF-EXPLODE))
 (159 139 (:REWRITE DEFAULT-<-1))
 (112 112 (:REWRITE DEFAULT-UNARY-MINUS))
 (112 56 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (56 56 (:TYPE-PRESCRIPTION LEN))
 (56 56 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (56 56 (:REWRITE DEFAULT-REALPART))
 (56 56 (:REWRITE DEFAULT-NUMERATOR))
 (56 56 (:REWRITE DEFAULT-IMAGPART))
 (56 56 (:REWRITE DEFAULT-DENOMINATOR))
 )
(ADE::MAKE-IF-TREE
 (664 300 (:REWRITE DEFAULT-+-2))
 (420 30 (:DEFINITION LENGTH))
 (407 300 (:REWRITE DEFAULT-+-1))
 (330 30 (:DEFINITION LEN))
 (240 60 (:REWRITE COMMUTATIVITY-OF-+))
 (240 60 (:DEFINITION INTEGER-ABS))
 (95 73 (:REWRITE DEFAULT-<-2))
 (90 90 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (90 60 (:REWRITE STR::CONSP-OF-EXPLODE))
 (81 73 (:REWRITE DEFAULT-<-1))
 (60 60 (:REWRITE DEFAULT-UNARY-MINUS))
 (60 30 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (30 30 (:TYPE-PRESCRIPTION LEN))
 (30 30 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (30 30 (:REWRITE DEFAULT-REALPART))
 (30 30 (:REWRITE DEFAULT-NUMERATOR))
 (30 30 (:REWRITE DEFAULT-IMAGPART))
 (30 30 (:REWRITE DEFAULT-DENOMINATOR))
 )
(ADE::NEXT-CNTL-STATE-LEMMAS)
(ADE::GENERATE-NEXT-CNTL-STATE-LEMMAS)
(ADE::BIND-SIGNALS-TO-VAL)
(ADE::MODULE$STATE-INTERLEAVINGS-GEN-FN)
(ADE::IDX->CAR-CDR)
(ADE::GO-GEN1)
(ADE::REMOVE-LST-LST
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION ADE::REMOVE-LST))
 )
(ADE::REMOVE-LEN-<-2)
(ADE::GO-GEN
 (312 12 (:REWRITE LEN-WHEN-PREFIXP))
 (296 290 (:REWRITE DEFAULT-CDR))
 (282 54 (:DEFINITION LEN))
 (256 250 (:REWRITE DEFAULT-CAR))
 (232 8 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (175 35 (:DEFINITION REMOVE-EQUAL))
 (168 8 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (114 60 (:REWRITE DEFAULT-+-2))
 (93 55 (:REWRITE DEFAULT-<-1))
 (80 40 (:DEFINITION TRUE-LISTP))
 (67 55 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE DEFAULT-+-1))
 (28 28 (:TYPE-PRESCRIPTION PREFIXP))
 (28 28 (:LINEAR LEN-WHEN-PREFIXP))
 (16 4 (:DEFINITION ADE::IDX->CAR-CDR))
 (14 14 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (8 8 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (8 8 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (8 8 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (8 8 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (8 8 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (8 8 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (4 4 (:REWRITE ZP-OPEN))
 )
(ADE::ST-TRANS-GEN
 (206 1 (:DEFINITION ADE::GO-GEN))
 (178 12 (:DEFINITION BINARY-APPEND))
 (90 60 (:REWRITE DEFAULT-CDR))
 (86 56 (:REWRITE DEFAULT-CAR))
 (78 3 (:REWRITE LEN-WHEN-PREFIXP))
 (68 32 (:REWRITE STR::CONSP-OF-EXPLODE))
 (58 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (42 2 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (40 8 (:DEFINITION LEN))
 (30 18 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (20 20 (:TYPE-PRESCRIPTION ADE::GO-GEN1))
 (20 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (17 9 (:REWRITE DEFAULT-+-2))
 (17 1 (:DEFINITION ADE::REMOVE-LEN-<-2))
 (16 2 (:DEFINITION ADE::REMOVE-LST))
 (12 4 (:DEFINITION ADE::GO-GEN1))
 (11 11 (:REWRITE DEFAULT-SYMBOL-NAME))
 (11 1 (:DEFINITION ADE::REMOVE-LST-LST))
 (10 6 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION REMOVE-EQUAL))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 6 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE STR::NAT-TO-DEC-STRING-NONEMPTY))
 (8 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (7 7 (:TYPE-PRESCRIPTION PREFIXP))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:DEFINITION ADE::IDX->CAR-CDR))
 (4 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (3 3 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (2 2 (:TYPE-PRESCRIPTION ADE::REMOVE-LST-LST))
 (2 2 (:TYPE-PRESCRIPTION ADE::REMOVE-LST))
 (2 2 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (2 2 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 )
(ADE::ST-TRANS-LST
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ADE::ST-TRANS->NUMSTEPS-LST
 (60 3 (:DEFINITION BINARY-APPEND))
 (28 12 (:REWRITE STR::CONSP-OF-EXPLODE))
 (26 14 (:REWRITE DEFAULT-CDR))
 (26 14 (:REWRITE DEFAULT-CAR))
 (13 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (10 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (8 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (6 6 (:REWRITE DEFAULT-SYMBOL-NAME))
 (4 4 (:REWRITE STR::NAT-TO-DEC-STRING-NONEMPTY))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(ADE::ST-TRANS-FN
 (333 22 (:DEFINITION BINARY-APPEND))
 (325 1 (:DEFINITION ADE::ST-TRANS->NUMSTEPS-LST))
 (307 1 (:DEFINITION ADE::ST-TRANS-GEN))
 (202 1 (:DEFINITION ADE::GO-GEN))
 (141 84 (:REWRITE DEFAULT-CDR))
 (130 73 (:REWRITE DEFAULT-CAR))
 (98 62 (:REWRITE STR::CONSP-OF-EXPLODE))
 (78 3 (:REWRITE LEN-WHEN-PREFIXP))
 (75 15 (:DEFINITION LEN))
 (58 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (43 30 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (42 2 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (38 23 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-SYMBOL-NAME))
 (26 18 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (23 23 (:REWRITE DEFAULT-+-1))
 (20 20 (:TYPE-PRESCRIPTION ADE::GO-GEN1))
 (20 5 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (17 1 (:DEFINITION ADE::REMOVE-LEN-<-2))
 (16 2 (:DEFINITION ADE::REMOVE-LST))
 (12 12 (:TYPE-PRESCRIPTION STR::STRINGP-OF-NAT-TO-DEC-STRING))
 (12 4 (:DEFINITION ADE::GO-GEN1))
 (11 1 (:DEFINITION ADE::REMOVE-LST-LST))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (10 5 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (10 2 (:DEFINITION REMOVE-EQUAL))
 (9 5 (:REWRITE DEFAULT-<-2))
 (9 5 (:REWRITE DEFAULT-<-1))
 (8 1 (:REWRITE ZP-OPEN))
 (7 7 (:TYPE-PRESCRIPTION PREFIXP))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (4 4 (:REWRITE STR::NAT-TO-DEC-STRING-NONEMPTY))
 (4 2 (:DEFINITION TRUE-LISTP))
 (4 1 (:REWRITE REV-WHEN-NOT-CONSP))
 (3 3 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (3 1 (:REWRITE APPEND-OF-NIL))
 (2 2 (:TYPE-PRESCRIPTION ADE::REMOVE-LST-LST))
 (2 2 (:TYPE-PRESCRIPTION ADE::REMOVE-LST))
 (2 2 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (2 2 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (2 1 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (2 1 (:REWRITE STR::IMPLODE-OF-EXPLODE))
 )
