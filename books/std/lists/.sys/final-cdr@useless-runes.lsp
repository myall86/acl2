(FINAL-CDR)
(FINAL-CDR-WHEN-ATOM)
(FINAL-CDR-OF-CONS
 (6 6 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(FINAL-CDR-WHEN-TRUE-LISTP
 (7 7 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(EQUAL-FINAL-CDR-NIL
 (25 8 (:DEFINITION TRUE-LISTP))
 (12 12 (:REWRITE DEFAULT-CDR))
 )
(EQUAL-OF-FINAL-CDR-AND-SELF
 (19 3 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (11 3 (:DEFINITION TRUE-LISTP))
 (11 1 (:DEFINITION FINAL-CDR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(FINAL-CDR-OF-APPEND
 (364 21 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (238 21 (:DEFINITION TRUE-LISTP))
 (188 188 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (172 86 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (86 86 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (56 20 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (36 33 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CDR-CONS))
 )
(FINAL-CDR-OF-REVAPPEND
 (333 20 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (209 19 (:DEFINITION TRUE-LISTP))
 (62 20 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (43 31 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(FINAL-CDR-OF-UNION-EQUAL
 (322 29 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (206 29 (:DEFINITION TRUE-LISTP))
 (142 142 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (122 122 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (54 53 (:REWRITE DEFAULT-CDR))
 (46 28 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (15 15 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CDR-CONS))
 )
(FINAL-CDR-OF-ACONS)
(FINAL-CDR-OF-HONS-ACONS)
(FINAL-CDR-OF-HONS-SHRINK-ALIST
 (393 36 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (245 35 (:DEFINITION TRUE-LISTP))
 (175 175 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (75 71 (:REWRITE DEFAULT-CDR))
 (62 36 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (46 46 (:REWRITE DEFAULT-CAR))
 )
(FINAL-CDR-OF-ADD-TO-SET-EQUAL
 (45 4 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (29 2 (:DEFINITION FINAL-CDR))
 (28 4 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 4 (:REWRITE FINAL-CDR-WHEN-ATOM))
 (3 1 (:DEFINITION MEMBER-EQUAL))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(FINAL-CDR-OF-LAST
 (206 18 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (131 19 (:DEFINITION TRUE-LISTP))
 (95 95 (:TYPE-PRESCRIPTION LAST))
 (81 81 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(FINAL-CDR-OF-NTHCDR
 (575 43 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (331 45 (:DEFINITION TRUE-LISTP))
 (218 105 (:REWRITE DEFAULT-CDR))
 (179 12 (:REWRITE CONSP-OF-NTHCDR))
 (94 77 (:REWRITE DEFAULT-<-1))
 (90 57 (:REWRITE DEFAULT-+-2))
 (86 77 (:REWRITE DEFAULT-<-2))
 (83 24 (:REWRITE ZP-OPEN))
 (57 57 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE NTHCDR-WHEN-ATOM))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(APPEND-SELF-ONTO-FINAL-CDR
 (101 101 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (48 6 (:REWRITE FINAL-CDR-WHEN-TRUE-LISTP))
 (32 7 (:DEFINITION TRUE-LISTP))
 (12 12 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
