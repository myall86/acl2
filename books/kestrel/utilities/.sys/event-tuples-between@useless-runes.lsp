(FUN-OR-THM-SYMBOLP)
(BOOLEANP-OF-FUN-OR-THM-SYMBOLP)
(FUN-OR-THM-SYMBOL-LISTP
 (10 1 (:DEFINITION PLIST-WORLDP))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(BOOLEANP-OF-FUN-OR-THM-SYMBOL-LISTP)
(FUN-SYMBOLS-OF-SYMBOLS
 (42 42 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 (21 6 (:REWRITE FUNCTION-SYMBOLP-OF-CAR-WHEN-FUNCTION-SYMBOL-LISTP))
 (12 12 (:REWRITE FUNCTION-SYMBOLP-WHEN-MEMBER-EQUAL-OF-FUNCTION-SYMBOL-LISTP))
 (6 6 (:TYPE-PRESCRIPTION FUNCTION-SYMBOL-LISTP))
 (6 6 (:REWRITE FUNCTION-SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (3 3 (:REWRITE FUNCTION-SYMBOL-LISTP-WHEN-NOT-CONSP))
 )
(SYMBOL-LISTP-OF-FUN-SYMBOLS-OF-SYMBOLS
 (141 140 (:REWRITE DEFAULT-CAR))
 (94 93 (:REWRITE DEFAULT-CDR))
 (60 10 (:REWRITE FUNCTION-SYMBOLP-OF-CAR-WHEN-FUNCTION-SYMBOL-LISTP))
 (20 20 (:TYPE-PRESCRIPTION FUNCTION-SYMBOL-LISTP))
 (20 20 (:REWRITE FUNCTION-SYMBOLP-WHEN-MEMBER-EQUAL-OF-FUNCTION-SYMBOL-LISTP))
 (20 20 (:REWRITE FUNCTION-SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (10 10 (:REWRITE FUNCTION-SYMBOL-LISTP-WHEN-NOT-CONSP))
 )
(FUNCTION-SYMBOL-LISTP-OF-FUN-SYMBOLS-OF-SYMBOLS
 (722 15 (:DEFINITION FUNCTION-SYMBOL-LISTP))
 (586 26 (:REWRITE FUNCTION-SYMBOLP-OF-CAR-WHEN-FUNCTION-SYMBOL-LISTP))
 (236 52 (:REWRITE FUNCTION-SYMBOLP-WHEN-MEMBER-EQUAL-OF-FUNCTION-SYMBOL-LISTP))
 (220 219 (:REWRITE DEFAULT-CAR))
 (206 205 (:REWRITE DEFAULT-CDR))
 (132 16 (:REWRITE FUNCTION-SYMBOL-LISTP-OF-CDR-WHEN-FUNCTION-SYMBOL-LISTP))
 (128 6 (:DEFINITION MEMBER-EQUAL))
 (121 12 (:REWRITE SUBSETP-CAR-MEMBER))
 (96 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (86 7 (:REWRITE SYMBOL-LISTP-OF-FUN-SYMBOLS-OF-SYMBOLS))
 (65 5 (:DEFINITION PLIST-WORLDP))
 (53 32 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (38 1 (:REWRITE SUBSETP-OF-CONS))
 (36 36 (:REWRITE SUBSETP-TRANS2))
 (36 36 (:REWRITE SUBSETP-TRANS))
 (32 32 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (31 31 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (12 12 (:REWRITE SUBSETP-MEMBER . 2))
 (12 12 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:DEFINITION NULL))
 )
(FUNS-IN-FUN)
(FUNS-IN-FUNS)
(FUNS-IN-THM)
(EVENT-TUPLE-FUNCTIONS)
(FIRST-N-EVENT-TUPLES)
(FIRST-N-COMMAND-TUPLES)
(REMOVE-WORLD-TRIPLES-AFTER)
(EVENT-TUPLES-WITH-NAMES-AUX)
(EVENT-TUPLES-WITH-NAMES)
(EVENT-TUPLE-REFS-FUNS-P)
(EVENT-TUPLES-THAT-REF-FUNS-AUX)
(EVENT-TUPLES-THAT-REF-FUNS)
(EVENT-TUPLES-BETWEEN-REVERSED)
(EVENT-TUPLES-BETWEEN)
