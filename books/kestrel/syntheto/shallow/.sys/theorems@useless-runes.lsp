(SYNTHETO::S-TYPED-VAR-TO-HYP-TERM)
(SYNTHETO::PSEUDO-TERMP-OF-S-TYPED-VAR-TO-HYP-TERM
 (1158 2 (:DEFINITION SYNTHETO::S-TYPE-TO-FTY-NAME-STRING))
 (1060 16 (:DEFINITION STRING-APPEND-LST))
 (582 30 (:DEFINITION BINARY-APPEND))
 (472 16 (:DEFINITION STRING-APPEND))
 (434 113 (:REWRITE DEFAULT-CAR))
 (289 123 (:REWRITE DEFAULT-CDR))
 (178 76 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP))
 (166 72 (:REWRITE SYNTHETO::TYPE-REF-CONSTRUCTOR-P-IMPLIES-CONSP))
 (122 122 (:TYPE-PRESCRIPTION SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P))
 (120 48 (:REWRITE STR::CONSP-OF-EXPLODE))
 (112 112 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (110 110 (:TYPE-PRESCRIPTION SYNTHETO::TYPE-REF-CONSTRUCTOR-P))
 (76 36 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (72 32 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (72 12 (:REWRITE STR::EXPLODE-OF-IMPLODE))
 (68 22 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (60 12 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (37 15 (:REWRITE SYNTHETO::BINARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDR))
 (32 32 (:TYPE-PRESCRIPTION SYNTHETO::UNARY-TYPE-CONSTRUCTOR-NAME-TO-TYPE-STRING))
 (32 32 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (32 32 (:REWRITE SYNTHETO::STRINGP-OF-S-TYPE-TO-FTY-NAME-STRING))
 (29 11 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDR))
 (23 9 (:REWRITE SYNTHETO::CONSP-CDR-IF-TYPE-REF-CONSTRUCTOR-P))
 (20 20 (:TYPE-PRESCRIPTION STRING-APPEND-LST))
 (20 16 (:DEFINITION NOT))
 (20 10 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (16 16 (:REWRITE SYNTHETO::STRINGP-OF-UNARY-TYPE-CONSTRUCTOR-TO-TYPE-STRING))
 (16 16 (:REWRITE STR::COERCE-TO-STRING-REMOVAL))
 (12 12 (:REWRITE STR::MAKE-CHARACTER-LIST-IS-IDENTITY-UNDER-CHARLISTEQV))
 (12 2 (:DEFINITION SYNTHETO::BINARY-TYPE-CONSTRUCTOR-NAME-TO-TYPE-STRING))
 (10 10 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (8 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (5 5 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION SYNTHETO::NULLARY-TYPE-CONSTRUCTOR-TO-TYPE-STRING))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE SYNTHETO::STRINGP-OF-NULLARY-TYPE-CONSTRUCTOR-TO-TYPE-STRING))
 (2 2 (:REWRITE SYNTHETO::BINARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDDR))
 )
(SYNTHETO::S-TYPED-VARS-TO-HYP-TERMS)
(SYNTHETO::PSEUDO-TERM-LISTP-OF-S-TYPED-VARS-TO-HYP-TERMS
 (39 13 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP))
 (39 13 (:REWRITE SYNTHETO::TYPE-REF-CONSTRUCTOR-P-IMPLIES-CONSP))
 (26 26 (:TYPE-PRESCRIPTION SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P))
 (26 26 (:TYPE-PRESCRIPTION SYNTHETO::TYPE-REF-CONSTRUCTOR-P))
 (16 16 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (10 9 (:REWRITE DEFAULT-CDR))
 (10 9 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(SYNTHETO::EXTRACT-SUBST-FROM-CONJS)
(SYNTHETO::EQLABLE-ALISTP-OF-EXTRACT-SUBST-FROM-CONJS.SBST
 (567 189 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP))
 (567 189 (:REWRITE SYNTHETO::TYPE-REF-CONSTRUCTOR-P-IMPLIES-CONSP))
 (456 54 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (450 234 (:REWRITE DEFAULT-CDR))
 (442 442 (:TYPE-PRESCRIPTION SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P))
 (442 442 (:TYPE-PRESCRIPTION SYNTHETO::TYPE-REF-CONSTRUCTOR-P))
 (414 30 (:DEFINITION SYMBOL-LISTP))
 (353 329 (:REWRITE DEFAULT-CAR))
 (294 42 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (158 79 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (96 32 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDR))
 (96 32 (:REWRITE SYNTHETO::CONSP-CDR-IF-TYPE-REF-CONSTRUCTOR-P))
 (96 32 (:REWRITE SYNTHETO::BINARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDR))
 (79 79 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (48 48 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (42 14 (:REWRITE SYNTHETO::BINARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP-CDDR))
 )
(SYNTHETO::GET-CONDS-HEAD)
(SYNTHETO::S-THEOREM-FN)
(SYNTHETO::PSEUDO-EVENT-FORMP-OF-S-THEOREM-FN
 (9 1 (:DEFINITION BINARY-APPEND))
 (3 1 (:REWRITE SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P-IMPLIES-CONSP))
 (3 1 (:REWRITE SYNTHETO::TYPE-REF-CONSTRUCTOR-P-IMPLIES-CONSP))
 (2 2 (:TYPE-PRESCRIPTION SYNTHETO::UNARY-TYPE-CONSTRUCTOR-P))
 (2 2 (:TYPE-PRESCRIPTION SYNTHETO::TYPE-REF-CONSTRUCTOR-P))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
