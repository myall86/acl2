(REFUTATION-ATTEMPT
 (13274 56 (:DEFINITION VARS-IN-TERM-LIST))
 (12576 8 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (12552 8 (:DEFINITION FREE-OCCURRENCE))
 (10848 48 (:REWRITE NOT-VARS-IN-TERM-LIST-NOT-VAR-OCCURRENCE-TERM-LIST))
 (9936 8 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (5725 64 (:DEFINITION UNION-EQUAL))
 (5304 659 (:DEFINITION DOMAIN-TERM-LIST))
 (4359 489 (:REWRITE DOMAIN-TERM-LIST-HAS-NO-VARS))
 (3391 3391 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (3290 392 (:REWRITE SUBSET-UNION-2))
 (2944 384 (:REWRITE UNION-15))
 (2613 2601 (:REWRITE DEFAULT-CDR))
 (2313 2313 (:REWRITE DEFAULT-CAR))
 (2112 192 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (1896 152 (:DEFINITION SUBSETP-EQUAL))
 (1872 256 (:DEFINITION MEMBER-EQUAL))
 (1792 64 (:DEFINITION WF-AP-TERM-TOP))
 (1546 1546 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (1377 96 (:DEFINITION TRUE-LISTP))
 (808 312 (:REWRITE UNION-NOT-NIL-IF-EITHER-ARGUMENT-IS-A-CONS))
 (788 4 (:DEFINITION NNF))
 (672 32 (:REWRITE UNION-NIL-RIGHT))
 (640 640 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (576 128 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (528 48 (:REWRITE VARIABLE-NOT-IN-DOMAIN-TERM-LIST-A))
 (424 8 (:DEFINITION QUANTIFIED-VARS))
 (392 56 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (384 128 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (384 96 (:REWRITE UNION-NIL-LEFT))
 (368 368 (:REWRITE PERM-MEMBER))
 (368 368 (:REWRITE MEMBER-EQUAL-APPEND))
 (368 368 (:REWRITE FIRST-OF-SUBBAG-IS-MEMBER))
 (360 360 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (322 2 (:DEFINITION RIGHT-ASSOC))
 (300 100 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (272 4 (:DEFINITION WFF))
 (200 200 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (178 2 (:DEFINITION CNF))
 (128 128 (:REWRITE SUBBAG-NOT-MEMBER))
 (128 128 (:REWRITE NOT-MEMBER-SUBSET))
 (104 104 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (102 59 (:TYPE-PRESCRIPTION CNF))
 (102 8 (:DEFINITION WFAND))
 (100 100 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (96 96 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (96 4 (:DEFINITION RAT))
 (92 4 (:DEFINITION WFATOM))
 (88 88 (:TYPE-PRESCRIPTION PULL-QUANTS))
 (72 4 (:DEFINITION WFT-LIST))
 (72 2 (:DEFINITION DIST-OR-AND))
 (71 8 (:DEFINITION REMOVE-EQUAL))
 (68 68 (:DEFINITION FUNCTION-SYMBOL))
 (64 64 (:REWRITE WF-AP-TERM-TOP-CONSP))
 (58 4 (:DEFINITION WFOR))
 (56 56 (:REWRITE CAR-CONS))
 (40 8 (:DEFINITION BINARY-APPEND))
 (38 34 (:TYPE-PRESCRIPTION RIGHT-ASSOC))
 (36 2 (:DEFINITION DIST-OR-AND-2))
 (21 1 (:DEFINITION LEADING-ALLS))
 (16 16 (:TYPE-PRESCRIPTION QUANTIFIED-VARS))
 (14 1 (:DEFINITION WFALL))
 (8 8 (:TYPE-PRESCRIPTION WFT-LIST))
 (8 8 (:REWRITE VARS-IN-TERM-LIST-TRUE-LISTP))
 (8 8 (:REWRITE FREE-VARS-TRUE-LISTP))
 (8 4 (:REWRITE RIGHT-ASSOC-PRESERVES-CAR))
 (5 5 (:REWRITE PERM-SETP-SETP))
 (4 4 (:REWRITE RIGHT-ASSOC-CONSP))
 (4 1 (:TYPE-PRESCRIPTION REFUTE-N-CHECK))
 (2 2 (:REWRITE PERM-NOT-SETP-NOT-SETP))
 )
(REFUTATION-ATTEMPT-FSOUND)
(REFUTED)
(REFUTATION-IS-FSOUND
 (2317 1 (:REWRITE SKOLEMIZE-EXTEND-WITH-FREE-VARS))
 (2315 1 (:REWRITE RENAME-ALL-PRESERVES-FREE-VARS))
 (2314 1 (:REWRITE NNF-PRESERVES-FREE-VARS))
 (2313 1 (:DEFINITION FREE-VARS))
 (1664 7 (:DEFINITION VARS-IN-TERM-LIST))
 (1572 1 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (1569 1 (:DEFINITION FREE-OCCURRENCE))
 (1356 6 (:REWRITE NOT-VARS-IN-TERM-LIST-NOT-VAR-OCCURRENCE-TERM-LIST))
 (1242 1 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (722 8 (:DEFINITION UNION-EQUAL))
 (652 81 (:DEFINITION DOMAIN-TERM-LIST))
 (529 59 (:REWRITE DOMAIN-TERM-LIST-HAS-NO-VARS))
 (417 417 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (413 49 (:REWRITE SUBSET-UNION-2))
 (366 48 (:REWRITE UNION-15))
 (355 355 (:REWRITE DEFAULT-CDR))
 (310 310 (:REWRITE DEFAULT-CAR))
 (264 24 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (237 19 (:DEFINITION SUBSETP-EQUAL))
 (234 32 (:DEFINITION MEMBER-EQUAL))
 (224 8 (:DEFINITION WF-AP-TERM-TOP))
 (199 199 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (197 1 (:DEFINITION NNF))
 (190 190 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (174 12 (:DEFINITION TRUE-LISTP))
 (132 92 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (101 39 (:REWRITE UNION-NOT-NIL-IF-EITHER-ARGUMENT-IS-A-CONS))
 (82 4 (:REWRITE UNION-NIL-RIGHT))
 (80 80 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (72 16 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (66 6 (:REWRITE VARIABLE-NOT-IN-DOMAIN-TERM-LIST-A))
 (66 2 (:DEFINITION WFATOMTOP))
 (49 7 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (48 16 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (48 12 (:REWRITE UNION-NIL-LEFT))
 (46 46 (:REWRITE PERM-MEMBER))
 (46 46 (:REWRITE MEMBER-EQUAL-APPEND))
 (46 46 (:REWRITE FIRST-OF-SUBBAG-IS-MEMBER))
 (45 45 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (44 4 (:DEFINITION WFBINARY))
 (36 12 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (25 25 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:REWRITE SUBBAG-NOT-MEMBER))
 (16 16 (:REWRITE NOT-MEMBER-SUBSET))
 (13 13 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (12 12 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (12 12 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (12 1 (:DEFINITION REMOVE-EQUAL))
 (8 8 (:REWRITE WF-AP-TERM-TOP-CONSP))
 (8 8 (:DEFINITION FUNCTION-SYMBOL))
 (7 7 (:REWRITE CAR-CONS))
 (5 5 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (4 2 (:DEFINITION RELATION-SYMBOL))
 (2 2 (:DEFINITION LOGIC-SYMBOLP))
 (1 1 (:REWRITE VARS-IN-TERM-LIST-TRUE-LISTP))
 (1 1 (:REWRITE FREE-VARS-TRUE-LISTP))
 )
(PROVED
 (3296 14 (:DEFINITION VARS-IN-TERM-LIST))
 (3144 2 (:REWRITE FREE-OCCURRENCE-REMOVE-FREE-VARS))
 (3138 2 (:DEFINITION FREE-OCCURRENCE))
 (2712 12 (:REWRITE NOT-VARS-IN-TERM-LIST-NOT-VAR-OCCURRENCE-TERM-LIST))
 (2484 2 (:DEFINITION VAR-OCCURRENCE-TERM-LIST))
 (1408 16 (:DEFINITION UNION-EQUAL))
 (1320 164 (:DEFINITION DOMAIN-TERM-LIST))
 (1080 120 (:REWRITE DOMAIN-TERM-LIST-HAS-NO-VARS))
 (844 844 (:TYPE-PRESCRIPTION DOMAIN-TERM-LIST))
 (818 98 (:REWRITE SUBSET-UNION-2))
 (736 96 (:REWRITE UNION-15))
 (528 48 (:REWRITE DOMAIN-TERM-LIST-TRUE-LISTP))
 (504 504 (:REWRITE DEFAULT-CDR))
 (474 38 (:DEFINITION SUBSETP-EQUAL))
 (468 64 (:DEFINITION MEMBER-EQUAL))
 (463 463 (:REWRITE DEFAULT-CAR))
 (448 16 (:DEFINITION WF-AP-TERM-TOP))
 (386 386 (:TYPE-PRESCRIPTION DOMAIN-TERM))
 (374 374 (:TYPE-PRESCRIPTION VARS-IN-TERM-LIST))
 (342 24 (:DEFINITION TRUE-LISTP))
 (224 164 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (202 78 (:REWRITE UNION-NOT-NIL-IF-EITHER-ARGUMENT-IS-A-CONS))
 (168 8 (:REWRITE UNION-NIL-RIGHT))
 (160 160 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (144 32 (:REWRITE DOMAIN-TERM-LIST-MEMBER))
 (132 12 (:REWRITE VARIABLE-NOT-IN-DOMAIN-TERM-LIST-A))
 (124 4 (:DEFINITION WFATOMTOP))
 (98 14 (:REWRITE SUBSET-MEMBER-SUBSET-CONS))
 (96 32 (:REWRITE NOT-DOMAIN-TERM-NOT-DOMAIN-TERM-LIST))
 (96 24 (:REWRITE UNION-NIL-LEFT))
 (92 92 (:REWRITE PERM-MEMBER))
 (92 92 (:REWRITE MEMBER-EQUAL-APPEND))
 (92 92 (:REWRITE FIRST-OF-SUBBAG-IS-MEMBER))
 (90 90 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (90 6 (:DEFINITION WFQUANT))
 (78 26 (:REWRITE VARIABLE-TERM-IS-NOT-DOMAIN-TERM))
 (72 12 (:DEFINITION LIST3P))
 (66 6 (:DEFINITION WFBINARY))
 (56 56 (:DEFINITION VARIABLE-TERM))
 (50 50 (:REWRITE SUBSETP-EQUAL-TRANSITIVE))
 (36 2 (:DEFINITION WFT-LIST))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (32 32 (:REWRITE SUBBAG-NOT-MEMBER))
 (32 32 (:REWRITE NOT-MEMBER-SUBSET))
 (26 26 (:TYPE-PRESCRIPTION VARIABLE-TERM))
 (26 26 (:TYPE-PRESCRIPTION VAR-OCCURRENCE-TERM-LIST))
 (24 24 (:TYPE-PRESCRIPTION FREE-OCCURRENCE))
 (18 18 (:DEFINITION FUNCTION-SYMBOL))
 (16 16 (:REWRITE WF-AP-TERM-TOP-CONSP))
 (14 2 (:DEFINITION REMOVE-EQUAL))
 (12 6 (:DEFINITION RELATION-SYMBOL))
 (6 6 (:DEFINITION LOGIC-SYMBOLP))
 (4 4 (:TYPE-PRESCRIPTION WFT-LIST))
 (2 2 (:REWRITE VARS-IN-TERM-LIST-TRUE-LISTP))
 (2 2 (:REWRITE FREE-VARS-TRUE-LISTP))
 )
(PROOF-IS-FSOUND
 (12 12 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 )
