(GL-SYM::|ACL2::ALWAYS-EQUAL$|
 (6 6 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 )
(GL-SYM::|ACL2::ALWAYS-EQUAL$-PRESERVES-HYP|
 (12 12 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (6 3 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (3 3 (:TYPE-PRESCRIPTION GL::HYP$AP))
 (3 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(GL-SYM::|ACL2::ALWAYS-EQUAL$-OF-BFR-HYP-FIX|
 (14 7 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (7 7 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
(GL::|BFR-HYP-EQUIV-IMPLIES-EQUAL-ACL2::ALWAYS-EQUAL$-3|)
(GL-SYM::|ACL2::ALWAYS-EQUAL$|
 (66 66 (:TYPE-PRESCRIPTION GL::BFR-HYP-FIX))
 (6 2 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (5 1 (:REWRITE GL::GLCP-CONFIG-P-WHEN-WRONG-TAG))
 (2 1 (:REWRITE GL::TAG-WHEN-GLCP-CONFIG-P))
 (2 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (1 1 (:TYPE-PRESCRIPTION BOOLEANP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(GL-THM::ALWAYS-EQUAL-DEPENDENCIES
 (9 9 (:REWRITE GL::GOBJ-DEPENDS-ON-WHEN-G-VAR))
 (9 9 (:REWRITE GL::GOBJ-DEPENDS-ON-WHEN-G-CONCRETE))
 (9 9 (:REWRITE GL::GOBJ-DEPENDS-ON-OF-ATOM))
 (4 2 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (2 2 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
(GL-THM::|ACL2::ALWAYS-EQUAL$-CORRECT|
 (943 23 (:REWRITE GL::GENERAL-CONCRETE-OBJ-CORRECT-FOR-EVAL-G-BASE))
 (851 23 (:DEFINITION GL::GENERAL-CONCRETEP-DEF))
 (434 143 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (286 286 (:TYPE-PRESCRIPTION BOOLEANP))
 (184 184 (:TYPE-PRESCRIPTION GL::GENERAL-CONCRETEP))
 (138 138 (:REWRITE GL::TAG-WHEN-ATOM))
 (69 69 (:REWRITE GL::GENERAL-CONCRETEP-OF-ATOMIC-CONSTANTS))
 (56 56 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (46 23 (:REWRITE GL::GENERAL-INTEGER-BITS-CORRECT-FOR-EVAL-G-BASE))
 (46 23 (:REWRITE GL::GENERAL-CONSP-CORRECT-FOR-EVAL-G-BASE))
 (46 23 (:REWRITE GL::GENERAL-BOOLEAN-VALUE-CORRECT-FOR-EVAL-G-BASE))
 (38 28 (:REWRITE DEFAULT-CAR))
 (23 23 (:TYPE-PRESCRIPTION GL::GENERAL-INTEGERP))
 (23 23 (:TYPE-PRESCRIPTION GL::GENERAL-CONSP))
 (23 23 (:TYPE-PRESCRIPTION GL::GENERAL-BOOLEANP))
 (23 23 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE GL::BOOLEANP-OF-GEVAL-FOR-EVAL-G-BASE))
 (4 2 (:REWRITE GL::BFR-HYP-FIX-WHEN-HYP$AP))
 (2 2 (:TYPE-PRESCRIPTION GL::HYP$AP))
 )
