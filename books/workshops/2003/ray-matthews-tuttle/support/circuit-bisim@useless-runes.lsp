(EVALUATION-EQ)
(EVALUATION-EQ-IS-SYMMETRIC
 (20 20 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(EVALUATION-EQ-MEMBER-P)
(EVALUATION-EQ-MEMBER)
(MEMBER-IS-MEMBERP
 (70 70 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE DEFAULT-CDR))
 )
(MEMBER-IS-EVALUATION-EQ
 (49 49 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE DEFAULT-CDR))
 )
(STRICT-EVALUATION-P)
(STRICT-EVALUATION-P-NECC)
(STRICT-EVALUATION-P-EXPANDED)
(STRICT-EVALUATION-LIST-P)
(EVALUATION-P)
(ONLY-EVALUATIONS-P)
(ALL-EVALUATIONS-P)
(ALL-EVALUATIONS-P-NECC)
(EVALUATION-EQ-SUBSET-P)
(EVALUATION-EQ-SUBSET-TO-MEMBER
 (42 7 (:DEFINITION EVALUATION-EQ))
 (31 31 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 )
(TRUTHP-LABEL)
(ONLY-TRUTH-P)
(ALL-TRUTHSP-LABEL)
(ALL-TRUTHSP-LABEL-EXPANDED
 (23 23 (:REWRITE DEFAULT-CAR))
 (13 13 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 )
(ONLY-ALL-TRUTHS-P)
(LABEL-SUBSET-VARS)
(LABEL-SUBSET-SUBSET-REDUCTION
 (56 14 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (28 28 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (24 24 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (18 18 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE SUBSET-IS-TRANSITIVE))
 (14 14 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 )
(WELL-FORMED-TRANSITION-P)
(WELL-FORMED-TRANSITION-P-NECC
 (4 4 (:DEFINITION MV-NTH))
 )
(WELL-FORMED-TRANSITION-P-EXPANDED)
(TRANSITION-SUBSET-P)
(TRANSITION-SUBSET-P-EXPANDED
 (84 6 (:DEFINITION SUBSET))
 (48 12 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (32 32 (:REWRITE DEFAULT-CAR))
 (31 31 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (24 24 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (22 22 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE SUBSET-IS-TRANSITIVE))
 (12 12 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (9 9 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 )
(CIRCUIT-MODELP)
(C-BISIM-EQUIV)
(CIRCUIT-BISIM)
(C-BISIMILAR-INITIAL-STATE-WITNESS-M->N)
(C-BISIMILAR-INITIAL-STATE-WITNESS-N->M)
(ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER)
(C-BISIMILAR-EQUIV-IMPLIES-INIT->INIT-N->M
 (184 10 (:DEFINITION SUBSET))
 (81 15 (:DEFINITION MEMBERP))
 (80 20 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (76 20 (:REWRITE SUBSET-IS-TRANSITIVE))
 (76 2 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (74 74 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (66 66 (:REWRITE DEFAULT-CAR))
 (58 58 (:REWRITE DEFAULT-CDR))
 (58 2 (:DEFINITION TRANSITION-SUBSET-P))
 (55 5 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (52 2 (:DEFINITION LABEL-SUBSET-VARS))
 (48 7 (:DEFINITION EVALUATION-P))
 (44 2 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (40 40 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (38 2 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (31 31 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (31 31 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (30 2 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (28 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (27 27 (:TYPE-PRESCRIPTION EVALUATION-P))
 (20 20 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (20 2 (:DEFINITION STRICT-EVALUATION-P))
 (18 3 (:DEFINITION EVALUATION-EQ))
 (18 2 (:DEFINITION ONLY-TRUTH-P))
 (16 2 (:DEFINITION ONLY-EVALUATIONS-P))
 (11 1 (:DEFINITION EVALUATION-EQ-MEMBER))
 (8 2 (:DEFINITION TRUTHP-LABEL))
 (6 6 (:REWRITE MODELP-CHARACTERIZATION))
 (6 4 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (5 5 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (3 3 (:TYPE-PRESCRIPTION EVALUATION-EQ))
 (2 2 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (2 2 (:TYPE-PRESCRIPTION NEXT-STATEP))
 (2 2 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (2 2 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (2 2 (:REWRITE STRICT-EVALUATION-P-NECC))
 (2 2 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 )
(C-BISIMILAR-EQUIV-IMPLIES-INIT->INIT-M->N
 (184 10 (:DEFINITION SUBSET))
 (81 15 (:DEFINITION MEMBERP))
 (80 20 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (76 20 (:REWRITE SUBSET-IS-TRANSITIVE))
 (76 2 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (74 74 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (66 66 (:REWRITE DEFAULT-CAR))
 (58 58 (:REWRITE DEFAULT-CDR))
 (58 2 (:DEFINITION TRANSITION-SUBSET-P))
 (55 5 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (52 2 (:DEFINITION LABEL-SUBSET-VARS))
 (48 7 (:DEFINITION EVALUATION-P))
 (44 2 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (40 40 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (38 2 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (31 31 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (31 31 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (30 2 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (28 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (27 27 (:TYPE-PRESCRIPTION EVALUATION-P))
 (20 20 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (20 2 (:DEFINITION STRICT-EVALUATION-P))
 (18 3 (:DEFINITION EVALUATION-EQ))
 (18 2 (:DEFINITION ONLY-TRUTH-P))
 (16 2 (:DEFINITION ONLY-EVALUATIONS-P))
 (11 1 (:DEFINITION EVALUATION-EQ-MEMBER))
 (8 2 (:DEFINITION TRUTHP-LABEL))
 (6 6 (:REWRITE MODELP-CHARACTERIZATION))
 (6 4 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (5 5 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (3 3 (:TYPE-PRESCRIPTION EVALUATION-EQ))
 (2 2 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (2 2 (:TYPE-PRESCRIPTION NEXT-STATEP))
 (2 2 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (2 2 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (2 2 (:REWRITE STRICT-EVALUATION-P-NECC))
 (2 2 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 )
(SUBSET-TRANSITIVE-MEMBER)
(C-BISIMILAR-EQUIV-IMPLIES-BISIMILAR-INITIAL-STATES-M->N
 (336 15 (:DEFINITION SUBSET))
 (164 164 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (157 40 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (154 14 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (139 139 (:REWRITE DEFAULT-CAR))
 (128 18 (:DEFINITION EVALUATION-P))
 (118 118 (:REWRITE DEFAULT-CDR))
 (72 72 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (68 54 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (64 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (54 54 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (54 9 (:DEFINITION EVALUATION-EQ))
 (39 39 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (22 2 (:DEFINITION EVALUATION-EQ-MEMBER))
 (16 4 (:DEFINITION TRUTHP-LABEL))
 (14 14 (:TYPE-PRESCRIPTION BOOLEANP))
 (14 8 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (10 10 (:REWRITE MODELP-CHARACTERIZATION))
 (8 8 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (6 6 (:TYPE-PRESCRIPTION NEXT-STATEP))
 (6 6 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (5 5 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (4 4 (:REWRITE STRICT-EVALUATION-P-NECC))
 )
(C-BISIMILAR-EQUIV-IMPLIES-BISIMILAR-INITIAL-STATES-N->M
 (336 15 (:DEFINITION SUBSET))
 (176 176 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (157 40 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (154 14 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (153 153 (:REWRITE DEFAULT-CAR))
 (128 18 (:DEFINITION EVALUATION-P))
 (125 125 (:REWRITE DEFAULT-CDR))
 (72 72 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (68 54 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (64 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (54 54 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (44 4 (:DEFINITION EVALUATION-EQ-MEMBER))
 (39 39 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (16 4 (:DEFINITION TRUTHP-LABEL))
 (14 14 (:TYPE-PRESCRIPTION BOOLEANP))
 (14 8 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (10 10 (:REWRITE MODELP-CHARACTERIZATION))
 (8 8 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (6 6 (:TYPE-PRESCRIPTION NEXT-STATEP))
 (6 6 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (5 5 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (4 4 (:REWRITE STRICT-EVALUATION-P-NECC))
 )
(TRUTHP-LABEL-FROM-ONLY-TRUTHP
 (22 22 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (6 6 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (6 6 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (6 6 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 )
(ALL-TRUTHS-P-FROM-ONLY-ALL-TRUTHS-P
 (36 36 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (20 20 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (20 20 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (7 7 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 )
(MEMBERP-TO-INTERSECT-REDUCTION
 (15 1 (:DEFINITION SET-INTERSECT))
 (14 2 (:DEFINITION MEMBERP))
 (8 2 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (4 4 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (4 4 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (2 2 (:TYPE-PRESCRIPTION SET-INTERSECT))
 (2 2 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 )
(EVALUATION-EQ-VARS-REDUCTION
 (15 15 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (6 6 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (6 6 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (6 6 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(VARIABLES-IN-LABEL-ARE-T-IN-Q
 (486 70 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (388 11 (:DEFINITION SUBSET))
 (104 26 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (90 88 (:REWRITE DEFAULT-CAR))
 (70 70 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (70 70 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (70 68 (:REWRITE DEFAULT-CDR))
 (53 53 (:TYPE-PRESCRIPTION SUBSET))
 (50 50 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (32 4 (:DEFINITION EVALUATION-EQ))
 (26 26 (:REWRITE SUBSET-IS-TRANSITIVE))
 (26 26 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (26 26 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (2 2 (:REWRITE SUBSET-IS-REFLEXIVE))
 (2 2 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 )
(ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET
 (132 17 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (125 4 (:DEFINITION SUBSET))
 (58 9 (:DEFINITION MEMBERP))
 (44 8 (:REWRITE SUBSET-IS-TRANSITIVE))
 (29 8 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (18 1 (:DEFINITION ALL-TRUTHSP-LABEL))
 (17 17 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (15 15 (:REWRITE DEFAULT-CAR))
 (14 14 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (13 13 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (4 4 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (4 4 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (4 4 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 )
(TRUTHP-LABEL-TO-SUBSET
 (251 29 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (228 6 (:DEFINITION SUBSET))
 (126 15 (:DEFINITION MEMBERP))
 (51 12 (:REWRITE SUBSET-IS-TRANSITIVE))
 (45 12 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (29 29 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (29 29 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (28 28 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE DEFAULT-CDR))
 (22 22 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (22 6 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (22 1 (:DEFINITION TRUTHP-LABEL))
 (20 1 (:DEFINITION ALL-TRUTHSP-LABEL))
 (17 1 (:DEFINITION SET-INTERSECT))
 (11 11 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (10 1 (:DEFINITION EVALUATION-EQ))
 (7 7 (:TYPE-PRESCRIPTION SET-INTERSECT))
 (6 6 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 )
(TRUTHP-LABEL-IS-A-SUBSET
 (141 6 (:DEFINITION ALL-TRUTHSP-LABEL))
 (128 60 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (113 29 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (82 81 (:REWRITE DEFAULT-CAR))
 (66 65 (:REWRITE DEFAULT-CDR))
 (62 62 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (60 60 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (53 53 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (50 5 (:DEFINITION EVALUATION-EQ))
 (28 28 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (24 24 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (22 22 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (3 3 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 )
(SUBSET-INTERSECT-REDUCTION
 (1446 363 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (1229 363 (:REWRITE SUBSET-IS-TRANSITIVE))
 (711 711 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (472 465 (:REWRITE DEFAULT-CAR))
 (452 452 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (452 452 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (440 440 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (440 440 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (420 415 (:REWRITE DEFAULT-CDR))
 (361 361 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (11 11 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (6 6 (:REWRITE TRUTHP-LABEL-IS-A-SUBSET))
 )
(TRUTHP-LABEL-INTERSECT-IS-A-SUBSET
 (54 6 (:DEFINITION MEMBERP))
 (53 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (38 2 (:DEFINITION SET-INTERSECT))
 (24 1 (:DEFINITION TRUTHP-LABEL))
 (23 5 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (22 1 (:DEFINITION SUBSET))
 (18 18 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-CDR))
 (14 14 (:TYPE-PRESCRIPTION MEMBERP))
 (12 12 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (12 12 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (12 12 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (12 12 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (12 12 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (12 3 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (10 1 (:DEFINITION EVALUATION-EQ))
 (6 6 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (5 5 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (5 5 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (3 3 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (2 2 (:REWRITE SUBSET-IS-TRANSITIVE))
 )
(C-BISIMILAR-STATES-HAVE-LABELS-EQUAL-AUX
 (51 2 (:REWRITE SUBSET-INTERSECT-REDUCTION))
 (38 2 (:DEFINITION SET-INTERSECT))
 (28 7 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (13 13 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (13 13 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (9 9 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (9 9 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (9 9 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (9 9 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (7 7 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (5 5 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (4 4 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (2 2 (:REWRITE TRUTHP-LABEL-IS-A-SUBSET))
 (1 1 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 )
(C-BISIMILAR-STATES-HAVE-LABELS-EQUAL
 (1260 38 (:DEFINITION SUBSET))
 (477 120 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (387 179 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (343 343 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (340 340 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (309 309 (:REWRITE DEFAULT-CAR))
 (253 253 (:REWRITE DEFAULT-CDR))
 (220 220 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (200 24 (:DEFINITION EVALUATION-P))
 (190 10 (:DEFINITION SET-INTERSECT))
 (185 185 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (185 185 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (182 14 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (179 179 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (119 119 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (112 4 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (100 36 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (96 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (64 64 (:TYPE-PRESCRIPTION NEXT-STATEP))
 (36 36 (:TYPE-PRESCRIPTION SET-INTERSECT))
 (36 36 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (24 24 (:REWRITE MODELP-CHARACTERIZATION))
 (24 4 (:DEFINITION TRUTHP-LABEL))
 (18 18 (:REWRITE TRUTHP-LABEL-IS-A-SUBSET))
 (18 18 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (14 14 (:TYPE-PRESCRIPTION BOOLEANP))
 (10 10 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (10 10 (:REWRITE STRICT-EVALUATION-P-NECC))
 (8 8 (:REWRITE TRUTHP-LABEL-INTERSECT-IS-A-SUBSET))
 (4 4 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (4 4 (:TYPE-PRESCRIPTION EVALUATION-EQ-MEMBER-P))
 (4 4 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 )
(C-BISIMILAR-TRANSITION-WITNESS-M->N)
(C-BISIMILAR-TRANSITION-WITNESS-N->M)
(EVALUATIONP-FOR-SUBSET
 (80 20 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (71 71 (:REWRITE DEFAULT-CAR))
 (49 49 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (49 49 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (49 49 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (48 48 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (40 40 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (40 40 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (40 40 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (39 39 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (20 20 (:REWRITE SUBSET-IS-TRANSITIVE))
 (20 20 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (1 1 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 )
(EVALUATION-P-ONLY-EVALUATIONS-REDUCTION
 (17 17 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE EVALUATIONP-FOR-SUBSET))
 (11 11 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (7 7 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (7 7 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (6 6 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (6 6 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (6 6 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (6 6 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (6 6 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 )
(R-IS-EVALUATION-EQ-MEMBER-P
 (62 5 (:DEFINITION EVALUATION-P))
 (54 1 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (51 3 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (32 1 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (18 18 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (16 4 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (15 15 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (13 13 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE EVALUATION-P-ONLY-EVALUATIONS-REDUCTION))
 (10 10 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (10 10 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (8 8 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (8 8 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (4 4 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (4 4 (:REWRITE SUBSET-IS-TRANSITIVE))
 (4 4 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (4 4 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (3 3 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(C-BISIMILAR-WITNESS-MEMBER-OF-STATES-M->N
 (503 17 (:DEFINITION SUBSET))
 (188 47 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (125 125 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (120 120 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (106 106 (:REWRITE DEFAULT-CAR))
 (100 2 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (90 6 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (90 3 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (89 89 (:REWRITE DEFAULT-CDR))
 (86 86 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (76 2 (:DEFINITION TRANSITION-SUBSET-P))
 (66 66 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (66 66 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (64 2 (:DEFINITION LABEL-SUBSET-VARS))
 (60 60 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (60 2 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (48 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (47 47 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (46 2 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (36 2 (:DEFINITION STRICT-EVALUATION-P))
 (24 2 (:DEFINITION ONLY-TRUTH-P))
 (24 2 (:DEFINITION ONLY-EVALUATIONS-P))
 (16 6 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (15 1 (:DEFINITION EVALUATION-EQ-MEMBER))
 (12 2 (:DEFINITION TRUTHP-LABEL))
 (8 8 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (6 6 (:TYPE-PRESCRIPTION BOOLEANP))
 (6 6 (:REWRITE MODELP-CHARACTERIZATION))
 (6 6 (:REWRITE EVALUATION-EQ-SUBSET-TO-MEMBER))
 (6 6 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (6 6 (:REWRITE ALL-TRUTHS-P-FROM-ONLY-ALL-TRUTHS-P))
 (2 2 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (2 2 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (2 2 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (2 2 (:REWRITE TRUTHP-LABEL-FROM-ONLY-TRUTHP))
 (2 2 (:REWRITE STRICT-EVALUATION-P-NECC))
 (2 2 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 )
(C-BISIMILAR-WITNESS-MEMBER-OF-STATES-N->M
 (193 183 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (192 48 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (183 183 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (182 182 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (169 19 (:DEFINITION MEMBERP))
 (123 11 (:DEFINITION EVALUATION-EQ))
 (121 6 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (120 4 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (112 4 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (96 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (95 95 (:REWRITE DEFAULT-CAR))
 (92 4 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (86 86 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (73 73 (:REWRITE DEFAULT-CDR))
 (72 4 (:DEFINITION STRICT-EVALUATION-P))
 (48 48 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (48 12 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (48 4 (:DEFINITION TRANSITION-SUBSET-P))
 (48 4 (:DEFINITION ONLY-TRUTH-P))
 (44 44 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (44 44 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (40 4 (:DEFINITION LABEL-SUBSET-VARS))
 (38 38 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (30 2 (:DEFINITION EVALUATION-EQ-MEMBER))
 (24 4 (:DEFINITION TRUTHP-LABEL))
 (12 12 (:REWRITE MODELP-CHARACTERIZATION))
 (12 12 (:REWRITE EVALUATION-EQ-SUBSET-TO-MEMBER))
 (12 12 (:REWRITE ALL-TRUTHS-P-FROM-ONLY-ALL-TRUTHS-P))
 (11 5 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (10 10 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (5 5 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (4 4 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (4 4 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (4 4 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (4 4 (:REWRITE TRUTHP-LABEL-FROM-ONLY-TRUTHP))
 (4 4 (:REWRITE STRICT-EVALUATION-P-NECC))
 (4 4 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 )
(C-BISIMILAR-WITNESS-MATCHES-TRANSITION-M->N
 (379 13 (:DEFINITION SUBSET))
 (156 39 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (121 121 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (116 116 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (100 2 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (97 97 (:REWRITE DEFAULT-CAR))
 (90 6 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (90 3 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (88 50 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (81 81 (:REWRITE DEFAULT-CDR))
 (76 2 (:DEFINITION TRANSITION-SUBSET-P))
 (70 70 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (64 2 (:DEFINITION LABEL-SUBSET-VARS))
 (60 2 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (53 53 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (53 53 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (50 50 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (48 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (46 2 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (39 39 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (36 2 (:DEFINITION STRICT-EVALUATION-P))
 (24 2 (:DEFINITION ONLY-TRUTH-P))
 (24 2 (:DEFINITION ONLY-EVALUATIONS-P))
 (15 1 (:DEFINITION EVALUATION-EQ-MEMBER))
 (14 6 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (12 2 (:DEFINITION TRUTHP-LABEL))
 (8 8 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (6 6 (:TYPE-PRESCRIPTION BOOLEANP))
 (6 6 (:REWRITE MODELP-CHARACTERIZATION))
 (6 6 (:REWRITE EVALUATION-EQ-SUBSET-TO-MEMBER))
 (6 6 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (6 6 (:REWRITE ALL-TRUTHS-P-FROM-ONLY-ALL-TRUTHS-P))
 (2 2 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (2 2 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (2 2 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (2 2 (:REWRITE TRUTHP-LABEL-FROM-ONLY-TRUTHP))
 (2 2 (:REWRITE STRICT-EVALUATION-P-NECC))
 (2 2 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 )
(C-BISIMILAR-WITNESS-MATCHES-TRANSITION-N->M
 (189 179 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (179 179 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (178 178 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (164 41 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (123 11 (:DEFINITION EVALUATION-EQ))
 (122 16 (:DEFINITION MEMBERP))
 (121 6 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (120 4 (:DEFINITION ONLY-ALL-TRUTHS-P))
 (112 4 (:DEFINITION EVALUATION-EQ-SUBSET-P))
 (96 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (92 92 (:REWRITE DEFAULT-CAR))
 (92 4 (:DEFINITION STRICT-EVALUATION-LIST-P))
 (72 72 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (72 4 (:DEFINITION STRICT-EVALUATION-P))
 (70 70 (:REWRITE DEFAULT-CDR))
 (48 12 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (48 4 (:DEFINITION TRANSITION-SUBSET-P))
 (48 4 (:DEFINITION ONLY-TRUTH-P))
 (41 41 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (40 4 (:DEFINITION LABEL-SUBSET-VARS))
 (35 35 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (35 35 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (32 32 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (32 32 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (30 2 (:DEFINITION EVALUATION-EQ-MEMBER))
 (24 4 (:DEFINITION TRUTHP-LABEL))
 (12 12 (:REWRITE MODELP-CHARACTERIZATION))
 (12 12 (:REWRITE EVALUATION-EQ-SUBSET-TO-MEMBER))
 (12 12 (:REWRITE ALL-TRUTHS-P-FROM-ONLY-ALL-TRUTHS-P))
 (10 10 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (4 4 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (4 4 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 (4 4 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (4 4 (:REWRITE TRUTHP-LABEL-FROM-ONLY-TRUTHP))
 (4 4 (:REWRITE STRICT-EVALUATION-P-NECC))
 (4 4 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (4 4 (:REWRITE LABEL-SUBSET-SUBSET-REDUCTION))
 (4 4 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 )
(C-BISIMILAR-WITNESS-PRODUCES-BISIMILAR-STATES-M->N
 (528 17 (:DEFINITION SUBSET))
 (220 55 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (181 181 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (176 176 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (139 139 (:REWRITE DEFAULT-CAR))
 (120 8 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (108 108 (:REWRITE DEFAULT-CDR))
 (98 98 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (90 3 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (81 81 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (81 81 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (75 75 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (55 55 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (48 2 (:DEFINITION ALL-TRUTHSP-LABEL))
 (44 16 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (16 16 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (15 1 (:DEFINITION EVALUATION-EQ-MEMBER))
 (12 12 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (12 2 (:DEFINITION TRUTHP-LABEL))
 (10 10 (:REWRITE MODELP-CHARACTERIZATION))
 (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (4 4 (:REWRITE STRICT-EVALUATION-P-NECC))
 (2 2 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (2 2 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 )
(C-BISIMILAR-WITNESS-PRODUCES-BISIMILAR-STATES-N->M
 (313 303 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (303 303 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (302 302 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (260 65 (:REWRITE PROPER-SUBSET-IS-STRONGER-THAN-SUBSET))
 (159 159 (:REWRITE DEFAULT-CAR))
 (121 6 (:DEFINITION EVALUATION-EQ-MEMBER-P))
 (112 112 (:TYPE-PRESCRIPTION PROPER-SUBSET))
 (106 106 (:REWRITE DEFAULT-CDR))
 (96 4 (:DEFINITION ALL-TRUTHSP-LABEL))
 (65 65 (:REWRITE PROPER-SUBSET-IS-TRANSITIVE))
 (64 64 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (64 64 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (64 16 (:REWRITE ALL-EVALUATIONS-CONSIDERS-AN-EVALUATION-A-MEMBER))
 (60 4 (:DEFINITION EVALUATION-EQ-MEMBER))
 (58 58 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (43 17 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (24 4 (:DEFINITION TRUTHP-LABEL))
 (20 20 (:REWRITE MODELP-CHARACTERIZATION))
 (18 18 (:REWRITE PROPER-SUBSET-IS-IRREFLEXIVE))
 (17 17 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 (8 8 (:REWRITE WELL-FORMED-TRANSITION-P-EXPANDED))
 (8 8 (:REWRITE STRICT-EVALUATION-P-NECC))
 (4 4 (:TYPE-PRESCRIPTION TRUTHP-LABEL))
 (4 4 (:TYPE-PRESCRIPTION ALL-TRUTHSP-LABEL))
 )
(CIRCUIT-MODELP-IS-MODELP)
(CIRCUIT-BISIM-IMPLIES-SAME-LTL-SEMANTICS
 (68 8 (:DEFINITION MEMBERP))
 (38 2 (:DEFINITION SET-INTERSECT))
 (20 2 (:REWRITE NEXT-STATES-IN-STATES-CLARIFIED))
 (18 18 (:REWRITE TRUTHP-LABEL-TO-SUBSET))
 (18 18 (:REWRITE SUBSET-TRANSITIVE-MEMBER))
 (18 18 (:REWRITE ONLY-TRUTHSP-AND-SUBSET-TO-SUBSET))
 (16 16 (:REWRITE VARIABLES-IN-LABEL-ARE-T-IN-Q))
 (16 16 (:REWRITE TRANSITION-SUBSET-P-EXPANDED))
 (16 16 (:REWRITE STRICT-EVALUATION-P-EXPANDED))
 (16 16 (:REWRITE EVALUATION-EQ-VARS-REDUCTION))
 (16 16 (:REWRITE ALL-TRUTHSP-LABEL-EXPANDED))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE MODELP-CHARACTERIZATION))
 (3 3 (:REWRITE BISIMILAR-STATES-HAVE-LABELS-EQUAL))
 (2 2 (:REWRITE COMPATIBLE-PATHS-HAVE-ONLY-STATES))
 )
