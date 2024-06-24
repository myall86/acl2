(|inv-fibs-thm-nthpred-fibs_2|)
(|inv-fibs-thm-hist-inv-hlp-fibs_2|)
(|inv-fibs-thm-hist-inv-hlp|
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(|inv-fibs-thm-hist-inv-j-fibs_2|
 (1312 34 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1024 8 (:DEFINITION |$ind_block_fibs_2|))
 (416 64 (:LINEAR LOGCAR-RANGE-LINEAR))
 (320 80 (:REWRITE LOGCAR-EVENP))
 (256 32 (:DEFINITION NFIX))
 (202 202 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (160 160 (:TYPE-PRESCRIPTION EVENP))
 (153 108 (:REWRITE DEFAULT-<-2))
 (150 150 (:REWRITE USB-LINEAR-REWRITE))
 (134 108 (:REWRITE DEFAULT-<-1))
 (133 133 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (108 108 (:META CANCEL_PLUS-LESSP-CORRECT))
 (103 85 (:REWRITE DEFAULT-+-2))
 (90 18 (:DEFINITION LEN))
 (85 85 (:REWRITE DEFAULT-+-1))
 (80 80 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (80 80 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (26 26 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (18 18 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (16 16 (:REWRITE LOGCAR-RANGE))
 (14 14 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (14 14 (:REWRITE LOGHEAD-SUBST2))
 (14 14 (:REWRITE LOGHEAD-SUBST))
 (14 14 (:META META-RULE-ERIC))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 1 (:REWRITE O-INFP->NEQ-0))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE HACK<))
 (4 4 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:TYPE-PRESCRIPTION O-FINP))
 (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
 (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 )
(|inv-fibs-thm-hist-inv-l-fibs_2|
 (159 4 (:REWRITE NTH-WITH-LARGE-INDEX))
 (128 1 (:DEFINITION |$ind_block_fibs_2|))
 (127 2 (:DEFINITION NTH))
 (75 75 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (52 8 (:LINEAR LOGCAR-RANGE-LINEAR))
 (40 10 (:REWRITE LOGCAR-EVENP))
 (38 7 (:REWRITE <-+-CONSTANT-CONSTANT))
 (32 4 (:DEFINITION NFIX))
 (30 30 (:TYPE-PRESCRIPTION LOGCAR-TYPE))
 (26 2 (:REWRITE ZP-OPEN))
 (20 20 (:TYPE-PRESCRIPTION EVENP))
 (20 20 (:REWRITE USB-LINEAR-REWRITE))
 (18 18 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (18 18 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (18 14 (:REWRITE DEFAULT-<-2))
 (18 14 (:REWRITE DEFAULT-<-1))
 (14 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (10 10 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (10 2 (:DEFINITION LEN))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE LOGCAR-RANGE))
 (2 2 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (2 2 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (1 1 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (1 1 (:REWRITE LOGHEAD-SUBST2))
 (1 1 (:REWRITE LOGHEAD-SUBST))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:META META-RULE-ERIC))
 )
(|inv-fibs-thm-ihs-help-fibs_2|
 (78 21 (:REWRITE LOGCAR-EVENP))
 (75 75 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (36 36 (:TYPE-PRESCRIPTION EVENP))
 (18 18 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (18 18 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (10 4 (:REWRITE HACK<))
 (9 3 (:REWRITE EVENP-+-ALT))
 (5 5 (:REWRITE USB-LINEAR-REWRITE))
 (5 5 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE <-+-CONSTANT-CONSTANT))
 )
(|inv-fibs-thm-hist-inv-most|
 (3569 55 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1144 80 (:REWRITE LOGHEAD-IDENTITY))
 (858 493 (:REWRITE USB-LINEAR-REWRITE))
 (579 579 (:TYPE-PRESCRIPTION LEN))
 (528 74 (:REWRITE UNSIGNED-BYTE-P-REWRITES-TO-LOWER-BOUND-WHEN-WE-KNOW-UPPER-BOUND-TWO))
 (525 7 (:REWRITE LEN-UPDATE-NTH1))
 (508 447 (:REWRITE DEFAULT-+-2))
 (485 313 (:REWRITE DEFAULT-<-2))
 (449 447 (:REWRITE DEFAULT-+-1))
 (448 90 (:REWRITE LOGHEAD-<))
 (404 404 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (395 313 (:REWRITE DEFAULT-<-1))
 (384 24 (:REWRITE LOGBITP-WHEN-I-IS-NON-POSITIVE))
 (317 13 (:DEFINITION UPDATE-NTH))
 (258 100 (:REWRITE LOGHEAD-COMPARE-TO-MAX))
 (224 12 (:LINEAR LOGHEAD-LOWER-BOUND-WHEN-TOP-BIT-ONE))
 (195 39 (:DEFINITION LEN))
 (151 151 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (151 151 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-RATIONAL-TYPE))
 (148 74 (:REWRITE USB-TIGHTEN))
 (96 96 (:TYPE-PRESCRIPTION EVENP))
 (96 24 (:REWRITE LOGCAR-EVENP))
 (94 94 (:META META-RULE-ERIC))
 (90 90 (:TYPE-PRESCRIPTION QUOTEP))
 (86 86 (:REWRITE LOGHEAD-SUBST))
 (80 80 (:REWRITE LOGHEAD-WHEN-SIZE-IS-NOT-POSITIVE))
 (80 80 (:REWRITE LOGHEAD-WHEN-SIZE-IS-NOT-AN-INTEGERP))
 (80 80 (:REWRITE LOGHEAD-WHEN-I-IS-NOT-AN-INTEGERP))
 (76 76 (:REWRITE DEFAULT-CDR))
 (75 37 (:REWRITE HACK<))
 (74 74 (:REWRITE UNSIGNED-BYTE-P-SUBTYPE))
 (74 74 (:REWRITE UNSIGNED-BYTE-P-OF-EXPT-CONST-VERSION))
 (72 72 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (72 24 (:REWRITE LOGHEAD-NOT-GREATER-THAN-BIG-CONSTANT))
 (71 68 (:REWRITE UNSIGNED-BYTE-P-REWRITES-TO-LOWER-BOUND-WHEN-WE-KNOW-UPPER-BOUND-ONE))
 (68 68 (:REWRITE UNSIGNED-BYTE-P-WHEN-N-IS-NON-POSITIVE))
 (68 21 (:DEFINITION QUOTEP))
 (55 55 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (54 54 (:TYPE-PRESCRIPTION NFIX))
 (48 48 (:TYPE-PRESCRIPTION LOGCAR-TYPE))
 (48 24 (:REWRITE LOGCAR-0-REWRITE))
 (40 40 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (37 37 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (32 16 (:REWRITE UNICITY-OF-0))
 (30 1 (:REWRITE EQUALITY-OF-LOGHEADS-REWRITE))
 (29 3 (:REWRITE LOGHEAD-EQUAL-REWRITE-CONSTANT-CASE))
 (26 26 (:REWRITE LOGBITP-SUBST-2))
 (25 25 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE LOGHEAD-<=))
 (24 24 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (21 1 (:REWRITE LOGHEAD-DIFFER-WHEN-BIT-DIFFERS-ALT))
 (21 1 (:REWRITE LOGHEAD-DIFFER-WHEN-BIT-DIFFERS))
 (20 10 (:REWRITE POSP-NATP))
 (18 3 (:REWRITE O-INFP->NEQ-0))
 (16 16 (:REWRITE FIX-DOES-NOTHING))
 (13 13 (:REWRITE LOGBITP-TOO-BIG))
 (13 13 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13 13 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12 12 (:REWRITE LOGHEAD-SUM-SUBST-HELPER-BETTER))
 (12 6 (:REWRITE LOGHEAD-+-EXPT-CONSTANT-VERSION))
 (12 1 (:REWRITE BACKCHAIN-SIGNED-BYTE-P-TO-UNSIGNED-BYTE-P))
 (11 11 (:TYPE-PRESCRIPTION NATP))
 (11 1 (:REWRITE NATP-RW))
 (7 2 (:REWRITE O-FIRST-EXPT-O-INFP))
 (6 6 (:TYPE-PRESCRIPTION O-FINP))
 (5 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (4 1 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-TWO))
 (4 1 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-ONE))
 (3 3 (:REWRITE LOGHEAD-COMPARE-HACK))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (1 1 (:REWRITE SIGNED-BYTE-P-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE SIGNED-BYTE-P-SUBTYPE))
 (1 1 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-THREE))
 (1 1 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-FOUR))
 (1 1 (:REWRITE LOGHEAD-EQUAL-WHEN-ALMOST-EQUAL))
 (1 1 (:REWRITE EQUAL-OF-LOGHEADS-OF-WHEN-ONE-IS-ONE-LONGER-ALT))
 (1 1 (:REWRITE EQUAL-OF-LOGHEADS-OF-WHEN-ONE-IS-ONE-LONGER))
 )
(|inv-fibs-thm|
 (9822 57 (:REWRITE NTH-WITH-LARGE-INDEX))
 (5851 34 (:REWRITE EQUAL-1-HACK))
 (3737 67 (:LINEAR LOGHEAD-LOWER-BOUND-WHEN-TOP-BIT-ONE))
 (3572 63 (:REWRITE LOGBITP-OF-ONE-LESS))
 (3538 211 (:REWRITE LOGBITP-WHEN-I-IS-NON-POSITIVE))
 (1988 68 (:REWRITE LOGBITP-+-SIMPLE))
 (1505 67 (:LINEAR LOGHEAD-LEQ))
 (1349 191 (:REWRITE LOGHEAD-OF-SUM-WITH-CONSTANT))
 (1286 67 (:LINEAR LOGHEAD-UPPER-BOUND))
 (1286 67 (:LINEAR LOGHEAD-NONNEGATIVE-LINEAR))
 (1283 166 (:REWRITE LOGHEAD-<))
 (1156 120 (:REWRITE INTEGERP-<-HACK))
 (1058 239 (:REWRITE LOGCAR-EVENP))
 (1044 1044 (:TYPE-PRESCRIPTION EVENP))
 (824 34 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-TWO))
 (824 34 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-ONE))
 (683 683 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (676 13 (:REWRITE LEN-UPDATE-NTH1))
 (674 411 (:REWRITE DEFAULT-<-2))
 (627 313 (:REWRITE HACK<))
 (597 597 (:REWRITE USB-LINEAR-REWRITE))
 (567 191 (:REWRITE LOGHEAD-+-EXPT-CONSTANT-VERSION))
 (550 367 (:REWRITE LOGHEAD-WHEN-I-IS-NOT-AN-INTEGERP))
 (507 507 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (507 507 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-RATIONAL-TYPE))
 (491 411 (:REWRITE DEFAULT-<-1))
 (484 484 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (444 444 (:TYPE-PRESCRIPTION LOGCAR-TYPE))
 (410 205 (:REWRITE LOGCAR-0-REWRITE))
 (403 166 (:REWRITE LOGHEAD-COMPARE-TO-MAX))
 (370 370 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (370 370 (:REWRITE LOGHEAD-SUBST2))
 (370 370 (:REWRITE LOGHEAD-SUBST))
 (370 370 (:META META-RULE-ERIC))
 (367 367 (:REWRITE LOGHEAD-WHEN-SIZE-IS-NOT-AN-INTEGERP))
 (315 5 (:REWRITE EQUALITY-OF-LOGHEADS-REWRITE))
 (313 313 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (310 5 (:REWRITE LOGHEAD-DIFFER-WHEN-BIT-DIFFERS))
 (306 34 (:REWRITE LOGCAR-+-ALT))
 (297 57 (:DEFINITION LEN))
 (277 207 (:REWRITE DEFAULT-+-2))
 (274 274 (:REWRITE LOGBITP-SUBST-2))
 (274 274 (:REWRITE LOGBITP-SUBST))
 (244 244 (:TYPE-PRESCRIPTION LOGHEAD-TYPE))
 (207 207 (:REWRITE DEFAULT-+-1))
 (205 205 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (191 191 (:REWRITE LOGHEAD-SUM-SUBST-HELPER-BETTER))
 (188 188 (:REWRITE LOGHEAD-SUM-SUBST-HELPER))
 (188 188 (:REWRITE LOGHEAD-SUM-SUBST-ALT))
 (188 188 (:REWRITE LOGHEAD-SUM-SUBST))
 (188 188 (:REWRITE LOGHEAD-+-REDUCE))
 (170 34 (:REWRITE EVENP-+-ALT))
 (148 5 (:REWRITE UNSIGNED-BYTE-P-OF-ONE-LESS-THAN-X))
 (144 144 (:REWRITE LOGBITP-TOO-BIG))
 (139 139 (:TYPE-PRESCRIPTION QUOTEP))
 (138 65 (:REWRITE O-INFP->NEQ-0))
 (108 108 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (108 108 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (105 5 (:REWRITE LOGHEAD-DIFFER-WHEN-BIT-DIFFERS-ALT))
 (102 102 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (102 34 (:REWRITE SIMPLIFY-BIT-FUNCTIONS))
 (98 98 (:REWRITE LOGHEAD-COMPARE-HACK))
 (98 28 (:DEFINITION QUOTEP))
 (69 69 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (69 6 (:REWRITE UNSIGNED-BYTE-P-REWRITES-TO-LOWER-BOUND-WHEN-WE-KNOW-UPPER-BOUND-ONE))
 (68 68 (:REWRITE LOGBITP-+-USB-V1))
 (68 34 (:REWRITE BFIX-BITP))
 (57 57 (:REWRITE DEFAULT-CDR))
 (38 38 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (37 37 (:REWRITE MOVE-NEGATED-TERM-TO-OTHER-SIDE-OF-<-TERM-1-ON-RHS))
 (34 34 (:REWRITE SIGNED-BYTE-P-UNSIGNED-BYTE-P))
 (34 34 (:REWRITE SIGNED-BYTE-P-SUBTYPE))
 (34 34 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-THREE))
 (34 34 (:REWRITE SIGNED-BYTE-P-FROM-BOUNDS-FREE-FOUR))
 (34 34 (:REWRITE LOGBITP-+-USB-V4))
 (34 34 (:REWRITE LOGBITP-+-USB-V2))
 (34 34 (:REWRITE LOGBITP-+-SIMPLE2))
 (34 34 (:REWRITE BACKCHAIN-SIGNED-BYTE-P-TO-UNSIGNED-BYTE-P))
 (30 15 (:REWRITE USB-TIGHTEN))
 (30 10 (:REWRITE UNSIGNED-BYTE-P-REWRITES-TO-LOWER-BOUND-WHEN-WE-KNOW-UPPER-BOUND-TWO))
 (27 27 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (21 21 (:REWRITE LOGHEAD-COMPARE-HACK-2))
 (17 17 (:REWRITE LOGBITP-+-USB-V3))
 (12 12 (:TYPE-PRESCRIPTION |$itr_loop_iter_fibs_3|))
 (10 10 (:REWRITE UNSIGNED-BYTE-P-SUBTYPE))
 (10 10 (:REWRITE UNSIGNED-BYTE-P-OF-EXPT-CONST-VERSION))
 (10 5 (:REWRITE UNSIGNED-BYTE-P-OF-SUM-WITH-CONSTANT))
 (6 6 (:REWRITE UNSIGNED-BYTE-P-WHEN-N-IS-NON-POSITIVE))
 (6 6 (:REWRITE NATP-RW))
 (6 6 (:REWRITE LOGBITP-WHEN-J-IS-NOT-AN-INTEGERP))
 (6 6 (:REWRITE LOGBITP-WHEN-I-IS-NOT-AN-INTEGERP))
 (5 5 (:REWRITE UNSIGNED-BYTE-P-PLUS-LIMIT))
 (5 5 (:REWRITE LOGHEAD-EQUAL-WHEN-ALMOST-EQUAL))
 (5 5 (:REWRITE LOGHEAD-+-CANCEL-0-ALT))
 (5 5 (:REWRITE EQUAL-OF-LOGHEADS-OF-WHEN-ONE-IS-ONE-LONGER-ALT))
 (5 5 (:REWRITE EQUAL-OF-LOGHEADS-OF-WHEN-ONE-IS-ONE-LONGER))
 (4 1 (:REWRITE O-FIRST-EXPT-O-INFP))
 (3 3 (:TYPE-PRESCRIPTION O-FINP))
 (3 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (1 1 (:REWRITE ZP-OPEN))
 )
(|inv-fibs-thmfibs_2-inst-thm|
 (1549 16 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1182 8 (:DEFINITION NTH))
 (552 36 (:REWRITE LOGBITP-WHEN-I-IS-NON-POSITIVE))
 (366 18 (:LINEAR LOGHEAD-UPPER-BOUND-WHEN-TOP-BIT-ONE))
 (348 18 (:LINEAR LOGHEAD-LOWER-BOUND-WHEN-TOP-BIT-ONE))
 (210 16 (:DEFINITION NFIX))
 (166 8 (:REWRITE ZP-OPEN))
 (144 36 (:REWRITE LOGCAR-EVENP))
 (133 18 (:LINEAR LOGHEAD-UPPER-BOUND))
 (132 18 (:LINEAR LOGHEAD-NONNEGATIVE-LINEAR))
 (120 120 (:TYPE-PRESCRIPTION EVENP))
 (96 36 (:REWRITE LOGCAR-0-REWRITE))
 (88 30 (:REWRITE LOGHEAD-<))
 (84 84 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (83 83 (:REWRITE USB-LINEAR-REWRITE))
 (82 8 (:REWRITE |inv-fibs-thm-hist-inv-l-fibs_2|))
 (77 41 (:REWRITE HACK<))
 (72 72 (:TYPE-PRESCRIPTION LOGCAR-TYPE))
 (71 71 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (69 53 (:REWRITE DEFAULT-<-2))
 (69 53 (:REWRITE DEFAULT-<-1))
 (58 30 (:REWRITE LOGHEAD-COMPARE-TO-MAX))
 (58 18 (:LINEAR LOGHEAD-LEQ))
 (53 53 (:REWRITE LOGHEAD-WHEN-SIZE-IS-NOT-AN-INTEGERP))
 (53 53 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (53 53 (:REWRITE LOGHEAD-SUBST2))
 (53 53 (:REWRITE LOGHEAD-SUBST))
 (53 53 (:META META-RULE-ERIC))
 (53 53 (:META CANCEL_PLUS-LESSP-CORRECT))
 (48 48 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (41 41 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (38 8 (:REWRITE LOGHEAD-<=))
 (36 36 (:TYPE-PRESCRIPTION LOGBITP))
 (36 36 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (36 36 (:REWRITE LOGBITP-SUBST-2))
 (36 36 (:REWRITE LOGBITP-SUBST))
 (34 30 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-+-1))
 (24 24 (:TYPE-PRESCRIPTION QUOTEP))
 (24 8 (:REWRITE LOGHEAD-NOT-GREATER-THAN-BIG-CONSTANT))
 (24 4 (:DEFINITION LEN))
 (18 18 (:REWRITE LOGBITP-TOO-BIG))
 (18 3 (:REWRITE O-INFP->NEQ-0))
 (12 12 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (12 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (10 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:TYPE-PRESCRIPTION O-FINP))
 (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (8 8 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-RATIONAL-TYPE))
 (8 8 (:TYPE-PRESCRIPTION |$itr_loop_iter_fibs_3|))
 (8 8 (:REWRITE LOGHEAD-NONNEGATIVE-REWRITE))
 (6 6 (:REWRITE NATP-RW))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION EXPT2-TYPE))
 (4 4 (:TYPE-PRESCRIPTION EXPT2$INLINE))
 (4 2 (:REWRITE POSP-NATP))
 (4 2 (:DEFINITION QUOTEP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DUMB))
 )
(|inv-fibs-thmfibs_2-inst--alt-thm|
 (160 2 (:DEFINITION NTH))
 (145 4 (:REWRITE NTH-WITH-LARGE-INDEX))
 (55 3 (:DEFINITION NFIX))
 (50 2 (:REWRITE ZP-OPEN))
 (34 4 (:REWRITE LOGHEAD-<))
 (34 4 (:REWRITE <-+-CONSTANT-CONSTANT))
 (21 13 (:REWRITE DEFAULT-<-2))
 (20 20 (:TYPE-PRESCRIPTION BITP-LOGHEAD-1))
 (20 13 (:REWRITE DEFAULT-<-1))
 (18 2 (:REWRITE LOGHEAD-<=))
 (17 3 (:DEFINITION LEN))
 (16 16 (:REWRITE USB-LINEAR-REWRITE))
 (15 15 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (13 13 (:META CANCEL_PLUS-LESSP-CORRECT))
 (11 11 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 4 (:REWRITE LOGHEAD-COMPARE-TO-MAX))
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (8 5 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION |itr_iter_fibs_3|))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE LOGHEAD-NOT-GREATER-THAN-BIG-CONSTANT))
 (6 2 (:DEFINITION NOT))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION QUOTEP))
 (4 4 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (2 2 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-RATIONAL-TYPE))
 (2 2 (:REWRITE LOGHEAD-WHEN-SIZE-IS-NOT-AN-INTEGERP))
 (2 2 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (2 2 (:REWRITE LOGHEAD-WHEN-I-IS-NOT-AN-INTEGERP))
 (2 2 (:REWRITE LOGHEAD-SUBST2))
 (2 2 (:REWRITE LOGHEAD-SUBST))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:META META-RULE-ERIC))
 (2 1 (:DEFINITION QUOTEP))
 (1 1 (:REWRITE LOGHEAD-NONNEGATIVE-REWRITE))
 )
(|fibs-thm|
 (380 16 (:REWRITE NTH-WITH-LARGE-INDEX))
 (105 15 (:DEFINITION LEN))
 (44 29 (:REWRITE DEFAULT-<-2))
 (38 29 (:REWRITE DEFAULT-<-1))
 (38 8 (:DEFINITION NFIX))
 (36 36 (:REWRITE USB-LINEAR-REWRITE))
 (30 30 (:TYPE-PRESCRIPTION |itr_iter_fibs_3|))
 (30 15 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (29 29 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (29 29 (:META CANCEL_PLUS-LESSP-CORRECT))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 15 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (13 11 (:REWRITE HACK<))
 (11 11 (:REWRITE EQUAL-CONSTANT-FALSE-FROM-USB))
 (10 10 (:REWRITE EVENP-WHEN-NOT-INTEGERP))
 (9 9 (:REWRITE LOGCAR-WHEN-I-IS-NOT-AN-INTEGERP))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7 7 (:TYPE-PRESCRIPTION NAT-REP))
 (7 7 (:REWRITE LOGCAR-RANGE))
 (6 1 (:REWRITE O-INFP->NEQ-0))
 (5 5 (:REWRITE NATP-RW))
 (3 3 (:TYPE-PRESCRIPTION O-FINP))
 (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
 (2 2 (:REWRITE LOGHEAD-WHEN-MOSTLY-0))
 (2 2 (:REWRITE LOGHEAD-SUBST2))
 (2 2 (:REWRITE LOGHEAD-SUBST))
 (2 2 (:META META-RULE-ERIC))
 (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (1 1 (:REWRITE LOGBITP-TEST-OF-TOP-BIT-ALT))
 (1 1 (:REWRITE EQUAL-1-HACK))
 )
