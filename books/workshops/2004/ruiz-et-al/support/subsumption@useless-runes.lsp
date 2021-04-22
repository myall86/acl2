(SEL-MATCH
 (608 271 (:REWRITE DEFAULT-+-2))
 (383 271 (:REWRITE DEFAULT-+-1))
 (240 48 (:DEFINITION INTEGER-ABS))
 (192 24 (:DEFINITION LENGTH))
 (120 24 (:DEFINITION LEN))
 (112 112 (:REWRITE DEFAULT-CDR))
 (73 58 (:REWRITE DEFAULT-<-2))
 (64 58 (:REWRITE DEFAULT-<-1))
 (48 48 (:REWRITE DEFAULT-UNARY-MINUS))
 (34 10 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 (24 24 (:TYPE-PRESCRIPTION LEN))
 (24 24 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (24 24 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (24 24 (:REWRITE DEFAULT-REALPART))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (24 24 (:REWRITE DEFAULT-IMAGPART))
 (24 24 (:REWRITE DEFAULT-DENOMINATOR))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE DEFAULT-COERCE-1))
 (8 4 (:DEFINITION MEMBER-EQUAL))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(SEL-MATCH-SELECT-A-PAIR
 (68 68 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-CDR))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SEL-MATCH-CONSP
 (63 63 (:REWRITE DEFAULT-CAR))
 (33 33 (:REWRITE DEFAULT-CDR))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(TRANSFORM-SUBS-GUARD-VERIFICATION-STUFF-1
 (86 86 (:REWRITE DEFAULT-CAR))
 (46 46 (:REWRITE DEFAULT-CDR))
 (29 19 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (7 7 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(TRANSFORM-SUBS-GUARD-VERIFICATION-STUFF-2
 (268 268 (:REWRITE DEFAULT-CAR))
 (215 215 (:REWRITE DEFAULT-CDR))
 (150 50 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 (50 50 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (50 50 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (36 18 (:DEFINITION TRUE-LISTP))
 )
(TRANSFORM-SUBS
 (224 4 (:DEFINITION SEL-MATCH))
 (178 133 (:REWRITE DEFAULT-CAR))
 (112 80 (:REWRITE DEFAULT-CDR))
 (72 33 (:DEFINITION MEMBER-EQUAL))
 (66 3 (:DEFINITION SYSTEM-P))
 (39 6 (:DEFINITION TERM-P-AUX))
 (20 1 (:DEFINITION PAIR-ARGS))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7 1 (:DEFINITION ASSOC-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION TERM-P-AUX))
 (6 6 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 )
(TRANSFORM-SUBS-BRIDGE)
(TRANSFORM-SUBS-DECREASES-LENGTH-OF-FIRST-SYSTEM
 (866 22 (:DEFINITION LENGTH-SYSTEM))
 (613 393 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (444 37 (:DEFINITION SEL-MATCH))
 (286 132 (:REWRITE DEFAULT-+-2))
 (242 22 (:REWRITE COMMUTATIVITY-2-OF-+))
 (220 132 (:REWRITE DEFAULT-+-1))
 (220 44 (:DEFINITION LENGTH-TERM))
 (176 176 (:TYPE-PRESCRIPTION LENGTH-TERM))
 (149 15 (:DEFINITION ELIMINATE))
 (140 7 (:DEFINITION PAIR-ARGS))
 (110 22 (:REWRITE COMMUTATIVITY-OF-+))
 (83 83 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (83 83 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (44 44 (:REWRITE FOLD-CONSTS-IN-+))
 (25 5 (:DEFINITION BINARY-APPEND))
 (22 13 (:REWRITE DEFAULT-<-1))
 (18 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:META CANCEL_PLUS-LESSP-CORRECT))
 (12 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(SUBS-SYSTEM
 (228 197 (:REWRITE DEFAULT-CAR))
 (228 19 (:DEFINITION SEL-MATCH))
 (165 154 (:REWRITE DEFAULT-CDR))
 (113 3 (:DEFINITION LENGTH-SYSTEM))
 (68 4 (:DEFINITION SYSTEM-P))
 (60 3 (:DEFINITION PAIR-ARGS))
 (39 18 (:REWRITE DEFAULT-+-2))
 (36 4 (:DEFINITION ELIMINATE))
 (35 35 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (35 35 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (33 3 (:REWRITE COMMUTATIVITY-2-OF-+))
 (32 8 (:DEFINITION TERM-P-AUX))
 (30 18 (:REWRITE DEFAULT-+-1))
 (30 6 (:DEFINITION LENGTH-TERM))
 (24 24 (:TYPE-PRESCRIPTION LENGTH-TERM))
 (21 3 (:DEFINITION ASSOC-EQUAL))
 (16 2 (:DEFINITION VAL))
 (15 3 (:REWRITE COMMUTATIVITY-OF-+))
 (10 2 (:DEFINITION BINARY-APPEND))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MATCH-MV)
(SUBS-SYSTEM-BRIDGE
 (1 1 (:TYPE-PRESCRIPTION SUBS-SYSTEM-BRIDGE))
 )
(MATCH-MV-BRIDGE)
(BOOLEANP-THIRD-SUBS-SYSTEM
 (2012 1009 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (744 62 (:DEFINITION SEL-MATCH))
 (423 45 (:DEFINITION ELIMINATE))
 (400 20 (:DEFINITION PAIR-ARGS))
 (202 202 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (202 202 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (95 19 (:DEFINITION BINARY-APPEND))
 (16 16 (:TYPE-PRESCRIPTION ELIMINATE))
 (12 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM
 (4041 2025 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (1572 131 (:DEFINITION SEL-MATCH))
 (940 100 (:DEFINITION ELIMINATE))
 (800 40 (:DEFINITION PAIR-ARGS))
 (419 419 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (419 419 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (180 36 (:DEFINITION BINARY-APPEND))
 )
(MATCH-MV-SOUNDNESS
 (6200 3138 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (3168 264 (:DEFINITION SEL-MATCH))
 (1220 61 (:DEFINITION PAIR-ARGS))
 (635 635 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (635 635 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (43 3 (:DEFINITION APPLY-SUBST))
 )
(MATCH-MV-COMPLETENESS
 (288 3 (:DEFINITION TRANSFORM-SUBS))
 (278 82 (:REWRITE DEFAULT-CAR))
 (228 114 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (216 74 (:REWRITE DEFAULT-CDR))
 (206 2 (:REWRITE NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM))
 (162 162 (:TYPE-PRESCRIPTION PAIR-ARGS))
 (114 114 (:TYPE-PRESCRIPTION ALISTP))
 (60 3 (:DEFINITION PAIR-ARGS))
 (36 3 (:DEFINITION SEL-MATCH))
 (33 3 (:DEFINITION ELIMINATE))
 (22 2 (:DEFINITION APPLY-SUBST))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 2 (:DEFINITION VAL))
 (15 3 (:REWRITE CONS-CAR-CDR))
 (15 3 (:DEFINITION BINARY-APPEND))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 )
(MATCH-MV-SUBSTITUTION-S-P
 (1330 7 (:DEFINITION SUBS-SYSTEM))
 (672 7 (:DEFINITION TRANSFORM-SUBS))
 (664 194 (:REWRITE DEFAULT-CAR))
 (532 266 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (503 179 (:REWRITE DEFAULT-CDR))
 (378 378 (:TYPE-PRESCRIPTION PAIR-ARGS))
 (266 266 (:TYPE-PRESCRIPTION ALISTP))
 (140 7 (:DEFINITION PAIR-ARGS))
 (132 9 (:DEFINITION TERM-S-P-AUX))
 (84 7 (:DEFINITION SEL-MATCH))
 (77 7 (:DEFINITION ELIMINATE))
 (51 9 (:REWRITE SYSTEM-S-P-TERM-P-AUX-ARGUMENTS))
 (45 9 (:DEFINITION LEN))
 (35 7 (:REWRITE CONS-CAR-CDR))
 (35 7 (:DEFINITION BINARY-APPEND))
 (31 31 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (31 31 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (28 5 (:DEFINITION MEMBER-EQUAL))
 (18 9 (:REWRITE DEFAULT-+-2))
 (17 17 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE DEFAULT-+-1))
 (7 7 (:DEFINITION ASSOC-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION VARIABLE-P))
 )
(SUBS-MV
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(SUBS)
(MATCHING)
(SUBS-SOUNDNESS
 (1070 10 (:DEFINITION SUBS-SYSTEM))
 (610 10 (:DEFINITION TRANSFORM-SUBS))
 (540 540 (:TYPE-PRESCRIPTION PAIR-ARGS))
 (484 173 (:REWRITE DEFAULT-CAR))
 (353 156 (:REWRITE DEFAULT-CDR))
 (200 10 (:DEFINITION PAIR-ARGS))
 (60 20 (:DEFINITION ELIMINATE))
 (50 10 (:REWRITE APPEND-NIL))
 (50 10 (:DEFINITION SEL-MATCH))
 (28 3 (:DEFINITION VAL))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 10 (:REWRITE PAIR-ARGS-TRUE-LISTP))
 (10 10 (:DEFINITION ASSOC-EQUAL))
 )
(SUBS-COMPLETENESS
 (357 3 (:DEFINITION SUBS-SYSTEM))
 (219 3 (:DEFINITION TRANSFORM-SUBS))
 (172 79 (:REWRITE DEFAULT-CAR))
 (162 162 (:TYPE-PRESCRIPTION PAIR-ARGS))
 (135 2 (:REWRITE NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM))
 (128 69 (:REWRITE DEFAULT-CDR))
 (77 7 (:DEFINITION APPLY-SUBST))
 (60 3 (:DEFINITION PAIR-ARGS))
 (56 7 (:DEFINITION VAL))
 (51 6 (:DEFINITION ELIMINATE))
 (33 9 (:REWRITE MV-NTH-0-FIRST))
 (15 3 (:REWRITE APPEND-NIL))
 (15 3 (:DEFINITION SEL-MATCH))
 (13 13 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13 13 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 3 (:REWRITE PAIR-ARGS-TRUE-LISTP))
 (3 3 (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 )
(MATCHING-SUBSTITUTION-S-P
 (428 4 (:DEFINITION SUBS-SYSTEM))
 (244 4 (:DEFINITION TRANSFORM-SUBS))
 (244 2 (:REWRITE NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM))
 (216 216 (:TYPE-PRESCRIPTION PAIR-ARGS))
 (210 82 (:REWRITE DEFAULT-CAR))
 (162 82 (:REWRITE DEFAULT-CDR))
 (80 4 (:DEFINITION PAIR-ARGS))
 (30 6 (:DEFINITION LEN))
 (24 8 (:DEFINITION ELIMINATE))
 (20 4 (:REWRITE APPEND-NIL))
 (20 4 (:DEFINITION SEL-MATCH))
 (12 6 (:REWRITE DEFAULT-+-2))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP-THIRD-SUBS-SYSTEM))
 (4 4 (:REWRITE PAIR-ARGS-TRUE-LISTP))
 (4 4 (:DEFINITION ASSOC-EQUAL))
 (2 2 (:REWRITE SYSTEM-S-P-TERM-P-AUX-ARGUMENTS))
 )
(MATCHING-SUBSTITUTION-P
 (37 37 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 )
(SUBS-MV-SUBS)
(SUBS-MV-MATCHING)
(SUBS-LIST-MV
 (41 33 (:REWRITE DEFAULT-CAR))
 (29 27 (:REWRITE DEFAULT-CDR))
 (20 1 (:DEFINITION PAIR-ARGS))
 (8 4 (:DEFINITION TRUE-LISTP))
 (4 4 (:REWRITE SYSTEM-P-TERM-P-AUX-ARGUMENTS))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBS-LIST)
(MATCHING-LIST)
(MATCHER-APPLY-SUBST-NIL
 (510 308 (:REWRITE DEFAULT-CAR))
 (258 191 (:REWRITE DEFAULT-CDR))
 (176 22 (:DEFINITION VAL))
 (70 70 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (70 70 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 18 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 )
(APPLY-SUBST-NIL-PAIR-ARGS
 (47 24 (:REWRITE DEFAULT-CAR))
 (28 19 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION VAL))
 (6 6 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBS-LIST-SOUNDNESS
 (1728 9 (:DEFINITION SUBS-SYSTEM))
 (900 253 (:REWRITE DEFAULT-CAR))
 (864 9 (:DEFINITION TRANSFORM-SUBS))
 (684 342 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (644 215 (:REWRITE DEFAULT-CDR))
 (360 18 (:DEFINITION PAIR-ARGS))
 (342 342 (:TYPE-PRESCRIPTION ALISTP))
 (108 9 (:DEFINITION SEL-MATCH))
 (99 9 (:DEFINITION ELIMINATE))
 (48 48 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (48 48 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (45 9 (:REWRITE CONS-CAR-CDR))
 (45 9 (:DEFINITION BINARY-APPEND))
 (23 1 (:DEFINITION MATCHER))
 (19 3 (:DEFINITION APPLY-SUBST))
 (10 1 (:DEFINITION VAL))
 (9 9 (:DEFINITION ASSOC-EQUAL))
 )
(SUBS-LIST-COMPLETENESS
 (576 3 (:DEFINITION SUBS-SYSTEM))
 (321 91 (:REWRITE DEFAULT-CAR))
 (288 3 (:DEFINITION TRANSFORM-SUBS))
 (229 79 (:REWRITE DEFAULT-CDR))
 (228 114 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (210 2 (:REWRITE NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM))
 (152 7 (:DEFINITION PAIR-ARGS))
 (114 114 (:TYPE-PRESCRIPTION ALISTP))
 (36 3 (:DEFINITION SEL-MATCH))
 (33 3 (:DEFINITION ELIMINATE))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (15 3 (:REWRITE CONS-CAR-CDR))
 (15 3 (:DEFINITION BINARY-APPEND))
 (12 12 (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
 (12 4 (:DEFINITION APPLY-SUBST))
 (3 3 (:DEFINITION ASSOC-EQUAL))
 )
(MATCHING-LIST-SUBSTITUTION-S-P
 (768 4 (:DEFINITION SUBS-SYSTEM))
 (418 2 (:REWRITE NIL-THIRD-IMPLIES-NIL-SECOND-SUBS-SYSTEM))
 (401 116 (:REWRITE DEFAULT-CAR))
 (384 4 (:DEFINITION TRANSFORM-SUBS))
 (304 152 (:TYPE-PRESCRIPTION SEL-MATCH-CONSP))
 (288 100 (:REWRITE DEFAULT-CDR))
 (152 152 (:TYPE-PRESCRIPTION ALISTP))
 (140 7 (:DEFINITION PAIR-ARGS))
 (48 4 (:DEFINITION SEL-MATCH))
 (44 4 (:DEFINITION ELIMINATE))
 (44 2 (:DEFINITION SUBSTITUTION-S-P))
 (28 4 (:DEFINITION TERM-S-P-AUX))
 (20 4 (:REWRITE CONS-CAR-CDR))
 (20 4 (:DEFINITION BINARY-APPEND))
 (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 2 (:DEFINITION LEN))
 (8 4 (:TYPE-PRESCRIPTION BOOLEANP-THIRD-SUBS-SYSTEM))
 (4 4 (:DEFINITION ASSOC-EQUAL))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (2 2 (:REWRITE SYSTEM-S-P-TERM-P-AUX-ARGUMENTS))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(MATCHING-LIST-SUBSTITUTION-P)
(SUBS-LIST-MV-SUBS-LIST)
(SUBS-LIST-MV-MATCHING-LIST)
(SUBSUMPTION-REFLEXIVE)
(SUBSUMPTION-TRANSITIVE
 (17 1 (:DEFINITION COMPOSITION))
 (11 1 (:DEFINITION APPLY-SUBST))
 (8 1 (:DEFINITION VAL))
 (7 7 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(SUBSUMPTION-APPLY-SUBST)
(VARIABLE-MINIMUM-SUBSUMPTION
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(MINIMUM-SUBSUMPTION-IMPLIES-VARIABLE)
