(SYMBOLP-OF-MV-NTH-0-OF-OPEN-OUTPUT-CHANNEL
 (198 6 (:DEFINITION EXPLODE-ATOM))
 (50 25 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (50 2 (:DEFINITION ADD-PAIR))
 (46 25 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (42 6 (:REWRITE IMAGPART-+))
 (39 21 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (38 29 (:REWRITE DEFAULT-+-2))
 (30 6 (:REWRITE REALPART-+))
 (30 6 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (30 6 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (29 29 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (27 5 (:DEFINITION UPDATE-NTH))
 (26 20 (:REWRITE DEFAULT-CAR))
 (25 25 (:TYPE-PRESCRIPTION LEN))
 (25 25 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (24 6 (:REWRITE DEFAULT-COERCE-3))
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (20 14 (:REWRITE DEFAULT-CDR))
 (18 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 12 (:REWRITE DEFAULT-REALPART))
 (18 12 (:REWRITE DEFAULT-IMAGPART))
 (18 6 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (16 2 (:REWRITE SYMBOL<-ASYMMETRIC))
 (15 5 (:DEFINITION MEMBER-EQUAL))
 (12 12 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (12 6 (:REWRITE UNICITY-OF-0))
 (11 11 (:TYPE-PRESCRIPTION UPDATE-NTH))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 4 (:REWRITE SYMBOL<-TRICHOTOMY))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL<))
 (6 6 (:REWRITE RATIONALP-+))
 (6 6 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:DEFINITION FIX))
 (4 4 (:REWRITE SYMBOL<-TRANSITIVE))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(OPEN-OUTPUT-CHANNEL-P-AFTER-OPEN-OUTPUT-CHANNEL
 (594 18 (:DEFINITION EXPLODE-ATOM))
 (300 12 (:DEFINITION ADD-PAIR))
 (224 91 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (182 91 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (147 25 (:DEFINITION UPDATE-NTH))
 (146 67 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (144 108 (:REWRITE DEFAULT-CAR))
 (126 18 (:REWRITE IMAGPART-+))
 (117 63 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (104 87 (:REWRITE DEFAULT-+-2))
 (104 68 (:REWRITE DEFAULT-CDR))
 (96 12 (:REWRITE SYMBOL<-ASYMMETRIC))
 (91 91 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (90 18 (:REWRITE REALPART-+))
 (90 18 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (87 87 (:REWRITE DEFAULT-+-1))
 (74 18 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (71 71 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (67 67 (:TYPE-PRESCRIPTION UPDATE-NTH))
 (67 67 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (66 18 (:REWRITE DEFAULT-COERCE-3))
 (60 24 (:REWRITE SYMBOL<-TRICHOTOMY))
 (54 36 (:REWRITE DEFAULT-UNARY-MINUS))
 (54 36 (:REWRITE DEFAULT-REALPART))
 (54 36 (:REWRITE DEFAULT-IMAGPART))
 (54 18 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (36 36 (:TYPE-PRESCRIPTION SYMBOL<))
 (36 18 (:REWRITE UNICITY-OF-0))
 (28 28 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (27 27 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE SYMBOL<-TRANSITIVE))
 (18 18 (:REWRITE RATIONALP-+))
 (18 18 (:REWRITE DEFAULT-SYMBOL-NAME))
 (18 18 (:REWRITE DEFAULT-NUMERATOR))
 (18 18 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (18 18 (:DEFINITION FIX))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION ADD-PAIR))
 )
(NOT-MEMBER-EQUAL-OF--MV-NTH-0-OF-OPEN-OUTPUT-CHANNEL
 (569 103 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (504 81 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (480 12 (:DEFINITION ADD-PAIR))
 (363 103 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (363 103 (:REWRITE DEFAULT-COERCE-3))
 (344 227 (:REWRITE DEFAULT-CAR))
 (336 81 (:DEFINITION POSP))
 (269 248 (:REWRITE DEFAULT-+-2))
 (269 131 (:REWRITE DEFAULT-CDR))
 (250 125 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (248 248 (:REWRITE DEFAULT-+-1))
 (224 224 (:REWRITE DEFAULT-COERCE-2))
 (189 21 (:DEFINITION LEN))
 (185 173 (:REWRITE DEFAULT-<-2))
 (179 125 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (173 173 (:REWRITE DEFAULT-<-1))
 (154 154 (:REWRITE EQUAL-OF-COERCE-WHEN-QUOTEP))
 (144 18 (:DEFINITION TRUE-LIST-FIX))
 (126 42 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (126 12 (:REWRITE SYMBOL<-ASYMMETRIC))
 (125 125 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (123 25 (:DEFINITION UPDATE-NTH))
 (121 121 (:REWRITE DEFAULT-COERCE-1))
 (100 100 (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
 (95 95 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (90 24 (:REWRITE SYMBOL<-TRICHOTOMY))
 (84 84 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (81 81 (:TYPE-PRESCRIPTION POSP))
 (63 21 (:DEFINITION MEMBER-EQUAL))
 (51 51 (:TYPE-PRESCRIPTION UPDATE-NTH))
 (51 51 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (42 3 (:DEFINITION TAKE))
 (40 18 (:REWRITE DEFAULT-SYMBOL-NAME))
 (36 36 (:TYPE-PRESCRIPTION SYMBOL<))
 (24 24 (:REWRITE SYMBOL<-TRANSITIVE))
 )
