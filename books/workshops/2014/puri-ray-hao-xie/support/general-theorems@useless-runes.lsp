(PHI-RESTRICTION-NEXT-BLOCK
 (800 160 (:DEFINITION LEN))
 (550 25 (:DEFINITION PHI-L))
 (487 379 (:REWRITE DEFAULT-CDR))
 (468 117 (:REWRITE O-P-O-INFP-CAR))
 (459 399 (:REWRITE DEFAULT-CAR))
 (450 25 (:DEFINITION PHI-A))
 (446 286 (:REWRITE DEFAULT-+-2))
 (310 52 (:DEFINITION TAKE))
 (286 286 (:REWRITE DEFAULT-+-1))
 (208 52 (:REWRITE DEFAULT-COERCE-3))
 (164 164 (:REWRITE DEFAULT-COERCE-2))
 (137 137 (:META CANCEL_PLUS-LESSP-CORRECT))
 (137 107 (:REWRITE DEFAULT-<-1))
 (135 135 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (135 135 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (132 107 (:REWRITE DEFAULT-<-2))
 (117 117 (:REWRITE O-P-DEF-O-FINP-1))
 (112 112 (:REWRITE DEFAULT-COERCE-1))
 (110 22 (:REWRITE ZP-OPEN))
 (30 30 (:REWRITE DEFAULT-SYMBOL-NAME))
 (25 25 (:DEFINITION VARIABLE-OR-NUMBERP))
 )
(PHI-RESTRICTION-RUN-LISTS
 (330 330 (:REWRITE DEFAULT-CAR))
 (321 321 (:REWRITE DEFAULT-CDR))
 )
(PHI-RESTRICTION-RUN-BLOCK
 (24 24 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-CDR))
 )
(PHI-RESTRICTION-BLOCK-SET
 (88 88 (:REWRITE DEFAULT-CAR))
 (69 69 (:REWRITE DEFAULT-CDR))
 )
(PHI-RESTRICTION-BLOCK-ITERS
 (35 14 (:REWRITE ZP-OPEN))
 (21 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (21 7 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 )
(PHI-RESTRICTION-APPEND-REVERSE
 (1248 13 (:DEFINITION PHI-RESTRICTION-LIST))
 (1079 13 (:DEFINITION PHI-STATEMENTS-P))
 (1066 13 (:DEFINITION PHI-STATEMENTS-AUX-P))
 (949 13 (:DEFINITION PHI-STATEMENT-P))
 (728 13 (:DEFINITION PHI-EXPRESSION-P))
 (390 91 (:REWRITE O-P-O-INFP-CAR))
 (289 182 (:REWRITE DEFAULT-CDR))
 (286 13 (:DEFINITION PHI-L))
 (260 260 (:TYPE-PRESCRIPTION LEN))
 (260 52 (:DEFINITION LEN))
 (234 13 (:DEFINITION PHI-A))
 (201 198 (:REWRITE DEFAULT-CAR))
 (182 182 (:TYPE-PRESCRIPTION O-P))
 (117 91 (:REWRITE O-P-DEF-O-FINP-1))
 (104 52 (:REWRITE DEFAULT-+-2))
 (52 52 (:REWRITE DEFAULT-+-1))
 (52 52 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (52 52 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (26 26 (:TYPE-PRESCRIPTION O-FINP))
 (26 13 (:REWRITE DEFAULT-<-2))
 (18 9 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (13 13 (:TYPE-PRESCRIPTION PHI-STATEMENTS-AUX-P))
 (13 13 (:TYPE-PRESCRIPTION PHI-L))
 (13 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:META CANCEL_PLUS-LESSP-CORRECT))
 (13 13 (:DEFINITION VARIABLE-OR-NUMBERP))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(PHI-RESTRICTION-REMOVE-N
 (1056 11 (:DEFINITION PHI-RESTRICTION-LIST))
 (913 11 (:DEFINITION PHI-STATEMENTS-P))
 (902 11 (:DEFINITION PHI-STATEMENTS-AUX-P))
 (803 11 (:DEFINITION PHI-STATEMENT-P))
 (616 11 (:DEFINITION PHI-EXPRESSION-P))
 (330 77 (:REWRITE O-P-O-INFP-CAR))
 (242 11 (:DEFINITION PHI-L))
 (239 151 (:REWRITE DEFAULT-CDR))
 (220 220 (:TYPE-PRESCRIPTION LEN))
 (220 44 (:DEFINITION LEN))
 (198 11 (:DEFINITION PHI-A))
 (165 165 (:REWRITE DEFAULT-CAR))
 (154 154 (:TYPE-PRESCRIPTION O-P))
 (99 77 (:REWRITE O-P-DEF-O-FINP-1))
 (90 46 (:REWRITE DEFAULT-+-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 (44 44 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (44 44 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (22 22 (:TYPE-PRESCRIPTION O-FINP))
 (22 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:TYPE-PRESCRIPTION PHI-STATEMENTS-AUX-P))
 (11 11 (:TYPE-PRESCRIPTION PHI-L))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (11 11 (:DEFINITION VARIABLE-OR-NUMBERP))
 (5 5 (:REWRITE ZP-OPEN))
 )
(PHI-RESTRICTION-TAKE-N
 (960 10 (:DEFINITION PHI-RESTRICTION-LIST))
 (830 10 (:DEFINITION PHI-STATEMENTS-P))
 (820 10 (:DEFINITION PHI-STATEMENTS-AUX-P))
 (730 10 (:DEFINITION PHI-STATEMENT-P))
 (560 10 (:DEFINITION PHI-EXPRESSION-P))
 (300 70 (:REWRITE O-P-O-INFP-CAR))
 (224 143 (:REWRITE DEFAULT-CDR))
 (220 10 (:DEFINITION PHI-L))
 (200 200 (:TYPE-PRESCRIPTION LEN))
 (200 40 (:DEFINITION LEN))
 (180 10 (:DEFINITION PHI-A))
 (160 159 (:REWRITE DEFAULT-CAR))
 (140 140 (:TYPE-PRESCRIPTION O-P))
 (90 70 (:REWRITE O-P-DEF-O-FINP-1))
 (84 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (40 40 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (40 40 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 20 (:TYPE-PRESCRIPTION O-FINP))
 (20 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:TYPE-PRESCRIPTION PHI-STATEMENTS-AUX-P))
 (10 10 (:TYPE-PRESCRIPTION PHI-L))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (10 10 (:DEFINITION VARIABLE-OR-NUMBERP))
 (5 5 (:REWRITE ZP-OPEN))
 )
(PHI-RESTRICTION-CDR
 (106 1 (:DEFINITION PHI-RESTRICTION-BLOCK))
 (96 1 (:DEFINITION PHI-RESTRICTION-LIST))
 (83 1 (:DEFINITION PHI-STATEMENTS-P))
 (82 1 (:DEFINITION PHI-STATEMENTS-AUX-P))
 (73 1 (:DEFINITION PHI-STATEMENT-P))
 (56 1 (:DEFINITION PHI-EXPRESSION-P))
 (30 7 (:REWRITE O-P-O-INFP-CAR))
 (22 1 (:DEFINITION PHI-L))
 (20 20 (:TYPE-PRESCRIPTION LEN))
 (20 4 (:DEFINITION LEN))
 (18 1 (:DEFINITION PHI-A))
 (15 15 (:REWRITE DEFAULT-CAR))
 (14 14 (:TYPE-PRESCRIPTION O-P))
 (9 7 (:REWRITE O-P-DEF-O-FINP-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION O-FINP))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:TYPE-PRESCRIPTION PHI-STATEMENTS-AUX-P))
 (1 1 (:TYPE-PRESCRIPTION PHI-RESTRICTION-LIST))
 (1 1 (:TYPE-PRESCRIPTION PHI-L))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:DEFINITION VARIABLE-OR-NUMBERP))
 )
(PHI-RESTRICTION-NIL)
(BRANCH-RESTRICTION-LIST-GET-NEXT-BLOCK
 (484 128 (:REWRITE DEFAULT-CDR))
 (432 96 (:REWRITE O-P-O-INFP-CAR))
 (386 2 (:DEFINITION NEXT-TO-EXECUTE))
 (360 4 (:DEFINITION PREFIX))
 (316 4 (:DEFINITION PREFIX-BEFORE-SUBSTRING))
 (200 4 (:DEFINITION SUBSTRING))
 (192 192 (:TYPE-PRESCRIPTION O-P))
 (166 114 (:REWRITE DEFAULT-CAR))
 (160 8 (:DEFINITION SUBSEQ))
 (144 96 (:REWRITE O-P-DEF-O-FINP-1))
 (96 8 (:DEFINITION SUBSEQ-LIST))
 (84 12 (:DEFINITION LEN))
 (64 8 (:DEFINITION LENGTH))
 (52 8 (:DEFINITION TAKE))
 (48 48 (:TYPE-PRESCRIPTION O-FINP))
 (44 32 (:REWRITE DEFAULT-+-2))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (34 2 (:DEFINITION ASSOC-EQUAL))
 (32 32 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE DEFAULT-COERCE-3))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (22 22 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (22 22 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 4 (:REWRITE ZP-OPEN))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 12 (:REWRITE DEFAULT-<-1))
 (16 4 (:REWRITE DEFAULT-SYMBOL-NAME))
 (16 4 (:REWRITE <-+-NEGATIVE-0-1))
 (12 12 (:TYPE-PRESCRIPTION SUBSTRING))
 (12 12 (:REWRITE DEFAULT-<-2))
 (8 8 (:DEFINITION NTHCDR))
 (8 4 (:REWRITE UNICITY-OF-0))
 (4 4 (:DEFINITION FIX))
 )
(BRANCH-RESTRICTION-BLOCK-GET-NEXT-BLOCK
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(BRANCH-RESTRICTION-CCDFG-CDR
 (217 1 (:DEFINITION BRANCH-RESTRICTION-BLOCK))
 (207 1 (:DEFINITION BRANCH-RESTRICTION-LIST))
 (191 1 (:DEFINITION BRANCH-STATEMENT-P))
 (114 20 (:REWRITE O-P-O-INFP-CAR))
 (99 1 (:DEFINITION UNCONDITIONAL-BRANCH-STATEMENT-P))
 (78 1 (:DEFINITION CONDITIONAL-BRANCH-STATEMENT-P))
 (54 20 (:REWRITE O-P-DEF-O-FINP-1))
 (40 40 (:TYPE-PRESCRIPTION O-P))
 (38 4 (:DEFINITION LEN))
 (37 19 (:REWRITE DEFAULT-CAR))
 (34 34 (:TYPE-PRESCRIPTION O-FINP))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (10 10 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:DEFINITION VARIABLE-OR-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION BRANCH-RESTRICTION-LIST))
 )
(BRANCH-RESTRICTION-CCDFG-CAR
 (828 4 (:DEFINITION BRANCH-RESTRICTION-LIST))
 (764 4 (:DEFINITION BRANCH-STATEMENT-P))
 (454 79 (:REWRITE O-P-O-INFP-CAR))
 (399 129 (:REWRITE DEFAULT-CDR))
 (396 4 (:DEFINITION UNCONDITIONAL-BRANCH-STATEMENT-P))
 (312 4 (:DEFINITION CONDITIONAL-BRANCH-STATEMENT-P))
 (217 79 (:REWRITE O-P-DEF-O-FINP-1))
 (158 158 (:TYPE-PRESCRIPTION O-P))
 (152 16 (:DEFINITION LEN))
 (138 138 (:TYPE-PRESCRIPTION O-FINP))
 (72 72 (:TYPE-PRESCRIPTION LEN))
 (40 40 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (40 40 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (32 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (12 12 (:DEFINITION VARIABLE-OR-NUMBERP))
 (4 1 (:REWRITE BRANCH-RESTRICTION-CCDFG-CDR))
 )
(BRANCH-RESTRICTION-REMOVE-N
 (2484 12 (:DEFINITION BRANCH-RESTRICTION-LIST))
 (2292 12 (:DEFINITION BRANCH-STATEMENT-P))
 (1364 239 (:REWRITE O-P-O-INFP-CAR))
 (1205 393 (:REWRITE DEFAULT-CDR))
 (1188 12 (:DEFINITION UNCONDITIONAL-BRANCH-STATEMENT-P))
 (936 12 (:DEFINITION CONDITIONAL-BRANCH-STATEMENT-P))
 (647 239 (:REWRITE O-P-DEF-O-FINP-1))
 (478 478 (:TYPE-PRESCRIPTION O-P))
 (456 48 (:DEFINITION LEN))
 (442 226 (:REWRITE DEFAULT-CAR))
 (408 408 (:TYPE-PRESCRIPTION O-FINP))
 (216 216 (:TYPE-PRESCRIPTION LEN))
 (120 120 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (120 120 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (100 52 (:REWRITE DEFAULT-+-2))
 (52 52 (:REWRITE DEFAULT-+-1))
 (36 36 (:DEFINITION VARIABLE-OR-NUMBERP))
 (13 6 (:REWRITE ZP-OPEN))
 (4 1 (:REWRITE <-0-+-NEGATIVE-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(BRANCH-RESTRICTION-TAKE-N
 (1863 9 (:DEFINITION BRANCH-RESTRICTION-LIST))
 (1719 9 (:DEFINITION BRANCH-STATEMENT-P))
 (1026 180 (:REWRITE O-P-O-INFP-CAR))
 (914 301 (:REWRITE DEFAULT-CDR))
 (891 9 (:DEFINITION UNCONDITIONAL-BRANCH-STATEMENT-P))
 (702 9 (:DEFINITION CONDITIONAL-BRANCH-STATEMENT-P))
 (486 180 (:REWRITE O-P-DEF-O-FINP-1))
 (360 360 (:TYPE-PRESCRIPTION O-P))
 (343 180 (:REWRITE DEFAULT-CAR))
 (342 36 (:DEFINITION LEN))
 (306 306 (:TYPE-PRESCRIPTION O-FINP))
 (162 162 (:TYPE-PRESCRIPTION LEN))
 (90 90 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (90 90 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (76 40 (:REWRITE DEFAULT-+-2))
 (40 40 (:REWRITE DEFAULT-+-1))
 (27 27 (:DEFINITION VARIABLE-OR-NUMBERP))
 (20 5 (:REWRITE BRANCH-RESTRICTION-CCDFG-CDR))
 (4 4 (:REWRITE ZP-OPEN))
 )
(TAKE-N-1
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(REMOVE-N-1
 (5 5 (:REWRITE DEFAULT-CDR))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(M)
(ADD-3)
(NOT-POSP
 (16 16 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(RUN-BLOCK-SET-APPEND
 (53 47 (:REWRITE DEFAULT-CAR))
 (37 34 (:REWRITE DEFAULT-CDR))
 (16 8 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(RUN-BLOCK-SET-FROM-ITERS)
(NOT-CONSP-RUN-BLOCK-SET)
(RUN-BLOCK-SET-REVERSE-APPEND
 (3 1 (:DEFINITION BINARY-APPEND))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(RUN-BLOCK->RUN-SET
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(RUN-BLOCK-SET-CONS
 (1278 6 (:DEFINITION BRANCH-RESTRICTION-LIST))
 (1173 6 (:DEFINITION BRANCH-STATEMENT-P))
 (664 115 (:REWRITE O-P-O-INFP-CAR))
 (603 6 (:DEFINITION UNCONDITIONAL-BRANCH-STATEMENT-P))
 (602 214 (:REWRITE DEFAULT-CDR))
 (477 6 (:DEFINITION CONDITIONAL-BRANCH-STATEMENT-P))
 (319 115 (:REWRITE O-P-DEF-O-FINP-1))
 (243 135 (:REWRITE DEFAULT-CAR))
 (230 230 (:TYPE-PRESCRIPTION O-P))
 (228 24 (:DEFINITION LEN))
 (204 204 (:TYPE-PRESCRIPTION O-FINP))
 (135 135 (:TYPE-PRESCRIPTION LEN))
 (60 60 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (60 60 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (48 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 (18 18 (:DEFINITION VARIABLE-OR-NUMBERP))
 (4 1 (:REWRITE BRANCH-RESTRICTION-CCDFG-CDR))
 )
(RUN-BLOCK-SET-NIL)
(INDUCTION-HINT-RUN-BLOCK-SET-REMOVE-TAKE-N
 (15 15 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 1 (:REWRITE O<=-O-FINP-DEF))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (2 1 (:REWRITE AC-<))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(RUN-BLOCK-SET-REMOVE-TAKE-N
 (41 41 (:REWRITE DEFAULT-CDR))
 (28 13 (:REWRITE ZP-OPEN))
 (26 26 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (5 5 (:DEFINITION NOT))
 (2 1 (:REWRITE BRANCH-RESTRICTION-REMOVE-N))
 )
(TAKE-RETURN-TAKE
 (140 140 (:REWRITE DEFAULT-CDR))
 (107 102 (:REWRITE DEFAULT-+-2))
 (107 102 (:REWRITE DEFAULT-+-1))
 (107 38 (:REWRITE ZP-OPEN))
 (85 85 (:REWRITE DEFAULT-CAR))
 (34 34 (:REWRITE DEFAULT-<-2))
 (34 34 (:REWRITE DEFAULT-<-1))
 (23 23 (:DEFINITION NOT))
 (10 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 3 (:REWRITE BRANCH-RESTRICTION-REMOVE-N))
 )
(APPEND-THREE
 (1616 649 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (863 649 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (649 649 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (23 20 (:REWRITE DEFAULT-CAR))
 (19 16 (:REWRITE DEFAULT-CDR))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(RUN-BLOCK-ITERS-FROM-SET)
(K
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE M))
 )
(RUN-BLOCK-ITERS-APPEND-SUBGOAL
 (35 17 (:REWRITE ZP-OPEN))
 (27 27 (:REWRITE DEFAULT-+-2))
 (27 27 (:REWRITE DEFAULT-+-1))
 (17 11 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 )
(RUN-BLOCK-ITERS-APPEND
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(RUN-BLOCK-ITERS-ADD
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(PRE-LOOP-CDR-SAME
 (57 57 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE ZP-OPEN))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(RUN-BLOCK-ITERS-REVERSE-APPEND)
(TAKE-N-PLUS-INTERVAL
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
