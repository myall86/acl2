(SUBLIS-VAR-SIMPLE
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(FLAG-SUBLIS-VAR-SIMPLE
 (332 160 (:REWRITE DEFAULT-+-2))
 (223 160 (:REWRITE DEFAULT-+-1))
 (136 34 (:REWRITE COMMUTATIVITY-OF-+))
 (136 34 (:DEFINITION INTEGER-ABS))
 (136 17 (:DEFINITION LENGTH))
 (85 17 (:DEFINITION LEN))
 (55 43 (:REWRITE DEFAULT-<-2))
 (52 43 (:REWRITE DEFAULT-<-1))
 (48 48 (:REWRITE DEFAULT-CDR))
 (46 46 (:REWRITE FOLD-CONSTS-IN-+))
 (34 34 (:REWRITE DEFAULT-UNARY-MINUS))
 (31 31 (:REWRITE DEFAULT-CAR))
 (17 17 (:TYPE-PRESCRIPTION LEN))
 (17 17 (:REWRITE DEFAULT-REALPART))
 (17 17 (:REWRITE DEFAULT-NUMERATOR))
 (17 17 (:REWRITE DEFAULT-IMAGPART))
 (17 17 (:REWRITE DEFAULT-DENOMINATOR))
 (17 17 (:REWRITE DEFAULT-COERCE-2))
 (17 17 (:REWRITE DEFAULT-COERCE-1))
 (8 4 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (4 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FLAG-SUBLIS-VAR-SIMPLE-EQUIVALENCES)
(FLAG-LEMMA-FOR-SUBLIS-VAR-SIMPLE-OF-NIL
 (81 9 (:DEFINITION LENGTH))
 (76 76 (:REWRITE DEFAULT-CDR))
 (74 70 (:REWRITE DEFAULT-CAR))
 (66 12 (:DEFINITION LEN))
 (28 14 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (18 18 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 16 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (15 3 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(SUBLIS-VAR-SIMPLE-OF-NIL)
(SUBLIS-VAR-SIMPLE-LST-OF-NIL)
(TRUE-LISTP-OF-SUBLIS-VAR-SIMPLE-LST)
(LEN-OF-SUBLIS-VAR-SIMPLE-LST
 (48 24 (:REWRITE DEFAULT-+-2))
 (38 37 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-CAR))
 )
(FLAG-LEMMA-FOR-PSEUDO-TERMP-OF-SUBLIS-VAR-SIMPLE
 (276 271 (:REWRITE DEFAULT-CDR))
 (274 251 (:REWRITE DEFAULT-CAR))
 (100 50 (:REWRITE DEFAULT-+-2))
 (94 50 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (60 60 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (52 52 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (50 50 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 )
(PSEUDO-TERMP-OF-SUBLIS-VAR-SIMPLE)
(PSEUDO-TERM-LISTP-OF-SUBLIS-VAR-SIMPLE-LST)
(CAR-OF-SUBLIS-VAR-SIMPLE
 (16 16 (:REWRITE DEFAULT-CDR))
 (16 8 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (11 11 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (6 3 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 )
(CONSP-OF-SUBLIS-VAR-SIMPLE
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(CDR-OF-SUBLIS-VAR-SIMPLE
 (39 5 (:DEFINITION ASSOC-EQUAL))
 (30 20 (:REWRITE DEFAULT-CAR))
 (17 14 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (7 7 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (4 2 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 )
(CAR-OF-SUBLIS-VAR-SIMPLE-LST
 (6 5 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(SYMBOLP-OF-CDR-OF-ASSOC-EQUAL-WHEN-SYMBOL-LISTP-OF-STRIP-CDRS
 (48 33 (:REWRITE DEFAULT-CAR))
 (44 25 (:REWRITE DEFAULT-CDR))
 (28 14 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (14 14 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 )
(FLAG-LEMMA-FOR-SYMBOLP-OF-SUBLIS-VAR-SIMPLE-WHEN-SYMBOLP
 (81 60 (:REWRITE DEFAULT-CDR))
 (77 62 (:REWRITE DEFAULT-CAR))
 (60 10 (:DEFINITION STRIP-CDRS))
 (36 18 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (20 20 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (4 2 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (2 2 (:REWRITE CAR-OF-SUBLIS-VAR-SIMPLE-LST))
 )
(SYMBOLP-OF-SUBLIS-VAR-SIMPLE-WHEN-SYMBOLP)
(SYMBOL-LISTP-OF-SUBLIS-VAR-SIMPLE-LST-WHEN-SYMBOL-LISTP)
