(PROOF-CHECKER-ARRAY::TRUEP)
(PROOF-CHECKER-ARRAY::FALSEP)
(PROOF-CHECKER-ARRAY::UNDEFP)
(PROOF-CHECKER-ARRAY::TRUE)
(PROOF-CHECKER-ARRAY::FALSE)
(PROOF-CHECKER-ARRAY::UNDEF)
(PROOF-CHECKER-ARRAY::TRUEP-TRUE)
(PROOF-CHECKER-ARRAY::FALSEP-FALSE)
(PROOF-CHECKER-ARRAY::UNDEFP-UNDEF)
(PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-FALSEP)
(PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-UNDEFP)
(PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-TRUEP)
(PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-UNDEFP)
(PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-FALSEP)
(PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP)
(PROOF-CHECKER-ARRAY::TERNARYP)
(PROOF-CHECKER-ARRAY::TERNARYP-TRUE
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-TRUEP))
 )
(PROOF-CHECKER-ARRAY::TERNARYP-FALSE
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-FALSEP))
 )
(PROOF-CHECKER-ARRAY::TERNARYP-UNDEF
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-UNDEFP))
 )
(PROOF-CHECKER-ARRAY::TERNARYP-NOT-TRUE-NOT-UNDEF
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-TRUEP))
 )
(PROOF-CHECKER-ARRAY::TERNARYP-NOT-TRUE-NOT-FALSE
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TERNARYP-NOT-TRUE-NOT-UNDEF))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-TRUEP))
 )
(PROOF-CHECKER-ARRAY::TERNARYP-NOT-FALSE-NOT-UNDEF
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-TRUEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::UNDEFP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TRUEP-IMPLIES-NOT-FALSEP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TERNARYP-NOT-TRUE-NOT-UNDEF))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::TERNARYP-NOT-TRUE-NOT-FALSE))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-UNDEFP))
 (1 1 (:REWRITE PROOF-CHECKER-ARRAY::FALSEP-IMPLIES-NOT-TRUEP))
 )
