(PACKBV-LITTLE-OF-UNPACKBV-LITTLE
 (28 2 (:DEFINITION EXPT))
 (16 4 (:REWRITE BVCHOP-IDENTITY))
 (10 6 (:REWRITE DEFAULT-*-2))
 (10 4 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (9 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (7 5 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (4 4 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (4 4 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (4 4 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (4 4 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (4 4 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (4 2 (:REWRITE ZIP-OPEN))
 (4 1 (:REWRITE UNPACKBV-WHEN-ZP))
 (4 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (3 3 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (3 3 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE UNPACKBV-WHEN-NOT-INTEGERP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(UNPACKBV-LITTLE-OF-PACKBV-LITTLE
 (311 27 (:REWRITE BVCHOP-LIST-WHEN-UNSIGNED-BYTE-LISTP))
 (249 27 (:REWRITE BVCHOP-LIST-DOES-NOTHING-BETTER))
 (228 8 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CONS))
 (210 26 (:REWRITE BVCHOP-LIST-DOES-NOTHING))
 (200 25 (:REWRITE ZP-OPEN))
 (129 77 (:REWRITE DEFAULT-+-2))
 (119 27 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-TAKE))
 (113 42 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (112 112 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (112 112 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (92 1 (:REWRITE CDR-OF-BVCHOP-LIST))
 (91 91 (:REWRITE DEFAULT-CDR))
 (87 3 (:REWRITE CDR-OF-REVERSE-LIST))
 (87 3 (:REWRITE CAR-OF-REVERSE-LIST))
 (82 82 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (78 77 (:REWRITE DEFAULT-+-1))
 (78 1 (:REWRITE UNSIGNED-BYTE-LISTP-OF-APPEND))
 (72 7 (:REWRITE BVCHOP-IDENTITY))
 (65 40 (:REWRITE DEFAULT-<-2))
 (65 2 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-APPEND))
 (63 1 (:REWRITE CAR-OF-BVCHOP-LIST))
 (61 61 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (60 3 (:DEFINITION NTH))
 (49 9 (:REWRITE UNSIGNED-BYTE-LISTP-OF-TAKE-2))
 (47 40 (:REWRITE DEFAULT-<-1))
 (46 46 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (43 23 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (41 3 (:REWRITE UNSIGNED-BYTE-LISTP-OF-CONS))
 (36 6 (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR))
 (32 32 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NOT-AN-INTEGER))
 (27 27 (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NEGATIVE))
 (23 23 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (22 7 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (22 7 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (20 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (18 2 (:REWRITE MEMBER-EQUAL-OF-REVERSE-LIST-IFF))
 (16 7 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP-2))
 (16 4 (:REWRITE UNSIGNED-BYTE-LISTP-OF-CDR))
 (14 2 (:DEFINITION MEMBER-EQUAL))
 (12 12 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (7 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (7 7 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (7 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (7 7 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (7 7 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (6 3 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (6 1 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (6 1 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (5 5 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 1 (:REWRITE UNSIGNED-BYTE-P-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP-2))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (3 1 (:REWRITE CONSP-OF-BVCHOP-LIST))
 (2 2 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE INTEGERP-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 )
