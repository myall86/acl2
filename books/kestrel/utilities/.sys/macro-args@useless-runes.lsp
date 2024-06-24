(MACRO-ARGP)
(MACRO-ARG-LISTP)
(MACRO-ARGP-OF-CAR
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(MACRO-ARG-LISTP-OF-CDR
 (4 1 (:REWRITE MACRO-ARGP-OF-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(MACRO-ARG-LISTP-OF-CONS
 (8 2 (:REWRITE MACRO-ARGP-OF-CAR))
 (8 2 (:REWRITE MACRO-ARG-LISTP-OF-CDR))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(MACRO-ARG-LISTP-FORWARD-TO-TRUE-LISTP
 (8 2 (:REWRITE MACRO-ARGP-OF-CAR))
 (8 2 (:REWRITE MACRO-ARG-LISTP-OF-CDR))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:DEFINITION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION MACRO-ARGP))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(KEYWORD-OR-OPTIONAL-ARG-NAME-AND-DEFAULT
 (40 20 (:REWRITE DEFAULT-+-2))
 (33 33 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-CAR))
 )
(SYMBOLP-OF-MV-NTH-0-OF-KEYWORD-OR-OPTIONAL-ARG-NAME-AND-DEFAULT
 (21 21 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(MAYBE-SKIP-WHOLE-ARG)
(MACRO-ARG-LISTP-OF-MAYBE-SKIP-WHOLE-ARG
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(REMOVE-REST-AND-BODY-FROM-MACRO-ARGS
 (366 180 (:REWRITE DEFAULT-+-2))
 (242 180 (:REWRITE DEFAULT-+-1))
 (160 40 (:REWRITE COMMUTATIVITY-OF-+))
 (160 40 (:DEFINITION INTEGER-ABS))
 (160 20 (:DEFINITION LENGTH))
 (100 20 (:DEFINITION LEN))
 (62 50 (:REWRITE DEFAULT-<-2))
 (58 50 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-UNARY-MINUS))
 (29 29 (:REWRITE DEFAULT-CAR))
 (20 20 (:TYPE-PRESCRIPTION LEN))
 (20 20 (:REWRITE DEFAULT-REALPART))
 (20 20 (:REWRITE DEFAULT-NUMERATOR))
 (20 20 (:REWRITE DEFAULT-IMAGPART))
 (20 20 (:REWRITE DEFAULT-DENOMINATOR))
 (20 20 (:REWRITE DEFAULT-COERCE-2))
 (20 20 (:REWRITE DEFAULT-COERCE-1))
 )
(MACRO-ARG-LISTP-OF-REMOVE-REST-AND-BODY-FROM-MACRO-ARGS
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 )
(REMOVE-ALLOW-OTHER-KEYS-FROM-MACRO-ARGS)
(MACRO-ARG-LISTP-OF-REMOVE-ALLOW-OTHER-KEYS-FROM-MACRO-ARGS
 (6 6 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(LAMBDA-LIST-KEYWORDP)
(SPLIT-ARGS-AT-LAMBDA-LIST-KEYWORD)
(MACRO-ARG-LISTP-OF-MV-NTH-0-OF-SPLIT-ARGS-AT-LAMBDA-LIST-KEYWORD
 (104 104 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-CDR))
 )
(TRUE-LISTP-OF-MV-NTH-1-OF-SPLIT-ARGS-AT-LAMBDA-LIST-KEYWORD
 (103 103 (:REWRITE DEFAULT-CAR))
 (63 63 (:REWRITE DEFAULT-CDR))
 )
(MACRO-ARG-LISTP-OF-MV-NTH-1-OF-SPLIT-ARGS-AT-LAMBDA-LIST-KEYWORD
 (103 103 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(SPLIT-MACRO-ARGS
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 )
(SYMBOL-LISTP-OF-MV-NTH-0-OF-SPLIT-MACRO-ARGS
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 6 (:DEFINITION SYMBOL-LISTP))
 (11 11 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 )
(MACRO-ARG-LISTP-OF-MV-NTH-1-OF-SPLIT-MACRO-ARGS
 (76 76 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 13 (:REWRITE DEFAULT-CAR))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (13 13 (:REWRITE DEFAULT-CDR))
 )
(MACRO-ARG-LISTP-OF-MV-NTH-2-OF-SPLIT-MACRO-ARGS
 (60 60 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (14 14 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 )
(KEYWORD-OR-OPTIONAL-ARG-NAMES)
(EXTRACT-REQUIRED-AND-OPTIONAL-AND-KEYWORD-ARGS)
(SYMBOL-LISTP-OF-MV-NTH-0-OF-EXTRACT-REQUIRED-AND-OPTIONAL-AND-KEYWORD-ARGS
 (18 6 (:DEFINITION SYMBOL-LISTP))
 (11 11 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 )
(MACRO-ARG-LISTP-OF-MV-NTH-1-OF-EXTRACT-REQUIRED-AND-OPTIONAL-AND-KEYWORD-ARGS
 (16 13 (:REWRITE DEFAULT-CAR))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (13 13 (:REWRITE DEFAULT-CDR))
 )
(MACRO-ARG-LISTP-OF-MV-NTH-2-OF-EXTRACT-REQUIRED-AND-OPTIONAL-AND-KEYWORD-ARGS
 (16 2 (:REWRITE MACRO-ARG-LISTP-OF-CDR))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (14 14 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 (10 4 (:TYPE-PRESCRIPTION MACRO-ARG-LISTP-OF-MV-NTH-1-OF-SPLIT-ARGS-AT-LAMBDA-LIST-KEYWORD))
 )
(MACRO-ARG-NAMES)
