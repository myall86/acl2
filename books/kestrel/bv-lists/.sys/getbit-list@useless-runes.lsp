(GETBIT-LIST
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 )
(NTH-OF-GETBIT-LIST
 (112 22 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (85 22 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (62 41 (:REWRITE DEFAULT-<-1))
 (54 6 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (50 41 (:REWRITE DEFAULT-<-2))
 (44 22 (:REWRITE GETBIT-WHEN-NOT-1))
 (44 22 (:REWRITE GETBIT-WHEN-NOT-0))
 (44 22 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (33 33 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (32 23 (:REWRITE DEFAULT-+-2))
 (30 15 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (25 25 (:REWRITE DEFAULT-CAR))
 (25 23 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (22 22 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (22 22 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 3 (:REWRITE ALL-INTEGERP-OF-CDR))
 (10 10 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (9 9 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (9 9 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:REWRITE INTEGERP-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (5 5 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(GETBIT-LIST-OF-0-AND-GETBIT-LIST-OF-0
 (189 9 (:REWRITE GETBIT-IDENTITY))
 (54 9 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (54 9 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (36 36 (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
 (36 9 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (27 27 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (27 9 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (20 10 (:REWRITE GETBIT-WHEN-NOT-1))
 (20 10 (:REWRITE GETBIT-WHEN-NOT-0))
 (18 18 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (18 18 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (18 18 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (18 18 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (18 9 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (18 9 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (15 9 (:DEFINITION BITP))
 (11 10 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (10 10 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (10 10 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (10 10 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (9 9 (:TYPE-PRESCRIPTION BITP))
 (9 9 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (9 9 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (9 9 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (9 9 (:REWRITE GETBIT-IDENTITY-FREE))
 (9 8 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE HIGH-GETBIT-OF-GETBIT-IS-0))
 )
(GETBIT-LIST-OF-UPDATE-NTH
 (141 34 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (127 71 (:REWRITE DEFAULT-CDR))
 (121 34 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (78 49 (:REWRITE DEFAULT-<-1))
 (75 39 (:REWRITE DEFAULT-CAR))
 (68 34 (:REWRITE GETBIT-WHEN-NOT-1))
 (68 34 (:REWRITE GETBIT-WHEN-NOT-0))
 (68 34 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (57 49 (:REWRITE DEFAULT-<-2))
 (44 22 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (41 31 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (34 34 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (34 34 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (31 31 (:REWRITE DEFAULT-+-1))
 (29 29 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (27 12 (:REWRITE ZP-OPEN))
 (22 22 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(LEN-OF-GETBIT-LIST
 (14 7 (:REWRITE DEFAULT-+-2))
 (12 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (9 8 (:REWRITE DEFAULT-CDR))
 (9 3 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (6 3 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-1))
 (6 3 (:REWRITE GETBIT-WHEN-NOT-0))
 (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (6 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (3 3 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (3 3 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 )
(GETBIT-LIST-OF-BVCHOP-LIST
 (422 3 (:REWRITE CDR-OF-BVCHOP-LIST))
 (273 15 (:REWRITE BVCHOP-IDENTITY))
 (122 3 (:REWRITE CAR-OF-BVCHOP-LIST))
 (102 37 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR))
 (84 9 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (80 11 (:REWRITE BVCHOP-LIST-WHEN-UNSIGNED-BYTE-LISTP))
 (74 11 (:REWRITE BVCHOP-LIST-DOES-NOTHING-BETTER))
 (74 11 (:REWRITE BVCHOP-LIST-DOES-NOTHING))
 (66 66 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (65 65 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (65 65 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (58 9 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (56 17 (:REWRITE UNSIGNED-BYTE-LISTP-OF-CDR))
 (56 9 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (41 41 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (33 33 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (32 16 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (30 15 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (27 9 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (25 24 (:REWRITE DEFAULT-CDR))
 (22 22 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (22 11 (:REWRITE GETBIT-WHEN-NOT-1))
 (22 11 (:REWRITE GETBIT-WHEN-NOT-0))
 (22 11 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (21 15 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (21 9 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (21 7 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (16 16 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (15 15 (:TYPE-PRESCRIPTION POSP))
 (15 15 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (15 15 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (15 15 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (15 15 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (14 13 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (11 11 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (11 11 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (11 11 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (9 9 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (9 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (9 9 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION IFIX))
 (6 6 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NEGATIVE))
 (4 4 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 3 (:REWRITE CONSP-OF-BVCHOP-LIST))
 )
(ALL-UNSIGNED-BYTE-P-OF-GETBIT-LIST
 (149 3 (:DEFINITION ALL-UNSIGNED-BYTE-P))
 (105 16 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (28 7 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (21 7 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (21 3 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (21 3 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (21 3 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR))
 (19 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (17 17 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (16 16 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (14 7 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (14 7 (:REWRITE GETBIT-WHEN-NOT-1))
 (14 7 (:REWRITE GETBIT-WHEN-NOT-0))
 (14 7 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (14 7 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-CDR))
 (13 1 (:DEFINITION MEMBER-EQUAL))
 (12 3 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (11 11 (:REWRITE DEFAULT-CAR))
 (10 10 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (7 7 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (7 7 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (7 7 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (7 7 (:REWRITE DEFAULT-<-2))
 (6 6 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 4 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (3 3 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(GETBIT-LIST-OF-TAKE
 (68 17 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (62 37 (:REWRITE DEFAULT-<-1))
 (51 17 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (46 35 (:REWRITE DEFAULT-CDR))
 (41 31 (:REWRITE DEFAULT-+-2))
 (40 29 (:REWRITE DEFAULT-CAR))
 (37 37 (:REWRITE DEFAULT-<-2))
 (34 34 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (34 17 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (34 17 (:REWRITE GETBIT-WHEN-NOT-1))
 (34 17 (:REWRITE GETBIT-WHEN-NOT-0))
 (34 17 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (27 12 (:REWRITE ZP-OPEN))
 (17 17 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (17 17 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (17 17 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (17 17 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(GETBIT-LIST-OF-CONS
 (20 5 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (10 10 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (10 5 (:REWRITE GETBIT-WHEN-NOT-1))
 (10 5 (:REWRITE GETBIT-WHEN-NOT-0))
 (10 5 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (10 5 (:REWRITE DEFAULT-<-1))
 (9 5 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (5 5 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (5 5 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (5 5 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 )
(GETBIT-LIST-OF-0-DOES-NOTHING
 (36 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (36 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (12 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (6 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (6 6 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 )
(GETBIT-LIST-TOO-HIGH
 (38 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (38 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (38 3 (:REWRITE REPEAT-WHEN-ZP))
 (28 2 (:REWRITE ZP-OPEN))
 (12 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (9 5 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (7 7 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (6 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (6 6 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (6 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (4 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (2 2 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (2 1 (:REWRITE GETBIT-WHEN-NOT-1))
 (2 1 (:REWRITE GETBIT-WHEN-NOT-0))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (1 1 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1 1 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(GETBIT-LIST-OF-TRUE-LIST-FIX
 (75 11 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR))
 (74 9 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-TRUE-LIST-FIX))
 (45 28 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (38 38 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (38 38 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (35 1 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CONS))
 (29 8 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (22 8 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (20 20 (:REWRITE DEFAULT-CDR))
 (16 16 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (16 8 (:REWRITE GETBIT-WHEN-NOT-1))
 (16 8 (:REWRITE GETBIT-WHEN-NOT-0))
 (16 8 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (14 7 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (14 7 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 10 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (8 8 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (8 8 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (8 8 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (7 7 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-<-2))
 (6 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (6 1 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (4 1 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (1 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (1 1 (:DEFINITION TRUE-LISTP))
 )
