(T-P
 (865 4 (:DEFINITION S-LTE))
 (722 11 (:REWRITE S-LTE-TRANSITIVE))
 (700 58 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (609 1 (:DEFINITION C-EVAL))
 (598 20 (:DEFINITION S-P))
 (562 1 (:DEFINITION E-EVAL))
 (404 20 (:REWRITE B-LTE-TRANSITIVE))
 (359 63 (:REWRITE S-P-CAR))
 (350 350 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (350 70 (:DEFINITION TRUE-LISTP))
 (304 6 (:DEFINITION N-P))
 (288 2 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (244 20 (:DEFINITION B-LTE))
 (201 1 (:DEFINITION C-P))
 (193 193 (:REWRITE DEFAULT-CDR))
 (184 1 (:DEFINITION E-P))
 (166 1 (:DEFINITION NTH))
 (158 73 (:REWRITE DEFAULT-+-2))
 (128 12 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (103 28 (:REWRITE S-P-CDR))
 (98 73 (:REWRITE DEFAULT-+-1))
 (86 86 (:REWRITE DEFAULT-CAR))
 (72 12 (:DEFINITION INTEGER-ABS))
 (70 14 (:DEFINITION LEN))
 (63 63 (:REWRITE S-P-MEMBERP-EQUAL))
 (63 63 (:REWRITE S-P-MEMBER-EQUAL))
 (61 61 (:TYPE-PRESCRIPTION INITIAL-SUBLISTP-EQUAL))
 (61 61 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (61 61 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (58 58 (:REWRITE R-P-MEMBERP-EQUAL))
 (58 58 (:REWRITE R-P-MEMBER-EQUAL))
 (52 52 (:TYPE-PRESCRIPTION B-LTE))
 (48 12 (:REWRITE COMMUTATIVITY-OF-+))
 (48 6 (:DEFINITION LENGTH))
 (47 2 (:REWRITE NTH-WITH-LARGE-INDEX))
 (45 9 (:REWRITE R-P-CDR))
 (41 5 (:REWRITE C-P-CAR))
 (36 36 (:TYPE-PRESCRIPTION BOOLEANP))
 (33 33 (:TYPE-PRESCRIPTION B-P))
 (31 26 (:REWRITE DEFAULT-<-2))
 (29 26 (:REWRITE DEFAULT-<-1))
 (29 11 (:REWRITE BOOLEANP-IS-B-P))
 (28 24 (:REWRITE B-LTE-CASES))
 (25 5 (:REWRITE C-P-CDR))
 (23 23 (:REWRITE R-NMP-LTE-0))
 (20 20 (:REWRITE X-IS-B-P))
 (20 20 (:REWRITE TOP-IS-B-P))
 (15 15 (:REWRITE R-P-INITIAL-SUBLISTP-EQUAL))
 (14 14 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (14 12 (:REWRITE C-P-INITIAL-SUBLISTP-EQUAL))
 (14 2 (:DEFINITION NFIX))
 (13 1 (:DEFINITION B-AND))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 6 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (6 6 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (6 1 (:REWRITE ZP-OPEN))
 (5 5 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (5 5 (:REWRITE C-P-MEMBERP-EQUAL))
 (5 5 (:REWRITE C-P-MEMBER-EQUAL))
 (5 1 (:REWRITE <-+-NEGATIVE-0-1))
 (3 3 (:REWRITE E-EVAL-IS-B-P))
 (3 1 (:REWRITE DROP-NOT))
 (3 1 (:REWRITE DROP-AND))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (2 2 (:TYPE-PRESCRIPTION E-P-IS-BOOLEANP))
 (2 2 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (2 1 (:DEFINITION B-NOT))
 (1 1 (:REWRITE L-EVAL-R-LTE-AAA-4))
 (1 1 (:REWRITE INITIAL-SUBLISTP-EQUAL-REFLEXIVE))
 )
(T-P-IS-BOOLEANP)
(SINGLE-STATE-RUN-IS-TRAJECTORY
 (2830 6 (:DEFINITION C-EVAL))
 (2598 6 (:DEFINITION E-EVAL))
 (2296 266 (:REWRITE S-P-INITIAL-SUBLISTP-EQUAL))
 (2040 42 (:REWRITE S-LTE-TRANSITIVE))
 (1414 70 (:REWRITE B-LTE-TRANSITIVE))
 (1238 28 (:DEFINITION N-P))
 (1130 228 (:DEFINITION TRUE-LISTP))
 (1120 12 (:REWRITE S-LTE-S1-NOT-X-S2-IS-TOP))
 (1116 1116 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1038 6 (:DEFINITION C-P))
 (936 6 (:DEFINITION E-P))
 (724 6 (:DEFINITION NTH))
 (718 718 (:REWRITE DEFAULT-CDR))
 (424 40 (:DEFINITION INITIAL-SUBLISTP-EQUAL))
 (311 311 (:REWRITE DEFAULT-CAR))
 (282 12 (:REWRITE NTH-WITH-LARGE-INDEX))
 (266 266 (:REWRITE R-P-MEMBERP-EQUAL))
 (266 266 (:REWRITE R-P-MEMBER-EQUAL))
 (250 250 (:REWRITE S-P-MEMBERP-EQUAL))
 (250 250 (:REWRITE S-P-MEMBER-EQUAL))
 (246 30 (:REWRITE C-P-CAR))
 (240 240 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (182 182 (:TYPE-PRESCRIPTION B-LTE))
 (169 30 (:REWRITE R-P-CDR))
 (164 164 (:TYPE-PRESCRIPTION BOOLEANP))
 (156 60 (:REWRITE BOOLEANP-IS-B-P))
 (150 30 (:REWRITE C-P-CDR))
 (142 142 (:TYPE-PRESCRIPTION B-P))
 (128 69 (:REWRITE DEFAULT-+-2))
 (111 60 (:REWRITE R-P-INITIAL-SUBLISTP-EQUAL))
 (98 84 (:REWRITE B-LTE-CASES))
 (86 70 (:REWRITE DEFAULT-<-2))
 (84 70 (:REWRITE DEFAULT-<-1))
 (84 12 (:DEFINITION NFIX))
 (78 6 (:DEFINITION B-AND))
 (76 76 (:META CANCEL_PLUS-LESSP-CORRECT))
 (70 70 (:REWRITE X-IS-B-P))
 (70 70 (:REWRITE TOP-IS-B-P))
 (69 69 (:REWRITE DEFAULT-+-1))
 (64 64 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (54 54 (:REWRITE R-NMP-LTE-0))
 (42 42 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (36 6 (:REWRITE ZP-OPEN))
 (30 30 (:REWRITE C-P-MEMBERP-EQUAL))
 (30 30 (:REWRITE C-P-MEMBER-EQUAL))
 (30 6 (:REWRITE <-+-NEGATIVE-0-1))
 (22 22 (:TYPE-PRESCRIPTION N-P-IS-BOOLEANP))
 (18 18 (:REWRITE E-EVAL-IS-B-P))
 (18 6 (:REWRITE DROP-NOT))
 (18 6 (:REWRITE DROP-AND))
 (12 12 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:TYPE-PRESCRIPTION E-P-IS-BOOLEANP))
 (12 12 (:REWRITE L-EVAL-R-LTE-AAA-1))
 (12 6 (:DEFINITION B-NOT))
 (6 6 (:REWRITE L-EVAL-R-LTE-AAA-4))
 )
