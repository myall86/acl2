(NOT-INTERSECTION-EQUAL-OF-SET-DIFFERENCE-EQUAL-ARG1
 (33 9 (:REWRITE INTERSECTION-EQUAL-WHEN-MEMBER-EQUAL-AND-MEMBER-EQUAL))
 (21 21 (:REWRITE DEFAULT-CAR))
 (18 9 (:REWRITE INTERSECTION-EQUAL-WHEN-INTERSECTION-EQUAL-OF-CDR-ARG1-CHEAP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (16 8 (:REWRITE INTERSECTION-EQUAL-WHEN-MEMBER-EQUAL-OF-CAR-CHEAP))
 (15 15 (:TYPE-PRESCRIPTION SET-DIFFERENCE-EQUAL))
 (15 8 (:REWRITE INTERSECTION-EQUAL-WHEN-NOT-CONSP-ARG2-CHEAP))
 )
(NOT-INTERSECTION-EQUAL-OF-SET-DIFFERENCE-EQUAL-ARG2
 (32 8 (:REWRITE INTERSECTION-EQUAL-WHEN-MEMBER-EQUAL-AND-MEMBER-EQUAL))
 (18 18 (:REWRITE DEFAULT-CAR))
 (16 8 (:REWRITE INTERSECTION-EQUAL-WHEN-INTERSECTION-EQUAL-OF-CDR-ARG1-CHEAP))
 (14 14 (:TYPE-PRESCRIPTION SET-DIFFERENCE-EQUAL))
 (14 7 (:REWRITE INTERSECTION-EQUAL-WHEN-MEMBER-EQUAL-OF-CAR-CHEAP))
 (13 13 (:REWRITE DEFAULT-CDR))
 (13 7 (:REWRITE INTERSECTION-EQUAL-WHEN-NOT-CONSP-ARG2-CHEAP))
 )
(INTERSECTION-EQUAL-OF-UNION-EQUAL-IFF
 (206 103 (:REWRITE INTERSECTION-EQUAL-WHEN-INTERSECTION-EQUAL-OF-CDR-ARG1-CHEAP))
 (192 96 (:REWRITE INTERSECTION-EQUAL-WHEN-MEMBER-EQUAL-OF-CAR-CHEAP))
 (109 109 (:REWRITE DEFAULT-CAR))
 (107 107 (:REWRITE DEFAULT-CDR))
 (94 94 (:REWRITE INTERSECTION-EQUAL-WHEN-NOT-CONSP-ARG1-CHEAP))
 (30 30 (:TYPE-PRESCRIPTION UNION-EQUAL))
 )
