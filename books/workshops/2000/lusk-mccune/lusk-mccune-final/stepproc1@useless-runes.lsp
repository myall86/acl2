(STATEMENT-MY-HPID-FORWARD
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (4 4 (:TYPE-PRESCRIPTION CONSTP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-GOTO-FORWARD
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-CALL-FORWARD
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-ASGN-FORWARD
 (21 21 (:REWRITE DEFAULT-CDR))
 (12 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE CAR-CONST-EXPR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE CDR-CONST-EXPR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-BRANCH-FORWARD
 (21 21 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE CAR-CONST-EXPR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (6 2 (:REWRITE CDR-CONST-EXPR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-SEND-FORWARD
 (23 23 (:REWRITE DEFAULT-CDR))
 (16 8 (:REWRITE CAR-CONST-EXPR))
 (12 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 4 (:REWRITE CDR-CONST-EXPR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-RECEIVE-FORWARD
 (21 21 (:REWRITE DEFAULT-CDR))
 (12 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE CAR-CONST-EXPR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE CDR-CONST-EXPR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(STATEMENT-SELECT-FORWARD
 (21 21 (:REWRITE DEFAULT-CDR))
 (12 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE CAR-CONST-EXPR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE CDR-CONST-EXPR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(INDEX-OF-NAME
 (630 2 (:DEFINITION MEMORYP))
 (606 2 (:DEFINITION EVALUATED-EXPRESSIONP))
 (548 38 (:DEFINITION MEMBER-EQUAL))
 (399 399 (:REWRITE DEFAULT-CDR))
 (381 381 (:REWRITE DEFAULT-CAR))
 (148 74 (:REWRITE DEFAULT-+-2))
 (100 10 (:DEFINITION EXPRESSIONP))
 (92 92 (:TYPE-PRESCRIPTION CONSTP))
 (74 74 (:REWRITE DEFAULT-+-1))
 (62 22 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (40 20 (:REWRITE CAR-CONST-EXPR))
 (30 10 (:REWRITE CDR-CONST-EXPR))
 (8 8 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(INDEX-OF-NAME-IS-NATURALP
 (110 110 (:REWRITE DEFAULT-CAR))
 (43 43 (:REWRITE DEFAULT-CDR))
 (25 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-+-1))
 )
(EXEC-SKIP
 (4631 14 (:DEFINITION EVALUATED-EXPRESSIONP))
 (4210 266 (:DEFINITION MEMBER-EQUAL))
 (2464 2464 (:REWRITE DEFAULT-CDR))
 (2326 2326 (:REWRITE DEFAULT-CAR))
 (2100 3 (:DEFINITION CSTATE-LISTP))
 (2061 3 (:DEFINITION CSTATEP))
 (1842 6 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1350 3 (:DEFINITION PSTATE-LISTP))
 (217 112 (:REWRITE DEFAULT-+-2))
 (112 112 (:REWRITE DEFAULT-+-1))
 (99 3 (:DEFINITION CONNECTIONP))
 (87 3 (:DEFINITION LSTATE-LISTP))
 (66 3 (:DEFINITION PROGRAM-LISTP))
 (66 3 (:DEFINITION LSTATEP))
 (51 3 (:DEFINITION PROGP))
 (48 12 (:REWRITE CSTATE-PROPERTIES))
 (36 36 (:TYPE-PRESCRIPTION CSTATEP))
 (35 21 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION CONSTP))
 (21 21 (:TYPE-PRESCRIPTION FDP))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (12 3 (:DEFINITION REQUEST-LISTP))
 (9 9 (:TYPE-PRESCRIPTION HPID-FDP))
 (9 9 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (6 6 (:TYPE-PRESCRIPTION PORTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (3 3 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-SKIP-PRESERVES-MSTATEP
 (2289 7 (:DEFINITION EVALUATED-EXPRESSIONP))
 (2071 133 (:DEFINITION MEMBER-EQUAL))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1208 1208 (:REWRITE DEFAULT-CAR))
 (1144 1144 (:REWRITE DEFAULT-CDR))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (99 51 (:REWRITE DEFAULT-+-2))
 (51 51 (:REWRITE DEFAULT-+-1))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (13 9 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 12 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(EXEC-RETURN
 (7948 24 (:DEFINITION EVALUATED-EXPRESSIONP))
 (7222 456 (:DEFINITION MEMBER-EQUAL))
 (4364 4364 (:REWRITE DEFAULT-CDR))
 (3996 3996 (:REWRITE DEFAULT-CAR))
 (3500 5 (:DEFINITION CSTATE-LISTP))
 (3435 5 (:DEFINITION CSTATEP))
 (3070 10 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (2250 5 (:DEFINITION PSTATE-LISTP))
 (372 186 (:REWRITE DEFAULT-+-2))
 (186 186 (:REWRITE DEFAULT-+-1))
 (165 5 (:DEFINITION CONNECTIONP))
 (145 5 (:DEFINITION LSTATE-LISTP))
 (110 5 (:DEFINITION PROGRAM-LISTP))
 (110 5 (:DEFINITION LSTATEP))
 (85 5 (:DEFINITION PROGP))
 (80 20 (:REWRITE CSTATE-PROPERTIES))
 (68 68 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (60 60 (:TYPE-PRESCRIPTION CSTATEP))
 (60 36 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (50 50 (:TYPE-PRESCRIPTION CONSTP))
 (35 35 (:TYPE-PRESCRIPTION FDP))
 (31 31 (:REWRITE DEFAULT-<-2))
 (31 31 (:REWRITE DEFAULT-<-1))
 (20 5 (:DEFINITION REQUEST-LISTP))
 (15 15 (:TYPE-PRESCRIPTION HPID-FDP))
 (15 15 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (12 2 (:DEFINITION UPDATE-ALIST-MEMBER))
 (10 10 (:TYPE-PRESCRIPTION PORTP))
 (5 5 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-RETURN-PRESERVES-MSTATEP
 (13822 21 (:DEFINITION EVALUATED-EXPRESSIONP))
 (13183 399 (:DEFINITION MEMBER-EQUAL))
 (8308 12 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (7313 7313 (:REWRITE DEFAULT-CDR))
 (6447 6447 (:REWRITE DEFAULT-CAR))
 (4112 4 (:DEFINITION PSTATE-LISTP))
 (1248 208 (:DEFINITION UPDATE-ALIST-MEMBER))
 (230 115 (:REWRITE DEFAULT-+-2))
 (115 115 (:REWRITE DEFAULT-+-1))
 (96 24 (:REWRITE CSTATE-PROPERTIES))
 (72 72 (:TYPE-PRESCRIPTION CSTATEP))
 (68 68 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (42 28 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (37 37 (:TYPE-PRESCRIPTION CONSTP))
 (24 6 (:DEFINITION REQUEST-LISTP))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 )
(EXEC-GOTO
 (3317 10 (:DEFINITION EVALUATED-EXPRESSIONP))
 (3012 190 (:DEFINITION MEMBER-EQUAL))
 (1828 1828 (:REWRITE DEFAULT-CDR))
 (1697 1697 (:REWRITE DEFAULT-CAR))
 (1400 2 (:DEFINITION CSTATE-LISTP))
 (1374 2 (:DEFINITION CSTATEP))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (900 2 (:DEFINITION PSTATE-LISTP))
 (148 74 (:REWRITE DEFAULT-+-2))
 (84 6 (:DEFINITION INDEX-OF-NAME))
 (74 74 (:REWRITE DEFAULT-+-1))
 (66 2 (:DEFINITION CONNECTIONP))
 (58 2 (:DEFINITION LSTATE-LISTP))
 (44 2 (:DEFINITION PROGRAM-LISTP))
 (44 2 (:DEFINITION LSTATEP))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (34 2 (:DEFINITION PROGP))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (25 15 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (21 21 (:TYPE-PRESCRIPTION CONSTP))
 (14 14 (:TYPE-PRESCRIPTION FDP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 6 (:TYPE-PRESCRIPTION HPID-FDP))
 (6 6 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (4 4 (:TYPE-PRESCRIPTION PORTP))
 (2 2 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-GOTO-PRESERVES-MSTATEP
 (2289 7 (:DEFINITION EVALUATED-EXPRESSIONP))
 (2071 133 (:DEFINITION MEMBER-EQUAL))
 (1236 1236 (:REWRITE DEFAULT-CAR))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1159 1159 (:REWRITE DEFAULT-CDR))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (96 48 (:REWRITE DEFAULT-+-2))
 (48 48 (:REWRITE DEFAULT-+-1))
 (42 3 (:DEFINITION INDEX-OF-NAME))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (13 9 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 12 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(EXEC-CALL
 (4631 14 (:DEFINITION EVALUATED-EXPRESSIONP))
 (4210 266 (:DEFINITION MEMBER-EQUAL))
 (2514 2514 (:REWRITE DEFAULT-CDR))
 (2394 2394 (:REWRITE DEFAULT-CAR))
 (2100 3 (:DEFINITION CSTATE-LISTP))
 (2061 3 (:DEFINITION CSTATEP))
 (1842 6 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1350 3 (:DEFINITION PSTATE-LISTP))
 (219 114 (:REWRITE DEFAULT-+-2))
 (114 114 (:REWRITE DEFAULT-+-1))
 (99 3 (:DEFINITION CONNECTIONP))
 (87 3 (:DEFINITION LSTATE-LISTP))
 (84 6 (:DEFINITION INDEX-OF-NAME))
 (66 3 (:DEFINITION PROGRAM-LISTP))
 (66 3 (:DEFINITION LSTATEP))
 (51 3 (:DEFINITION PROGP))
 (48 12 (:REWRITE CSTATE-PROPERTIES))
 (36 36 (:TYPE-PRESCRIPTION CSTATEP))
 (35 21 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION CONSTP))
 (21 21 (:TYPE-PRESCRIPTION FDP))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 3 (:DEFINITION REQUEST-LISTP))
 (9 9 (:TYPE-PRESCRIPTION HPID-FDP))
 (9 9 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (6 6 (:TYPE-PRESCRIPTION PORTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (3 3 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-CALL-PRESERVES-MSTATEP
 (2289 7 (:DEFINITION EVALUATED-EXPRESSIONP))
 (2071 133 (:DEFINITION MEMBER-EQUAL))
 (1240 1240 (:REWRITE DEFAULT-CAR))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1167 1167 (:REWRITE DEFAULT-CDR))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (100 52 (:REWRITE DEFAULT-+-2))
 (52 52 (:REWRITE DEFAULT-+-1))
 (42 3 (:DEFINITION INDEX-OF-NAME))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (13 9 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 12 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(EXEC-MY-HPID)
(MY-HPID-HELPER
 (34 34 (:REWRITE DEFAULT-CDR))
 (34 2 (:REWRITE CONST-CONS-EXPRESSIONP))
 (27 27 (:REWRITE DEFAULT-CAR))
 (26 2 (:REWRITE CAR-CONST-EXPR))
 (25 1 (:REWRITE CONST-LIST-EXPRESSIONP))
 (18 9 (:REWRITE DEFAULT-+-2))
 (16 2 (:DEFINITION EXPRESSIONP))
 (15 5 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (11 1 (:REWRITE CDR-CONST-EXPR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION CONSTP))
 (4 4 (:TYPE-PRESCRIPTION VARP))
 (3 3 (:TYPE-PRESCRIPTION EXPRESSIONP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(EXEC-MY-HPID
 (7884 24 (:DEFINITION EVALUATED-EXPRESSIONP))
 (7188 456 (:DEFINITION MEMBER-EQUAL))
 (4560 6 (:DEFINITION CSTATE-LISTP))
 (4446 6 (:DEFINITION CSTATEP))
 (4392 12 (:DEFINITION MEMORYP))
 (4378 4378 (:REWRITE DEFAULT-CAR))
 (4286 4286 (:REWRITE DEFAULT-CDR))
 (3684 12 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (2808 6 (:DEFINITION PSTATE-LISTP))
 (493 250 (:REWRITE DEFAULT-+-2))
 (486 6 (:DEFINITION CONNECTIONP))
 (250 250 (:REWRITE DEFAULT-+-1))
 (174 6 (:DEFINITION LSTATE-LISTP))
 (132 6 (:DEFINITION PROGRAM-LISTP))
 (132 6 (:DEFINITION LSTATEP))
 (102 6 (:DEFINITION PROGP))
 (96 24 (:REWRITE CSTATE-PROPERTIES))
 (72 72 (:TYPE-PRESCRIPTION CSTATEP))
 (66 11 (:DEFINITION ASGN))
 (60 36 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (48 48 (:TYPE-PRESCRIPTION CONSTP))
 (42 42 (:TYPE-PRESCRIPTION FDP))
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (24 6 (:DEFINITION REQUEST-LISTP))
 (18 18 (:TYPE-PRESCRIPTION HPID-FDP))
 (18 18 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (12 12 (:TYPE-PRESCRIPTION PORTP))
 (6 6 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 )
(EXEC-MY-HPID-PRESERVES-MSTATEP
 (1920 6 (:DEFINITION EVALUATED-EXPRESSIONP))
 (1746 114 (:DEFINITION MEMBER-EQUAL))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1166 1166 (:REWRITE DEFAULT-CAR))
 (1021 1021 (:REWRITE DEFAULT-CDR))
 (732 2 (:DEFINITION MEMORYP))
 (468 1 (:DEFINITION PSTATE-LISTP))
 (119 61 (:REWRITE DEFAULT-+-2))
 (61 61 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (30 5 (:DEFINITION ASGN))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (12 8 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (10 10 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(EXEC-ASGN
 (6570 20 (:DEFINITION EVALUATED-EXPRESSIONP))
 (6050 392 (:DEFINITION MEMBER-EQUAL))
 (4447 4387 (:REWRITE DEFAULT-CDR))
 (4302 4242 (:REWRITE DEFAULT-CAR))
 (3660 10 (:DEFINITION MEMORYP))
 (3500 5 (:DEFINITION CSTATE-LISTP))
 (3435 5 (:DEFINITION CSTATEP))
 (3228 12 (:DEFINITION EVL2))
 (3070 10 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (2250 5 (:DEFINITION PSTATE-LISTP))
 (480 120 (:DEFINITION RFIX))
 (441 242 (:REWRITE DEFAULT-+-2))
 (388 388 (:TYPE-PRESCRIPTION CONSTP))
 (384 96 (:DEFINITION LFIX))
 (360 360 (:TYPE-PRESCRIPTION BFIX))
 (360 120 (:REWRITE CONSTP-NOT-RATIONALP))
 (242 242 (:REWRITE DEFAULT-+-1))
 (180 180 (:TYPE-PRESCRIPTION LFIX))
 (165 5 (:DEFINITION CONNECTIONP))
 (145 5 (:DEFINITION LSTATE-LISTP))
 (110 5 (:DEFINITION PROGRAM-LISTP))
 (110 5 (:DEFINITION LSTATEP))
 (108 12 (:DEFINITION MYASSOC))
 (108 12 (:DEFINITION LENGTH))
 (85 5 (:DEFINITION PROGP))
 (84 12 (:DEFINITION ITH))
 (80 20 (:REWRITE CSTATE-PROPERTIES))
 (66 11 (:DEFINITION ASGN))
 (62 42 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (60 60 (:TYPE-PRESCRIPTION CSTATEP))
 (60 60 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE DEFAULT-<-1))
 (60 12 (:DEFINITION BINARY-APPEND))
 (36 12 (:DEFINITION NFIX))
 (35 35 (:TYPE-PRESCRIPTION FDP))
 (20 5 (:DEFINITION REQUEST-LISTP))
 (15 15 (:TYPE-PRESCRIPTION HPID-FDP))
 (15 15 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (12 12 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:TYPE-PRESCRIPTION PORTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-ASGN-PRESERVES-MSTATEP
 (1920 6 (:DEFINITION EVALUATED-EXPRESSIONP))
 (1771 119 (:DEFINITION MEMBER-EQUAL))
 (1443 1418 (:REWRITE DEFAULT-CAR))
 (1387 1362 (:REWRITE DEFAULT-CDR))
 (1345 5 (:DEFINITION EVL2))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (732 2 (:DEFINITION MEMORYP))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (200 50 (:DEFINITION RFIX))
 (160 40 (:DEFINITION LFIX))
 (155 155 (:TYPE-PRESCRIPTION CONSTP))
 (150 150 (:TYPE-PRESCRIPTION BFIX))
 (150 50 (:REWRITE CONSTP-NOT-RATIONALP))
 (140 79 (:REWRITE DEFAULT-+-2))
 (79 79 (:REWRITE DEFAULT-+-1))
 (75 75 (:TYPE-PRESCRIPTION LFIX))
 (45 5 (:DEFINITION MYASSOC))
 (45 5 (:DEFINITION LENGTH))
 (35 5 (:DEFINITION ITH))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (30 5 (:DEFINITION ASGN))
 (25 5 (:DEFINITION BINARY-APPEND))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (17 13 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (15 5 (:DEFINITION NFIX))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(BRANCH-DESTINATION)
(BRANCH-DESTINATION-CCP
 (538 2 (:DEFINITION EVL2))
 (159 149 (:REWRITE DEFAULT-CDR))
 (137 127 (:REWRITE DEFAULT-CAR))
 (80 20 (:DEFINITION RFIX))
 (64 16 (:DEFINITION LFIX))
 (60 60 (:TYPE-PRESCRIPTION BFIX))
 (60 20 (:REWRITE CONSTP-NOT-RATIONALP))
 (58 58 (:TYPE-PRESCRIPTION CONSTP))
 (34 6 (:DEFINITION LEN))
 (30 30 (:TYPE-PRESCRIPTION LFIX))
 (20 14 (:REWRITE DEFAULT-+-2))
 (18 2 (:DEFINITION MYASSOC))
 (18 2 (:DEFINITION LENGTH))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE DEFAULT-+-1))
 (14 2 (:DEFINITION ITH))
 (14 1 (:DEFINITION INDEX-OF-NAME))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION MEMBER-EQUAL))
 (10 2 (:DEFINITION BINARY-APPEND))
 (6 2 (:DEFINITION NFIX))
 (2 2 (:TYPE-PRESCRIPTION VARP))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION INDEX-OF-NAME))
 (2 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(EXEC-BRANCH
 (3317 10 (:DEFINITION EVALUATED-EXPRESSIONP))
 (3012 190 (:DEFINITION MEMBER-EQUAL))
 (1828 1828 (:REWRITE DEFAULT-CDR))
 (1655 1655 (:REWRITE DEFAULT-CAR))
 (1400 2 (:DEFINITION CSTATE-LISTP))
 (1374 2 (:DEFINITION CSTATEP))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (900 2 (:DEFINITION PSTATE-LISTP))
 (148 74 (:REWRITE DEFAULT-+-2))
 (74 74 (:REWRITE DEFAULT-+-1))
 (66 2 (:DEFINITION CONNECTIONP))
 (58 2 (:DEFINITION LSTATE-LISTP))
 (44 2 (:DEFINITION PROGRAM-LISTP))
 (44 2 (:DEFINITION LSTATEP))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (34 2 (:DEFINITION PROGP))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (25 15 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (21 21 (:TYPE-PRESCRIPTION CONSTP))
 (14 14 (:TYPE-PRESCRIPTION FDP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 6 (:TYPE-PRESCRIPTION HPID-FDP))
 (6 6 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (4 4 (:TYPE-PRESCRIPTION PORTP))
 (2 2 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 )
(EXEC-BRANCH-PRESERVES-MSTATEP
 (2289 7 (:DEFINITION EVALUATED-EXPRESSIONP))
 (2071 133 (:DEFINITION MEMBER-EQUAL))
 (1228 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (1215 1215 (:REWRITE DEFAULT-CAR))
 (1159 1159 (:REWRITE DEFAULT-CDR))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (96 48 (:REWRITE DEFAULT-+-2))
 (48 48 (:REWRITE DEFAULT-+-1))
 (34 34 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (13 9 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 12 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:DEFINITION REQUEST-LISTP))
 (6 1 (:DEFINITION UPDATE-ALIST-MEMBER))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(CSTATEP-SEND
 (5006 22 (:DEFINITION EVALUATED-EXPRESSIONP))
 (4422 40 (:REWRITE CSTATE-PROPERTIES))
 (4158 418 (:DEFINITION MEMBER-EQUAL))
 (2385 2385 (:REWRITE DEFAULT-CAR))
 (1608 1608 (:REWRITE DEFAULT-CDR))
 (476 476 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (262 131 (:REWRITE DEFAULT-+-2))
 (131 131 (:REWRITE DEFAULT-+-1))
 (36 36 (:TYPE-PRESCRIPTION VARP))
 (36 36 (:TYPE-PRESCRIPTION CONSTP))
 (22 22 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (12 4 (:DEFINITION BINARY-APPEND))
 )
(CSTATEP-RECEIVE
 (9160 36 (:DEFINITION EVALUATED-EXPRESSIONP))
 (7756 684 (:DEFINITION MEMBER-EQUAL))
 (7438 36 (:REWRITE CSTATE-PROPERTIES))
 (4049 4049 (:REWRITE DEFAULT-CAR))
 (3159 3159 (:REWRITE DEFAULT-CDR))
 (816 816 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (318 159 (:REWRITE DEFAULT-+-2))
 (159 159 (:REWRITE DEFAULT-+-1))
 (60 60 (:TYPE-PRESCRIPTION VARP))
 (60 60 (:TYPE-PRESCRIPTION CONSTP))
 (36 36 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(SENDER-CSTATE
 (478 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (470 2 (:DEFINITION EVALUATED-EXPRESSIONP))
 (412 38 (:DEFINITION MEMBER-EQUAL))
 (310 310 (:REWRITE DEFAULT-CAR))
 (143 143 (:REWRITE DEFAULT-CDR))
 (24 6 (:REWRITE CSTATE-PROPERTIES))
 (20 10 (:REWRITE DEFAULT-+-2))
 (18 18 (:TYPE-PRESCRIPTION CSTATEP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (2 2 (:TYPE-PRESCRIPTION VARP))
 (2 2 (:TYPE-PRESCRIPTION CONSTP))
 (2 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(SENDER-CSTATE-CSTATEP
 (19780 80 (:DEFINITION EVALUATED-EXPRESSIONP))
 (17160 1520 (:DEFINITION MEMBER-EQUAL))
 (11668 11668 (:REWRITE DEFAULT-CAR))
 (7010 162 (:REWRITE CSTATE-PROPERTIES))
 (5658 5658 (:REWRITE DEFAULT-CDR))
 (680 680 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (516 258 (:REWRITE DEFAULT-+-2))
 (258 258 (:REWRITE DEFAULT-+-1))
 (100 100 (:TYPE-PRESCRIPTION VARP))
 (100 100 (:TYPE-PRESCRIPTION CONSTP))
 (80 80 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(RECEIVER-CSTATE
 (478 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (470 2 (:DEFINITION EVALUATED-EXPRESSIONP))
 (412 38 (:DEFINITION MEMBER-EQUAL))
 (217 217 (:REWRITE DEFAULT-CDR))
 (45 24 (:REWRITE DEFAULT-+-2))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (24 24 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (2 2 (:TYPE-PRESCRIPTION VARP))
 (2 2 (:TYPE-PRESCRIPTION CONSTP))
 (2 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(RECEIVER-CSTATE-CSTATEP
 (19248 76 (:DEFINITION EVALUATED-EXPRESSIONP))
 (16744 1444 (:DEFINITION MEMBER-EQUAL))
 (11432 11432 (:REWRITE DEFAULT-CAR))
 (6996 154 (:REWRITE CSTATE-PROPERTIES))
 (6073 6073 (:REWRITE DEFAULT-CDR))
 (680 680 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (596 298 (:REWRITE DEFAULT-+-2))
 (298 298 (:REWRITE DEFAULT-+-1))
 (96 96 (:TYPE-PRESCRIPTION VARP))
 (96 96 (:TYPE-PRESCRIPTION CONSTP))
 (76 76 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(EXEC-SEND)
(SECOND-OF-CSTATE-IS-TRUE-LISTP
 (13522 74 (:DEFINITION EVALUATED-EXPRESSIONP))
 (10926 1406 (:DEFINITION MEMBER-EQUAL))
 (9284 78 (:REWRITE CSTATE-PROPERTIES))
 (7162 7162 (:REWRITE DEFAULT-CAR))
 (3149 3149 (:REWRITE DEFAULT-CDR))
 (1020 1020 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (778 389 (:REWRITE DEFAULT-+-2))
 (389 389 (:REWRITE DEFAULT-+-1))
 (104 104 (:TYPE-PRESCRIPTION VARP))
 (104 104 (:TYPE-PRESCRIPTION CONSTP))
 (74 74 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(CSTATE-LISTP-SENDER-FORWARD
 (13358 50 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (13062 50 (:DEFINITION EVALUATED-EXPRESSIONP))
 (11252 950 (:DEFINITION MEMBER-EQUAL))
 (8084 102 (:REWRITE CSTATE-PROPERTIES))
 (7706 7706 (:REWRITE DEFAULT-CAR))
 (3596 3596 (:REWRITE DEFAULT-CDR))
 (1274 2 (:REWRITE SECOND-OF-CSTATE-IS-TRUE-LISTP))
 (816 816 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (536 536 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (328 164 (:REWRITE DEFAULT-+-2))
 (192 192 (:TYPE-PRESCRIPTION CSTATEP))
 (164 164 (:REWRITE DEFAULT-+-1))
 (74 74 (:TYPE-PRESCRIPTION VARP))
 (74 74 (:TYPE-PRESCRIPTION CONSTP))
 (50 50 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(EXEC-SEND
 (77452 29 (:DEFINITION EVALUATED-EXPRESSIONP))
 (76610 799 (:DEFINITION MEMBER-EQUAL))
 (68104 3 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (66712 248 (:DEFINITION EVL2))
 (26583 25341 (:REWRITE DEFAULT-CDR))
 (22096 20786 (:REWRITE DEFAULT-CAR))
 (9920 2480 (:DEFINITION RFIX))
 (7936 1984 (:DEFINITION LFIX))
 (7440 7440 (:TYPE-PRESCRIPTION BFIX))
 (7440 2480 (:REWRITE CONSTP-NOT-RATIONALP))
 (3720 3720 (:TYPE-PRESCRIPTION LFIX))
 (2670 1714 (:REWRITE DEFAULT-+-2))
 (2232 248 (:DEFINITION MYASSOC))
 (2232 248 (:DEFINITION LENGTH))
 (1736 248 (:DEFINITION ITH))
 (1714 1714 (:REWRITE DEFAULT-+-1))
 (1360 288 (:DEFINITION BINARY-APPEND))
 (1144 104 (:DEFINITION SENDER-CSTATE))
 (797 797 (:REWRITE DEFAULT-<-2))
 (797 797 (:REWRITE DEFAULT-<-1))
 (744 248 (:DEFINITION NFIX))
 (355 303 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (350 350 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (248 248 (:REWRITE DEFAULT-UNARY-MINUS))
 (198 33 (:DEFINITION ASGN))
 (56 14 (:DEFINITION REQUEST-LISTP))
 (42 7 (:DEFINITION UPDATE-ALIST-MEMBER))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (40 40 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (8 4 (:REWRITE CAR-CONST-EXPR))
 (6 2 (:REWRITE CDR-CONST-EXPR))
 )
(EXEC-SEND-PRESERVES-MSTATEP
 (495842 31 (:DEFINITION EVALUATED-EXPRESSIONP))
 (494972 2246 (:DEFINITION MEMBER-EQUAL))
 (445733 1657 (:DEFINITION EVL2))
 (329233 18 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (165152 7 (:DEFINITION PSTATE-LISTP))
 (150774 141926 (:REWRITE DEFAULT-CDR))
 (130383 121236 (:REWRITE DEFAULT-CAR))
 (66280 16570 (:DEFINITION RFIX))
 (53024 13256 (:DEFINITION LFIX))
 (49710 49710 (:TYPE-PRESCRIPTION BFIX))
 (49710 16570 (:REWRITE CONSTP-NOT-RATIONALP))
 (48109 48109 (:TYPE-PRESCRIPTION CONSTP))
 (24855 24855 (:TYPE-PRESCRIPTION LFIX))
 (15457 10318 (:REWRITE DEFAULT-+-2))
 (14913 1657 (:DEFINITION MYASSOC))
 (14913 1657 (:DEFINITION LENGTH))
 (11599 1657 (:DEFINITION ITH))
 (10824 984 (:DEFINITION SENDER-CSTATE))
 (10318 10318 (:REWRITE DEFAULT-+-1))
 (8906 1864 (:DEFINITION BINARY-APPEND))
 (4998 4998 (:REWRITE DEFAULT-<-2))
 (4998 4998 (:REWRITE DEFAULT-<-1))
 (4971 1657 (:DEFINITION NFIX))
 (3720 620 (:DEFINITION UPDATE-ALIST-MEMBER))
 (1724 1700 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (1691 1691 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1657 1657 (:REWRITE DEFAULT-UNARY-MINUS))
 (1290 215 (:DEFINITION ASGN))
 (144 36 (:REWRITE CSTATE-PROPERTIES))
 (64 64 (:TYPE-PRESCRIPTION MAKE-MSTATE))
 (40 10 (:DEFINITION REQUEST-LISTP))
 )
(EVALUATED-EXPRESSIONP-CAR-INBOX
 (3620 28 (:REWRITE CSTATE-PROPERTIES))
 (1700 1700 (:REWRITE DEFAULT-CAR))
 (1204 1204 (:REWRITE DEFAULT-CDR))
 (340 340 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (294 14 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (250 125 (:REWRITE DEFAULT-+-2))
 (125 125 (:REWRITE DEFAULT-+-1))
 (14 14 (:TYPE-PRESCRIPTION CONSTP))
 (8 2 (:REWRITE SECOND-OF-CSTATE-IS-TRUE-LISTP))
 )
(EXEC-RECEIVE)
(CSTATE-CDR-INBOX
 (3338 14 (:DEFINITION EVALUATED-EXPRESSIONP))
 (3288 36 (:REWRITE CSTATE-PROPERTIES))
 (2782 266 (:DEFINITION MEMBER-EQUAL))
 (1641 1641 (:REWRITE DEFAULT-CAR))
 (1141 1141 (:REWRITE DEFAULT-CDR))
 (340 340 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (252 8 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (242 121 (:REWRITE DEFAULT-+-2))
 (121 121 (:REWRITE DEFAULT-+-1))
 (24 24 (:TYPE-PRESCRIPTION VARP))
 (24 24 (:TYPE-PRESCRIPTION CONSTP))
 (14 14 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (8 2 (:REWRITE SECOND-OF-CSTATE-IS-TRUE-LISTP))
 )
(CSTATE-LISTP-RECEIVER-FORWARD
 (13946 50 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (13062 50 (:DEFINITION EVALUATED-EXPRESSIONP))
 (11252 950 (:DEFINITION MEMBER-EQUAL))
 (8384 134 (:REWRITE CSTATE-PROPERTIES))
 (7938 7938 (:REWRITE DEFAULT-CAR))
 (4057 4057 (:REWRITE DEFAULT-CDR))
 (1282 2 (:REWRITE SECOND-OF-CSTATE-IS-TRUE-LISTP))
 (816 816 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (536 536 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (416 208 (:REWRITE DEFAULT-+-2))
 (322 322 (:TYPE-PRESCRIPTION CSTATEP))
 (294 27 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (294 27 (:REWRITE CSTATE-CDR-INBOX))
 (208 208 (:REWRITE DEFAULT-+-1))
 (74 74 (:TYPE-PRESCRIPTION VARP))
 (74 74 (:TYPE-PRESCRIPTION CONSTP))
 (50 50 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(EXEC-RECEIVE
 (207746 32 (:DEFINITION EVALUATED-EXPRESSIONP))
 (206898 1316 (:DEFINITION MEMBER-EQUAL))
 (190452 708 (:DEFINITION EVL2))
 (67570 64027 (:REWRITE DEFAULT-CDR))
 (56004 52353 (:REWRITE DEFAULT-CAR))
 (39272 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (28320 7080 (:DEFINITION RFIX))
 (22656 5664 (:DEFINITION LFIX))
 (21240 21240 (:TYPE-PRESCRIPTION BFIX))
 (21240 7080 (:REWRITE CONSTP-NOT-RATIONALP))
 (20622 20622 (:TYPE-PRESCRIPTION CONSTP))
 (10620 10620 (:TYPE-PRESCRIPTION LFIX))
 (6858 4515 (:REWRITE DEFAULT-+-2))
 (6372 708 (:DEFINITION MYASSOC))
 (6372 708 (:DEFINITION LENGTH))
 (5370 358 (:DEFINITION RECEIVER-CSTATE))
 (4956 708 (:DEFINITION ITH))
 (4515 4515 (:REWRITE DEFAULT-+-1))
 (3540 708 (:DEFINITION BINARY-APPEND))
 (2179 2179 (:REWRITE DEFAULT-<-2))
 (2179 2179 (:REWRITE DEFAULT-<-1))
 (2124 708 (:DEFINITION NFIX))
 (1146 191 (:DEFINITION ASGN))
 (844 844 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (821 767 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (708 708 (:REWRITE DEFAULT-UNARY-MINUS))
 (246 41 (:DEFINITION UPDATE-ALIST-MEMBER))
 (143 143 (:TYPE-PRESCRIPTION ASGN))
 (56 14 (:DEFINITION REQUEST-LISTP))
 )
(EXEC-RECEIVE-PRESERVES-MSTATEP
 (610773 37 (:DEFINITION EVALUATED-EXPRESSIONP))
 (609774 2726 (:DEFINITION MEMBER-EQUAL))
 (544187 2023 (:DEFINITION EVL2))
 (405877 22 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (205252 15 (:DEFINITION MEMORYP))
 (189464 178786 (:REWRITE DEFAULT-CDR))
 (160099 149122 (:REWRITE DEFAULT-CAR))
 (80920 20230 (:DEFINITION RFIX))
 (64736 16184 (:DEFINITION LFIX))
 (60690 60690 (:TYPE-PRESCRIPTION BFIX))
 (60690 20230 (:REWRITE CONSTP-NOT-RATIONALP))
 (58734 58734 (:TYPE-PRESCRIPTION CONSTP))
 (30345 30345 (:TYPE-PRESCRIPTION LFIX))
 (20640 1376 (:DEFINITION RECEIVER-CSTATE))
 (18817 12547 (:REWRITE DEFAULT-+-2))
 (18207 2023 (:DEFINITION MYASSOC))
 (18207 2023 (:DEFINITION LENGTH))
 (14161 2023 (:DEFINITION ITH))
 (12547 12547 (:REWRITE DEFAULT-+-1))
 (10115 2023 (:DEFINITION BINARY-APPEND))
 (6102 6102 (:REWRITE DEFAULT-<-2))
 (6102 6102 (:REWRITE DEFAULT-<-1))
 (6069 2023 (:DEFINITION NFIX))
 (3720 620 (:DEFINITION UPDATE-ALIST-MEMBER))
 (2550 425 (:DEFINITION ASGN))
 (2105 2075 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (2023 2023 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2023 2023 (:REWRITE DEFAULT-UNARY-MINUS))
 (176 44 (:REWRITE CSTATE-PROPERTIES))
 (64 64 (:TYPE-PRESCRIPTION MAKE-MSTATE))
 (48 12 (:DEFINITION REQUEST-LISTP))
 (44 11 (:REWRITE CSTATE-CDR-INBOX))
 )
(SELECT-ORDINARY-FDS
 (930 4 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (906 4 (:DEFINITION EVALUATED-EXPRESSIONP))
 (790 76 (:DEFINITION MEMBER-EQUAL))
 (333 333 (:REWRITE DEFAULT-CDR))
 (64 34 (:REWRITE DEFAULT-+-2))
 (41 11 (:REWRITE CSTATE-PROPERTIES))
 (36 36 (:TYPE-PRESCRIPTION CSTATEP))
 (34 34 (:REWRITE DEFAULT-+-1))
 (16 16 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (4 4 (:TYPE-PRESCRIPTION VARP))
 (4 4 (:TYPE-PRESCRIPTION CONSTP))
 (4 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (4 1 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (4 1 (:REWRITE CSTATE-CDR-INBOX))
 )
(SELECT-LISTENING-FDS
 (55 55 (:REWRITE DEFAULT-CDR))
 (46 46 (:REWRITE DEFAULT-CAR))
 (25 13 (:REWRITE DEFAULT-+-2))
 (20 1 (:DEFINITION REQUEST-LISTP))
 (13 13 (:REWRITE DEFAULT-+-1))
 )
(SELECT)
(SELECT-ORDINARY-FDS-GIVES-FD-LISTP
 (6732 26 (:DEFINITION EVALUATED-EXPRESSIONP))
 (5798 494 (:DEFINITION MEMBER-EQUAL))
 (4216 73 (:REWRITE CSTATE-PROPERTIES))
 (4180 4178 (:REWRITE DEFAULT-CAR))
 (2120 2118 (:REWRITE DEFAULT-CDR))
 (641 1 (:REWRITE SECOND-OF-CSTATE-IS-TRUE-LISTP))
 (408 408 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (272 272 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (264 132 (:REWRITE DEFAULT-+-2))
 (176 176 (:TYPE-PRESCRIPTION CSTATEP))
 (145 13 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (145 13 (:REWRITE CSTATE-CDR-INBOX))
 (132 132 (:REWRITE DEFAULT-+-1))
 (38 38 (:TYPE-PRESCRIPTION VARP))
 (38 38 (:TYPE-PRESCRIPTION CONSTP))
 (26 26 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(SELECT-LISTENING-FDS-GIVES-FD-LISTP
 (218 217 (:REWRITE DEFAULT-CDR))
 (209 208 (:REWRITE DEFAULT-CAR))
 (92 46 (:REWRITE DEFAULT-+-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 )
(FD-LISTP-APPEND
 (19 16 (:REWRITE DEFAULT-CAR))
 (18 9 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (16 13 (:REWRITE DEFAULT-CDR))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(FD-LISTP-INTERSECT
 (219 214 (:REWRITE DEFAULT-CAR))
 (160 155 (:REWRITE DEFAULT-CDR))
 )
(SELECT-GIVES-FD-LISTP
 (994 3 (:DEFINITION EVALUATED-EXPRESSIONP))
 (918 58 (:DEFINITION MEMBER-EQUAL))
 (708 1 (:DEFINITION CSTATE-LISTP))
 (695 1 (:DEFINITION CSTATEP))
 (622 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (588 588 (:REWRITE DEFAULT-CAR))
 (450 450 (:REWRITE DEFAULT-CDR))
 (450 1 (:DEFINITION PSTATE-LISTP))
 (442 1 (:DEFINITION PSTATEP))
 (400 1 (:DEFINITION MEMORYP))
 (36 18 (:REWRITE DEFAULT-+-2))
 (33 1 (:DEFINITION CONNECTIONP))
 (29 1 (:DEFINITION LSTATE-LISTP))
 (22 1 (:DEFINITION PROGRAM-LISTP))
 (22 1 (:DEFINITION LSTATEP))
 (19 1 (:DEFINITION SELECT-ORDINARY-FDS))
 (19 1 (:DEFINITION INTERSECT-EQUAL))
 (18 18 (:TYPE-PRESCRIPTION CSTATEP))
 (18 18 (:REWRITE DEFAULT-+-1))
 (17 1 (:DEFINITION PROGP))
 (16 4 (:REWRITE CSTATE-PROPERTIES))
 (15 1 (:DEFINITION SELECT-LISTENING-FDS))
 (12 12 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (11 11 (:TYPE-PRESCRIPTION HPIDP))
 (10 5 (:DEFINITION TRUE-LISTP))
 (10 1 (:DEFINITION FD-LISTP))
 (9 9 (:TYPE-PRESCRIPTION FDP))
 (8 2 (:DEFINITION CODEP))
 (7 1 (:DEFINITION XSTACKP))
 (6 6 (:TYPE-PRESCRIPTION CONSTP))
 (6 4 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (6 2 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (6 1 (:DEFINITION NATURAL-LISTP))
 (5 1 (:DEFINITION BINARY-APPEND))
 (4 4 (:TYPE-PRESCRIPTION VARP))
 (4 4 (:TYPE-PRESCRIPTION SELECT-ORDINARY-FDS))
 (4 4 (:TYPE-PRESCRIPTION LFIX))
 (4 1 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (4 1 (:REWRITE CSTATE-CDR-INBOX))
 (4 1 (:DEFINITION REQUEST-LISTP))
 (4 1 (:DEFINITION LFIX))
 (3 3 (:TYPE-PRESCRIPTION HPID-FDP))
 (3 3 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (3 3 (:TYPE-PRESCRIPTION CODEP))
 (3 1 (:DEFINITION CCP))
 (2 2 (:TYPE-PRESCRIPTION STATEMENTP))
 (2 2 (:TYPE-PRESCRIPTION SELECT-LISTENING-FDS))
 (2 2 (:TYPE-PRESCRIPTION PORTP))
 (2 2 (:TYPE-PRESCRIPTION NATURAL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION REQUEST-LISTP))
 (1 1 (:TYPE-PRESCRIPTION MEMORYP))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(SELECT-GIVES-TRUE-LISTP)
(FDP-IS-EVALUATED-EXPRESSIONP
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(FD-LISTP-IS-EVALUATED-EXPRESSIONP
 (295 295 (:REWRITE DEFAULT-CAR))
 (96 48 (:REWRITE DEFAULT-+-2))
 (66 22 (:REWRITE FDP-IS-EVALUATED-EXPRESSIONP))
 (56 56 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(SELECT-GIVES-EVALUATED-EXPRESSIONP
 (5446 13 (:DEFINITION EVALUATED-EXPRESSIONP))
 (3885 247 (:DEFINITION MEMBER-EQUAL))
 (3484 8 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (2386 2386 (:REWRITE DEFAULT-CAR))
 (2094 4 (:DEFINITION MEMORYP))
 (1784 1784 (:REWRITE DEFAULT-CDR))
 (730 91 (:DEFINITION FD-LISTP))
 (273 91 (:REWRITE FDP-IS-EVALUATED-EXPRESSIONP))
 (204 204 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (142 71 (:REWRITE DEFAULT-+-2))
 (72 72 (:TYPE-PRESCRIPTION CSTATEP))
 (71 71 (:REWRITE DEFAULT-+-1))
 (70 20 (:DEFINITION TRUE-LISTP))
 (64 16 (:REWRITE CSTATE-PROPERTIES))
 (48 8 (:DEFINITION CODEP))
 (30 4 (:DEFINITION NATURAL-LISTP))
 (25 25 (:TYPE-PRESCRIPTION VARP))
 (24 4 (:DEFINITION REQUEST-LISTP))
 (23 23 (:TYPE-PRESCRIPTION CONSTP))
 (19 15 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (16 4 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (16 4 (:REWRITE CSTATE-CDR-INBOX))
 (12 12 (:TYPE-PRESCRIPTION STATEMENTP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION SELECT))
 )
(EXEC-SELECT
 (102320 59 (:DEFINITION EVALUATED-EXPRESSIONP))
 (95268 1412 (:DEFINITION MEMBER-EQUAL))
 (78279 291 (:DEFINITION EVL2))
 (32915 31457 (:REWRITE DEFAULT-CDR))
 (30664 29098 (:REWRITE DEFAULT-CAR))
 (15072 34 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (11640 2910 (:DEFINITION RFIX))
 (9761 413 (:REWRITE FD-LISTP-IS-EVALUATED-EXPRESSIONP))
 (9312 2328 (:DEFINITION LFIX))
 (8730 8730 (:TYPE-PRESCRIPTION BFIX))
 (8730 2910 (:REWRITE CONSTP-NOT-RATIONALP))
 (8560 8560 (:TYPE-PRESCRIPTION CONSTP))
 (5988 4 (:REWRITE SELECT-GIVES-FD-LISTP))
 (4365 4365 (:TYPE-PRESCRIPTION LFIX))
 (3325 2121 (:REWRITE DEFAULT-+-2))
 (3304 413 (:DEFINITION FD-LISTP))
 (2619 291 (:DEFINITION MYASSOC))
 (2619 291 (:DEFINITION LENGTH))
 (2121 2121 (:REWRITE DEFAULT-+-1))
 (2065 2065 (:TYPE-PRESCRIPTION FD-LISTP))
 (2037 291 (:DEFINITION ITH))
 (1455 291 (:DEFINITION BINARY-APPEND))
 (1379 1379 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1239 413 (:REWRITE FDP-IS-EVALUATED-EXPRESSIONP))
 (918 153 (:DEFINITION ASGN))
 (913 913 (:REWRITE DEFAULT-<-2))
 (913 913 (:REWRITE DEFAULT-<-1))
 (873 291 (:DEFINITION NFIX))
 (395 365 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (306 306 (:TYPE-PRESCRIPTION CSTATEP))
 (291 291 (:REWRITE DEFAULT-UNARY-MINUS))
 (272 68 (:REWRITE CSTATE-PROPERTIES))
 (216 36 (:DEFINITION UPDATE-ALIST-MEMBER))
 (112 17 (:DEFINITION REQUEST-LISTP))
 (68 17 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (68 17 (:REWRITE CSTATE-CDR-INBOX))
 )
(EXEC-SELECT-PRESERVES-MSTATEP
 (113856 30 (:DEFINITION EVALUATED-EXPRESSIONP))
 (110476 924 (:DEFINITION MEMBER-EQUAL))
 (95226 354 (:DEFINITION EVL2))
 (57416 13 (:DEFINITION MEMORYP))
 (47496 16 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (36678 34826 (:REWRITE DEFAULT-CDR))
 (31792 29827 (:REWRITE DEFAULT-CAR))
 (14160 3540 (:DEFINITION RFIX))
 (11328 2832 (:DEFINITION LFIX))
 (10620 10620 (:TYPE-PRESCRIPTION BFIX))
 (10620 3540 (:REWRITE CONSTP-NOT-RATIONALP))
 (10324 10324 (:TYPE-PRESCRIPTION CONSTP))
 (5310 5310 (:TYPE-PRESCRIPTION LFIX))
 (3683 2461 (:REWRITE DEFAULT-+-2))
 (3186 354 (:DEFINITION MYASSOC))
 (3186 354 (:DEFINITION LENGTH))
 (2478 354 (:DEFINITION ITH))
 (2461 2461 (:REWRITE DEFAULT-+-1))
 (2314 210 (:REWRITE FD-LISTP-IS-EVALUATED-EXPRESSIONP))
 (1770 354 (:DEFINITION BINARY-APPEND))
 (1680 210 (:DEFINITION FD-LISTP))
 (1290 215 (:DEFINITION ASGN))
 (1088 1088 (:REWRITE DEFAULT-<-2))
 (1088 1088 (:REWRITE DEFAULT-<-1))
 (1062 354 (:DEFINITION NFIX))
 (1050 1050 (:TYPE-PRESCRIPTION FD-LISTP))
 (1038 173 (:DEFINITION UPDATE-ALIST-MEMBER))
 (630 210 (:REWRITE FDP-IS-EVALUATED-EXPRESSIONP))
 (490 490 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (420 396 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 (354 354 (:REWRITE DEFAULT-UNARY-MINUS))
 (144 144 (:TYPE-PRESCRIPTION CSTATEP))
 (128 32 (:REWRITE CSTATE-PROPERTIES))
 (61 61 (:TYPE-PRESCRIPTION ASGN))
 (36 8 (:DEFINITION REQUEST-LISTP))
 (32 8 (:REWRITE EVALUATED-EXPRESSIONP-CAR-INBOX))
 (32 8 (:REWRITE CSTATE-CDR-INBOX))
 (4 1 (:REWRITE SELECT-GIVES-FD-LISTP))
 )
