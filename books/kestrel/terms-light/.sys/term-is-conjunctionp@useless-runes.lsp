(TERM-IS-CONJUNCTIONP
 (22 22 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(TERM-IS-CONJUNCTIONP-FORWARD-TO-CONSP)
(TERM-IS-CONJUNCTIONP-FORWARD-TO-PSEUDO-TERMP-OF-CADR
 (31 31 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(TERM-IS-CONJUNCTIONP-FORWARD-TO-PSEUDO-TERMP-OF-CADDR
 (162 162 (:REWRITE DEFAULT-CDR))
 (125 15 (:DEFINITION LENGTH))
 (85 85 (:REWRITE DEFAULT-CAR))
 (76 38 (:REWRITE DEFAULT-+-2))
 (38 38 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (17 17 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(IF-EVAL-WHEN-TERM-IS-CONJUNCTIONP
 (27 27 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (14 8 (:REWRITE IF-EVAL-OF-LAMBDA-BETTER))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE NOT-IF-EVAL-WHEN-ALL-EVAL-TO-FALSE-WITH-IF-EVAL-AND-MEMBER-EQUAL))
 (8 8 (:REWRITE IF-EVAL-WHEN-ALL-EVAL-TO-TRUE-WITH-IF-EVAL-AND-MEMBER-EQUAL))
 (6 6 (:REWRITE IF-EVAL-OF-VARIABLE))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(IF-EVAL-OF-CADDDR-WHEN-TERM-IS-CONJUNCTIONP-FORWARD
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 3 (:REWRITE IF-EVAL-OF-LAMBDA-BETTER))
 (5 5 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE NOT-IF-EVAL-WHEN-ALL-EVAL-TO-FALSE-WITH-IF-EVAL-AND-MEMBER-EQUAL))
 (3 3 (:REWRITE IF-EVAL-WHEN-ALL-EVAL-TO-TRUE-WITH-IF-EVAL-AND-MEMBER-EQUAL))
 (3 3 (:REWRITE IF-EVAL-OF-VARIABLE))
 (3 3 (:REWRITE IF-EVAL-OF-QUOTE))
 (3 3 (:REWRITE IF-EVAL-OF-IF-CALL))
 )
(IF-EVAL-OF-CADDDR-WHEN-TERM-IS-CONJUNCTIONP)
