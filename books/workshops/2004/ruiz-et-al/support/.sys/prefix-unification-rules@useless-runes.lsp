(UNIF-LEGAL-P-DELETE)
(UNIF-LEGAL-P-DECOMPOSE)
(UNIF-LEGAL-P-CLASH1)
(UNIF-LEGAL-P-CLASH2)
(UNIF-LEGAL-P-ORIENT)
(UNIF-LEGAL-P-ELIMINATE)
(UNIF-LEGAL-P-OCCUR-CHECK)
(UNIF-LEGAL-P)
(UNIF-REDUCE-ONE-STEP-P-DELETE)
(UNIF-REDUCE-ONE-STEP-P-DECOMPOSE
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(UNIF-REDUCE-ONE-STEP-P-CLASH1)
(UNIF-REDUCE-ONE-STEP-P-CLASH2)
(UNIF-REDUCE-ONE-STEP-P-ORIENT)
(UNIF-REDUCE-ONE-STEP-P-ELIMINATE)
(UNIF-REDUCE-ONE-STEP-P-OCCUR-CHECK)
(ELIMINATE-N
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(UNIF-REDUCE-ONE-STEP-P)
(MEMBER-SOLUTION
 (284 36 (:DEFINITION VAL))
 (55 55 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (55 55 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SOLUTION-DELETE-ONE
 (176 22 (:DEFINITION VAL))
 (131 131 (:REWRITE DEFAULT-CAR))
 (89 89 (:REWRITE DEFAULT-CDR))
 (36 36 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (36 36 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (11 11 (:REWRITE MEMBER-SOLUTION))
 )
(SOLUTION-DELETE-ONE-2
 (588 74 (:DEFINITION VAL))
 (112 112 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (112 112 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (36 36 (:REWRITE MEMBER-SOLUTION))
 (10 8 (:REWRITE SOLUTION-DELETE-ONE))
 )
(PERM-IMPLIES-IFF-SOLUTION-2
 (416 52 (:DEFINITION VAL))
 (330 330 (:REWRITE DEFAULT-CAR))
 (236 236 (:REWRITE DEFAULT-CDR))
 (91 91 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (91 91 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (56 8 (:DEFINITION DELETE-ONE))
 (50 10 (:DEFINITION MEMBER-EQUAL))
 )
(PERM-NTH-ELIMINATE-N
 (142 142 (:REWRITE DEFAULT-CAR))
 (120 120 (:REWRITE DEFAULT-CDR))
 (103 103 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (96 71 (:REWRITE DEFAULT-+-2))
 (71 71 (:REWRITE DEFAULT-+-1))
 (37 37 (:META CANCEL_PLUS-LESSP-CORRECT))
 (37 25 (:REWRITE DEFAULT-<-2))
 (29 29 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (29 29 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (27 25 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE NATP-RW))
 )
(PERM-NTH-ELIMINATE-N-INSTANCE)
(SOLUTION-APPEND
 (464 58 (:DEFINITION VAL))
 (347 329 (:REWRITE DEFAULT-CAR))
 (238 232 (:REWRITE DEFAULT-CDR))
 (85 85 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (85 85 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (50 25 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (25 25 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (25 25 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(SOLUTION-ELIMINATE-N
 (216 28 (:DEFINITION VAL))
 (35 35 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (35 35 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INDUCTION-TRANSFORM-SEL-DECOMPOSE-RULE
 (139 67 (:REWRITE DEFAULT-+-2))
 (93 67 (:REWRITE DEFAULT-+-1))
 (70 14 (:DEFINITION INTEGER-ABS))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (22 18 (:REWRITE DEFAULT-<-2))
 (21 21 (:REWRITE DEFAULT-CDR))
 (21 18 (:REWRITE DEFAULT-<-1))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (7 7 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(TRANSFORM-SEL-RULE-DECOMPOSE
 (540 374 (:REWRITE DEFAULT-CAR))
 (366 321 (:REWRITE DEFAULT-CDR))
 (288 36 (:DEFINITION VAL))
 (89 89 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (89 89 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 5 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(MAIN-PROPERTY-ELIMINATE-LEMMA
 (97 97 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (97 97 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBSTITUTIONS-SOLUTION-SYSTEM
 (180 6 (:DEFINITION SOLUTION))
 (176 22 (:DEFINITION VAL))
 (117 115 (:REWRITE DEFAULT-CAR))
 (87 85 (:REWRITE DEFAULT-CDR))
 (33 33 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (33 33 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (9 3 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (6 6 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(MAIN-PROPERTY-ELIMINATE
 (336 42 (:DEFINITION VAL))
 (235 231 (:REWRITE DEFAULT-CAR))
 (161 160 (:REWRITE DEFAULT-CDR))
 (57 57 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (57 57 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(MAIN-PROPERTY-ELIMINATE-COROLLARY
 (296 37 (:DEFINITION VAL))
 (215 211 (:REWRITE DEFAULT-CAR))
 (146 145 (:REWRITE DEFAULT-CDR))
 (52 52 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (52 52 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(IF-X-IN-TERM-SIGMA-X-SUBTERM-OF-SIGMA-TERM
 (128 16 (:DEFINITION VAL))
 (91 88 (:REWRITE DEFAULT-CAR))
 (78 75 (:REWRITE DEFAULT-CDR))
 (40 40 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (40 40 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (30 6 (:DEFINITION BINARY-APPEND))
 (12 4 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (9 9 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(IF-X-IS-NOT-TERM-AND-IS-IN-TERM-THEN-IS-IN-SOME-ARGUMENT
 (5 1 (:DEFINITION BINARY-APPEND))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SIZE-SUBTERM
 (52 26 (:REWRITE DEFAULT-+-2))
 (31 26 (:REWRITE DEFAULT-+-1))
 (24 11 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE DEFAULT-CDR))
 (19 11 (:REWRITE DEFAULT-<-2))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(SIZE-OF-SIGMA-X-LEQ-THAN-THE-SIZE-OF-SIGMA-OF-ARGUMENTS
 (16 2 (:DEFINITION VAL))
 (15 2 (:DEFINITION SIZE))
 (13 12 (:REWRITE DEFAULT-CDR))
 (12 11 (:REWRITE DEFAULT-CAR))
 (8 1 (:DEFINITION VARIABLES))
 (6 2 (:DEFINITION APPLY-SUBST))
 (5 1 (:DEFINITION BINARY-APPEND))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(TRANSFORM-SEL-CHECK-RULE-NOT-EQUAL-SIZE
 (40 5 (:DEFINITION VAL))
 (38 36 (:REWRITE DEFAULT-CAR))
 (27 2 (:REWRITE IF-X-IS-NOT-TERM-AND-IS-IN-TERM-THEN-IS-IN-SOME-ARGUMENT))
 (20 4 (:DEFINITION BINARY-APPEND))
 (18 9 (:REWRITE DEFAULT-+-2))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (11 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (4 2 (:REWRITE DEFAULT-<-2))
 (3 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(TRANSFORM-SEL-CHECK-RULE
 (16 2 (:DEFINITION VAL))
 (10 2 (:DEFINITION SIZE))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION VARIABLES))
 )
(TRANSFORM-MM-SEL-CONFLICT-RULE
 (20 20 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(TRANSFORM-SEL-NOT-PAIR-RULE-LEMMA
 (357 248 (:REWRITE DEFAULT-CAR))
 (160 20 (:DEFINITION VAL))
 (62 62 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (62 62 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(TRANSFORM-SEL-NOT-PAIR-RULE
 (100 5 (:DEFINITION PAIR-ARGS))
 (73 41 (:REWRITE DEFAULT-CAR))
 (50 40 (:REWRITE DEFAULT-CDR))
 (35 5 (:REWRITE MV-NTH-1-SECOND))
 (15 5 (:REWRITE MV-NTH-0-FIRST))
 (13 13 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13 13 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 2 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 )
(BOTH-SYSTEMS
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(MM-PRESERVES-SOLUTIONS-1
 (948 81 (:DEFINITION VAL))
 (804 770 (:REWRITE DEFAULT-CAR))
 (588 577 (:REWRITE DEFAULT-CDR))
 (540 54 (:DEFINITION NTH))
 (385 77 (:REWRITE ZP-OPEN))
 (320 2 (:DEFINITION APPLY-SYST))
 (253 23 (:DEFINITION ELIMINATE-N))
 (144 144 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (144 144 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (118 2 (:DEFINITION APPLY-RANGE))
 (87 82 (:REWRITE DEFAULT-<-2))
 (87 82 (:REWRITE DEFAULT-+-2))
 (82 82 (:REWRITE DEFAULT-<-1))
 (82 82 (:REWRITE DEFAULT-+-1))
 (82 82 (:META CANCEL_PLUS-LESSP-CORRECT))
 (80 4 (:DEFINITION PAIR-ARGS))
 (66 22 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (66 22 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (52 6 (:DEFINITION MEMBER-EQUAL))
 (40 8 (:REWRITE TRANSFORM-SEL-CHECK-RULE))
 (25 5 (:DEFINITION LEN))
 (16 16 (:TYPE-PRESCRIPTION VARIABLES))
 (12 6 (:DEFINITION VARIABLES))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (5 5 (:REWRITE NATP-RW))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (4 4 (:TYPE-PRESCRIPTION APPLY-SYST))
 )
(MM-PRESERVES-SOLUTIONS-2
 (1464 108 (:DEFINITION VAL))
 (1106 1062 (:REWRITE DEFAULT-CAR))
 (823 810 (:REWRITE DEFAULT-CDR))
 (800 80 (:DEFINITION NTH))
 (640 4 (:DEFINITION APPLY-SYST))
 (605 121 (:REWRITE ZP-OPEN))
 (451 41 (:DEFINITION ELIMINATE-N))
 (236 4 (:DEFINITION APPLY-RANGE))
 (179 179 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (179 179 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (131 126 (:REWRITE DEFAULT-<-2))
 (131 126 (:REWRITE DEFAULT-+-2))
 (128 11 (:REWRITE SOLUTION-ELIMINATE-N))
 (126 126 (:REWRITE DEFAULT-<-1))
 (126 126 (:REWRITE DEFAULT-+-1))
 (126 126 (:META CANCEL_PLUS-LESSP-CORRECT))
 (120 6 (:DEFINITION PAIR-ARGS))
 (84 28 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (84 28 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (57 6 (:DEFINITION MEMBER-EQUAL))
 (54 6 (:REWRITE TRANSFORM-SEL-CHECK-RULE))
 (25 5 (:DEFINITION LEN))
 (18 18 (:TYPE-PRESCRIPTION VARIABLES))
 (12 6 (:DEFINITION VARIABLES))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (5 5 (:REWRITE NATP-RW))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (4 4 (:TYPE-PRESCRIPTION APPLY-SYST))
 )
(MM-PRESERVES-SOLUTIONS-3
 (343 310 (:REWRITE DEFAULT-CAR))
 (310 20 (:DEFINITION VAL))
 (300 30 (:DEFINITION NTH))
 (248 239 (:REWRITE DEFAULT-CDR))
 (220 44 (:REWRITE ZP-OPEN))
 (160 1 (:DEFINITION APPLY-SYST))
 (154 14 (:DEFINITION ELIMINATE-N))
 (100 5 (:DEFINITION PAIR-ARGS))
 (59 1 (:DEFINITION APPLY-RANGE))
 (52 48 (:REWRITE DEFAULT-<-2))
 (52 48 (:REWRITE DEFAULT-+-2))
 (50 50 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (50 50 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (48 48 (:REWRITE DEFAULT-<-1))
 (48 48 (:REWRITE DEFAULT-+-1))
 (48 48 (:META CANCEL_PLUS-LESSP-CORRECT))
 (21 3 (:DEFINITION MEMBER-EQUAL))
 (20 4 (:DEFINITION LEN))
 (14 4 (:DEFINITION BINARY-APPEND))
 (6 6 (:TYPE-PRESCRIPTION VARIABLES))
 (6 3 (:DEFINITION VARIABLES))
 (4 4 (:REWRITE NATP-RW))
 (3 3 (:REWRITE CDR-CONS))
 )
(SUBSETP-VARIABLES-LEMMA-1
 (90 18 (:DEFINITION BINARY-APPEND))
 (73 73 (:REWRITE DEFAULT-CDR))
 (46 23 (:DEFINITION VARIABLES))
 (10 10 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (10 10 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBSETP-VARIABLES-LEMMA-2
 (90 18 (:DEFINITION BINARY-APPEND))
 (70 70 (:REWRITE DEFAULT-CAR))
 (46 23 (:DEFINITION VARIABLES))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBSETP-SYSTEM-VAR
 (80 16 (:DEFINITION BINARY-APPEND))
 (63 63 (:REWRITE DEFAULT-CDR))
 (62 62 (:REWRITE DEFAULT-CAR))
 (32 32 (:TYPE-PRESCRIPTION VARIABLES))
 (32 16 (:DEFINITION VARIABLES))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EQUAL-SET-IMPLIES-EQUAL-SET-SYSTEM-VAR-1
 (40 2 (:DEFINITION SYSTEM-VAR))
 (20 4 (:DEFINITION BINARY-APPEND))
 (20 2 (:DEFINITION SUBSETP-EQUAL))
 (16 16 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION MEMBER-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION VARIABLES))
 (8 4 (:DEFINITION VARIABLES))
 (4 4 (:REWRITE SUBSETP-TRANSITIVE))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SYSTEM-VAR-APPEND
 (99 96 (:REWRITE DEFAULT-CDR))
 (90 84 (:REWRITE DEFAULT-CAR))
 (64 64 (:TYPE-PRESCRIPTION VARIABLES))
 (60 30 (:DEFINITION VARIABLES))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(PAIR-ARGS-SYSTEM-VAR-LEMMA-1
 (1601 143 (:DEFINITION MEMBER-EQUAL))
 (652 652 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (640 29 (:REWRITE MEMBER-APPEND))
 (542 477 (:REWRITE DEFAULT-CAR))
 (154 154 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (154 154 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12 12 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(PAIR-ARGS-SYSTEM-VAR-LEMMA-2
 (1308 48 (:DEFINITION SUBSETP-EQUAL))
 (636 58 (:DEFINITION MEMBER-EQUAL))
 (379 281 (:REWRITE DEFAULT-CAR))
 (321 296 (:REWRITE DEFAULT-CDR))
 (320 320 (:TYPE-PRESCRIPTION VARIABLES))
 (252 252 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (218 10 (:REWRITE MEMBER-APPEND))
 (200 40 (:DEFINITION BINARY-APPEND))
 (104 104 (:TYPE-PRESCRIPTION SYSTEM-VAR))
 (74 74 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (74 74 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(PAIR-ARGS-SYSTEM-VAR
 (40 2 (:DEFINITION PAIR-ARGS))
 (32 20 (:REWRITE DEFAULT-CAR))
 (25 5 (:DEFINITION BINARY-APPEND))
 (22 1 (:DEFINITION SYSTEM-VAR))
 (21 18 (:REWRITE DEFAULT-CDR))
 (20 4 (:DEFINITION VARIABLES))
 (14 2 (:REWRITE MV-NTH-1-SECOND))
 (10 10 (:TYPE-PRESCRIPTION VARIABLES))
 (6 2 (:REWRITE MV-NTH-0-FIRST))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(APPLY-RANGE-PRESERVES-DOMAIN
 (36 35 (:REWRITE DEFAULT-CAR))
 (33 3 (:DEFINITION APPLY-SUBST))
 (24 3 (:DEFINITION VAL))
 (21 20 (:REWRITE DEFAULT-CDR))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(CO-DOMAIN-DE-APPLY-RANGE
 (46 44 (:REWRITE DEFAULT-CAR))
 (45 43 (:REWRITE DEFAULT-CDR))
 (40 5 (:DEFINITION VAL))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(APPLY-RANGE-PRESERVES-SYSTEM-SUBSTITUTION
 (120 93 (:REWRITE DEFAULT-CAR))
 (80 8 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (78 52 (:REWRITE DEFAULT-CDR))
 (56 8 (:DEFINITION ALISTP))
 (40 40 (:TYPE-PRESCRIPTION ALISTP))
 (33 3 (:DEFINITION APPLY-SUBST))
 (32 8 (:DEFINITION DOMAIN))
 (24 3 (:DEFINITION VAL))
 (16 16 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(ELIMINATE-VARIABLES-IN-CO-DOMAIN
 (50 10 (:DEFINITION BINARY-APPEND))
 (48 48 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (48 48 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 6 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (12 12 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(VARIABLES-APPLY-SUBSETP-LEMMA
 (200 40 (:DEFINITION BINARY-APPEND))
 (86 86 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (86 86 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (15 15 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (15 5 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 )
(VARIABLES-APPLY-SUBSETP
 (155 20 (:DEFINITION MEMBER-EQUAL))
 (128 7 (:DEFINITION NOT-SUBSETP-WITNESS))
 (101 10 (:DEFINITION VARIABLES))
 (73 73 (:REWRITE DEFAULT-CDR))
 (73 73 (:REWRITE DEFAULT-CAR))
 (70 1 (:REWRITE SUBSETP-APPEND-3))
 (70 1 (:REWRITE SUBSETP-APPEND-2))
 (60 12 (:DEFINITION BINARY-APPEND))
 (39 3 (:DEFINITION APPLY-SUBST))
 (24 3 (:DEFINITION VAL))
 (23 23 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (23 23 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (9 3 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (8 2 (:DEFINITION CO-DOMAIN))
 (6 6 (:TYPE-PRESCRIPTION VARIABLE-P))
 (4 4 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (3 3 (:REWRITE SUBSETP-TRANSITIVE))
 )
(SUBSETP-DISJOINT
 (122 122 (:REWRITE DEFAULT-CAR))
 (95 95 (:REWRITE DEFAULT-CDR))
 (74 74 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (74 74 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (21 21 (:REWRITE SUBSETP-TRANSITIVE))
 )
(DOMAIN-DISJOINT-CO-DOMAIN-ELIMINATE-BRIDGE-LEMMA
 (40 4 (:DEFINITION VARIABLES))
 (33 4 (:DEFINITION MEMBER-EQUAL))
 (25 25 (:REWRITE DEFAULT-CDR))
 (25 5 (:DEFINITION BINARY-APPEND))
 (24 1 (:REWRITE VARIABLES-APPLY-SUBSETP-LEMMA))
 (22 22 (:REWRITE DEFAULT-CAR))
 (13 1 (:DEFINITION APPLY-SUBST))
 (8 1 (:DEFINITION VAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 1 (:DEFINITION CO-DOMAIN))
 (3 1 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (2 2 (:TYPE-PRESCRIPTION VARIABLE-P))
 (2 2 (:TYPE-PRESCRIPTION CO-DOMAIN))
 )
(ELIMINATE-ELIMINATE-VARIABLES
 (288 12 (:DEFINITION APPLY-SUBST))
 (252 24 (:DEFINITION VAL))
 (146 144 (:REWRITE DEFAULT-CAR))
 (123 122 (:REWRITE DEFAULT-CDR))
 (40 8 (:DEFINITION BINARY-APPEND))
 (38 13 (:DEFINITION VARIABLES))
 (34 2 (:REWRITE VARIABLES-APPLY-SUBSETP-LEMMA))
 (31 31 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (31 31 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12 4 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
 )
(ELIMINATE-ELIMINATE-VARIABLES-2
 (126 124 (:REWRITE DEFAULT-CAR))
 (125 124 (:REWRITE DEFAULT-CDR))
 (125 25 (:DEFINITION BINARY-APPEND))
 (102 25 (:DEFINITION VARIABLES))
 (88 8 (:DEFINITION APPLY-SUBST))
 (64 8 (:DEFINITION VAL))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 5 (:DEFINITION CO-DOMAIN))
 (12 4 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (10 10 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
 )
(SUBSETP-SYSTEM-VAR-CO-DOMAIN
 (155 20 (:DEFINITION MEMBER-EQUAL))
 (128 7 (:DEFINITION NOT-SUBSETP-WITNESS))
 (109 109 (:REWRITE DEFAULT-CAR))
 (106 5 (:DEFINITION SYSTEM-VAR))
 (103 103 (:REWRITE DEFAULT-CDR))
 (85 17 (:DEFINITION BINARY-APPEND))
 (84 3 (:DEFINITION APPLY-SYST))
 (75 1 (:REWRITE SUBSETP-APPEND-3))
 (75 1 (:REWRITE SUBSETP-APPEND-2))
 (70 15 (:DEFINITION VARIABLES))
 (66 6 (:DEFINITION APPLY-SUBST))
 (48 6 (:DEFINITION VAL))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 5 (:DEFINITION CO-DOMAIN))
 (10 10 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (6 6 (:TYPE-PRESCRIPTION APPLY-SYST))
 (3 3 (:REWRITE SUBSETP-TRANSITIVE))
 )
(DOMAIN-DISJOINT-SYSTEM-ELIMINATE-BRIDGE-LEMMA
 (42 2 (:DEFINITION SYSTEM-VAR))
 (31 31 (:REWRITE DEFAULT-CDR))
 (31 31 (:REWRITE DEFAULT-CAR))
 (30 6 (:DEFINITION BINARY-APPEND))
 (28 1 (:DEFINITION APPLY-SYST))
 (22 2 (:DEFINITION APPLY-SUBST))
 (21 3 (:DEFINITION MEMBER-EQUAL))
 (18 5 (:DEFINITION VARIABLES))
 (16 2 (:DEFINITION VAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 1 (:DEFINITION CO-DOMAIN))
 (2 2 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (2 2 (:TYPE-PRESCRIPTION APPLY-SYST))
 )
(TRANSFORM-MM-SEL-PRESERVES-IDEMPOTENCY
 (1280 128 (:DEFINITION NTH))
 (896 16 (:DEFINITION APPLY-SUBST))
 (865 173 (:REWRITE ZP-OPEN))
 (842 26 (:DEFINITION VAL))
 (640 4 (:DEFINITION APPLY-SYST))
 (495 45 (:DEFINITION ELIMINATE-N))
 (295 5 (:DEFINITION APPLY-RANGE))
 (290 29 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (203 188 (:REWRITE DEFAULT-<-2))
 (203 188 (:REWRITE DEFAULT-+-2))
 (203 29 (:DEFINITION ALISTP))
 (188 188 (:REWRITE DEFAULT-<-1))
 (188 188 (:REWRITE DEFAULT-+-1))
 (188 188 (:META CANCEL_PLUS-LESSP-CORRECT))
 (160 160 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (160 160 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (145 145 (:TYPE-PRESCRIPTION ALISTP))
 (140 7 (:DEFINITION PAIR-ARGS))
 (75 15 (:DEFINITION LEN))
 (52 52 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (50 50 (:TYPE-PRESCRIPTION SYSTEM-VAR))
 (25 1 (:REWRITE VARIABLES-APPLY-SUBSETP-LEMMA))
 (15 15 (:REWRITE NATP-RW))
 (8 6 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (6 6 (:TYPE-PRESCRIPTION APPLY-SYST))
 )
(SUBSETP-VARIABLES-ELIMINATE-N
 (874 34 (:DEFINITION SUBSETP-EQUAL))
 (428 39 (:DEFINITION MEMBER-EQUAL))
 (200 200 (:TYPE-PRESCRIPTION VARIABLES))
 (190 38 (:DEFINITION BINARY-APPEND))
 (175 175 (:REWRITE DEFAULT-CAR))
 (168 168 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (109 5 (:REWRITE MEMBER-APPEND))
 (76 38 (:DEFINITION VARIABLES))
 (46 46 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (39 39 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (39 39 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (34 21 (:REWRITE DEFAULT-+-2))
 (29 8 (:REWRITE ZP-OPEN))
 (21 21 (:REWRITE DEFAULT-+-1))
 (18 11 (:REWRITE DEFAULT-<-2))
 (18 11 (:REWRITE DEFAULT-<-1))
 (14 14 (:META CANCEL_PLUS-LESSP-CORRECT))
 (12 3 (:REWRITE <-0-+-NEGATIVE-1))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SUBSETP-VARIABLES-ELIMINATE-LEMMA
 (4732 177 (:DEFINITION SUBSETP-EQUAL))
 (2329 202 (:DEFINITION MEMBER-EQUAL))
 (959 959 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (607 25 (:REWRITE MEMBER-APPEND))
 (535 535 (:REWRITE DEFAULT-CDR))
 (510 510 (:REWRITE DEFAULT-CAR))
 (255 51 (:DEFINITION BINARY-APPEND))
 (202 202 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (202 202 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (100 50 (:DEFINITION VARIABLES))
 (85 85 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (33 17 (:REWRITE DEFAULT-<-2))
 (25 17 (:REWRITE DEFAULT-<-1))
 (25 16 (:REWRITE DEFAULT-+-2))
 (17 17 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 16 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE NATP-RW))
 )
(SUBSETP-VARIABLES-ELIMINATE
 (208 2 (:DEFINITION APPLY-SYST))
 (196 4 (:DEFINITION APPLY-SUBST))
 (184 8 (:DEFINITION VAL))
 (172 167 (:REWRITE DEFAULT-CDR))
 (155 150 (:REWRITE DEFAULT-CAR))
 (120 20 (:DEFINITION NTH))
 (98 14 (:DEFINITION ELIMINATE-N))
 (66 8 (:DEFINITION MEMBER-EQUAL))
 (38 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (34 34 (:REWRITE ZP-OPEN))
 (33 2 (:REWRITE SUBSETP-APPEND-3))
 (33 2 (:REWRITE SUBSETP-APPEND-2))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 1 (:REWRITE MEMBER-APPEND))
 (10 2 (:DEFINITION LEN))
 (4 4 (:TYPE-PRESCRIPTION APPLY-SYST))
 (3 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE NATP-RW))
 )
(LEN-SUBSETP-SETP
 (90 90 (:REWRITE DEFAULT-CDR))
 (65 65 (:REWRITE DEFAULT-CAR))
 (50 21 (:REWRITE SUBSETP-TRANSITIVE))
 (35 5 (:DEFINITION ELIMINATE))
 (30 30 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (30 30 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (28 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (10 10 (:TYPE-PRESCRIPTION ELIMINATE))
 (10 5 (:REWRITE DEFAULT-<-1))
 (8 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE SUBSETP-REFLEXIVE))
 )
(SUBSETP-MAKE-SET)
(UNIF-REDUCE-ONE-STEP-P-DOES-NOT-ADD-NEW-VARIABLES
 (1540 1485 (:REWRITE DEFAULT-CAR))
 (1540 154 (:DEFINITION NTH))
 (1440 9 (:DEFINITION APPLY-SYST))
 (1439 19 (:DEFINITION APPLY-SUBST))
 (1382 38 (:DEFINITION VAL))
 (1340 1320 (:REWRITE DEFAULT-CDR))
 (1215 243 (:REWRITE ZP-OPEN))
 (979 89 (:DEFINITION ELIMINATE-N))
 (843 20 (:REWRITE MEMBER-APPEND))
 (526 526 (:TYPE-PRESCRIPTION VARIABLES))
 (255 249 (:REWRITE DEFAULT-+-2))
 (254 249 (:REWRITE DEFAULT-<-2))
 (249 249 (:REWRITE DEFAULT-<-1))
 (249 249 (:REWRITE DEFAULT-+-1))
 (249 249 (:META CANCEL_PLUS-LESSP-CORRECT))
 (167 167 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (167 167 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (140 7 (:DEFINITION PAIR-ARGS))
 (59 1 (:DEFINITION APPLY-RANGE))
 (30 6 (:DEFINITION LEN))
 (18 18 (:TYPE-PRESCRIPTION APPLY-SYST))
 (12 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (5 5 (:REWRITE NATP-RW))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(TRANSFORM-DOES-NOT-INCREASES-N-VARIABLES
 (198 9 (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
 (192 10 (:DEFINITION SETP))
 (168 3 (:DEFINITION MAKE-SET))
 (105 13 (:DEFINITION MEMBER-EQUAL))
 (53 53 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (46 46 (:REWRITE DEFAULT-CDR))
 (34 31 (:REWRITE DEFAULT-CAR))
 (30 30 (:TYPE-PRESCRIPTION SYSTEM-VAR))
 (28 4 (:DEFINITION LEN))
 (24 1 (:LINEAR MAKE-SET-LESSP-LENGTH-IF-NOT-SETP))
 (13 13 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13 13 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION MAKE-SET))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:TYPE-PRESCRIPTION UNIF-REDUCE-ONE-STEP-P))
 )
(POSITIVE-LENGTH-MEMBER
 (11 6 (:REWRITE DEFAULT-+-2))
 (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (7 7 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(MEMBER-ELIMINATE
 (38 35 (:REWRITE DEFAULT-CAR))
 (21 21 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (21 21 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 19 (:REWRITE DEFAULT-CDR))
 )
(LEN-SUBSETP-SETP-STRICT
 (158 158 (:REWRITE DEFAULT-CDR))
 (119 119 (:REWRITE DEFAULT-CAR))
 (67 67 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (67 67 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (64 29 (:REWRITE SUBSETP-TRANSITIVE))
 (49 7 (:DEFINITION ELIMINATE))
 (40 20 (:REWRITE DEFAULT-+-2))
 (22 1 (:REWRITE LEN-SUBSETP-SETP))
 (20 20 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION ELIMINATE))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE SUBSETP-REFLEXIVE))
 )
(SUBSETP-VARIABLES-ORIENT-2
 (52 52 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (50 10 (:DEFINITION BINARY-APPEND))
 (49 49 (:REWRITE DEFAULT-CAR))
 (37 37 (:REWRITE DEFAULT-CDR))
 (20 20 (:TYPE-PRESCRIPTION VARIABLES))
 (19 12 (:REWRITE DEFAULT-+-2))
 (15 8 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (9 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE NATP-RW))
 (2 2 (:REWRITE CDR-CONS))
 )
(ELIMINATE-VARIABLES-STRICT
 (312 3 (:DEFINITION APPLY-SYST))
 (294 6 (:DEFINITION APPLY-SUBST))
 (276 12 (:DEFINITION VAL))
 (198 9 (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
 (192 10 (:DEFINITION SETP))
 (168 3 (:DEFINITION MAKE-SET))
 (133 133 (:REWRITE DEFAULT-CDR))
 (129 15 (:DEFINITION MEMBER-EQUAL))
 (124 124 (:REWRITE DEFAULT-CAR))
 (105 15 (:DEFINITION ELIMINATE-N))
 (102 17 (:DEFINITION NTH))
 (61 1 (:REWRITE LEN-SUBSETP-SETP))
 (48 2 (:DEFINITION SUBSETP-EQUAL))
 (41 41 (:TYPE-PRESCRIPTION SYSTEM-VAR))
 (40 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE ZP-OPEN))
 (28 4 (:DEFINITION LEN))
 (28 1 (:REWRITE SUBSETP-MAKE-SET))
 (27 27 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (27 27 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (24 1 (:LINEAR MAKE-SET-LESSP-LENGTH-IF-NOT-SETP))
 (12 12 (:REWRITE CAR-CONS))
 (6 6 (:REWRITE CDR-CONS))
 (4 4 (:REWRITE SUBSETP-TRANSITIVE))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(PERM-EQUAL-SIZE-SYSTEM-DEFCONG-LEMMA
 (327 142 (:REWRITE DEFAULT-+-2))
 (236 142 (:REWRITE DEFAULT-+-1))
 (230 46 (:DEFINITION SIZE))
 (40 40 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(PERM-IMPLIES-EQUAL-SIZE-SYSTEM-1
 (128 56 (:REWRITE DEFAULT-+-2))
 (96 56 (:REWRITE DEFAULT-+-1))
 (80 80 (:TYPE-PRESCRIPTION SIZE))
 (80 16 (:DEFINITION SIZE))
 (44 44 (:REWRITE DEFAULT-CDR))
 (41 41 (:REWRITE DEFAULT-CAR))
 (28 4 (:DEFINITION DELETE-ONE))
 (20 4 (:DEFINITION MEMBER-EQUAL))
 (16 16 (:REWRITE FOLD-CONSTS-IN-+))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(PERM-EQUAL-SIZE-SYSTEM-DEFCONG-LEMMA
 (59 30 (:REWRITE DEFAULT-+-2))
 (55 55 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-+-1))
 (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 5 (:REWRITE EQUAL-CONSTANT-+))
 )
(PERM-IMPLIES-EQUAL-N-VARIABLES-RIGHT-HAND-SIDE-1
 (52 52 (:REWRITE DEFAULT-CDR))
 (42 42 (:REWRITE DEFAULT-CAR))
 (42 6 (:DEFINITION DELETE-ONE))
 (30 6 (:DEFINITION MEMBER-EQUAL))
 (20 10 (:REWRITE DEFAULT-+-2))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 10 (:REWRITE DEFAULT-+-1))
 )
(SIZE-SYSTEM-APPEND
 (276 121 (:REWRITE DEFAULT-+-2))
 (209 121 (:REWRITE DEFAULT-+-1))
 (170 34 (:DEFINITION SIZE))
 (71 68 (:REWRITE DEFAULT-CDR))
 (60 54 (:REWRITE DEFAULT-CAR))
 (33 33 (:REWRITE FOLD-CONSTS-IN-+))
 (28 14 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (14 14 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(SIZE-SYSTEMS-DECOMPOSE-LEMMA
 (428 194 (:REWRITE DEFAULT-+-2))
 (346 194 (:REWRITE DEFAULT-+-1))
 (321 191 (:REWRITE DEFAULT-CAR))
 (218 183 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE FOLD-CONSTS-IN-+))
 (24 24 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (17 17 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 (11 11 (:REWRITE EQUAL-CONSTANT-+))
 )
(SI-PERMANECE-SYSTEM-VAR-AL-TRANSFORMAR-DECRECE-SIZE-SYSTEM
 (780 78 (:DEFINITION NTH))
 (775 11 (:DEFINITION APPLY-SUBST))
 (742 22 (:DEFINITION VAL))
 (673 632 (:REWRITE DEFAULT-CAR))
 (640 4 (:DEFINITION APPLY-SYST))
 (630 126 (:REWRITE ZP-OPEN))
 (547 537 (:REWRITE DEFAULT-CDR))
 (528 48 (:DEFINITION ELIMINATE-N))
 (523 304 (:REWRITE DEFAULT-+-2))
 (420 304 (:REWRITE DEFAULT-+-1))
 (177 3 (:DEFINITION APPLY-RANGE))
 (148 134 (:REWRITE DEFAULT-<-1))
 (140 7 (:DEFINITION PAIR-ARGS))
 (139 134 (:REWRITE DEFAULT-<-2))
 (56 56 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (56 56 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 4 (:DEFINITION BINARY-APPEND))
 (14 2 (:DEFINITION MEMBER-EQUAL))
 (10 2 (:DEFINITION LEN))
 (4 4 (:TYPE-PRESCRIPTION VARIABLES))
 (4 2 (:DEFINITION VARIABLES))
 (2 2 (:TYPE-PRESCRIPTION APPLY-SYST))
 (2 2 (:REWRITE NATP-RW))
 )
(SIZE-T->-0
 (12 6 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-CDR))
 (7 6 (:REWRITE DEFAULT-+-1))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(IF-N-VARIABLES-AND-SIZE-ARE-EQUAL-REDUCTION-DECREASE-N-VARIABLES-R-H-S
 (1343 19 (:DEFINITION APPLY-SUBST))
 (1286 38 (:DEFINITION VAL))
 (1140 114 (:DEFINITION NTH))
 (1120 7 (:DEFINITION APPLY-SYST))
 (1029 978 (:REWRITE DEFAULT-CAR))
 (1010 202 (:REWRITE ZP-OPEN))
 (968 88 (:DEFINITION ELIMINATE-N))
 (881 869 (:REWRITE DEFAULT-CDR))
 (707 431 (:REWRITE DEFAULT-+-2))
 (563 431 (:REWRITE DEFAULT-+-1))
 (295 5 (:DEFINITION APPLY-RANGE))
 (221 210 (:REWRITE DEFAULT-<-2))
 (213 210 (:REWRITE DEFAULT-<-1))
 (180 9 (:DEFINITION PAIR-ARGS))
 (87 87 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (30 6 (:DEFINITION BINARY-APPEND))
 (14 2 (:DEFINITION MEMBER-EQUAL))
 (10 2 (:DEFINITION LEN))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (6 2 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION VARIABLES))
 (4 4 (:TYPE-PRESCRIPTION APPLY-SYST))
 (4 2 (:DEFINITION VARIABLES))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (2 2 (:REWRITE NATP-RW))
 )
(LEXP-UNIFICATION-MEASURE
 (42 24 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(UNIFICATION-MEASURE-DECREASES
 (112 54 (:REWRITE DEFAULT-CAR))
 (42 42 (:TYPE-PRESCRIPTION UNIF-REDUCE-ONE-STEP-P))
 (24 12 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 (12 6 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 )
(UNIF-SEQ-P-P)
(UNIF-SEQ-P-LAST)
(IF-SOLVABLE-TRANSFORM-SEL-SUCCESS
 (290 29 (:DEFINITION NTH))
 (254 198 (:REWRITE DEFAULT-CAR))
 (172 156 (:REWRITE DEFAULT-CDR))
 (160 8 (:DEFINITION PAIR-ARGS))
 (145 29 (:REWRITE ZP-OPEN))
 (60 60 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (60 60 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (56 8 (:DEFINITION MEMBER-EQUAL))
 (54 54 (:TYPE-PRESCRIPTION UNIF-SEQ-P-LAST))
 (38 34 (:REWRITE DEFAULT-<-2))
 (37 33 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-<-1))
 (34 34 (:META CANCEL_PLUS-LESSP-CORRECT))
 (33 33 (:REWRITE DEFAULT-+-1))
 (24 8 (:REWRITE MV-NTH-0-FIRST))
 (20 4 (:DEFINITION LEN))
 (16 16 (:TYPE-PRESCRIPTION VARIABLES))
 (16 8 (:DEFINITION VARIABLES))
 (5 5 (:REWRITE NATP-RW))
 )
(UNIF-SEQ-P-EQUIVALENT-1
 (242 22 (:DEFINITION APPLY-SUBST))
 (176 22 (:DEFINITION VAL))
 (133 133 (:REWRITE DEFAULT-CAR))
 (92 92 (:REWRITE DEFAULT-CDR))
 (44 44 (:TYPE-PRESCRIPTION VARIABLE-P))
 (33 33 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (33 33 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (33 11 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (33 11 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (26 12 (:REWRITE MM-PRESERVES-SOLUTIONS-3))
 (18 12 (:REWRITE MM-PRESERVES-SOLUTIONS-2))
 (12 4 (:REWRITE IF-SOLVABLE-TRANSFORM-SEL-SUCCESS))
 (10 10 (:TYPE-PRESCRIPTION UNIF-REDUCE-ONE-STEP-P))
 (6 4 (:TYPE-PRESCRIPTION UNIF-SEQ-P-LAST))
 )
(UNIF-SEQ-P-EQUIVALENT-2
 (198 18 (:DEFINITION APPLY-SUBST))
 (144 18 (:DEFINITION VAL))
 (119 119 (:REWRITE DEFAULT-CAR))
 (78 78 (:REWRITE DEFAULT-CDR))
 (36 36 (:TYPE-PRESCRIPTION VARIABLE-P))
 (27 27 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (27 27 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (27 9 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (27 9 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (20 10 (:REWRITE MM-PRESERVES-SOLUTIONS-3))
 (1 1 (:REWRITE MM-PRESERVES-SOLUTIONS-1))
 )
(UNIF-SEQ-P-UNSOLVABLE
 (72 2 (:DEFINITION SOLUTION))
 (44 4 (:DEFINITION APPLY-SUBST))
 (38 38 (:REWRITE DEFAULT-CAR))
 (32 4 (:DEFINITION VAL))
 (20 20 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 2 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (6 2 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (3 3 (:REWRITE MM-PRESERVES-SOLUTIONS-2))
 )
(UNIF-SEQ-P-PRESERVES-IDEMPOTENCY
 (159 5 (:DEFINITION DISJOINTP))
 (157 97 (:REWRITE DEFAULT-CAR))
 (137 83 (:REWRITE DEFAULT-CDR))
 (124 6 (:DEFINITION SYSTEM-VAR))
 (77 5 (:DEFINITION MEMBER-EQUAL))
 (60 12 (:DEFINITION BINARY-APPEND))
 (52 5 (:REWRITE ASSOC-MEMBER-DOMAIN))
 (37 5 (:DEFINITION ALISTP))
 (35 35 (:TYPE-PRESCRIPTION DOMAIN))
 (28 6 (:DEFINITION DOMAIN))
 (25 25 (:TYPE-PRESCRIPTION ALISTP))
 (24 24 (:TYPE-PRESCRIPTION VARIABLES))
 (24 12 (:DEFINITION VARIABLES))
 (16 15 (:REWRITE CONSP-DOMAIN))
 (10 10 (:TYPE-PRESCRIPTION SYSTEM-VAR))
 (6 6 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(MGS-SEQ-P)
(MGS-SEQ)
(MGS-SEQ-COMPLETENESS
 (22 2 (:DEFINITION APPLY-SUBST))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 4 (:DEFINITION TRUE-LISTP))
 (19 1 (:DEFINITION BINARY-APPEND))
 (16 16 (:REWRITE DEFAULT-CDR))
 (16 2 (:REWRITE APPEND-TO-NIL))
 (16 2 (:REWRITE APPEND-NIL))
 (16 2 (:DEFINITION VAL))
 (15 15 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION VARIABLE-P))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 1 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (3 1 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 )
(MGS-SEQ-SOUNDNESS
 (88 8 (:DEFINITION APPLY-SUBST))
 (72 72 (:REWRITE DEFAULT-CAR))
 (64 8 (:DEFINITION VAL))
 (63 63 (:REWRITE DEFAULT-CDR))
 (32 4 (:DEFINITION BINARY-APPEND))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 4 (:DEFINITION TRUE-LISTP))
 (20 1 (:DEFINITION SYSTEM-VAR))
 (16 16 (:TYPE-PRESCRIPTION VARIABLE-P))
 (16 2 (:REWRITE APPEND-TO-NIL))
 (16 2 (:REWRITE APPEND-NIL))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12 4 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (12 4 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (4 4 (:TYPE-PRESCRIPTION VARIABLES))
 (4 2 (:DEFINITION VARIABLES))
 (3 3 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(MGS-SEQ-IDEMPOTENT
 (20 1 (:DEFINITION SYSTEM-VAR))
 (16 13 (:REWRITE DEFAULT-CDR))
 (15 12 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION BINARY-APPEND))
 (4 4 (:TYPE-PRESCRIPTION VARIABLES))
 (4 2 (:DEFINITION VARIABLES))
 (3 1 (:DEFINITION UNIF-SEQ-P-P))
 (2 2 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(MGS-SEQ-MOST-GENERAL-SOLUTION-MAIN-LEMMA
 (145 13 (:DEFINITION APPLY-SUBST))
 (106 13 (:DEFINITION VAL))
 (86 77 (:REWRITE DEFAULT-CAR))
 (68 62 (:REWRITE DEFAULT-CDR))
 (24 2 (:DEFINITION BINARY-APPEND))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 4 (:DEFINITION TRUE-LISTP))
 (17 17 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (17 17 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 16 (:TYPE-PRESCRIPTION VARIABLE-P))
 (16 2 (:REWRITE APPEND-TO-NIL))
 (16 2 (:REWRITE APPEND-NIL))
 (12 4 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (12 4 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (1 1 (:REWRITE PERM-NTH-ELIMINATE-N-INSTANCE))
 )
(MGS-SEL-MOST-GENERAL-SOLUTION
 (218 17 (:DEFINITION APPLY-SUBST))
 (194 5 (:DEFINITION SOLUTION))
 (164 17 (:DEFINITION VAL))
 (94 88 (:REWRITE DEFAULT-CAR))
 (71 65 (:REWRITE DEFAULT-CDR))
 (53 1 (:REWRITE SUBSTITUTIONS-SOLUTION-SYSTEM))
 (27 1 (:DEFINITION COMPOSITION))
 (24 24 (:TYPE-PRESCRIPTION VARIABLE-P))
 (23 23 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (23 23 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 5 (:REWRITE TRANSFORM-SEL-NOT-PAIR-RULE))
 (16 5 (:REWRITE TRANSFORM-MM-SEL-CONFLICT-RULE))
 (7 3 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 )
