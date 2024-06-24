(BOUND-GLOBAL1-WHEN-STATE-P1
 (1710 342 (:DEFINITION ASSOC-EQUAL))
 (1242 1242 (:REWRITE DEFAULT-CAR))
 (902 902 (:REWRITE DEFAULT-CDR))
 (176 2 (:DEFINITION OPEN-CHANNEL-LISTP))
 (164 2 (:DEFINITION OPEN-CHANNEL1))
 (126 3 (:DEFINITION ORDERED-SYMBOL-ALISTP))
 (84 1 (:DEFINITION WRITTEN-FILE-LISTP))
 (80 1 (:DEFINITION READABLE-FILES-LISTP))
 (79 1 (:DEFINITION WRITTEN-FILE))
 (75 1 (:DEFINITION READABLE-FILE))
 (59 1 (:DEFINITION READ-FILE-LISTP))
 (57 15 (:REWRITE SYMBOL<-TRICHOTOMY))
 (55 1 (:DEFINITION WRITABLE-FILE-LISTP))
 (55 1 (:DEFINITION READ-FILE-LISTP1))
 (51 9 (:REWRITE SYMBOL<-ASYMMETRIC))
 (51 1 (:DEFINITION WRITABLE-FILE-LISTP1))
 (48 4 (:DEFINITION TYPED-IO-LISTP))
 (36 36 (:TYPE-PRESCRIPTION SYMBOL<))
 (35 7 (:DEFINITION LEN))
 (30 15 (:DEFINITION TRUE-LISTP))
 (22 2 (:DEFINITION FGETPROP))
 (16 1 (:DEFINITION KNOWN-PACKAGE-ALISTP))
 (15 15 (:REWRITE SYMBOL<-TRANSITIVE))
 (14 7 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 1 (:DEFINITION TIMER-ALISTP))
 (10 2 (:DEFINITION SYMBOL-ALISTP))
 (8 1 (:DEFINITION 32-BIT-INTEGER-LISTP))
 (7 7 (:REWRITE DEFAULT-+-1))
 (5 1 (:DEFINITION TRUE-LIST-LISTP))
 (5 1 (:DEFINITION 32-BIT-INTEGERP))
 (4 4 (:TYPE-PRESCRIPTION TYPED-IO-LISTP))
 (4 1 (:DEFINITION SYMBOL-LISTP))
 (3 1 (:DEFINITION RATIONAL-LISTP))
 (3 1 (:DEFINITION INTEGER-LISTP))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(MAGIC-MACROEXPAND1$
 (469 7 (:DEFINITION PSEUDO-TERMP))
 (175 21 (:DEFINITION LENGTH))
 (154 154 (:REWRITE DEFAULT-CDR))
 (147 147 (:REWRITE DEFAULT-CAR))
 (140 28 (:DEFINITION LEN))
 (77 7 (:DEFINITION FGETPROP))
 (63 63 (:TYPE-PRESCRIPTION LEN))
 (56 28 (:REWRITE DEFAULT-+-2))
 (42 21 (:DEFINITION TRUE-LISTP))
 (42 14 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (28 28 (:REWRITE DEFAULT-+-1))
 (28 7 (:DEFINITION SYMBOL-LISTP))
 (14 14 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (14 14 (:REWRITE FN-CHECK-DEF-FORMALS))
 (7 7 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (7 7 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (7 7 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (7 7 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(MAGIC-MACROEXPAND1$-NORMALIZE-CONTEXT
 (14080 32 (:DEFINITION BIND-MACRO-ARGS-KEYS))
 (12096 64 (:DEFINITION BIND-MACRO-ARGS-KEYS1))
 (8200 8 (:DEFINITION BIND-MACRO-ARGS-OPTIONAL))
 (7104 16 (:DEFINITION BIND-MACRO-ARGS-AFTER-REST))
 (5830 5830 (:REWRITE DEFAULT-CAR))
 (5830 5254 (:REWRITE DEFAULT-CDR))
 (3179 289 (:DEFINITION FGETPROP))
 (2944 256 (:DEFINITION REMOVE-KEYWORD))
 (1472 192 (:DEFINITION ASSOC-KEYWORD))
 (1248 32 (:DEFINITION CHK-LENGTH-AND-KEYS))
 (1216 1216 (:TYPE-PRESCRIPTION ASSOC-KEYWORD))
 (1216 64 (:DEFINITION DUPLICATE-KEYS-ACTION))
 (1152 1152 (:TYPE-PRESCRIPTION SYMBOLP-INTERN-IN-PACKAGE-OF-SYMBOL))
 (1126 162 (:DEFINITION LENGTH))
 (976 48 (:DEFINITION MEMBER-EQUAL))
 (920 184 (:DEFINITION LEN))
 (768 64 (:DEFINITION TABLE-ALIST))
 (614 614 (:TYPE-PRESCRIPTION LEN))
 (574 118 (:DEFINITION ASSOC-EQUAL))
 (556 12 (:DEFINITION MAGIC-EV))
 (402 6 (:DEFINITION PSEUDO-TERMP))
 (384 128 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (368 184 (:REWRITE DEFAULT-+-2))
 (256 256 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (184 184 (:REWRITE DEFAULT-+-1))
 (136 72 (:REWRITE DEFAULT-<-2))
 (128 128 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-SYMBOL-NAME))
 (128 128 (:REWRITE DEFAULT-SYMBOL-NAME))
 (128 128 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (96 32 (:DEFINITION KEYWORDP))
 (88 72 (:REWRITE DEFAULT-<-1))
 (84 42 (:DEFINITION NTH))
 (64 64 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (60 12 (:DEFINITION PAIRLIS$))
 (32 32 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (24 24 (:REWRITE MX-EV-META-EXTRACT-MAGIC-EV-LST))
 (24 24 (:REWRITE MEXTRACT-EV-MAGIC-EV-LST))
 (24 12 (:DEFINITION TRUE-LISTP))
 (24 6 (:DEFINITION SYMBOL-LISTP))
 (22 22 (:REWRITE DEFAULT-COERCE-2))
 (22 22 (:REWRITE DEFAULT-COERCE-1))
 (18 18 (:REWRITE MX-EV-META-EXTRACT-MAGIC-EV))
 (18 18 (:REWRITE MEXTRACT-EV-MAGIC-EV))
 (18 18 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (12 12 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (12 12 (:REWRITE FN-CHECK-DEF-FORMALS))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (6 6 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (6 6 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(MAGIC-MACROEXPAND1$$)
