(LRAT::CUBE-SOUNDNESS-2
 (134 8 (:DEFINITION MEMBER-EQUAL))
 (108 9 (:REWRITE LRAT::CONFLICTING-LITERALS-P-SUFF))
 (106 31 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (92 1 (:DEFINITION LRAT::FALSIFY-CLAUSE))
 (81 1 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (55 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (32 32 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE LRAT::CLAUSEP$-FORWARD))
 (18 18 (:REWRITE LRAT::MEMBER-NEGATE-IMPLIES-MEMBER-ASSIGNMENT))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 2 (:DEFINITION LRAT::NEGATE-CUBE))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE LRAT::LITERAL-LISTP$-IMPLIES-LITERAL-LISTP))
 (7 7 (:REWRITE LRAT::CLAUSEP$-IMPLIES-CLAUSEP))
 (7 1 (:REWRITE LRAT::MAIN-THEOREM))
 (5 1 (:REWRITE LRAT::FORMULA-P-EXTEND-FORMULA-WITH-CUBE))
 (2 2 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (2 2 (:TYPE-PRESCRIPTION LRAT::FORMULA-P))
 (1 1 (:REWRITE LRAT::ORDERED-FORMULA-P-IMPLIES-FORMULA-P))
 (1 1 (:REWRITE LRAT::LITERAL-LISTP-NEGATE-CUBE))
 )
(LRAT::VERIFY-FOR-CUBE-SOUNDNESS
 (1717 193 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (1216 30 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (629 44 (:DEFINITION MEMBER-EQUAL))
 (621 41 (:REWRITE LRAT::CONFLICTING-LITERALS-P-SUFF))
 (213 194 (:REWRITE DEFAULT-CDR))
 (137 137 (:REWRITE LRAT::CLAUSEP$-FORWARD))
 (126 126 (:REWRITE DEFAULT-CAR))
 (93 93 (:REWRITE LRAT::MEMBER-NEGATE-IMPLIES-MEMBER-ASSIGNMENT))
 (56 56 (:REWRITE LRAT::LITERAL-LISTP$-IMPLIES-LITERAL-LISTP))
 (47 47 (:REWRITE LRAT::CLAUSEP$-IMPLIES-CLAUSEP))
 (39 23 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 2 (:DEFINITION LRAT::NEGATE-CUBE))
 (7 1 (:REWRITE LRAT::MAIN-THEOREM))
 (5 1 (:REWRITE LRAT::FORMULA-P-EXTEND-FORMULA-WITH-CUBE))
 (2 2 (:TYPE-PRESCRIPTION LRAT::FORMULA-P))
 (1 1 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (1 1 (:REWRITE LRAT::SATISFIABLE-SUFF))
 (1 1 (:REWRITE LRAT::ORDERED-FORMULA-P-IMPLIES-FORMULA-P))
 (1 1 (:REWRITE LRAT::LITERAL-LISTP-NEGATE-CUBE))
 )
