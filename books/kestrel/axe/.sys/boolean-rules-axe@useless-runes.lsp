(BOOLAND$-KNOWN-BOOLEANS-JUSTIFICATION)
(BOOLOR$-KNOWN-BOOLEANS-JUSTIFICATION)
(BOOLXOR$-KNOWN-BOOLEANS-JUSTIFICATION)
(BOOLIF$-KNOWN-BOOLEANS-JUSTIFICATION)
(BOOL-FIX$INLINE$-KNOWN-BOOLEANS-JUSTIFICATION)
(MYIF-BECOMES-BOOLIF-AXE
 (1 1 (:REWRITE MYIF-WHEN-NOT-NIL))
 (1 1 (:REWRITE MYIF-WHEN-NIL))
 (1 1 (:REWRITE MYIF-OF-CONSTANT-WHEN-NOT-NIL))
 (1 1 (:REWRITE BOOLIF-WHEN-QUOTEP-ARG1))
 )
(EQUAL-OF-BOOLEANS-AXE)
(BOOLOR-COMMUTATIVE-AXE
 (3 3 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
 (3 3 (:REWRITE BOOLOR-OF-NON-NIL))
 (3 3 (:REWRITE BOOLOR-OF-CONSTANT-ARG2))
 (3 3 (:REWRITE BOOLOR-OF-CONSTANT-ARG1))
 )
(BOOLOR-COMMUTATIVE-2-AXE
 (4 4 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
 (4 4 (:REWRITE BOOLOR-OF-NON-NIL))
 (4 4 (:REWRITE BOOLOR-OF-CONSTANT-ARG2))
 (4 4 (:REWRITE BOOLOR-OF-CONSTANT-ARG1))
 )
(BOOLAND-COMMUTATIVE-AXE
 (3 3 (:REWRITE BOOLAND-OF-CONSTANT-ARG2))
 (3 3 (:REWRITE BOOLAND-OF-CONSTANT-ARG1))
 )
(BOOLAND-COMMUTATIVE-2-AXE
 (4 4 (:REWRITE BOOLAND-OF-CONSTANT-ARG2))
 (4 4 (:REWRITE BOOLAND-OF-CONSTANT-ARG1))
 )
(BOOLXOR-COMMUTATIVE-AXE
 (3 3 (:REWRITE BOOLXOR-OF-CONSTANT-ARG2))
 (3 3 (:REWRITE BOOLXOR-OF-CONSTANT-ARG1))
 )
(BOOLXOR-COMMUTATIVE-2-AXE
 (4 4 (:REWRITE BOOLXOR-OF-CONSTANT-ARG2))
 (4 4 (:REWRITE BOOLXOR-OF-CONSTANT-ARG1))
 )
