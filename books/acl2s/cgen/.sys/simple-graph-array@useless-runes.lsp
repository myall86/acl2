(CGEN::MAKE-N-UPTO-LIST
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CGEN::VERTEX-INDEXES)
(CGEN::WEAK-VINFO%-P)
(CGEN::SYMBOL-ALST->G$1)
(CGEN::INIT-G$1)
(CGEN::INIT-G$)
(CGEN::SYMBOL-ALIST->G$)
(CGEN::DFS-VISIT1
 (1112 549 (:REWRITE DEFAULT-+-2))
 (750 549 (:REWRITE DEFAULT-+-1))
 (448 112 (:REWRITE COMMUTATIVITY-OF-+))
 (448 112 (:DEFINITION INTEGER-ABS))
 (448 56 (:DEFINITION LENGTH))
 (246 246 (:REWRITE DEFAULT-CDR))
 (211 188 (:REWRITE DEFAULT-<-2))
 (208 188 (:REWRITE DEFAULT-<-1))
 (183 183 (:REWRITE DEFAULT-CAR))
 (145 145 (:REWRITE FOLD-CONSTS-IN-+))
 (134 30 (:REWRITE O-P-O-INFP-CAR))
 (112 112 (:REWRITE DEFAULT-UNARY-MINUS))
 (56 56 (:REWRITE DEFAULT-REALPART))
 (56 56 (:REWRITE DEFAULT-NUMERATOR))
 (56 56 (:REWRITE DEFAULT-IMAGPART))
 (56 56 (:REWRITE DEFAULT-DENOMINATOR))
 (56 56 (:REWRITE DEFAULT-COERCE-2))
 (56 56 (:REWRITE DEFAULT-COERCE-1))
 (44 30 (:REWRITE O-P-DEF-O-FINP-1))
 (43 28 (:REWRITE ZP-OPEN))
 (14 14 (:TYPE-PRESCRIPTION O-FINP))
 )
(CGEN::DFS-ALL-VERTICES
 (179 86 (:REWRITE DEFAULT-+-2))
 (120 86 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (27 22 (:REWRITE DEFAULT-<-2))
 (26 22 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(CGEN::DFS1)
(CGEN::ADJACENCY-LIST1P
 (190 92 (:REWRITE DEFAULT-+-2))
 (128 92 (:REWRITE DEFAULT-+-1))
 (80 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (44 36 (:REWRITE DEFAULT-CDR))
 (27 23 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (24 6 (:REWRITE O-P-O-INFP-CAR))
 (23 21 (:REWRITE DEFAULT-<-2))
 (22 21 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:TYPE-PRESCRIPTION O-P))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (8 1 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (6 6 (:REWRITE O-P-DEF-O-FINP-1))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (3 1 (:DEFINITION MEMBER-EQUAL))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(CGEN::ADJACENCY-LISTP)
(CGEN::MAKE-EMPTY-ADJ-LIST
 (179 86 (:REWRITE DEFAULT-+-2))
 (120 86 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (27 22 (:REWRITE DEFAULT-<-2))
 (26 22 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(CGEN::UNION-ENTRY-IN-ADJ-LIST
 (190 92 (:REWRITE DEFAULT-+-2))
 (128 92 (:REWRITE DEFAULT-+-1))
 (80 20 (:REWRITE COMMUTATIVITY-OF-+))
 (80 20 (:DEFINITION INTEGER-ABS))
 (80 10 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (23 21 (:REWRITE DEFAULT-<-2))
 (22 21 (:REWRITE DEFAULT-<-1))
 (22 18 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 4 (:REWRITE O-P-O-INFP-CAR))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:TYPE-PRESCRIPTION O-P))
 (4 4 (:REWRITE O-P-DEF-O-FINP-1))
 (2 2 (:TYPE-PRESCRIPTION UNION-EQUAL))
 )
(CGEN::UNION-ENTRIES-IN-ADJ-LIST
 (179 86 (:REWRITE DEFAULT-+-2))
 (120 86 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (27 22 (:REWRITE DEFAULT-<-2))
 (26 22 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(CGEN::TRANSPOSE-ALST1
 (179 86 (:REWRITE DEFAULT-+-2))
 (120 86 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (27 22 (:REWRITE DEFAULT-<-2))
 (26 22 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (6 6 (:TYPE-PRESCRIPTION CGEN::UNION-ENTRIES-IN-ADJ-LIST))
 )
(CGEN::TRANSPOSE-ALST)
(CGEN::SCC1)
(CGEN::G$->VAR-QUOTIENT-ALST1
 (31 28 (:REWRITE DEFAULT-+-2))
 (31 28 (:REWRITE DEFAULT-+-1))
 (11 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 )
(CGEN::G$->VAR-QUOTIENT-ALST)
(CGEN::VERTEX-NAMES
 (179 86 (:REWRITE DEFAULT-+-2))
 (120 86 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (30 30 (:REWRITE DEFAULT-CDR))
 (27 22 (:REWRITE DEFAULT-<-2))
 (26 22 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(CGEN::G$->ALST1
 (31 28 (:REWRITE DEFAULT-+-2))
 (31 28 (:REWRITE DEFAULT-+-1))
 (11 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 )
(CGEN::G$->SYMBOL-ALIST)
(CGEN::SCC0)
(CGEN::FIX-ADJACENCY-LIST)
(CGEN::STRONGLY-CONNECTED-COMPONENTS)
(CGEN::APPROXIMATE-TOPOLOGICAL-SORT)
