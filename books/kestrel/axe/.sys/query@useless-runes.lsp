(QUERY-FN)
(NOT-OF-IF)
(NOT-OF-MYIF
 (4 2 (:REWRITE MYIF-BECOMES-BIF))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE MYIF-WHEN-NOT-NIL))
 (2 2 (:REWRITE MYIF-WHEN-NIL))
 (2 2 (:REWRITE MYIF-OF-CONSTANT-WHEN-NOT-NIL))
 (1 1 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-2))
 (1 1 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-1))
 (1 1 (:REWRITE NOT-EQUAL-WHEN-NOT-EQUAL-BVCHOP))
 (1 1 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P-ALT))
 (1 1 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE JVM::NOT-EQUAL-CONSTANT-WHEN-CDR-WRONG))
 (1 1 (:REWRITE JVM::NOT-EQUAL-CONSTANT-WHEN-CAR-WRONG))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-SLICE-EQUAL-CONSTANT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SLICE-EQUAL-CONSTANT))
 (1 1 (:REWRITE ADD-BVCHOPS-TO-EQUALITY-OF-SBPS-1))
 (1 1 (:DEFINITION IFF))
 )
