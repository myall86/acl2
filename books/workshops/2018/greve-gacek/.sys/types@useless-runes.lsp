(NAMED-RULE)
(SYMBOLP-PSEUDO-TERMP-T-T-TRUE-LISTP-IMPLIES-TRUE-LISTP-NAMED-RULE)
(NAMED-RULE)
(NAMED-RULE-LIST
 (7 7 (:TYPE-PRESCRIPTION SYMBOL-FNS::SAFE-WITNESS))
 )
(SYMBOLP-SYMBOLP-NATP-PSEUDO-TERM-LISTP-T-T-TRUE-LISTP-IMPLIES-TRUE-LISTP-NAMED-RULE-LIST)
(NAMED-RULE-LIST
 (105 1 (:DEFINITION PSEUDO-TERMP))
 (89 10 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (80 10 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (65 11 (:DEFINITION SYMBOL-LISTP))
 (50 5 (:DEFINITION TRUE-LISTP))
 (48 48 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (42 41 (:REWRITE DEFAULT-CDR))
 (38 37 (:REWRITE DEFAULT-CAR))
 (26 5 (:REWRITE DEFAULT-COERCE-3))
 (25 3 (:DEFINITION LENGTH))
 (20 20 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (20 10 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (20 10 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (20 4 (:DEFINITION LEN))
 (17 9 (:REWRITE DEFAULT-COERCE-1))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (12 1 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (10 10 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (10 10 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (10 10 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (10 10 (:REWRITE SET::IN-SET))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 5 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 1 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (5 5 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (2 1 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (2 1 (:REWRITE DEFAULT-PKG-IMPORTS))
 (1 1 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(WEAK-FORWARD-CHAIN-OR
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-FNS::SAFE-WITNESS))
 )
(SYMBOLP-NATP-TRUE-LISTP-T-TRUE-LISTP-T-IMPLIES-TRUE-LISTP-WEAK-FORWARD-CHAIN-OR)
(WEAK-FORWARD-CHAIN-OR)
(BODY-IMPLIES-TERM)
(PSEUDO-TERMP-PSEUDO-TERM-LISTP-IMPLIES-PSEUDO-TERMP-BODY-IMPLIES-TERM
 (61 9 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (43 9 (:DEFINITION SYMBOL-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (28 28 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE DEFAULT-CDR))
 (25 25 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(BODY-IMPLIES-TERM)
(TERM-IMPLIES-BODY)
(PSEUDO-TERMP-PSEUDO-TERM-LISTP-IMPLIES-PSEUDO-TERMP-TERM-IMPLIES-BODY
 (71 9 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (53 11 (:DEFINITION SYMBOL-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (30 30 (:REWRITE DEFAULT-CAR))
 (29 29 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (27 27 (:REWRITE DEFAULT-CDR))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(TERM-IMPLIES-BODY)
(NOT-TERM-IMPLIES-NOT-BODY)
(PSEUDO-TERMP-PSEUDO-TERM-LISTP-IMPLIES-PSEUDO-TERMP-NOT-TERM-IMPLIES-NOT-BODY
 (71 9 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (53 11 (:DEFINITION SYMBOL-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (30 30 (:REWRITE DEFAULT-CAR))
 (29 29 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (27 27 (:REWRITE DEFAULT-CDR))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(NOT-TERM-IMPLIES-NOT-BODY)
(NOT-BODY-IMPLIES-NOT-TERM)
(PSEUDO-TERMP-PSEUDO-TERM-LISTP-IMPLIES-PSEUDO-TERMP-NOT-BODY-IMPLIES-NOT-TERM
 (61 9 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (43 9 (:DEFINITION SYMBOL-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (28 28 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE DEFAULT-CDR))
 (25 25 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(NOT-BODY-IMPLIES-NOT-TERM)
(TRUE-PSEUDO-TERMP)
(FALSE-PSEUDO-TERMP)
(DROP-NOTS
 (68 24 (:REWRITE DEFAULT-+-2))
 (38 24 (:REWRITE DEFAULT-+-1))
 (16 4 (:DEFINITION INTEGER-ABS))
 (16 2 (:DEFINITION LENGTH))
 (12 12 (:REWRITE DEFAULT-CDR))
 (10 2 (:DEFINITION LEN))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 5 (:REWRITE DEFAULT-<-2))
 (7 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(T-PSEUDO-TERMP-IMPLIES-PSEUDO-TERMP-DROP-NOTS
 (1144 143 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (620 620 (:REWRITE DEFAULT-CDR))
 (397 397 (:REWRITE DEFAULT-CAR))
 (286 286 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (286 143 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (286 143 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (224 112 (:REWRITE DEFAULT-+-2))
 (143 143 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (143 143 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (143 143 (:REWRITE SET::IN-SET))
 (112 112 (:REWRITE DEFAULT-+-1))
 (63 63 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (33 33 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (28 28 (:REWRITE DEFAULT-COERCE-2))
 (28 28 (:REWRITE DEFAULT-COERCE-1))
 )
(DROP-NOTS
 (24 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (11 3 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 3 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-CAR))
 (3 3 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE SET::IN-SET))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(NEGATE-TERM)
(PSEUDO-TERMP-IMPLIES-PSEUDO-TERMP-NEGATE-TERM)
(NEGATE-TERM)
(NEGATE-TERM-LIST)
(PSEUDO-TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP-NEGATE-TERM-LIST
 (347 3 (:DEFINITION PSEUDO-TERMP))
 (290 28 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (223 35 (:DEFINITION SYMBOL-LISTP))
 (151 151 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (102 100 (:REWRITE DEFAULT-CDR))
 (96 12 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (95 93 (:REWRITE DEFAULT-CAR))
 (75 9 (:DEFINITION LENGTH))
 (66 6 (:DEFINITION TRUE-LISTP))
 (60 12 (:DEFINITION LEN))
 (42 42 (:TYPE-PRESCRIPTION LEN))
 (28 28 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (24 24 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (24 12 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (24 12 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (24 12 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (12 12 (:REWRITE SET::IN-SET))
 (12 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(NEGATE-TERM-LIST
 (105 1 (:DEFINITION PSEUDO-TERMP))
 (52 5 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (41 7 (:DEFINITION SYMBOL-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (28 28 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (25 3 (:DEFINITION LENGTH))
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(NOT-)
(T-IMPLIES-SYMBOLP-NOT-)
(NOT-)
(GET-KEY
 (121 41 (:REWRITE DEFAULT-+-2))
 (75 41 (:REWRITE DEFAULT-+-1))
 (40 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 9 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (11 9 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:LINEAR ACL2-COUNT-OF-CONSP-POSITIVE))
 )
(GET-KEY)
(COMMON-RULE-EVENTS
 (40 40 (:TYPE-PRESCRIPTION SYMBOL-FNS::SAFE-WITNESS))
 )
(SYMBOLP-SYMBOLP-PSEUDO-TERMP-PSEUDO-TERM-LISTP-T-TRUE-LISTP-IMPLIES-TRUE-LISTP-COMMON-RULE-EVENTS)
(COMMON-RULE-EVENTS
 (465 346 (:REWRITE DEFAULT-CDR))
 (430 311 (:REWRITE DEFAULT-CAR))
 (409 201 (:REWRITE DEFAULT-COERCE-1))
 (400 50 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (270 30 (:REWRITE DEFUN::SYMBOL-LISTP-IS-PSEUDO-TERM-LISTP))
 (250 25 (:DEFINITION TRUE-LISTP))
 (239 239 (:REWRITE DEFAULT-COERCE-2))
 (230 20 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (221 38 (:REWRITE DEFAULT-COERCE-3))
 (210 40 (:DEFINITION SYMBOL-LISTP))
 (200 40 (:DEFINITION LEN))
 (110 20 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (100 100 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (100 50 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (100 50 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (80 40 (:REWRITE DEFAULT-+-2))
 (50 50 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (50 50 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (50 50 (:REWRITE SET::IN-SET))
 (40 40 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (40 40 (:REWRITE DEFAULT-+-1))
 (40 20 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (40 20 (:REWRITE DEFAULT-PKG-IMPORTS))
 (30 30 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (30 30 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (20 20 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (15 5 (:DEFINITION NEGATE-TERM-LIST))
 )
(PREDICATE-TYPE-SPECIFIER)
(RULE-EVENTS)
(SYMBOLP-SYMBOLP-PSEUDO-TERMP-PSEUDO-TERM-LISTP-PREDICATE-TYPE-SPECIFIER-TRUE-LISTP-IMPLIES-TRUE-LISTP-RULE-EVENTS)
(RULE-EVENTS)
(EVER-SET)
(NOT-LIST)
(AND-OR-P)
(AND-OR-TYPE)
(T-IMPLIES-PREDICATE-TYPE-SPECIFIER-AND-OR-TYPE
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(AND-OR-TYPE)
(AND-OR-BODY)
(AND-OR-P-IMPLIES-PSEUDO-TERM-LISTP-AND-OR-BODY
 (36 36 (:REWRITE DEFAULT-CAR))
 (35 35 (:REWRITE DEFAULT-CDR))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (20 2 (:DEFINITION TRUE-LISTP))
 (10 10 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(AND-OR-BODY)
(DEFTYPE-FTY)
(DEF-TYPE-FN
 (28 28 (:TYPE-PRESCRIPTION SYMBOL-FNS::SAFE-WITNESS))
 )
(SINGLEP)
(SINGLEP)
(SINGLEP-IMPLIES-BODY)
(BODY-IMPLIES-SINGLEP)
(NOT-SINGLEP-IMPLIES-NOT-BODY)
(NOT-BODY-IMPLIES-NOT-SINGLEP
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-SINGLEP))
 )
(NOT-BODY-IMPLIES-NOT-SINGLEP-1
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-SINGLEP))
 )
(POSNATP)
(POSNATP)
(POSNATP-IMPLIES-BODY)
(BODY-IMPLIES-POSNATP)
(NOT-POSNATP-IMPLIES-NOT-BODY)
(NOT-BODY-IMPLIES-NOT-POSNATP)
(NOT-BODY-IMPLIES-NOT-POSNATP-1
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-POSNATP-2
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-POSNATP-3
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(POSNATP-WITNESS)
(POSNATP-POSNATP-WITNESS)
(POSNATP-FIX
 (4 4 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (4 4 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(POSNATP-POSNATP-FIX
 (47 2 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (26 6 (:DEFINITION NOT))
 (23 23 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 (11 2 (:REWRITE BODY-IMPLIES-POSNATP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION NATP))
 )
(POSNATP-FIX-POSNATP
 (41 41 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (14 2 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION NATP))
 )
(POSNATP-EQUIV)
(POSNATP-EQUIV-IS-AN-EQUIVALENCE)
(POSNATP-EQUIV-IMPLIES-EQUAL-POSNATP-FIX-1
 (10 10 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 )
(POSNATP-EQUIV-POSNATP-FIX
 (86 5 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (16 7 (:REWRITE BODY-IMPLIES-POSNATP))
 (15 5 (:DEFINITION NATP))
 )
(EQUAL-POSNATP-FIX-TO-POSNATP-EQUIV
 (165 165 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (78 6 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NATP))
 (10 10 (:REWRITE BODY-IMPLIES-POSNATP))
 )
(POSNATP-EQUIV-TO-EQUAL
 (78 78 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (26 2 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION NATP))
 (2 2 (:REWRITE BODY-IMPLIES-POSNATP))
 )
(POSNATP-TYPE-EQUIV
 (2 2 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(POSNATP-TYPE-EQUIV-IS-AN-EQUIVALENCE
 (297 297 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (292 28 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (88 88 (:REWRITE DEFAULT-<-2))
 (88 88 (:REWRITE DEFAULT-<-1))
 (66 22 (:DEFINITION NATP))
 (28 28 (:REWRITE BODY-IMPLIES-POSNATP))
 )
(POSNATP-TYPE-EQUIV-IMPLIES-EQUAL-POSNATP-1
 (117 117 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (39 3 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (9 3 (:DEFINITION NATP))
 (3 3 (:REWRITE BODY-IMPLIES-POSNATP))
 )
(POSNATP-TYPE-EQUIV-REFINES-POSNATP-EQUIV)
(POSNATP-TYPE-EQUIV-POSNATP-FIX
 (477 36 (:REWRITE NOT-BODY-IMPLIES-NOT-POSNATP))
 (112 112 (:REWRITE DEFAULT-<-2))
 (112 112 (:REWRITE DEFAULT-<-1))
 (84 28 (:DEFINITION NATP))
 )
(__DEFFIXTYPE-POSNATP-EQUIV-MEANS-EQUAL-OF-POSNATP-FIX
 (20 20 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 )
(DEFTYPE-PROPERTIES-POSNATP-IMPLIES-BODY
 (6 6 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 )
(BODY-IMPLIES-DEFTYPE-PROPERTIES-POSNATP
 (3 3 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 )
(NOT-DEFTYPE-PROPERTIES-POSNATP-IMPLIES-NOT-BODY
 (2 2 (:TYPE-PRESCRIPTION NOT-BODY-IMPLIES-NOT-POSNATP))
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-POSNATP
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-POSNATP-1
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-POSNATP-2
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-POSNATP))
 )
(NOT-BODY-IMPLIES-NOT-DEFTYPE-PROPERTIES-POSNATP-3
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-POSNATP))
 (1 1 (:TYPE-PRESCRIPTION BODY-IMPLIES-DEFTYPE-PROPERTIES-POSNATP))
 )
(CHOOSE)
(CHOOSE)
(NOT-CHOOSE-IMPLIES-BODY)
(NOT-BODY-IMPLIES-CHOOSE)
(CHOOSE-IMPLIES-BODY)
(BODY-IMPLIES-CHOOSE)
(BODY-IMPLIES-CHOOSE-1)
(BODY-IMPLIES-CHOOSE-2)
(BODY-IMPLIES-CHOOSE-3)
(NOT-DEFTYPE-PROPERTIES-CHOOSE-IMPLIES-BODY)
(NOT-BODY-IMPLIES-DEFTYPE-PROPERTIES-CHOOSE
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-CHOOSE))
 )
(DEFTYPE-PROPERTIES-CHOOSE-IMPLIES-BODY
 (2 2 (:TYPE-PRESCRIPTION BODY-IMPLIES-CHOOSE))
 )
(BODY-IMPLIES-DEFTYPE-PROPERTIES-CHOOSE)
(BODY-IMPLIES-DEFTYPE-PROPERTIES-CHOOSE-1)
(BODY-IMPLIES-DEFTYPE-PROPERTIES-CHOOSE-2)
(BODY-IMPLIES-DEFTYPE-PROPERTIES-CHOOSE-3)
