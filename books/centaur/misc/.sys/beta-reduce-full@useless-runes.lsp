(APPLY-FOR-DEFEVALUATOR)
(BETA-EVAL)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(BETA-EVAL-CONSTRAINT-0)
(BETA-EVAL-CONSTRAINT-1)
(BETA-EVAL-CONSTRAINT-2)
(BETA-EVAL-CONSTRAINT-3)
(BETA-EVAL-CONSTRAINT-4)
(BETA-EVAL-CONSTRAINT-5)
(BETA-EVAL-CONSTRAINT-6)
(BETA-EVAL-CONSTRAINT-7)
(BETA-REDUCE-FULL-REC
 (455 187 (:REWRITE DEFAULT-+-2))
 (263 187 (:REWRITE DEFAULT-+-1))
 (128 32 (:DEFINITION INTEGER-ABS))
 (128 16 (:DEFINITION LENGTH))
 (80 16 (:DEFINITION LEN))
 (53 38 (:REWRITE DEFAULT-<-2))
 (42 38 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:TYPE-PRESCRIPTION LEN))
 (16 16 (:REWRITE DEFAULT-REALPART))
 (16 16 (:REWRITE DEFAULT-NUMERATOR))
 (16 16 (:REWRITE DEFAULT-IMAGPART))
 (16 16 (:REWRITE DEFAULT-DENOMINATOR))
 (16 16 (:REWRITE DEFAULT-COERCE-2))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 )
(BETA-REDUCE-FLG
 (455 187 (:REWRITE DEFAULT-+-2))
 (263 187 (:REWRITE DEFAULT-+-1))
 (128 32 (:DEFINITION INTEGER-ABS))
 (128 16 (:DEFINITION LENGTH))
 (80 16 (:DEFINITION LEN))
 (53 38 (:REWRITE DEFAULT-<-2))
 (42 38 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:TYPE-PRESCRIPTION LEN))
 (16 16 (:REWRITE DEFAULT-REALPART))
 (16 16 (:REWRITE DEFAULT-NUMERATOR))
 (16 16 (:REWRITE DEFAULT-IMAGPART))
 (16 16 (:REWRITE DEFAULT-DENOMINATOR))
 (16 16 (:REWRITE DEFAULT-COERCE-2))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 (4 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(BETA-REDUCE-FLG-EQUIVALENCES)
(LEN-OF-BETA-REDUCE-FULL-REC-LIST
 (49 45 (:REWRITE DEFAULT-CDR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (26 1 (:DEFINITION BETA-REDUCE-FULL-REC))
 (24 24 (:REWRITE DEFAULT-+-1))
 (23 20 (:REWRITE DEFAULT-CAR))
 (11 1 (:DEFINITION PAIRLIS$))
 (5 1 (:DEFINITION ASSOC-EQUAL))
 )
(TRUE-LISTP-OF-BETA-REDUCE-FULL-REC-LIST)
(SYMBOL-ALISTP-PAIRLIS
 (24 22 (:REWRITE DEFAULT-CAR))
 (11 10 (:REWRITE DEFAULT-CDR))
 )
(BETA-REDUCE-FULL-REC
 (343 328 (:REWRITE DEFAULT-CDR))
 (325 310 (:REWRITE DEFAULT-CAR))
 (170 85 (:REWRITE DEFAULT-+-2))
 (108 20 (:DEFINITION SYMBOL-ALISTP))
 (85 85 (:REWRITE DEFAULT-+-1))
 (69 19 (:DEFINITION SYMBOL-LISTP))
 (34 34 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (24 24 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (18 6 (:DEFINITION BETA-REDUCE-FULL-REC-LIST))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:TYPE-PRESCRIPTION PAIRLIS$))
 )
(BETA-EVAL-ALIST)
(BETA-EVAL-ALIST-OF-PAIRLIS
 (24 24 (:REWRITE BETA-EVAL-CONSTRAINT-3))
 (24 24 (:REWRITE BETA-EVAL-CONSTRAINT-2))
 )
(LOOKUP-IN-BETA-EVAL-ALIST
 (116 112 (:REWRITE DEFAULT-CAR))
 (43 41 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE BETA-EVAL-CONSTRAINT-3))
 (16 16 (:REWRITE BETA-EVAL-CONSTRAINT-2))
 (16 16 (:REWRITE BETA-EVAL-CONSTRAINT-1))
 )
(STRIP-CDRS-OF-PAIRLIS
 (28 25 (:REWRITE DEFAULT-CDR))
 (23 12 (:REWRITE DEFAULT-+-2))
 (20 17 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-+-1))
 )
(FLAG-LEMMA-FOR-PSEUDO-TERMP-OF-BETA-REDUCE-FULL-REC
 (752 702 (:REWRITE DEFAULT-CDR))
 (647 596 (:REWRITE DEFAULT-CAR))
 (238 119 (:REWRITE DEFAULT-+-2))
 (165 15 (:DEFINITION PAIRLIS$))
 (120 120 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (119 119 (:REWRITE DEFAULT-+-1))
 (101 101 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (75 25 (:DEFINITION SYMBOL-LISTP))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:TYPE-PRESCRIPTION PAIRLIS$))
 )
(PSEUDO-TERMP-OF-BETA-REDUCE-FULL-REC)
(PSEUDO-TERM-LISTP-OF-BETA-REDUCE-FULL-REC-LIST)
(FLAG-LEMMA-FOR-BETA-REDUCE-FULL-REC-CORRECT
 (368 339 (:REWRITE DEFAULT-CDR))
 (355 321 (:REWRITE DEFAULT-CAR))
 (115 12 (:DEFINITION BETA-EVAL-ALIST))
 (114 12 (:DEFINITION PAIRLIS$))
 (78 39 (:REWRITE DEFAULT-+-2))
 (39 39 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (31 31 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (9 9 (:TYPE-PRESCRIPTION KWOTE-LST))
 (8 2 (:DEFINITION KWOTE-LST))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (6 6 (:TYPE-PRESCRIPTION PAIRLIS$))
 (2 2 (:DEFINITION KWOTE))
 )
(BETA-REDUCE-FULL-REC-CORRECT)
(BETA-REDUCE-FULL-REC-LIST-CORRECT)
(BETA-REDUCE-FULL
 (336 321 (:REWRITE DEFAULT-CDR))
 (283 268 (:REWRITE DEFAULT-CAR))
 (228 113 (:REWRITE DEFAULT-+-2))
 (124 113 (:REWRITE DEFAULT-+-1))
 (69 19 (:DEFINITION SYMBOL-LISTP))
 (34 34 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (28 4 (:DEFINITION SYMBOL-ALISTP))
 (24 24 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (18 6 (:DEFINITION BETA-REDUCE-FULL-LIST))
 (17 17 (:REWRITE DEFAULT-COERCE-2))
 (17 17 (:REWRITE DEFAULT-COERCE-1))
 (9 7 (:REWRITE DEFAULT-<-2))
 (8 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 )
(LEN-OF-BETA-REDUCE-FULL-LIST
 (58 51 (:REWRITE DEFAULT-CDR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (48 1 (:DEFINITION BETA-REDUCE-FULL))
 (32 26 (:REWRITE DEFAULT-CAR))
 (28 1 (:DEFINITION BETA-REDUCE-FULL-REC))
 (24 24 (:REWRITE DEFAULT-+-1))
 (22 2 (:DEFINITION PAIRLIS$))
 (7 1 (:DEFINITION ASSOC-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION BETA-REDUCE-FULL-REC-LIST))
 (2 2 (:TYPE-PRESCRIPTION PAIRLIS$))
 )
(TRUE-LISTP-OF-BETA-REDUCE-FULL-LIST)
(FLAG-LEMMA-FOR-PSEUDO-TERMP-OF-BETA-REDUCE-FULL
 (513 463 (:REWRITE DEFAULT-CDR))
 (450 399 (:REWRITE DEFAULT-CAR))
 (224 8 (:DEFINITION BETA-REDUCE-FULL-REC))
 (176 16 (:DEFINITION PAIRLIS$))
 (146 73 (:REWRITE DEFAULT-+-2))
 (73 73 (:REWRITE DEFAULT-+-1))
 (57 57 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (56 8 (:DEFINITION ASSOC-EQUAL))
 (55 55 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (48 48 (:TYPE-PRESCRIPTION BETA-REDUCE-FULL-REC-LIST))
 (45 15 (:DEFINITION SYMBOL-LISTP))
 (18 18 (:TYPE-PRESCRIPTION PAIRLIS$))
 (13 13 (:REWRITE DEFAULT-COERCE-2))
 (13 13 (:REWRITE DEFAULT-COERCE-1))
 (6 1 (:DEFINITION STRIP-CDRS))
 (2 2 (:TYPE-PRESCRIPTION STRIP-CDRS))
 )
(PSEUDO-TERMP-OF-BETA-REDUCE-FULL)
(PSEUDO-TERM-LISTP-OF-BETA-REDUCE-FULL-LIST)
(FLAG-LEMMA-FOR-BETA-REDUCE-FULL-CORRECT
 (363 325 (:REWRITE DEFAULT-CDR))
 (334 291 (:REWRITE DEFAULT-CAR))
 (168 6 (:DEFINITION BETA-REDUCE-FULL-REC))
 (142 14 (:DEFINITION PAIRLIS$))
 (78 39 (:REWRITE DEFAULT-+-2))
 (52 8 (:DEFINITION ASSOC-EQUAL))
 (39 39 (:REWRITE DEFAULT-+-1))
 (36 36 (:TYPE-PRESCRIPTION BETA-REDUCE-FULL-REC-LIST))
 (32 32 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (31 31 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:TYPE-PRESCRIPTION PAIRLIS$))
 (9 9 (:TYPE-PRESCRIPTION KWOTE-LST))
 (8 2 (:DEFINITION KWOTE-LST))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:DEFINITION KWOTE))
 )
(BETA-REDUCE-FULL-CORRECT)
(BETA-REDUCE-FULL-LIST-CORRECT)
