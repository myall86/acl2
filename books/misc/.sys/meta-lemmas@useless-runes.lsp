(APPLY-FOR-DEFEVALUATOR)
(META-EV)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(META-EV-CONSTRAINT-0)
(META-EV-CONSTRAINT-1)
(META-EV-CONSTRAINT-2)
(META-EV-CONSTRAINT-3)
(META-EV-CONSTRAINT-4)
(META-EV-CONSTRAINT-5)
(META-EV-CONSTRAINT-6)
(META-EV-CONSTRAINT-7)
(META-EV-CONSTRAINT-8)
(META-EV-CONSTRAINT-9)
(META-EV-CONSTRAINT-10)
(META-EV-CONSTRAINT-11)
(META-EV-CONSTRAINT-12)
(META-EV-CONSTRAINT-13)
(META-EV-CONSTRAINT-14)
(META-EV-CONSTRAINT-15)
(FORMAL-CONSP)
(FORMAL-TRUE-LISTP
 (184 88 (:REWRITE DEFAULT-+-2))
 (148 18 (:DEFINITION LENGTH))
 (147 147 (:REWRITE DEFAULT-CDR))
 (113 88 (:REWRITE DEFAULT-+-1))
 (110 22 (:DEFINITION LEN))
 (83 83 (:REWRITE DEFAULT-CAR))
 (48 12 (:DEFINITION INTEGER-ABS))
 (42 42 (:TYPE-PRESCRIPTION LEN))
 (21 16 (:REWRITE DEFAULT-<-2))
 (20 16 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (14 14 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-COERCE-2))
 (10 10 (:REWRITE DEFAULT-COERCE-1))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(FORMAL-NTH
 (243 238 (:REWRITE DEFAULT-CDR))
 (126 121 (:REWRITE DEFAULT-CAR))
 (125 15 (:DEFINITION LENGTH))
 (100 20 (:DEFINITION LEN))
 (45 45 (:TYPE-PRESCRIPTION LEN))
 (42 22 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (17 17 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(REDUCE-NTH-META
 (156 152 (:REWRITE DEFAULT-CDR))
 (83 79 (:REWRITE DEFAULT-CAR))
 (60 12 (:DEFINITION LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 3 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(FORMAL-TRUE-LISTP-IMPLIES-TRUE-LISTP-META-EV
 (489 484 (:REWRITE DEFAULT-CDR))
 (405 34 (:DEFINITION LENGTH))
 (343 57 (:DEFINITION LEN))
 (255 250 (:REWRITE DEFAULT-CAR))
 (134 67 (:REWRITE DEFAULT-+-2))
 (126 126 (:TYPE-PRESCRIPTION LEN))
 (67 67 (:REWRITE DEFAULT-+-1))
 (38 38 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (36 12 (:DEFINITION SYMBOL-LISTP))
 (29 29 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (12 3 (:REWRITE FOLD-CONSTS-IN-+))
 (11 11 (:REWRITE META-EV-CONSTRAINT-15))
 (11 11 (:REWRITE META-EV-CONSTRAINT-14))
 (11 11 (:REWRITE META-EV-CONSTRAINT-13))
 (11 11 (:REWRITE META-EV-CONSTRAINT-12))
 (11 11 (:REWRITE META-EV-CONSTRAINT-11))
 (9 9 (:REWRITE META-EV-CONSTRAINT-9))
 (9 9 (:REWRITE META-EV-CONSTRAINT-8))
 (9 9 (:REWRITE META-EV-CONSTRAINT-3))
 (8 8 (:REWRITE META-EV-CONSTRAINT-1))
 )
(REDUCE-NTH-META-CORRECT-LEMMA
 (675 67 (:DEFINITION LENGTH))
 (629 612 (:REWRITE DEFAULT-CAR))
 (554 102 (:DEFINITION LEN))
 (344 234 (:REWRITE DEFAULT-+-2))
 (234 234 (:REWRITE DEFAULT-+-1))
 (227 227 (:TYPE-PRESCRIPTION LEN))
 (199 61 (:REWRITE ZP-OPEN))
 (138 46 (:REWRITE FOLD-CONSTS-IN-+))
 (69 23 (:DEFINITION SYMBOL-LISTP))
 (68 68 (:REWRITE DEFAULT-<-2))
 (68 68 (:REWRITE DEFAULT-<-1))
 (62 62 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (48 46 (:REWRITE META-EV-CONSTRAINT-15))
 (48 46 (:REWRITE META-EV-CONSTRAINT-14))
 (48 46 (:REWRITE META-EV-CONSTRAINT-13))
 (48 46 (:REWRITE META-EV-CONSTRAINT-12))
 (48 46 (:REWRITE META-EV-CONSTRAINT-11))
 (45 45 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (42 40 (:REWRITE META-EV-CONSTRAINT-9))
 (42 40 (:REWRITE META-EV-CONSTRAINT-8))
 (42 40 (:REWRITE META-EV-CONSTRAINT-3))
 (38 38 (:REWRITE META-EV-CONSTRAINT-1))
 (27 27 (:REWRITE DEFAULT-COERCE-2))
 (27 27 (:REWRITE DEFAULT-COERCE-1))
 (23 23 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(REDUCE-NTH-META-CORRECT
 (150 148 (:REWRITE DEFAULT-CDR))
 (100 2 (:DEFINITION FORMAL-NTH))
 (89 87 (:REWRITE DEFAULT-CAR))
 (50 6 (:DEFINITION LENGTH))
 (48 12 (:REWRITE ZP-OPEN))
 (40 8 (:DEFINITION LEN))
 (38 2 (:DEFINITION FORMAL-TRUE-LISTP))
 (36 4 (:DEFINITION NTH))
 (28 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 6 (:REWRITE META-EV-CONSTRAINT-15))
 (8 5 (:REWRITE META-EV-CONSTRAINT-9))
 (8 5 (:REWRITE META-EV-CONSTRAINT-8))
 (8 5 (:REWRITE META-EV-CONSTRAINT-3))
 (8 5 (:REWRITE META-EV-CONSTRAINT-13))
 (8 5 (:REWRITE META-EV-CONSTRAINT-12))
 (8 5 (:REWRITE META-EV-CONSTRAINT-11))
 (8 5 (:REWRITE META-EV-CONSTRAINT-10))
 (7 7 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (7 4 (:REWRITE META-EV-CONSTRAINT-1))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (6 2 (:DEFINITION ALISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(FORMAL-MEMBER
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(EXPAND-MEMBER-META
 (8 8 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:TYPE-PRESCRIPTION EXPAND-MEMBER-META))
 )
(PSEUDO-TERMP-FORMAL-MEMBER
 (209 24 (:DEFINITION LENGTH))
 (166 32 (:DEFINITION LEN))
 (154 142 (:REWRITE DEFAULT-CDR))
 (151 127 (:REWRITE DEFAULT-CAR))
 (72 72 (:TYPE-PRESCRIPTION LEN))
 (69 69 (:TYPE-PRESCRIPTION FORMAL-MEMBER))
 (64 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (26 13 (:DEFINITION TRUE-LISTP))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (20 20 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(EQLABLE-LISTP-RECOGNIZER)
(EXPAND-MEMBER-META-CORRECT-LEMMA
 (142 122 (:REWRITE DEFAULT-CAR))
 (90 90 (:REWRITE DEFAULT-CDR))
 (80 16 (:DEFINITION LEN))
 (35 13 (:REWRITE META-EV-CONSTRAINT-15))
 (35 13 (:REWRITE META-EV-CONSTRAINT-14))
 (35 13 (:REWRITE META-EV-CONSTRAINT-13))
 (32 16 (:REWRITE DEFAULT-+-2))
 (29 11 (:REWRITE META-EV-CONSTRAINT-9))
 (29 11 (:REWRITE META-EV-CONSTRAINT-8))
 (29 11 (:REWRITE META-EV-CONSTRAINT-10))
 (27 11 (:REWRITE META-EV-CONSTRAINT-3))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 8 (:DEFINITION TRUE-LISTP))
 (12 4 (:DEFINITION SYMBOL-LISTP))
 (10 8 (:REWRITE META-EV-CONSTRAINT-1))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(EXPAND-MEMBER-META-CORRECT
 (123 123 (:REWRITE DEFAULT-CDR))
 (77 77 (:REWRITE DEFAULT-CAR))
 (75 9 (:DEFINITION LENGTH))
 (60 12 (:DEFINITION LEN))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 6 (:REWRITE META-EV-CONSTRAINT-15))
 (9 6 (:REWRITE META-EV-CONSTRAINT-14))
 (9 3 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 5 (:REWRITE META-EV-CONSTRAINT-9))
 (8 5 (:REWRITE META-EV-CONSTRAINT-8))
 (8 5 (:REWRITE META-EV-CONSTRAINT-3))
 (8 5 (:REWRITE META-EV-CONSTRAINT-12))
 (8 5 (:REWRITE META-EV-CONSTRAINT-11))
 (8 5 (:REWRITE META-EV-CONSTRAINT-10))
 (7 4 (:REWRITE META-EV-CONSTRAINT-1))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 (6 2 (:DEFINITION FORMAL-MEMBER))
 (6 2 (:DEFINITION EQLABLE-LISTP))
 (6 2 (:DEFINITION ALISTP))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
