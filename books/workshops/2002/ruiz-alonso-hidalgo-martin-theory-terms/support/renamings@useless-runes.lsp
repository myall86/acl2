(RENAMED)
(RENAMED-IS-AN-EQUIVALENCE)
(RENAMED-IMPLIES-IFF-SUBS-1)
(RENAMED-IMPLIES-IFF-SUBS-2)
(VARIABLE-SUBSTITUTION)
(VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P
 (25 25 (:REWRITE DEFAULT-CAR))
 (13 13 (:REWRITE DEFAULT-CDR))
 )
(RENAMING)
(VAL-VAL-INVERSE-LEMMA
 (78 58 (:REWRITE DEFAULT-CAR))
 (63 7 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (57 39 (:REWRITE DEFAULT-CDR))
 (42 7 (:DEFINITION ALISTP))
 (35 35 (:TYPE-PRESCRIPTION ALISTP))
 (15 15 (:REWRITE CONSP-DOMAIN))
 )
(VAL-VAL-INVERSE-RENAMING
 (159 136 (:REWRITE DEFAULT-CAR))
 (129 106 (:REWRITE DEFAULT-CDR))
 (54 6 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (36 6 (:DEFINITION ALISTP))
 (30 30 (:TYPE-PRESCRIPTION ALISTP))
 (12 12 (:REWRITE CONSP-DOMAIN))
 )
(RENAMING-INVERSE
 (262 208 (:REWRITE DEFAULT-CDR))
 (262 208 (:REWRITE DEFAULT-CAR))
 (258 28 (:DEFINITION MEMBER-EQUAL))
 (153 17 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (102 17 (:DEFINITION ALISTP))
 (85 85 (:TYPE-PRESCRIPTION ALISTP))
 (68 17 (:DEFINITION DOMAIN))
 (66 11 (:DEFINITION INVERSE))
 (51 51 (:REWRITE CONSP-DOMAIN))
 (50 7 (:DEFINITION VAL))
 (44 11 (:DEFINITION CO-DOMAIN))
 (38 38 (:REWRITE SUBSETP-TRANSITIVE))
 (30 6 (:DEFINITION BINARY-APPEND))
 (12 4 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (9 9 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (8 8 (:TYPE-PRESCRIPTION INVERSE))
 )
(RENAMING-IMPLIES-RENAMED
 (33 30 (:REWRITE DEFAULT-CDR))
 (31 28 (:REWRITE DEFAULT-CAR))
 (29 1 (:DEFINITION SUBSETP-EQUAL))
 (27 3 (:DEFINITION APPLY-SUBST))
 (23 3 (:DEFINITION MEMBER-EQUAL))
 (18 3 (:DEFINITION VAL))
 (9 1 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (8 2 (:DEFINITION CO-DOMAIN))
 (6 1 (:DEFINITION INVERSE))
 (6 1 (:DEFINITION ALISTP))
 (5 5 (:TYPE-PRESCRIPTION ALISTP))
 (4 1 (:DEFINITION DOMAIN))
 (3 3 (:REWRITE CONSP-DOMAIN))
 (2 2 (:REWRITE SUBSETP-TRANSITIVE))
 (2 1 (:DEFINITION VARIABLES))
 )
(RENAMED-IMPLIES-VARIABLE-VAL-LEMMA
 (6 1 (:DEFINITION VAL))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 1 (:DEFINITION APPLY-SUBST))
 )
(RENAMED-IMPLIES-VARIABLE-VAL
 (206 197 (:REWRITE DEFAULT-CAR))
 (204 34 (:DEFINITION VAL))
 (179 170 (:REWRITE DEFAULT-CDR))
 (89 9 (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
 (64 8 (:DEFINITION VARIABLE-SUBSTITUTION))
 (53 14 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (40 40 (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
 (30 6 (:DEFINITION BINARY-APPEND))
 (27 27 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(RENAMED-IMPLIES-VARIABLE-SUBSTITUTION-MAIN-LEMMA
 (84 84 (:REWRITE DEFAULT-CAR))
 (78 78 (:REWRITE DEFAULT-CDR))
 (72 12 (:DEFINITION VAL))
 (54 6 (:DEFINITION VARIABLES))
 (30 6 (:DEFINITION BINARY-APPEND))
 (25 5 (:DEFINITION MEMBER-EQUAL))
 (22 22 (:TYPE-PRESCRIPTION VARIABLES))
 (12 4 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (9 9 (:REWRITE SUBSETP-TRANSITIVE))
 (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
 )
(RENAMED-IMPLIES-VARIABLE-SUBSTITUTION)
(RENAMED-IMPLIES-INJECTIVE-VAL-LEMMA
 (22 2 (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 2 (:DEFINITION VARIABLE-SUBSTITUTION))
 (14 14 (:REWRITE DEFAULT-CDR))
 (10 10 (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-P))
 )
(IDENTITY-ON-TERM-IDENTITY-VAL
 (354 59 (:DEFINITION VAL))
 (315 306 (:REWRITE DEFAULT-CAR))
 (270 261 (:REWRITE DEFAULT-CDR))
 (209 19 (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
 (152 19 (:DEFINITION VARIABLE-SUBSTITUTION))
 (95 95 (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
 (39 13 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (30 6 (:DEFINITION BINARY-APPEND))
 (27 27 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(RENAMED-IMPLIES-INJECTIVE-VAL)
(RENAMED-IMPLIES-SETP-CODOMAIN-MAIN-LEMMA
 (577 571 (:REWRITE DEFAULT-CAR))
 (549 538 (:REWRITE DEFAULT-CDR))
 (480 80 (:DEFINITION VAL))
 (189 21 (:DEFINITION VARIABLES))
 (105 21 (:DEFINITION BINARY-APPEND))
 (80 80 (:TYPE-PRESCRIPTION VARIABLES))
 (39 13 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (26 26 (:TYPE-PRESCRIPTION VARIABLE-P))
 (24 24 (:REWRITE SUBSETP-TRANSITIVE))
 )
(RENAMED-IMPLIES-SETP-CODOMAIN)
(RENAMED-IMPLIES-RENAMING-MAIN-LEMMA
 (60 3 (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
 (51 3 (:DEFINITION SETP))
 (50 1 (:DEFINITION MAKE-SET))
 (29 29 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (25 2 (:DEFINITION APPLY-SUBST))
 (24 4 (:DEFINITION MEMBER-EQUAL))
 (18 3 (:DEFINITION VAL))
 (16 16 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (15 15 (:TYPE-PRESCRIPTION SETP))
 (12 1 (:DEFINITION RESTRICTION))
 (10 10 (:TYPE-PRESCRIPTION VARIABLES))
 (9 1 (:DEFINITION VARIABLES))
 (5 1 (:DEFINITION BINARY-APPEND))
 (4 1 (:DEFINITION CO-DOMAIN))
 (3 1 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-P))
 (2 2 (:TYPE-PRESCRIPTION MAKE-SET))
 )
(RENAMED-IMPLIES-RENAMING
 (159 9 (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
 (150 3 (:DEFINITION MAKE-SET))
 (71 13 (:DEFINITION MEMBER-EQUAL))
 (63 63 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE DEFAULT-CAR))
 (36 3 (:DEFINITION RESTRICTION))
 (20 20 (:TYPE-PRESCRIPTION VARIABLES))
 (18 3 (:DEFINITION VAL))
 (8 4 (:DEFINITION VARIABLES))
 (8 2 (:DEFINITION CO-DOMAIN))
 (6 6 (:TYPE-PRESCRIPTION MAKE-SET))
 (2 2 (:REWRITE RENAMED-IMPLIES-VARIABLE-SUBSTITUTION))
 (2 2 (:REWRITE RENAMED-IMPLIES-SETP-CODOMAIN))
 (1 1 (:REWRITE SUBSETP-TRANSITIVE))
 )
(NUMBER-RENAME-AUX
 (121 58 (:REWRITE DEFAULT-+-2))
 (81 58 (:REWRITE DEFAULT-+-1))
 (48 12 (:REWRITE COMMUTATIVITY-OF-+))
 (48 12 (:DEFINITION INTEGER-ABS))
 (48 6 (:DEFINITION LENGTH))
 (30 6 (:DEFINITION LEN))
 (21 16 (:REWRITE DEFAULT-<-2))
 (20 16 (:REWRITE DEFAULT-<-1))
 (19 19 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 6 (:TYPE-PRESCRIPTION ASSOC-CONSP-OR-NIL))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:TYPE-PRESCRIPTION ALISTP))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(ALISTP-ACL2-NUMBERP-ALISTP
 (21 21 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ALISTP-ACL2-NUMBERP-SECOND-NUMBER-RENAME-AUX
 (204 118 (:REWRITE DEFAULT-CAR))
 (113 89 (:REWRITE DEFAULT-CDR))
 (29 29 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 3 (:DEFINITION VAL))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 3 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAME-AUX
 (49 42 (:REWRITE DEFAULT-CAR))
 (33 31 (:REWRITE DEFAULT-CDR))
 (31 1 (:DEFINITION NUMBER-RENAME-AUX))
 (23 23 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (7 1 (:REWRITE ASSOC-VAL))
 (6 1 (:DEFINITION VAL))
 (3 1 (:REWRITE MV-NTH-0-FIRST))
 (2 2 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAME-AUX-SUBSTITUTION-S-P
 (304 198 (:REWRITE DEFAULT-CAR))
 (202 172 (:REWRITE DEFAULT-CDR))
 (115 23 (:DEFINITION LEN))
 (88 44 (:TYPE-PRESCRIPTION ASSOC-CONSP-OR-NIL))
 (52 26 (:REWRITE DEFAULT-+-2))
 (29 26 (:REWRITE DEFAULT-+-1))
 (23 23 (:TYPE-PRESCRIPTION LEN))
 (19 19 (:REWRITE SYSTEM-S-P-TERM-P-AUX-ARGUMENTS))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 3 (:DEFINITION VAL))
 )
(NUMBER-RENAME-AUX-EQUAL-LEN
 (165 86 (:REWRITE DEFAULT-CAR))
 (77 56 (:REWRITE DEFAULT-CDR))
 (28 4 (:REWRITE ASSOC-VAL))
 (24 12 (:REWRITE DEFAULT-+-2))
 (24 4 (:DEFINITION VAL))
 (20 4 (:DEFINITION ASSOC-EQUAL))
 (16 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 4 (:TYPE-PRESCRIPTION ASSOC-CONSP-OR-NIL))
 (4 4 (:TYPE-PRESCRIPTION ALISTP))
 )
(NUMBER-RENAME-AUX-TERM-S-P-AUX
 (298 200 (:REWRITE DEFAULT-CAR))
 (175 148 (:REWRITE DEFAULT-CDR))
 (85 17 (:DEFINITION LEN))
 (40 20 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (23 20 (:REWRITE DEFAULT-+-1))
 (17 17 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE SYSTEM-S-P-TERM-P-AUX-ARGUMENTS))
 )
(COINCIDE-MAIN-PROPERTY
 (108 18 (:DEFINITION VAL))
 (72 72 (:REWRITE DEFAULT-CAR))
 (42 42 (:REWRITE DEFAULT-CDR))
 )
(COINCIDE-CONMUTATIVE
 (89 89 (:REWRITE DEFAULT-CAR))
 (49 49 (:REWRITE DEFAULT-CDR))
 (15 7 (:REWRITE COINCIDE-MAIN-PROPERTY))
 (6 1 (:DEFINITION MEMBER-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(COINCIDE-CONS
 (140 140 (:REWRITE DEFAULT-CAR))
 (67 67 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE COINCIDE-MAIN-PROPERTY))
 )
(COINCIDE-SUBSETP-TRANSITIVE
 (325 325 (:REWRITE DEFAULT-CAR))
 (199 199 (:REWRITE DEFAULT-CDR))
 (72 19 (:DEFINITION MEMBER-EQUAL))
 (16 16 (:REWRITE SUBSETP-TRANSITIVE))
 )
(ACL2-NUMBERP-LIST-INCREMENT)
(ACL2-NUMBERP-LIST-INCREMENT-SETP-1-LEMA
 (67 67 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (57 32 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-CDR))
 (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 )
(ACL2-NUMBERP-LIST-INCREMENT-SETP-1
 (73 73 (:REWRITE DEFAULT-CAR))
 (58 58 (:REWRITE DEFAULT-CDR))
 (39 39 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 11 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-<-1))
 )
(ACL2-NUMBERP-LIST-INCREMENT-SETP-2-LEMA
 (67 67 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (56 31 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-CDR))
 (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 23 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP-1-LEMA))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 )
(ACL2-NUMBERP-LIST-INCREMENT-SETP-2
 (73 73 (:REWRITE DEFAULT-CAR))
 (58 58 (:REWRITE DEFAULT-CDR))
 (39 39 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (26 26 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP-1-LEMA))
 (17 11 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP-1))
 )
(ACL2-NUMBERP-LIST-INCREMENT-SETP
 (15 15 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP-2-LEMA))
 (2 2 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP-1-LEMA))
 )
(ACL2-NUMBERP-LIST-SMALLER-THAN)
(ACL2-NUMBERP-LIST-BIGGER-THAN)
(ACL2-NUMBERP-LIST-BIGGER-THAN-APPEND
 (108 81 (:REWRITE DEFAULT-CAR))
 (66 33 (:REWRITE DEFAULT-<-2))
 (59 59 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (58 29 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (40 31 (:REWRITE DEFAULT-CDR))
 (33 33 (:REWRITE DEFAULT-<-1))
 (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (29 29 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(NUMBER-RENAMED-AUX-VARIABLES->=-X
 (103 103 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (98 82 (:REWRITE DEFAULT-<-2))
 (82 82 (:REWRITE DEFAULT-<-1))
 (66 6 (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
 (48 6 (:DEFINITION VARIABLE-SUBSTITUTION))
 (45 9 (:DEFINITION BINARY-APPEND))
 (30 30 (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
 (26 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 )
(ACL2-NUMBERP-LIST-SMALLER-THAN-APPEND
 (108 81 (:REWRITE DEFAULT-CAR))
 (66 33 (:REWRITE DEFAULT-<-1))
 (59 59 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (58 29 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (40 31 (:REWRITE DEFAULT-CDR))
 (33 33 (:REWRITE DEFAULT-<-2))
 (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (29 29 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(NUMBER-RENAMED-AUX-VARIABLES-<=-X
 (103 103 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (98 82 (:REWRITE DEFAULT-<-1))
 (82 82 (:REWRITE DEFAULT-<-2))
 (66 6 (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
 (48 6 (:DEFINITION VARIABLE-SUBSTITUTION))
 (45 9 (:DEFINITION BINARY-APPEND))
 (30 30 (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
 (26 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAME-CO-DOMAIN-ACL2-NUMBERP-LIST-INCREMENT
 (124 124 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (102 102 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (54 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (50 43 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE DEFAULT-+-1))
 (18 3 (:DEFINITION VAL))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ACL2-NUMBERP-LIST-INCREMENT-IMPLIES-VARIABLE-SUBSTITUTION
 (47 44 (:REWRITE DEFAULT-CDR))
 (46 46 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 )
(ACL2-NUMBERP-LIST-INCREMENT-IMPLIES-RENAMING
 (16 1 (:DEFINITION ACL2-NUMBERP-LIST-INCREMENT))
 (8 2 (:DEFINITION CO-DOMAIN))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAME-RENAMING
 (108 3 (:DEFINITION NUMBER-RENAME-AUX))
 (78 36 (:REWRITE DEFAULT-CAR))
 (63 9 (:REWRITE MV-NTH-1-SECOND))
 (46 34 (:REWRITE DEFAULT-CDR))
 (27 9 (:REWRITE MV-NTH-0-FIRST))
 (18 3 (:DEFINITION CO-DOMAIN))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 (4 4 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-SETP))
 (4 4 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-IMPLIES-VARIABLE-SUBSTITUTION))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE ACL2-NUMBERP-LIST-INCREMENT-IMPLIES-RENAMING))
 )
(NUMBER-RENAME-INVARIANTS
 (888 555 (:REWRITE DEFAULT-CAR))
 (486 359 (:REWRITE DEFAULT-CDR))
 (449 12 (:DEFINITION COINCIDE))
 (288 36 (:DEFINITION VAL))
 (52 48 (:REWRITE CONSP-DOMAIN))
 (35 7 (:DEFINITION BINARY-APPEND))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 12 (:REWRITE DEFAULT-+-2))
 (24 12 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAME-INCREMENTAL
 (448 8 (:DEFINITION NUMBER-RENAME-AUX))
 (246 144 (:REWRITE DEFAULT-CAR))
 (168 24 (:REWRITE MV-NTH-1-SECOND))
 (156 156 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (125 93 (:REWRITE DEFAULT-CDR))
 (72 24 (:REWRITE MV-NTH-0-FIRST))
 (68 10 (:DEFINITION VAL))
 (60 8 (:REWRITE ASSOC-VAL))
 (44 8 (:DEFINITION ASSOC-EQUAL))
 (26 2 (:DEFINITION APPLY-SUBST))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 8 (:REWRITE DEFAULT-+-2))
 (16 8 (:REWRITE DEFAULT-+-1))
 (12 8 (:TYPE-PRESCRIPTION ASSOC-CONSP-OR-NIL))
 (12 2 (:DEFINITION DOMAIN))
 (9 1 (:DEFINITION VARIABLES))
 (5 1 (:DEFINITION BINARY-APPEND))
 )
(TERM-SUBSUMES-NUMBER-RENAMED-AUX-TERM
 (383 203 (:REWRITE DEFAULT-CAR))
 (178 129 (:REWRITE DEFAULT-CDR))
 (21 7 (:DEFINITION ALISTP))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 6 (:REWRITE DEFAULT-+-1))
 )
(NUMBER-RENAMED-AUX-TERM-SUBSUMES-TERM-LEMMA
 (72 2 (:DEFINITION NUMBER-RENAME-AUX))
 (57 30 (:REWRITE DEFAULT-CAR))
 (42 6 (:REWRITE MV-NTH-1-SECOND))
 (41 41 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (30 22 (:REWRITE DEFAULT-CDR))
 (18 6 (:REWRITE MV-NTH-0-FIRST))
 (13 1 (:DEFINITION APPLY-SUBST))
 (9 1 (:DEFINITION VARIABLES))
 (8 1 (:DEFINITION VAL))
 (8 1 (:DEFINITION INVERSE))
 (6 1 (:DEFINITION DOMAIN))
 (5 1 (:DEFINITION BINARY-APPEND))
 (2 2 (:TYPE-PRESCRIPTION VARIABLES))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAMED-AUX-TERM-SUBSUMES-TERM
 (108 3 (:DEFINITION NUMBER-RENAME-AUX))
 (75 35 (:REWRITE DEFAULT-CAR))
 (63 9 (:REWRITE MV-NTH-1-SECOND))
 (57 57 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (34 23 (:REWRITE DEFAULT-CDR))
 (27 9 (:REWRITE MV-NTH-0-FIRST))
 (17 1 (:DEFINITION APPLY-SUBST))
 (8 1 (:DEFINITION VAL))
 (8 1 (:DEFINITION INVERSE))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION INVERSE))
 )
(NUMBER-RENAME)
(NUMBER-RENAME-NOT-NIL
 (62 27 (:REWRITE DEFAULT-CAR))
 (23 15 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TERM-SUBSUMES-NUMBER-RENAMED-TERM
 (56 4 (:DEFINITION NUMBER-RENAME-AUX))
 (38 16 (:REWRITE DEFAULT-CAR))
 (28 4 (:REWRITE MV-NTH-1-SECOND))
 (14 9 (:REWRITE DEFAULT-CDR))
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAMED-TERM-SUBSUMES-TERM
 (42 3 (:DEFINITION NUMBER-RENAME-AUX))
 (32 15 (:REWRITE DEFAULT-CAR))
 (23 23 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (21 3 (:REWRITE MV-NTH-1-SECOND))
 (13 9 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION INVERSE))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAMED-VARIABLES->=-X
 (14 1 (:DEFINITION NUMBER-RENAME-AUX))
 (9 4 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (7 1 (:REWRITE MV-NTH-1-SECOND))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 1 (:DEFINITION VARIABLES))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAMED-VARIABLES-<=-X
 (14 1 (:DEFINITION NUMBER-RENAME-AUX))
 (9 4 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (7 1 (:REWRITE MV-NTH-1-SECOND))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 1 (:DEFINITION VARIABLES))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:DEFINITION ASSOC-EQUAL))
 )
(SMALLER-BIGGER-DISJOINTP
 (112 112 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (102 60 (:REWRITE DEFAULT-<-1))
 (100 100 (:REWRITE DEFAULT-CAR))
 (94 60 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-CDR))
 )
(NUMBER-RENAME-STANDARDIZATION-APART
 (84 6 (:DEFINITION NUMBER-RENAME-AUX))
 (62 32 (:REWRITE DEFAULT-CAR))
 (48 48 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (42 6 (:REWRITE MV-NTH-1-SECOND))
 (28 22 (:REWRITE DEFAULT-CDR))
 (24 6 (:DEFINITION VARIABLES))
 (16 16 (:TYPE-PRESCRIPTION VARIABLES))
 (9 8 (:REWRITE DEFAULT-<-2))
 (9 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAME-TERM-S-P
 (14 1 (:DEFINITION NUMBER-RENAME-AUX))
 (10 5 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION TERM-S-P-AUX))
 (7 1 (:REWRITE MV-NTH-1-SECOND))
 (6 6 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (6 5 (:REWRITE DEFAULT-CDR))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:DEFINITION ASSOC-EQUAL))
 )
(NUMBER-RENAME-TERM-P
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 )
(NUMBER-RENAMED-TERM-RENAMED-TERM
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NUMBER-RENAME-LIST)
(LIST-SUBSUMES-NUMBER-RENAMED-LIST-
 (92 4 (:DEFINITION NUMBER-RENAME-AUX))
 (62 24 (:REWRITE DEFAULT-CAR))
 (56 8 (:REWRITE MV-NTH-1-SECOND))
 (22 13 (:REWRITE DEFAULT-CDR))
 )
(NUMBER-RENAMED-LIST-SUBSUMES-LIST
 (69 3 (:DEFINITION NUMBER-RENAME-AUX))
 (50 21 (:REWRITE DEFAULT-CAR))
 (42 6 (:REWRITE MV-NTH-1-SECOND))
 (38 38 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (19 12 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION INVERSE))
 )
(NUMBER-RENAMED-LIST-VARIABLES->=-X
 (23 1 (:DEFINITION NUMBER-RENAME-AUX))
 (17 8 (:REWRITE DEFAULT-CAR))
 (14 2 (:REWRITE MV-NTH-1-SECOND))
 (13 13 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (10 1 (:DEFINITION VARIABLES))
 (7 5 (:REWRITE DEFAULT-CDR))
 (5 1 (:DEFINITION BINARY-APPEND))
 (2 2 (:TYPE-PRESCRIPTION VARIABLES))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(NUMBER-RENAMED-LIST-VARIABLES-<=-X
 (23 1 (:DEFINITION NUMBER-RENAME-AUX))
 (17 8 (:REWRITE DEFAULT-CAR))
 (14 2 (:REWRITE MV-NTH-1-SECOND))
 (13 13 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (10 1 (:DEFINITION VARIABLES))
 (7 5 (:REWRITE DEFAULT-CDR))
 (5 1 (:DEFINITION BINARY-APPEND))
 (2 2 (:TYPE-PRESCRIPTION VARIABLES))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(SMALLER-BIGGER-DISJOINTP
 (112 112 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (102 60 (:REWRITE DEFAULT-<-1))
 (100 100 (:REWRITE DEFAULT-CAR))
 (94 60 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-CDR))
 )
(NUMBER-RENAME-LIST-STANDARDIZATION-APART
 (138 6 (:DEFINITION NUMBER-RENAME-AUX))
 (110 56 (:REWRITE DEFAULT-CAR))
 (84 12 (:REWRITE MV-NTH-1-SECOND))
 (78 78 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (60 6 (:DEFINITION VARIABLES))
 (46 34 (:REWRITE DEFAULT-CDR))
 (30 6 (:DEFINITION BINARY-APPEND))
 (28 28 (:TYPE-PRESCRIPTION VARIABLES))
 (9 8 (:REWRITE DEFAULT-<-2))
 (9 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NUMBER-RENAME-LIST-TERM-S-P-AUX-NIL
 (23 1 (:DEFINITION NUMBER-RENAME-AUX))
 (16 7 (:REWRITE DEFAULT-CAR))
 (14 2 (:REWRITE MV-NTH-1-SECOND))
 (11 11 (:TYPE-PRESCRIPTION NUMBER-RENAME-AUX))
 (6 4 (:REWRITE DEFAULT-CDR))
 (4 1 (:DEFINITION TERM-S-P-AUX))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(NUMBER-RENAME-LIST-TERM-P-AUX-NIL)
