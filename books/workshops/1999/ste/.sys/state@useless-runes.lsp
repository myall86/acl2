(S-P)
(S-P-APPEND
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 )
(S-P-BUTLAST)
(S-P-CONS)
(S-P-CAR)
(S-P-CDR)
(S-P-FIRSTN)
(S-P-INITIAL-SUBLISTP-EQUAL)
(S-P-LAST)
(S-P-MAKE-LIST)
(S-P-MEMBER-EQUAL)
(S-P-MEMBERP-EQUAL)
(S-P-NTH)
(S-P-NTH-SEG)
(S-P-NTHCDR)
(S-P-PUT-NTH)
(S-P-PUT-SEG)
(S-P-REMOVE-DUPLICATES-EQUAL)
(S-P-REMOVE-EQUAL)
(S-P-REVERSE)
(S-P-SUBSEQ)
(S-P-TRUE-LISTP)
(S-P-UPDATE-NTH)
(S-P-NTH-IS-B-P
 (173 8 (:REWRITE NTH-WITH-LARGE-INDEX))
 (78 5 (:REWRITE S-P-NTH))
 (71 71 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (57 12 (:DEFINITION NFIX))
 (54 36 (:REWRITE DEFAULT-<-2))
 (49 36 (:REWRITE DEFAULT-<-1))
 (45 17 (:REWRITE BOOLEANP-IS-B-P))
 (42 23 (:REWRITE DEFAULT-+-2))
 (40 40 (:META CANCEL_PLUS-LESSP-CORRECT))
 (28 28 (:TYPE-PRESCRIPTION BOOLEANP))
 (28 21 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (23 23 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE S-P-MEMBERP-EQUAL))
 (18 18 (:REWRITE S-P-MEMBER-EQUAL))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 4 (:REWRITE <-+-NEGATIVE-0-1))
 (15 3 (:REWRITE S-P-CDR))
 (14 14 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE ZP-OPEN))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 1 (:DEFINITION TRUE-LISTP))
 )
(S-P-NTHCDR-IS-S-P)
(N-P)
(N-P-IS-BOOLEANP)
(S-LTE)
(S-LTE-IS-BOOLEANP)
(S-LTE-REFLEXIVE
 (82 26 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (44 8 (:DEFINITION TRUE-LISTP))
 (33 33 (:REWRITE DEFAULT-CAR))
 (28 28 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 18 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE S-P-MEMBERP-EQUAL))
 (17 17 (:REWRITE S-P-MEMBER-EQUAL))
 (10 2 (:REWRITE S-P-CDR))
 (4 4 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (4 4 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(S-LTE-ANTISYMMETRIC
 (3964 151 (:REWRITE B-LTE-TRANSITIVE))
 (2044 299 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (1389 263 (:DEFINITION TRUE-LISTP))
 (1064 1064 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (466 466 (:REWRITE S-P-MEMBERP-EQUAL))
 (466 466 (:REWRITE S-P-MEMBER-EQUAL))
 (397 397 (:TYPE-PRESCRIPTION BOOLEANP))
 (386 386 (:REWRITE DEFAULT-CAR))
 (377 377 (:REWRITE DEFAULT-CDR))
 (272 272 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (272 272 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (151 151 (:REWRITE X-IS-B-P))
 (151 151 (:REWRITE TOP-IS-B-P))
 (50 5 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (48 4 (:REWRITE S-P-CDR))
 (29 29 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (9 9 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 )
(S-LTE-TRANSITIVE
 (6942 1325 (:DEFINITION TRUE-LISTP))
 (5642 5642 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1763 1763 (:REWRITE DEFAULT-CDR))
 (1244 1244 (:REWRITE S-P-MEMBERP-EQUAL))
 (1244 1244 (:REWRITE S-P-MEMBER-EQUAL))
 (911 911 (:REWRITE DEFAULT-CAR))
 (563 563 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (563 563 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (552 87 (:REWRITE S-P-CDR))
 (412 412 (:REWRITE X-IS-B-P))
 (412 412 (:REWRITE TOP-IS-B-P))
 (100 10 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 )
(S-LTE-S1-NOT-X-S2-IS-TOP
 (24264 108 (:REWRITE S-LTE-TRANSITIVE))
 (10176 899 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (7188 1378 (:DEFINITION TRUE-LISTP))
 (5980 5980 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1831 1831 (:REWRITE DEFAULT-CDR))
 (1688 1688 (:REWRITE S-P-MEMBERP-EQUAL))
 (1688 1688 (:REWRITE S-P-MEMBER-EQUAL))
 (1660 84 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1180 1180 (:REWRITE DEFAULT-CAR))
 (661 661 (:REWRITE X-IS-B-P))
 (661 661 (:REWRITE TOP-IS-B-P))
 (594 594 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (594 594 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (388 201 (:REWRITE DEFAULT-+-2))
 (354 223 (:REWRITE DEFAULT-<-2))
 (288 288 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (268 61 (:DEFINITION NFIX))
 (237 223 (:REWRITE DEFAULT-<-1))
 (231 231 (:META CANCEL_PLUS-LESSP-CORRECT))
 (201 201 (:REWRITE DEFAULT-+-1))
 (180 18 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (102 102 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (102 102 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (58 58 (:REWRITE ZP-OPEN))
 (58 14 (:REWRITE S-P-CDR))
 (12 12 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 )
(S-LTE-IMPLIES-S-GET-IS-B-LTE
 (4824 44 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (4048 550 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (3736 60 (:DEFINITION N-P))
 (2865 551 (:DEFINITION TRUE-LISTP))
 (2409 2409 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2218 293 (:REWRITE S-P-CDR))
 (1338 44 (:REWRITE S-P-NTH-IS-B-P))
 (1152 216 (:DEFINITION LEN))
 (1124 1124 (:REWRITE DEFAULT-CDR))
 (1064 44 (:REWRITE S-P-NTH))
 (546 26 (:REWRITE S-LTE-TRANSITIVE))
 (483 246 (:REWRITE DEFAULT-+-2))
 (449 251 (:REWRITE DEFAULT-<-2))
 (442 34 (:DEFINITION LENGTH))
 (399 399 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (351 351 (:REWRITE S-P-MEMBERP-EQUAL))
 (351 351 (:REWRITE S-P-MEMBER-EQUAL))
 (337 251 (:REWRITE DEFAULT-<-1))
 (294 294 (:META CANCEL_PLUS-LESSP-CORRECT))
 (246 246 (:REWRITE DEFAULT-+-1))
 (241 241 (:REWRITE DEFAULT-CAR))
 (167 167 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (167 167 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (160 40 (:REWRITE <-+-NEGATIVE-0-1))
 (144 18 (:REWRITE CONSP-LEN-POSITIVE))
 (130 130 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (105 105 (:REWRITE X-IS-B-P))
 (60 60 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (34 34 (:TYPE-PRESCRIPTION LENGTH))
 (34 34 (:REWRITE DEFAULT-COERCE-2))
 (34 34 (:REWRITE DEFAULT-COERCE-1))
 (32 11 (:REWRITE ZP-OPEN))
 (12 3 (:REWRITE <-0-+-NEGATIVE-1))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(S-LTE-IMPLIES-LEN-EQUAL
 (352 12 (:REWRITE B-LTE-TRANSITIVE))
 (291 101 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (244 11 (:REWRITE S-LTE-TRANSITIVE))
 (179 48 (:REWRITE S-P-CDR))
 (145 29 (:DEFINITION TRUE-LISTP))
 (129 129 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (110 38 (:REWRITE BOOLEANP-IS-B-P))
 (76 76 (:TYPE-PRESCRIPTION BOOLEANP))
 (74 74 (:REWRITE DEFAULT-CDR))
 (60 60 (:REWRITE S-P-MEMBERP-EQUAL))
 (60 60 (:REWRITE S-P-MEMBER-EQUAL))
 (42 42 (:REWRITE DEFAULT-CAR))
 (29 29 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (29 29 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (26 26 (:TYPE-PRESCRIPTION B-LTE))
 (20 10 (:REWRITE DEFAULT-+-2))
 (17 17 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (16 14 (:REWRITE B-LTE-CASES))
 (10 10 (:REWRITE X-IS-B-P))
 (10 10 (:REWRITE TOP-IS-B-P))
 (10 10 (:REWRITE DEFAULT-+-1))
 )
(S-LTE-UPDATE-NTH
 (74172 2417 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (43836 4880 (:DEFINITION TRUE-LISTP))
 (17712 17712 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (12205 489 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (11558 8270 (:REWRITE DEFAULT-CDR))
 (10148 10148 (:REWRITE S-P-MEMBERP-EQUAL))
 (10148 10148 (:REWRITE S-P-MEMBER-EQUAL))
 (9456 686 (:REWRITE S-P-CDR))
 (8807 8807 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8807 8807 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4669 2917 (:REWRITE DEFAULT-CAR))
 (4592 4592 (:REWRITE X-IS-B-P))
 (4592 4592 (:REWRITE TOP-IS-B-P))
 (3972 341 (:REWRITE UPDATE-NTH-COLLAPSE))
 (3599 385 (:REWRITE S-P-UPDATE-NTH))
 (2476 2476 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (1506 384 (:REWRITE TRUE-LISTP-UPDATE-NTH-RW))
 (1290 258 (:DEFINITION LEN))
 (1033 654 (:REWRITE DEFAULT-+-2))
 (1011 164 (:REWRITE ZP-OPEN))
 (729 471 (:REWRITE DEFAULT-<-2))
 (729 471 (:REWRITE DEFAULT-<-1))
 (681 681 (:META CANCEL_PLUS-LESSP-CORRECT))
 (654 654 (:REWRITE DEFAULT-+-1))
 (588 147 (:REWRITE <-0-+-NEGATIVE-1))
 (363 121 (:REWRITE FOLD-CONSTS-IN-+))
 (258 258 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (252 63 (:REWRITE <-+-NEGATIVE-0-1))
 (46 46 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (36 36 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(S-MAKE
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(S-MAKE-IS-S-P
 (66 3 (:DEFINITION S-P))
 (51 13 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (36 2 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (33 11 (:REWRITE BOOLEANP-IS-B-P))
 (22 22 (:TYPE-PRESCRIPTION BOOLEANP))
 (15 3 (:REWRITE S-P-CDR))
 (15 3 (:REWRITE S-P-CAR))
 (11 11 (:REWRITE S-P-MEMBERP-EQUAL))
 (11 11 (:REWRITE S-P-MEMBER-EQUAL))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CDR-CONS))
 (1 1 (:REWRITE CAR-CONS))
 )
(S-MAKE-LEN
 (40 40 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (24 8 (:REWRITE BOOLEANP-IS-B-P))
 (16 16 (:TYPE-PRESCRIPTION BOOLEANP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (9 6 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE S-P-MEMBERP-EQUAL))
 (8 8 (:REWRITE S-P-MEMBER-EQUAL))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 4 (:REWRITE DEFAULT-CDR))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(S-MAKE-COLLAPSE-CONS
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 7 (:REWRITE DEFAULT-+-2))
 (8 2 (:REWRITE <-0-+-NEGATIVE-1))
 (8 2 (:REWRITE <-+-NEGATIVE-0-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(S-LTE-S-MAKE-X-S-LEN
 (2333 35 (:REWRITE S-LTE-TRANSITIVE))
 (2090 79 (:REWRITE B-LTE-TRANSITIVE))
 (911 75 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (435 28 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (376 70 (:DEFINITION TRUE-LISTP))
 (272 272 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (208 196 (:REWRITE DEFAULT-CDR))
 (183 183 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (183 183 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (176 176 (:REWRITE S-P-MEMBERP-EQUAL))
 (176 176 (:REWRITE S-P-MEMBER-EQUAL))
 (146 146 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (120 108 (:REWRITE DEFAULT-CAR))
 (112 24 (:REWRITE S-P-CDR))
 (99 15 (:REWRITE CONSP-LEN-POSITIVE))
 (79 79 (:REWRITE X-IS-B-P))
 (79 79 (:REWRITE TOP-IS-B-P))
 (76 26 (:REWRITE BOOLEANP-IS-B-P))
 (72 2 (:REWRITE S-P-CONS))
 (69 9 (:REWRITE LEN-MINUS-ONE))
 (65 65 (:TYPE-PRESCRIPTION S-MAKE-IS-S-P))
 (37 26 (:REWRITE DEFAULT-<-2))
 (31 26 (:REWRITE DEFAULT-<-1))
 (26 26 (:META CANCEL_PLUS-LESSP-CORRECT))
 (22 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(S-LTE-S-MAKE-X-N
 (21 1 (:DEFINITION S-MAKE))
 (20 4 (:DEFINITION LEN))
 (20 1 (:DEFINITION S-P))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 1 (:REWRITE LEN-MINUS-ONE))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 3 (:REWRITE DEFAULT-<-1))
 (5 1 (:REWRITE S-P-CDR))
 (5 1 (:REWRITE S-P-CAR))
 (4 4 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 1 (:REWRITE BOOLEANP-IS-B-P))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (1 1 (:TYPE-PRESCRIPTION B-P))
 (1 1 (:REWRITE S-P-MEMBERP-EQUAL))
 (1 1 (:REWRITE S-P-MEMBER-EQUAL))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CONSP-LEN-POSITIVE))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(S-LTE-WHEN-UPDATE-NTH-IS-B-LTE-OF-X
 (508 10 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (491 5 (:DEFINITION NTH))
 (311 20 (:DEFINITION N-P))
 (167 33 (:DEFINITION LEN))
 (161 10 (:REWRITE NTH-WITH-LARGE-INDEX))
 (126 11 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (85 85 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (75 66 (:REWRITE DEFAULT-CDR))
 (74 74 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (74 74 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (72 39 (:REWRITE DEFAULT-+-2))
 (63 4 (:REWRITE S-LTE-TRANSITIVE))
 (51 44 (:REWRITE B-LTE-CASES))
 (50 50 (:REWRITE S-P-MEMBERP-EQUAL))
 (50 50 (:REWRITE S-P-MEMBER-EQUAL))
 (43 7 (:DEFINITION NFIX))
 (42 14 (:REWRITE BOOLEANP-IS-B-P))
 (40 1 (:DEFINITION UPDATE-NTH))
 (39 39 (:REWRITE DEFAULT-+-1))
 (36 30 (:REWRITE DEFAULT-CAR))
 (35 24 (:REWRITE DEFAULT-<-2))
 (35 24 (:REWRITE DEFAULT-<-1))
 (34 12 (:REWRITE S-P-CDR))
 (30 2 (:DEFINITION S-MAKE))
 (29 29 (:META CANCEL_PLUS-LESSP-CORRECT))
 (28 28 (:REWRITE X-IS-B-P))
 (28 28 (:REWRITE TOP-IS-B-P))
 (20 20 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (14 2 (:REWRITE LEN-MINUS-ONE))
 (12 12 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CONSP-LEN-POSITIVE))
 )
(S-LUB
 (1 1 (:TYPE-PRESCRIPTION B-LUB))
 )
(S-LUB-IS-S-P
 (601 111 (:DEFINITION TRUE-LISTP))
 (469 469 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (398 28 (:REWRITE S-P-CDR))
 (188 185 (:REWRITE DEFAULT-CDR))
 (143 6 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (77 27 (:REWRITE BOOLEANP-IS-B-P))
 (76 73 (:REWRITE DEFAULT-CAR))
 (50 50 (:TYPE-PRESCRIPTION BOOLEANP))
 (33 33 (:REWRITE S-P-MEMBERP-EQUAL))
 (33 33 (:REWRITE S-P-MEMBER-EQUAL))
 (27 27 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (27 27 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 1 (:REWRITE S-P-CONS))
 )
(S-LUB-LEN
 (719 89 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (441 85 (:DEFINITION TRUE-LISTP))
 (361 361 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (158 156 (:REWRITE DEFAULT-CDR))
 (120 10 (:REWRITE S-P-CDR))
 (106 42 (:REWRITE BOOLEANP-IS-B-P))
 (73 73 (:REWRITE DEFAULT-CAR))
 (64 64 (:TYPE-PRESCRIPTION BOOLEANP))
 (63 63 (:REWRITE S-P-MEMBERP-EQUAL))
 (63 63 (:REWRITE S-P-MEMBER-EQUAL))
 (62 32 (:REWRITE DEFAULT-+-2))
 (50 5 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (35 35 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (32 32 (:REWRITE DEFAULT-+-1))
 (32 32 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (32 32 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (19 10 (:REWRITE DEFAULT-<-1))
 (18 10 (:REWRITE DEFAULT-<-2))
 (17 17 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (16 16 (:TYPE-PRESCRIPTION S-LUB))
 (10 10 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 )
(S-LUB-COMMUTES
 (465 91 (:DEFINITION TRUE-LISTP))
 (393 393 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (304 36 (:REWRITE S-P-CDR))
 (151 149 (:REWRITE DEFAULT-CDR))
 (96 32 (:REWRITE BOOLEANP-IS-B-P))
 (64 64 (:TYPE-PRESCRIPTION BOOLEANP))
 (48 46 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE S-P-MEMBERP-EQUAL))
 (44 44 (:REWRITE S-P-MEMBER-EQUAL))
 (25 25 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (25 25 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(S-LUB-S1
 (13227 2388 (:DEFINITION TRUE-LISTP))
 (8932 8932 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3778 3712 (:REWRITE DEFAULT-CDR))
 (1997 1997 (:REWRITE S-P-MEMBERP-EQUAL))
 (1997 1997 (:REWRITE S-P-MEMBER-EQUAL))
 (1702 1651 (:REWRITE DEFAULT-CAR))
 (1200 120 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (912 912 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (705 68 (:REWRITE S-P-CDR))
 (661 661 (:REWRITE X-IS-B-P))
 (661 661 (:REWRITE TOP-IS-B-P))
 (177 94 (:REWRITE DEFAULT-+-2))
 (94 94 (:REWRITE DEFAULT-+-1))
 (28 28 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(S-LUB-S2
 (12445 2239 (:DEFINITION TRUE-LISTP))
 (8357 8357 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3568 3499 (:REWRITE DEFAULT-CDR))
 (2174 2174 (:REWRITE S-P-MEMBERP-EQUAL))
 (2174 2174 (:REWRITE S-P-MEMBER-EQUAL))
 (1790 1738 (:REWRITE DEFAULT-CAR))
 (1150 115 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (973 973 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (723 68 (:REWRITE S-P-CDR))
 (677 677 (:REWRITE X-IS-B-P))
 (677 677 (:REWRITE TOP-IS-B-P))
 (185 98 (:REWRITE DEFAULT-+-2))
 (98 98 (:REWRITE DEFAULT-+-1))
 (28 28 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(NTH-S-LUB-IS-B-LUB-NTHS
 (10993 117 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (6145 514 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (3501 117 (:REWRITE NTH-WITH-LARGE-INDEX))
 (2240 224 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (2237 356 (:DEFINITION TRUE-LISTP))
 (1717 1652 (:REWRITE DEFAULT-CDR))
 (1423 703 (:REWRITE DEFAULT-+-2))
 (1365 1365 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1309 1309 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (1167 1167 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (915 490 (:REWRITE DEFAULT-<-2))
 (729 707 (:REWRITE DEFAULT-CAR))
 (708 36 (:REWRITE S-LUB-LEN))
 (703 703 (:REWRITE DEFAULT-+-1))
 (686 490 (:REWRITE DEFAULT-<-1))
 (661 118 (:DEFINITION NFIX))
 (555 555 (:META CANCEL_PLUS-LESSP-CORRECT))
 (539 539 (:TYPE-PRESCRIPTION S-LUB))
 (423 19 (:REWRITE S-P-NTH))
 (314 314 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (314 314 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (312 36 (:DEFINITION MAX))
 (280 280 (:TYPE-PRESCRIPTION BOOLEANP))
 (274 274 (:REWRITE S-P-MEMBERP-EQUAL))
 (274 274 (:REWRITE S-P-MEMBER-EQUAL))
 (268 268 (:TYPE-PRESCRIPTION B-LUB))
 (261 121 (:REWRITE S-P-CDR))
 (229 229 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (189 189 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (99 22 (:REWRITE S-P-CONS))
 (64 8 (:REWRITE CONSP-LEN-POSITIVE))
 (38 38 (:REWRITE ZP-OPEN))
 (32 32 (:REWRITE S-LUB-IS-S-P))
 (30 30 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (22 22 (:REWRITE CAR-CONS))
 (16 16 (:REWRITE DEFAULT-COERCE-2))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 )
(S-LUB-S-MAKE-X
 (236 13 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (167 20 (:REWRITE S-P-CDR))
 (135 126 (:REWRITE DEFAULT-CDR))
 (101 21 (:DEFINITION TRUE-LISTP))
 (91 91 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (87 17 (:REWRITE CONSP-LEN-POSITIVE))
 (82 11 (:REWRITE LEN-MINUS-ONE))
 (77 68 (:REWRITE DEFAULT-CAR))
 (71 1 (:REWRITE S-P-CONS))
 (60 22 (:REWRITE BOOLEANP-IS-B-P))
 (50 28 (:REWRITE DEFAULT-+-2))
 (45 33 (:REWRITE DEFAULT-<-2))
 (43 33 (:REWRITE DEFAULT-<-1))
 (41 41 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (41 41 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (38 38 (:TYPE-PRESCRIPTION BOOLEANP))
 (38 38 (:REWRITE S-P-MEMBERP-EQUAL))
 (38 38 (:REWRITE S-P-MEMBER-EQUAL))
 (33 33 (:META CANCEL_PLUS-LESSP-CORRECT))
 (28 28 (:REWRITE DEFAULT-+-1))
 (8 8 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(L-EVAL-R-LTE-AAA-1
 (1991 253 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (1846 21 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (1493 26 (:DEFINITION N-P))
 (1437 277 (:DEFINITION TRUE-LISTP))
 (1318 43 (:REWRITE B-LTE-TRANSITIVE))
 (1213 1213 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (715 119 (:REWRITE S-P-CDR))
 (530 21 (:REWRITE NTH-WITH-LARGE-INDEX))
 (491 491 (:REWRITE DEFAULT-CDR))
 (289 53 (:DEFINITION LEN))
 (288 13 (:REWRITE S-LTE-TRANSITIVE))
 (210 74 (:REWRITE BOOLEANP-IS-B-P))
 (169 169 (:REWRITE S-P-MEMBERP-EQUAL))
 (169 169 (:REWRITE S-P-MEMBER-EQUAL))
 (156 156 (:TYPE-PRESCRIPTION BOOLEANP))
 (123 76 (:REWRITE DEFAULT-<-2))
 (122 122 (:TYPE-PRESCRIPTION B-LTE))
 (122 63 (:REWRITE DEFAULT-+-2))
 (118 118 (:REWRITE DEFAULT-CAR))
 (99 99 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (99 99 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (96 21 (:DEFINITION NFIX))
 (96 12 (:REWRITE CONSP-LEN-POSITIVE))
 (80 80 (:META CANCEL_PLUS-LESSP-CORRECT))
 (80 76 (:REWRITE DEFAULT-<-1))
 (63 63 (:REWRITE DEFAULT-+-1))
 (59 51 (:REWRITE B-LTE-CASES))
 (47 47 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (40 40 (:REWRITE X-IS-B-P))
 (40 40 (:REWRITE TOP-IS-B-P))
 (26 26 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (16 16 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (16 4 (:REWRITE <-+-NEGATIVE-0-1))
 (8 8 (:REWRITE ZP-OPEN))
 )
(L-EVAL-R-LTE-AAA-2
 (991 31 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (504 30 (:DEFINITION N-P))
 (462 78 (:DEFINITION LEN))
 (363 51 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (198 102 (:REWRITE DEFAULT-+-2))
 (198 36 (:DEFINITION TRUE-LISTP))
 (170 170 (:REWRITE DEFAULT-CDR))
 (163 103 (:REWRITE DEFAULT-<-2))
 (126 126 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (115 103 (:REWRITE DEFAULT-<-1))
 (109 109 (:META CANCEL_PLUS-LESSP-CORRECT))
 (102 102 (:REWRITE DEFAULT-+-1))
 (82 14 (:REWRITE S-P-CAR))
 (60 60 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (60 6 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (55 55 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (44 44 (:REWRITE DEFAULT-CAR))
 (42 42 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (31 31 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (30 30 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (28 28 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (28 28 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (24 14 (:REWRITE BOOLEANP-IS-B-P))
 (24 6 (:REWRITE <-+-NEGATIVE-0-1))
 (16 8 (:REWRITE S-P-CDR))
 (14 14 (:REWRITE S-P-MEMBERP-EQUAL))
 (14 14 (:REWRITE S-P-MEMBER-EQUAL))
 (12 12 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (9 9 (:REWRITE ZP-OPEN))
 )
(L-EVAL-R-LTE-AAA-3
 (3534 368 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (3488 36 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (2794 48 (:DEFINITION N-P))
 (2623 503 (:DEFINITION TRUE-LISTP))
 (2175 2175 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2026 63 (:REWRITE B-LTE-TRANSITIVE))
 (1267 177 (:REWRITE S-P-CDR))
 (912 36 (:REWRITE NTH-WITH-LARGE-INDEX))
 (869 869 (:REWRITE DEFAULT-CDR))
 (528 96 (:DEFINITION LEN))
 (310 14 (:REWRITE S-LTE-TRANSITIVE))
 (276 96 (:REWRITE BOOLEANP-IS-B-P))
 (247 247 (:REWRITE S-P-MEMBERP-EQUAL))
 (247 247 (:REWRITE S-P-MEMBER-EQUAL))
 (222 114 (:REWRITE DEFAULT-+-2))
 (216 132 (:REWRITE DEFAULT-<-2))
 (192 192 (:TYPE-PRESCRIPTION B-LTE))
 (171 171 (:REWRITE DEFAULT-CAR))
 (162 36 (:DEFINITION NFIX))
 (144 18 (:REWRITE CONSP-LEN-POSITIVE))
 (138 138 (:META CANCEL_PLUS-LESSP-CORRECT))
 (138 132 (:REWRITE DEFAULT-<-1))
 (132 132 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (132 132 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (114 114 (:REWRITE DEFAULT-+-1))
 (87 75 (:REWRITE B-LTE-CASES))
 (84 84 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (60 60 (:REWRITE X-IS-B-P))
 (60 60 (:REWRITE TOP-IS-B-P))
 (48 48 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (36 36 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (24 24 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (24 6 (:REWRITE <-+-NEGATIVE-0-1))
 (11 11 (:REWRITE ZP-OPEN))
 )
(L-EVAL-R-LTE-AAA-4
 (4452 44 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (3655 401 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (3376 56 (:DEFINITION N-P))
 (2730 522 (:DEFINITION TRUE-LISTP))
 (2234 2234 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1621 202 (:REWRITE S-P-CDR))
 (1412 44 (:REWRITE B-LTE-TRANSITIVE))
 (1146 44 (:REWRITE NTH-WITH-LARGE-INDEX))
 (940 940 (:REWRITE DEFAULT-CDR))
 (662 118 (:DEFINITION LEN))
 (341 14 (:REWRITE S-LTE-TRANSITIVE))
 (301 113 (:REWRITE BOOLEANP-IS-B-P))
 (280 144 (:REWRITE DEFAULT-+-2))
 (258 158 (:REWRITE DEFAULT-<-2))
 (216 216 (:REWRITE S-P-MEMBERP-EQUAL))
 (216 216 (:REWRITE S-P-MEMBER-EQUAL))
 (200 44 (:DEFINITION NFIX))
 (182 182 (:REWRITE DEFAULT-CAR))
 (168 21 (:REWRITE CONSP-LEN-POSITIVE))
 (166 166 (:META CANCEL_PLUS-LESSP-CORRECT))
 (166 158 (:REWRITE DEFAULT-<-1))
 (144 144 (:REWRITE DEFAULT-+-1))
 (122 122 (:TYPE-PRESCRIPTION B-LTE))
 (100 100 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (98 98 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (98 98 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (60 52 (:REWRITE B-LTE-CASES))
 (56 56 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (44 44 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (40 40 (:REWRITE X-IS-B-P))
 (40 40 (:REWRITE TOP-IS-B-P))
 (32 32 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (32 8 (:REWRITE <-+-NEGATIVE-0-1))
 (13 13 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE L-EVAL-R-LTE-AAA-3))
 )
(NTH-S-LUB-7
 (6033 98 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (3608 575 (:DEFINITION TRUE-LISTP))
 (3334 178 (:DEFINITION N-P))
 (2392 350 (:DEFINITION LEN))
 (2188 2188 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1304 1220 (:REWRITE DEFAULT-CDR))
 (1012 44 (:REWRITE S-LUB-LEN))
 (987 418 (:REWRITE DEFAULT-<-2))
 (946 419 (:REWRITE DEFAULT-+-2))
 (534 418 (:REWRITE DEFAULT-<-1))
 (528 44 (:DEFINITION MAX))
 (492 492 (:REWRITE DEFAULT-CAR))
 (442 442 (:META CANCEL_PLUS-LESSP-CORRECT))
 (419 419 (:REWRITE DEFAULT-+-1))
 (352 352 (:REWRITE S-P-MEMBERP-EQUAL))
 (352 352 (:REWRITE S-P-MEMBER-EQUAL))
 (337 337 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (240 30 (:REWRITE CONSP-LEN-POSITIVE))
 (217 217 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (193 22 (:REWRITE S-P-CONS))
 (178 178 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (124 4 (:REWRITE NTH-S-LUB-IS-B-LUB-NTHS))
 (113 113 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (113 113 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (98 98 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (96 24 (:REWRITE <-+-NEGATIVE-0-1))
 (74 74 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (62 10 (:REWRITE S-P-CDR))
 (48 48 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (30 30 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE L-EVAL-R-LTE-AAA-3))
 )
(NTH-S-LUB-8
 (4184 73 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (2395 117 (:DEFINITION N-P))
 (2204 365 (:DEFINITION TRUE-LISTP))
 (1636 16 (:REWRITE NTH-S-LUB-7))
 (1476 1476 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1385 215 (:DEFINITION LEN))
 (835 799 (:REWRITE DEFAULT-CDR))
 (560 262 (:REWRITE DEFAULT-<-2))
 (558 258 (:REWRITE DEFAULT-+-2))
 (414 18 (:REWRITE S-LUB-LEN))
 (386 386 (:REWRITE DEFAULT-CAR))
 (334 262 (:REWRITE DEFAULT-<-1))
 (280 280 (:META CANCEL_PLUS-LESSP-CORRECT))
 (265 265 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (258 258 (:REWRITE DEFAULT-+-1))
 (241 241 (:REWRITE S-P-MEMBERP-EQUAL))
 (241 241 (:REWRITE S-P-MEMBER-EQUAL))
 (240 30 (:REWRITE CONSP-LEN-POSITIVE))
 (216 18 (:DEFINITION MAX))
 (174 174 (:TYPE-PRESCRIPTION BOOLEANP))
 (154 154 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (132 132 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (132 132 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (117 117 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (80 16 (:REWRITE S-P-CDR))
 (75 10 (:REWRITE S-P-CONS))
 (73 73 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (72 18 (:REWRITE <-+-NEGATIVE-0-1))
 (70 10 (:REWRITE NTH-S-LUB-IS-B-LUB-NTHS))
 (55 55 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (28 28 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (28 28 (:REWRITE ZP-OPEN))
 )
(NTH-S-LUB--9
 (6090 95 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (3713 95 (:REWRITE NTH-WITH-LARGE-INDEX))
 (3630 579 (:DEFINITION TRUE-LISTP))
 (3237 196 (:DEFINITION N-P))
 (2130 2130 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1201 1118 (:REWRITE DEFAULT-CDR))
 (1022 464 (:REWRITE DEFAULT-<-2))
 (854 47 (:REWRITE S-LUB-LEN))
 (766 337 (:REWRITE DEFAULT-+-2))
 (715 715 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (597 464 (:REWRITE DEFAULT-<-1))
 (532 47 (:DEFINITION MAX))
 (505 503 (:REWRITE DEFAULT-CAR))
 (490 490 (:META CANCEL_PLUS-LESSP-CORRECT))
 (410 83 (:DEFINITION NFIX))
 (364 364 (:REWRITE S-P-MEMBERP-EQUAL))
 (364 364 (:REWRITE S-P-MEMBER-EQUAL))
 (337 337 (:REWRITE DEFAULT-+-1))
 (223 223 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (196 196 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (192 22 (:REWRITE S-P-CONS))
 (164 4 (:REWRITE NTH-S-LUB-IS-B-LUB-NTHS))
 (117 117 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (117 117 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (104 26 (:REWRITE <-+-NEGATIVE-0-1))
 (104 13 (:REWRITE CONSP-LEN-POSITIVE))
 (95 95 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (80 20 (:REWRITE S-P-CDR))
 (69 69 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (58 22 (:REWRITE NTH-S-LUB-8))
 (58 22 (:REWRITE NTH-S-LUB-7))
 (50 50 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (40 40 (:REWRITE ZP-OPEN))
 (24 24 (:REWRITE L-EVAL-R-LTE-AAA-3))
 (6 6 (:REWRITE S-LUB-IS-S-P))
 (2 2 (:REWRITE CAR-CONS))
 )
(S-LTE-S-MAKE-IS-S-MAKE
 (788 57 (:REWRITE B-LTE-TRANSITIVE))
 (459 122 (:REWRITE B-LTE-CASES))
 (370 22 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (355 72 (:DEFINITION TRUE-LISTP))
 (336 336 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (294 276 (:REWRITE DEFAULT-CDR))
 (229 40 (:REWRITE CONSP-LEN-POSITIVE))
 (205 116 (:REWRITE DEFAULT-+-2))
 (196 164 (:REWRITE DEFAULT-CAR))
 (156 107 (:REWRITE DEFAULT-<-2))
 (137 107 (:REWRITE DEFAULT-<-1))
 (131 131 (:REWRITE S-P-MEMBERP-EQUAL))
 (131 131 (:REWRITE S-P-MEMBER-EQUAL))
 (123 123 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (123 123 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (116 116 (:REWRITE DEFAULT-+-1))
 (107 107 (:META CANCEL_PLUS-LESSP-CORRECT))
 (105 37 (:REWRITE BOOLEANP-IS-B-P))
 (95 95 (:TYPE-PRESCRIPTION BOOLEANP))
 (57 57 (:REWRITE X-IS-B-P))
 (57 57 (:REWRITE TOP-IS-B-P))
 (16 16 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(EQUAL-S-MAKE-BOTTM
 (348 20 (:REWRITE B-LTE-TRANSITIVE))
 (330 11 (:DEFINITION S-P))
 (232 46 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (220 20 (:DEFINITION B-LTE))
 (199 15 (:REWRITE S-LTE-TRANSITIVE))
 (122 8 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (121 51 (:REWRITE S-P-CAR))
 (83 21 (:REWRITE S-P-CDR))
 (60 60 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (60 12 (:DEFINITION TRUE-LISTP))
 (58 58 (:REWRITE DEFAULT-CDR))
 (52 52 (:TYPE-PRESCRIPTION B-LTE))
 (51 51 (:REWRITE S-P-MEMBERP-EQUAL))
 (51 51 (:REWRITE S-P-MEMBER-EQUAL))
 (49 49 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (49 49 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (40 40 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (39 39 (:TYPE-PRESCRIPTION B-P))
 (36 36 (:TYPE-PRESCRIPTION BOOLEANP))
 (35 35 (:REWRITE DEFAULT-CAR))
 (33 11 (:REWRITE BOOLEANP-IS-B-P))
 (32 4 (:REWRITE CONSP-LEN-POSITIVE))
 (28 24 (:REWRITE B-LTE-CASES))
 (24 13 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE X-IS-B-P))
 (20 20 (:REWRITE TOP-IS-B-P))
 (16 2 (:REWRITE LEN-MINUS-ONE))
 (13 13 (:REWRITE DEFAULT-+-1))
 (10 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION S-MAKE-IS-S-P))
 (2 2 (:REWRITE S-MAKE-IS-S-P))
 (2 2 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(EQUAL-S-MAKE-BOTTM-2
 (730 13 (:REWRITE S-LTE-S-MAKE-IS-S-MAKE))
 (608 35 (:REWRITE B-LTE-TRANSITIVE))
 (477 15 (:DEFINITION S-P))
 (389 35 (:DEFINITION B-LTE))
 (354 68 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (268 24 (:REWRITE S-LTE-TRANSITIVE))
 (194 85 (:REWRITE S-P-CAR))
 (183 12 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (124 31 (:REWRITE S-P-CDR))
 (95 95 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (95 19 (:DEFINITION TRUE-LISTP))
 (91 91 (:TYPE-PRESCRIPTION B-LTE))
 (90 90 (:REWRITE DEFAULT-CDR))
 (85 85 (:REWRITE S-P-MEMBERP-EQUAL))
 (85 85 (:REWRITE S-P-MEMBER-EQUAL))
 (83 83 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (83 83 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (62 62 (:TYPE-PRESCRIPTION B-P))
 (60 60 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (56 56 (:TYPE-PRESCRIPTION BOOLEANP))
 (53 53 (:REWRITE DEFAULT-CAR))
 (49 42 (:REWRITE B-LTE-CASES))
 (48 6 (:REWRITE CONSP-LEN-POSITIVE))
 (45 15 (:REWRITE BOOLEANP-IS-B-P))
 (39 21 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE X-IS-B-P))
 (35 35 (:REWRITE TOP-IS-B-P))
 (24 3 (:REWRITE LEN-MINUS-ONE))
 (21 21 (:REWRITE DEFAULT-+-1))
 (16 10 (:REWRITE DEFAULT-<-2))
 (14 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:TYPE-PRESCRIPTION S-MAKE-IS-S-P))
 (4 4 (:REWRITE S-MAKE-IS-S-P))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(S-LUB-SAME
 (69 25 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (33 6 (:DEFINITION TRUE-LISTP))
 (28 28 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE DEFAULT-CDR))
 (21 21 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:REWRITE S-P-MEMBERP-EQUAL))
 (16 16 (:REWRITE S-P-MEMBER-EQUAL))
 (15 15 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (15 15 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 2 (:REWRITE S-P-CDR))
 (7 7 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (4 4 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 )
(NOT-LTE-X-BOOLEAN-IF-TOP
 (228617 6039 (:REWRITE B-LTE-TRANSITIVE))
 (204670 2764 (:REWRITE EQUAL-S-MAKE-BOTTM))
 (177180 200 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (141773 441 (:REWRITE S-P-UPDATE-NTH))
 (139400 263 (:DEFINITION N-P))
 (135801 2764 (:REWRITE S-LTE-S-MAKE-IS-S-MAKE))
 (111752 2491 (:REWRITE S-LTE-TRANSITIVE))
 (96621 595 (:REWRITE UPDATE-NTH-COLLAPSE))
 (65384 11883 (:REWRITE S-P-CDR))
 (44943 9606 (:REWRITE B-LTE-CASES))
 (25472 20010 (:REWRITE DEFAULT-CDR))
 (16087 10479 (:REWRITE DEFAULT-CAR))
 (13772 13772 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13772 13772 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12186 12186 (:REWRITE S-P-MEMBERP-EQUAL))
 (12186 12186 (:REWRITE S-P-MEMBER-EQUAL))
 (6675 862 (:REWRITE LEN-MINUS-ONE))
 (6349 3441 (:REWRITE EQUAL-S-MAKE-BOTTM-2))
 (6037 6037 (:REWRITE TOP-IS-B-P))
 (5998 5998 (:REWRITE X-IS-B-P))
 (5376 889 (:REWRITE CONSP-LEN-POSITIVE))
 (3105 2581 (:REWRITE DEFAULT-<-2))
 (3062 2581 (:REWRITE DEFAULT-<-1))
 (2941 2114 (:REWRITE DEFAULT-+-2))
 (2732 2732 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2624 2624 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2114 2114 (:REWRITE DEFAULT-+-1))
 (1982 810 (:REWRITE S-MAKE-LEN))
 (1877 94 (:REWRITE LEN-UPDATE-NTH1))
 (480 480 (:REWRITE S-MAKE-IS-S-P))
 (412 412 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (288 288 (:REWRITE S-LTE-REFLEXIVE))
 (263 263 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (200 200 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (197 197 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (133 133 (:REWRITE NTH-0-CONS))
 (95 67 (:REWRITE ZP-OPEN))
 (16 4 (:REWRITE <-0-+-NEGATIVE-1))
 (11 1 (:REWRITE S-LTE-UPDATE-NTH))
 (6 6 (:REWRITE NTH-UPDATE-NTH))
 )
(S-LTE-X-WITH-UPDATE-IMPLIES-EQUAL
 (1400289 672 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (1091918 33026 (:REWRITE B-LTE-TRANSITIVE))
 (538989 6467 (:REWRITE S-LTE-S-MAKE-IS-S-MAKE))
 (111313 34611 (:REWRITE S-P-CDR))
 (99730 21763 (:DEFINITION TRUE-LISTP))
 (97579 73647 (:REWRITE DEFAULT-CDR))
 (79406 79406 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (76449 53936 (:REWRITE DEFAULT-CAR))
 (76410 76410 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (76410 76410 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (67734 67734 (:REWRITE S-P-MEMBERP-EQUAL))
 (67734 67734 (:REWRITE S-P-MEMBER-EQUAL))
 (33026 33026 (:REWRITE X-IS-B-P))
 (33026 33026 (:REWRITE TOP-IS-B-P))
 (20317 2128 (:REWRITE LEN-MINUS-ONE))
 (17307 8027 (:REWRITE EQUAL-S-MAKE-BOTTM-2))
 (11194 3102 (:REWRITE CONSP-LEN-POSITIVE))
 (8376 5299 (:REWRITE DEFAULT-+-2))
 (8166 343 (:REWRITE LEN-UPDATE-NTH1))
 (7020 5307 (:REWRITE DEFAULT-<-1))
 (6575 5307 (:REWRITE DEFAULT-<-2))
 (5471 5471 (:META CANCEL_PLUS-LESSP-CORRECT))
 (5299 5299 (:REWRITE DEFAULT-+-1))
 (5121 5121 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2389 2389 (:REWRITE S-MAKE-IS-S-P))
 (1836 1836 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (677 672 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (595 589 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (325 75 (:REWRITE ZP-OPEN))
 (144 36 (:REWRITE <-0-+-NEGATIVE-1))
 (83 35 (:REWRITE NTH-UPDATE-NTH))
 (14 14 (:REWRITE INITIAL-SUBLISTP-EQUAL-NIL))
 (14 3 (:REWRITE NOT-LTE-X-BOOLEAN-IF-TOP))
 (3 3 (:REWRITE L-EVAL-R-LTE-AAA-3))
 )
(S-LTE-SMAKE-LEN
 (869 5 (:DEFINITION S-LTE))
 (713 3 (:DEFINITION S-MAKE))
 (615 8 (:REWRITE EQUAL-S-MAKE-BOTTM))
 (525 25 (:REWRITE B-LTE-TRANSITIVE))
 (417 8 (:REWRITE S-LTE-S-MAKE-IS-S-MAKE))
 (350 16 (:REWRITE S-LTE-TRANSITIVE))
 (303 25 (:DEFINITION B-LTE))
 (201 51 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (179 51 (:REWRITE S-P-CAR))
 (120 12 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (95 45 (:REWRITE S-P-CDR))
 (65 65 (:TYPE-PRESCRIPTION B-LTE))
 (63 63 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (62 62 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (62 62 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (51 51 (:REWRITE S-P-MEMBERP-EQUAL))
 (51 51 (:REWRITE S-P-MEMBER-EQUAL))
 (46 46 (:REWRITE DEFAULT-CDR))
 (40 8 (:DEFINITION LEN))
 (35 35 (:REWRITE DEFAULT-CAR))
 (35 30 (:REWRITE B-LTE-CASES))
 (32 32 (:TYPE-PRESCRIPTION S-MAKE))
 (26 26 (:TYPE-PRESCRIPTION B-P))
 (25 25 (:REWRITE X-IS-B-P))
 (25 25 (:REWRITE TOP-IS-B-P))
 (24 8 (:REWRITE EQUAL-S-MAKE-BOTTM-2))
 (22 22 (:TYPE-PRESCRIPTION BOOLEANP))
 (21 3 (:REWRITE LEN-MINUS-ONE))
 (20 1 (:DEFINITION S-P))
 (16 8 (:REWRITE DEFAULT-+-2))
 (9 6 (:REWRITE DEFAULT-<-2))
 (9 6 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION S-MAKE-IS-S-P))
 (8 8 (:REWRITE DEFAULT-+-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE S-MAKE-IS-S-P))
 (3 3 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (3 3 (:REWRITE CONSP-LEN-POSITIVE))
 (3 1 (:REWRITE BOOLEANP-IS-B-P))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 )
(S-LTE-S-MAKE-M
 (869 5 (:DEFINITION S-LTE))
 (713 3 (:DEFINITION S-MAKE))
 (615 8 (:REWRITE EQUAL-S-MAKE-BOTTM))
 (525 25 (:REWRITE B-LTE-TRANSITIVE))
 (417 8 (:REWRITE S-LTE-S-MAKE-IS-S-MAKE))
 (350 16 (:REWRITE S-LTE-TRANSITIVE))
 (303 25 (:DEFINITION B-LTE))
 (201 51 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (179 51 (:REWRITE S-P-CAR))
 (120 12 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (95 45 (:REWRITE S-P-CDR))
 (65 65 (:TYPE-PRESCRIPTION B-LTE))
 (63 63 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (62 62 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (62 62 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (51 51 (:REWRITE S-P-MEMBERP-EQUAL))
 (51 51 (:REWRITE S-P-MEMBER-EQUAL))
 (46 46 (:REWRITE DEFAULT-CDR))
 (40 8 (:DEFINITION LEN))
 (35 35 (:REWRITE DEFAULT-CAR))
 (35 30 (:REWRITE B-LTE-CASES))
 (32 32 (:TYPE-PRESCRIPTION S-MAKE))
 (26 26 (:TYPE-PRESCRIPTION B-P))
 (25 25 (:REWRITE X-IS-B-P))
 (25 25 (:REWRITE TOP-IS-B-P))
 (24 8 (:REWRITE EQUAL-S-MAKE-BOTTM-2))
 (22 22 (:TYPE-PRESCRIPTION BOOLEANP))
 (21 3 (:REWRITE LEN-MINUS-ONE))
 (20 1 (:DEFINITION S-P))
 (16 8 (:REWRITE DEFAULT-+-2))
 (9 6 (:REWRITE DEFAULT-<-2))
 (9 6 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION S-MAKE-IS-S-P))
 (8 8 (:REWRITE DEFAULT-+-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE S-MAKE-IS-S-P))
 (3 3 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (3 3 (:REWRITE CONSP-LEN-POSITIVE))
 (3 1 (:REWRITE BOOLEANP-IS-B-P))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 )
(S-LUB-S-LTE-S-LUB
 (267212 49034 (:DEFINITION TRUE-LISTP))
 (198618 198618 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (70254 70097 (:REWRITE DEFAULT-CDR))
 (19394 19394 (:TYPE-PRESCRIPTION S-LUB))
 (16296 16296 (:REWRITE S-P-MEMBERP-EQUAL))
 (16296 16296 (:REWRITE S-P-MEMBER-EQUAL))
 (13209 13209 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13209 13209 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (7372 738 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (6999 6999 (:REWRITE X-IS-B-P))
 (5814 5747 (:REWRITE DEFAULT-CAR))
 )
(NOT-S-LTE-NOT-S-LTE-S-LUB-1
 (45959 1083 (:REWRITE B-LTE-TRANSITIVE))
 (38868 164 (:REWRITE S-LTE-TRANSITIVE))
 (20231 1061 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (15567 2820 (:DEFINITION TRUE-LISTP))
 (11048 11048 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5922 5922 (:TYPE-PRESCRIPTION B-LTE))
 (4121 4079 (:REWRITE DEFAULT-CDR))
 (2738 1062 (:REWRITE BOOLEANP-IS-B-P))
 (2701 2701 (:REWRITE S-P-MEMBERP-EQUAL))
 (2701 2701 (:REWRITE S-P-MEMBER-EQUAL))
 (2394 2394 (:TYPE-PRESCRIPTION BOOLEANP))
 (1963 1963 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1757 1467 (:REWRITE B-LTE-CASES))
 (1326 1326 (:TYPE-PRESCRIPTION S-LUB))
 (1310 1289 (:REWRITE DEFAULT-CAR))
 (1083 1083 (:REWRITE X-IS-B-P))
 (1083 1083 (:REWRITE TOP-IS-B-P))
 (742 742 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (638 62 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (332 332 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (266 66 (:REWRITE S-P-CDR))
 (59 14 (:REWRITE S-P-CONS))
 (42 22 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (22 22 (:REWRITE DEFAULT-+-1))
 (15 15 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 )
(NOT-S-LTE-NOT-S-LTE-S-LUB-2
 (45959 1083 (:REWRITE B-LTE-TRANSITIVE))
 (38820 164 (:REWRITE S-LTE-TRANSITIVE))
 (20080 1052 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (15515 2809 (:DEFINITION TRUE-LISTP))
 (11000 11000 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5922 5922 (:TYPE-PRESCRIPTION B-LTE))
 (4112 4070 (:REWRITE DEFAULT-CDR))
 (2714 1052 (:REWRITE BOOLEANP-IS-B-P))
 (2691 2691 (:REWRITE S-P-MEMBERP-EQUAL))
 (2691 2691 (:REWRITE S-P-MEMBER-EQUAL))
 (2380 2380 (:TYPE-PRESCRIPTION BOOLEANP))
 (1969 1969 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1757 1467 (:REWRITE B-LTE-CASES))
 (1326 1326 (:TYPE-PRESCRIPTION S-LUB))
 (1288 1267 (:REWRITE DEFAULT-CAR))
 (1083 1083 (:REWRITE X-IS-B-P))
 (1083 1083 (:REWRITE TOP-IS-B-P))
 (742 742 (:TYPE-PRESCRIPTION S-LUB-IS-S-P))
 (578 56 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (302 302 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (275 13 (:REWRITE NOT-S-LTE-NOT-S-LTE-S-LUB-1))
 (266 66 (:REWRITE S-P-CDR))
 (70 36 (:REWRITE DEFAULT-+-2))
 (59 14 (:REWRITE S-P-CONS))
 (49 49 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (36 36 (:REWRITE DEFAULT-+-1))
 (31 31 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 (2 2 (:REWRITE S-LTE-REFLEXIVE))
 )
