(UNHIDE
 (1 1 (:TYPE-PRESCRIPTION UNHIDE))
 )
(UNHIDE-UNHIDDEN
 (3 3 (:TYPE-PRESCRIPTION UNHIDE))
 )
(UNHIDE-HIDE
 (3 3 (:TYPE-PRESCRIPTION UNHIDE))
 )
(APPLY-FOR-DEFEVALUATOR)
(UNHIDE-EVAL)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(UNHIDE-EVAL-CONSTRAINT-0)
(UNHIDE-EVAL-CONSTRAINT-1)
(UNHIDE-EVAL-CONSTRAINT-2)
(UNHIDE-EVAL-CONSTRAINT-3)
(UNHIDE-EVAL-CONSTRAINT-4)
(UNHIDE-EVAL-CONSTRAINT-5)
(UNHIDE-EVAL-CONSTRAINT-6)
(UNHIDE-EVAL-CONSTRAINT-7)
(UNHIDE-EVAL-CONSTRAINT-8)
(UNHIDE-EVAL-CONSTRAINT-9)
(UNHIDE-EVAL-TO-BETA-REDUCE-LAMBDA-EXPR
 (40 36 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 (16 10 (:REWRITE UNHIDE-EVAL-CONSTRAINT-9))
 (16 10 (:REWRITE UNHIDE-EVAL-CONSTRAINT-8))
 (10 2 (:DEFINITION PAIRLIS$))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (8 2 (:DEFINITION KWOTE-LST))
 (6 6 (:REWRITE UNHIDE-EVAL-CONSTRAINT-4))
 (4 4 (:REWRITE CAR-CONS))
 (2 2 (:DEFINITION KWOTE))
 )
(UNHIDE-P)
(HIDE-P)
(BETA-REDUCE-HIDE-WRAPPER
 (5 5 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:TYPE-PRESCRIPTION BETA-REDUCE-HIDE-WRAPPER))
 )
(*META*-BETA-REDUCE-HIDE
 (55 55 (:REWRITE DEFAULT-CDR))
 (55 55 (:REWRITE DEFAULT-CAR))
 (50 6 (:DEFINITION LENGTH))
 (28 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (11 6 (:REWRITE UNHIDE-EVAL-CONSTRAINT-9))
 (7 7 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-3))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-2))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-1))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (5 5 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(UNHIDE-HIDE-WRAPPER
 (60 60 (:REWRITE DEFAULT-CDR))
 (50 6 (:DEFINITION LENGTH))
 (45 9 (:DEFINITION LEN))
 (44 44 (:REWRITE DEFAULT-CAR))
 (18 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:TYPE-PRESCRIPTION UNHIDE-HIDE-WRAPPER))
 )
(*META*-UNHIDE-HIDE
 (82 82 (:REWRITE DEFAULT-CDR))
 (78 78 (:REWRITE DEFAULT-CAR))
 (50 6 (:DEFINITION LENGTH))
 (28 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-3))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-2))
 (7 4 (:REWRITE UNHIDE-EVAL-CONSTRAINT-1))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(FOO)
(OPEN-FOO
 (9 3 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:TYPE-PRESCRIPTION UNHIDE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(FOO-0)
(FOO-10
 (10 10 (:META *META*-UNHIDE-HIDE))
 )
