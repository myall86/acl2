(RP::RP-STATE-PRESERVEDP-OF-THE-SAME-RP-STATE
 (1 1 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (1 1 (:REWRITE RP::RP-STATE-PRESERVEDP-SK-NECC))
 )
(RP::FIX-ARGS/RETURNS-PACKAGE)
(RP::ADD-META-RULE-GUARD)
(RP::ADD-PROCESSOR-GUARD)
(RP::WEAK-META-RULE-TABLE-REC-P)
(RP::WEAK-PRE-POST-PROCESSOR-TABLE-REC-P)
(RP::ADD-META-RULE-FN
 (4908 71 (:DEFINITION MEMBER-EQUAL))
 (4776 3 (:DEFINITION SUBSETP-EQUAL))
 (3525 27 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (1702 1698 (:REWRITE DEFAULT-CAR))
 (1629 1621 (:REWRITE DEFAULT-CDR))
 (654 109 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-SYMBOL-NAME))
 (625 125 (:DEFINITION ASSOC-EQUAL))
 (436 436 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (352 43 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP-XXX))
 (327 109 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (250 125 (:DEFINITION NTH))
 (218 218 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (208 16 (:DEFINITION TRUE-LIST-LISTP))
 (144 144 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (125 125 (:REWRITE NTH-WHEN-PREFIXP))
 (115 115 (:REWRITE DEFAULT-SYMBOL-NAME))
 (110 22 (:DEFINITION TRUE-LISTP))
 (109 109 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (109 109 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (60 30 (:REWRITE DEFAULT-+-2))
 (48 16 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (43 43 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT-COROLLARY))
 (30 30 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (27 27 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (20 20 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (8 8 (:REWRITE FN-CHECK-DEF-FORMALS))
 (4 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(RP::ADD-PROCESSOR-FN)
(RP::CREATE-RP-RW-META-RULE-FN-AUX1)
(RP::CREATE-RP-RW-META-RULE-FN-AUX2)
(RP::IS-PROC-ENABLED)
(RP::CREATE-RP-RW-PROCESSOR-FN-AUX2)
(RP::CREATE-RP-RW-META-RULE-FN-AUX3)
(RP::CREATE-RP-RW-META-RULE-FN
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(RP::ATTACH-META-FNCS-FN)
(RP::IS-RP-CLAUSE-PROCESSOR-UP-TO-DATE
 (639 6 (:DEFINITION SUBSETP-EQUAL))
 (342 12 (:DEFINITION MEMBER-EQUAL))
 (327 12 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (267 267 (:REWRITE DEFAULT-CAR))
 (261 243 (:REWRITE DEFAULT-CDR))
 (231 21 (:DEFINITION FGETPROP))
 (225 12 (:DEFINITION LOOP$-AS))
 (210 12 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP-XXX))
 (174 12 (:DEFINITION TRUE-LIST-LISTP))
 (78 12 (:DEFINITION TRUE-LISTP))
 (72 12 (:DEFINITION CDR-LOOP$-AS-TUPLE))
 (72 12 (:DEFINITION CAR-LOOP$-AS-TUPLE))
 (66 12 (:DEFINITION EMPTY-LOOP$-AS-TUPLEP))
 (60 60 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (54 54 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (48 48 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (36 36 (:REWRITE CDR-CONS))
 (36 36 (:REWRITE CAR-CONS))
 (24 24 (:TYPE-PRESCRIPTION LOOP$-AS))
 (18 18 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (18 18 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (12 12 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (12 12 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT-COROLLARY))
 )
(RP::CHECK-IF-CLAUSE-PROCESSOR-UP-TO-DATE)
(RP::APPLY$-WARRANT-META-RUNE-FNC$INLINE)
(RP::APPLY$-WARRANT-META-RUNE-FNC$INLINE-DEFINITION)
(RP::APPLY$-WARRANT-META-RUNE-FNC$INLINE-NECC)
(RP::APPLY$-META-RUNE-FNC$INLINE
 (2 2 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE APPLY$-PRIMP-BADGE))
 (2 1 (:REWRITE APPLY$-PRIMITIVE))
 )
(RP::DISABLE-META-RULES-FNC)
(RP::ENABLE-META-RULES-FNC)
(RP::IFF-OF-RP-EVLT-LST
 (52 51 (:REWRITE DEFAULT-CDR))
 (52 2 (:DEFINITION RP::RP-TRANS))
 (31 30 (:REWRITE DEFAULT-CAR))
 (16 2 (:DEFINITION RP::IS-FALIST))
 (14 2 (:DEFINITION RP::TRANS-LIST))
 (6 2 (:DEFINITION QUOTEP))
 (4 2 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (2 2 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (2 2 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (2 2 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (2 2 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (2 2 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (2 2 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 )
(RP::RP-EVL-OF-EX-FROM-RP-REVERSE-FOR-ATOM
 (193 193 (:REWRITE DEFAULT-CDR))
 (117 117 (:REWRITE DEFAULT-CAR))
 (53 34 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (36 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (36 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (35 35 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (21 21 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (14 14 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 )
(RP::RP-EVLT-OF-EX-FROM-RP-REVERSE-FOR-ATOM
 (558 558 (:REWRITE DEFAULT-CDR))
 (382 382 (:REWRITE DEFAULT-CAR))
 (224 32 (:DEFINITION RP::TRANS-LIST))
 (64 64 (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
 (53 34 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (46 46 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (38 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (38 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (35 35 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (35 35 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (21 21 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (1 1 (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
 )
(RP::CREATE-REGULAR-EVAL-LEMMA-FN)
