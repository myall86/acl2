(TRUE-LISTP-REVAPPEND
 (19 13 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(PARSE-IF-AS-IMPLIES1
 (349 349 (:REWRITE DEFAULT-CDR))
 (342 159 (:REWRITE DEFAULT-+-2))
 (210 42 (:DEFINITION LEN))
 (203 159 (:REWRITE DEFAULT-+-1))
 (174 174 (:REWRITE DEFAULT-CAR))
 (80 20 (:DEFINITION INTEGER-ABS))
 (33 25 (:REWRITE DEFAULT-<-2))
 (30 25 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (22 22 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-IMAGPART))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 )
(PARSE-IF-AS-IMPLIES)
(MY-TEST)
