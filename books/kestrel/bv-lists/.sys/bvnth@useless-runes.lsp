(NTH2)
(BVNTH)
(UNSIGNED-BYTE-P-OF-BVNTH)
(UNSIGNED-BYTE-P-OF-BVNTH-GEN
 (20 2 (:REWRITE BVCHOP-IDENTITY))
 (15 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (12 2 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (9 2 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (8 2 (:REWRITE UNSIGNED-BYTE-P-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP-2))
 (7 6 (:REWRITE DEFAULT-<-2))
 (7 2 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
 (4 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (4 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (4 2 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (3 2 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (3 2 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (3 1 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (3 1 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (2 2 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (2 2 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (2 2 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (2 2 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE INTEGERP-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 )
(BVNTH-OF-BVCHOP
 (176 8 (:DEFINITION EXPT))
 (171 15 (:REWRITE BVCHOP-IDENTITY))
 (79 14 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (55 10 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (55 10 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (50 41 (:REWRITE DEFAULT-<-2))
 (49 41 (:REWRITE DEFAULT-<-1))
 (48 16 (:REWRITE DEFAULT-*-2))
 (48 16 (:REWRITE COMMUTATIVITY-OF-+))
 (47 14 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (40 8 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (37 10 (:REWRITE UNSIGNED-BYTE-P-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP-2))
 (32 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (32 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (30 30 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (30 15 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (28 28 (:TYPE-PRESCRIPTION NATP))
 (25 15 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (24 14 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (18 18 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (18 18 (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
 (18 18 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE DEFAULT-*-1))
 (16 16 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (16 15 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (15 15 (:TYPE-PRESCRIPTION POSP))
 (15 15 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (15 15 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (15 15 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (15 15 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (14 14 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (10 10 (:REWRITE INTEGERP-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (9 9 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (9 9 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (8 8 (:REWRITE ZIP-OPEN))
 (7 2 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (7 2 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (5 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (3 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE BVCHOPS-SAME-WHEN-BVCHOPS-SAME))
 (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
 )
(BVCHOP-8-BVNTH-8
 (16 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (12 2 (:LINEAR BVCHOP-UPPER-BOUND))
 (7 7 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (4 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 )
(BVNTH-WHEN-DATA-ISNT-AN-ALL-UNSIGNED-BYTE-P
 (251 25 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (226 16 (:DEFINITION EXPT))
 (210 16 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (120 24 (:DEFINITION LEN))
 (113 18 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (105 67 (:REWRITE DEFAULT-+-2))
 (92 69 (:REWRITE DEFAULT-<-1))
 (90 69 (:REWRITE DEFAULT-<-2))
 (75 25 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (67 67 (:REWRITE DEFAULT-+-1))
 (58 9 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (57 9 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (54 18 (:REWRITE DEFAULT-*-2))
 (54 18 (:REWRITE COMMUTATIVITY-OF-+))
 (43 43 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (35 23 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (34 34 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (33 25 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (33 25 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (27 27 (:TYPE-PRESCRIPTION POSP))
 (26 26 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (26 26 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (26 26 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (25 25 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 6 (:REWRITE BVCHOP-LIST-WHEN-UNSIGNED-BYTE-LISTP))
 (18 18 (:TYPE-PRESCRIPTION NATP))
 (18 18 (:TYPE-PRESCRIPTION BVCHOP-LIST))
 (18 18 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE ZIP-OPEN))
 (16 16 (:REWRITE INTEGERP-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (16 16 (:REWRITE BVCHOP-BOUND))
 (16 16 (:REWRITE <-OF-BVCHOP-WHEN-<-OF-BVCHOP-BIGGER))
 (15 5 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 4 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-BVCHOP-LIST-GEN))
 (10 10 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (10 10 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (10 10 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (8 8 (:REWRITE CONSP-OF-BVCHOP-LIST))
 (7 7 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (7 5 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (7 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (6 6 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NEGATIVE))
 (6 6 (:REWRITE BVCHOP-LIST-DOES-NOTHING-BETTER-2))
 (6 6 (:REWRITE BVCHOP-LIST-DOES-NOTHING-BETTER))
 (6 6 (:REWRITE BVCHOP-LIST-DOES-NOTHING))
 (6 6 (:REWRITE ALL-INTEGERP-OF-BVCHOP-LIST))
 (5 5 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:REWRITE BVCHOP-NUMERIC-BOUND))
 )
