(APPLY-FOR-DEFEVALUATOR)
(MULTI-ENV-EV)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(MULTI-ENV-EV-CONSTRAINT-0)
(MULTI-ENV-EV-CONSTRAINT-1)
(MULTI-ENV-EV-CONSTRAINT-2)
(MULTI-ENV-EV-CONSTRAINT-3)
(MULTI-ENV-EV-CONSTRAINT-4)
(MULTI-ENV-EV-CONSTRAINT-5)
(MULTI-ENV-EV-CONSTRAINT-6)
(MULTI-ENV-EV-CONSTRAINT-7)
(MULTI-ENV-EV-CONSTRAINT-8)
(CLAUSE-APPLY-ALISTS-MULTI-ENV-EV)
(CLAUSES-APPLY-ALISTS-MULTI-ENV-EV)
(MULTI-ENV-EV-DISJOIN-CONS)
(MULTI-ENV-EV-DISJOIN-WHEN-CONSP)
(MULTI-ENV-EV-DISJOIN-ATOM
 (1 1 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 )
(MULTI-ENV-EV-DISJOIN-APPEND
 (23 23 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (23 23 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 )
(MULTI-ENV-EV-CONJOIN-CONS)
(MULTI-ENV-EV-CONJOIN-WHEN-CONSP)
(MULTI-ENV-EV-CONJOIN-ATOM
 (1 1 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 )
(MULTI-ENV-EV-CONJOIN-APPEND
 (23 23 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (23 23 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 )
(MULTI-ENV-EV-CONJOIN-CLAUSES-CONS
 (100 50 (:DEFINITION DISJOIN))
 (50 50 (:DEFINITION DISJOIN2))
 (7 7 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 (5 5 (:REWRITE MULTI-ENV-EV-CONJOIN-ATOM))
 )
(MULTI-ENV-EV-CONJOIN-CLAUSES-WHEN-CONSP
 (24 24 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (24 24 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 (18 9 (:DEFINITION DISJOIN))
 (9 9 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 (9 9 (:DEFINITION DISJOIN2))
 )
(MULTI-ENV-EV-CONJOIN-CLAUSES-ATOM
 (1 1 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 )
(MULTI-ENV-EV-CONJOIN-CLAUSES-APPEND
 (65 65 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (65 65 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 (24 12 (:DEFINITION DISJOIN))
 (12 12 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 (12 12 (:DEFINITION DISJOIN2))
 )
(MULTI-ENV-EV-THEOREMP-IMPLIES-CLAUSE-APPLY-ALISTS
 (10 10 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 (10 10 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (10 10 (:REWRITE MULTI-ENV-EV-CONSTRAINT-3))
 (10 10 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 (10 10 (:REWRITE MULTI-ENV-EV-CONSTRAINT-1))
 (5 5 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(MULTI-ENV-EV-THEOREMP-CONJOIN-CONS
 (58 58 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (58 58 (:REWRITE MULTI-ENV-EV-CONSTRAINT-3))
 (58 58 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 (58 58 (:REWRITE MULTI-ENV-EV-CONSTRAINT-1))
 (50 50 (:REWRITE MULTI-ENV-EV-CONJOIN-ATOM))
 )
(MULTI-ENV-THEOREMP-CONJOIN-CLAUSES-CONS
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (6 6 (:REWRITE MULTI-ENV-EV-CONSTRAINT-3))
 (6 6 (:REWRITE MULTI-ENV-EV-CONSTRAINT-2))
 (6 6 (:REWRITE MULTI-ENV-EV-CONSTRAINT-1))
 (6 3 (:REWRITE MULTI-ENV-EV-CONJOIN-ATOM))
 (3 3 (:TYPE-PRESCRIPTION DISJOIN-LST))
 (3 3 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 )
(MULTI-ENV-EV-THEOREMP-IMPLIES-CLAUSES-APPLY-ALISTS
 (65 5 (:DEFINITION CLAUSE-APPLY-ALISTS-MULTI-ENV-EV))
 (35 35 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE MULTI-ENV-EV-CONSTRAINT-8))
 (25 25 (:REWRITE MULTI-ENV-EV-CONSTRAINT-3))
 (24 24 (:REWRITE MULTI-ENV-EV-CONSTRAINT-1))
 (13 13 (:REWRITE DEFAULT-CDR))
 (12 6 (:REWRITE MULTI-ENV-EV-CONJOIN-ATOM))
 (8 8 (:REWRITE MULTI-ENV-EV-DISJOIN-ATOM))
 (6 6 (:TYPE-PRESCRIPTION DISJOIN-LST))
 )
(MULTI-ENV-FUNCTIONAL-INSTANCE-FN)
(DEF-MULTI-ENV-FN)
(PROVE-MULTI-ENV-CLAUSE-PROC-FN)
