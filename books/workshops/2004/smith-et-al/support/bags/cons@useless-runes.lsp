(HYPOTHESIS-PARITY)
(CONCLUSION-PARITY)
(APPLY-FOR-DEFEVALUATOR)
(CONS-EV)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(CONS-EV-CONSTRAINT-0)
(CONS-EV-CONSTRAINT-1)
(CONS-EV-CONSTRAINT-2)
(CONS-EV-CONSTRAINT-3)
(CONS-EV-CONSTRAINT-4)
(CONS-EV-CONSTRAINT-5)
(CONS-EV-CONSTRAINT-6)
(CONS-EV-CONSTRAINT-7)
(CONS-EV-CONSTRAINT-8)
(CONS-EV-CONSTRAINT-9)
(CONS-EV-CONSTRAINT-10)
(CONS-EQUAL-META-FUNCTION-HELPER
 (213 99 (:REWRITE DEFAULT-+-2))
 (135 99 (:REWRITE DEFAULT-+-1))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (72 9 (:DEFINITION LENGTH))
 (65 65 (:REWRITE DEFAULT-CDR))
 (45 9 (:DEFINITION LEN))
 (32 24 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE DEFAULT-CAR))
 (30 24 (:REWRITE DEFAULT-<-1))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(CONS-EQUAL-SMART-META-HELPER
 (337 282 (:REWRITE DEFAULT-CAR))
 (299 299 (:REWRITE DEFAULT-CDR))
 (145 79 (:REWRITE CONS-EV-CONSTRAINT-3))
 (88 77 (:REWRITE CONS-EV-CONSTRAINT-1))
 )
(CONS-EQUAL-META-FUNCTION
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CONS-EQUAL-SMART-META
 (64 64 (:REWRITE DEFAULT-CDR))
 (49 49 (:REWRITE DEFAULT-CAR))
 (29 1 (:DEFINITION CONS-EQUAL-META-FUNCTION-HELPER))
 (24 16 (:REWRITE CONS-EV-CONSTRAINT-10))
 (18 18 (:TYPE-PRESCRIPTION CONS-EQUAL-META-FUNCTION-HELPER))
 (16 10 (:REWRITE CONS-EV-CONSTRAINT-3))
 (16 10 (:REWRITE CONS-EV-CONSTRAINT-2))
 (16 10 (:REWRITE CONS-EV-CONSTRAINT-1))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 )
(CONS-EQUAL-REWRITE
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(CONS-ONTO-CDR-EQUALS-ALL-REWRITE
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(LIST-CAR-EQUAL-ALL-REWRITE
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(CONS-EQUAL-CONS-SAME-REWRITE-ONE
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(CONS-EQUAL-CONS-SAME-REWRITE-TWO
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
