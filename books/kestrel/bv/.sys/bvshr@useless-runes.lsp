(INTEGERP-OF-BVSHR)
(NATP-OF-BVSHR)
(BVSHR-OF-0-ARG1)
(BVSHR-OF-0-ARG2)
(BVSHR-OF-0-ARG3
 (116 4 (:DEFINITION EXPT))
 (40 8 (:REWRITE COMMUTATIVITY-OF-+))
 (38 4 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (26 6 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (26 4 (:DEFINITION NATP))
 (24 8 (:REWRITE DEFAULT-*-2))
 (23 23 (:REWRITE DEFAULT-+-2))
 (23 23 (:REWRITE DEFAULT-+-1))
 (23 17 (:REWRITE DEFAULT-<-1))
 (19 17 (:REWRITE DEFAULT-<-2))
 (16 16 (:TYPE-PRESCRIPTION NATP))
 (16 6 (:REWRITE BVCHOP-IDENTITY))
 (16 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (14 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (14 6 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (14 6 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (10 10 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (10 4 (:REWRITE ZIP-OPEN))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (8 6 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (6 6 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (6 6 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 )
(UNSIGNED-BYTE-P-OF-BVSHR
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (3 1 (:REWRITE SLICE-OUT-OF-ORDER))
 (1 1 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (1 1 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (1 1 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (1 1 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (1 1 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(BVCHOP-OF-BVSHR
 (34 34 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (27 9 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (27 9 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (27 9 (:REWRITE SLICE-OUT-OF-ORDER))
 (22 1 (:DEFINITION EXPT))
 (9 9 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (9 9 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (9 9 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (9 9 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (9 9 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (9 9 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (6 2 (:REWRITE DEFAULT-*-2))
 (5 1 (:LINEAR BVCHOP-UPPER-BOUND-LINEAR-STRONG))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE ZIP-OPEN))
 (1 1 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 )
(BVSHR-REWRITE-FOR-CONSTANT-SHIFT-AMOUNT)
(BVSHR-SAME
 (1 1 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (1 1 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (1 1 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 )
(BVSHR-OF-BVCHOP
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 3 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (6 6 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (6 6 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (6 6 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (6 6 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 (6 2 (:REWRITE BVCHOP-IDENTITY))
 (3 3 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (3 3 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (2 2 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
 (1 1 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (1 1 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (1 1 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (1 1 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 )
(BVSHR-CASES-TERM-FN-AUX
 (6 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BVSHR-CASES-TERM-FN)
(BVSHR-16-CASES
 (48 16 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (27 9 (:REWRITE BVCHOP-IDENTITY))
 (17 17 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (17 17 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (17 17 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (17 17 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (17 17 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (17 17 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (16 16 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (16 16 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (11 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (9 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (9 9 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (9 9 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (9 9 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (8 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
 )
(BVSHR-32-CASES
 (96 32 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (33 33 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (33 33 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (33 33 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (33 33 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (33 33 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (33 33 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (32 32 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (32 32 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (27 9 (:REWRITE BVCHOP-IDENTITY))
 (11 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (9 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (9 9 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (9 9 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (9 9 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (8 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
 )
(BVSHR-64-CASES
 (192 64 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (65 65 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (65 65 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (65 65 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (65 65 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (65 65 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (65 65 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (64 64 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (64 64 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (27 9 (:REWRITE BVCHOP-IDENTITY))
 (11 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (9 9 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (9 9 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (9 9 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (9 9 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (8 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (7 7 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (7 7 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
 )
