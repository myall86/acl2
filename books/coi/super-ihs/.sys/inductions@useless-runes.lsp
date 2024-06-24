(ADD1-ADD1-LOGCDR-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 )
(ADD1-ADD1-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 )
(ADD1-LOGCDR-LOGCDR-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 )
(LOGCDR-INDUCTION
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (5 5 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (5 5 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 2 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (3 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (1 1 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 )
(SUB1-INDUCTION
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADD1-SUB1-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 )
(ADD1-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 (1 1 (:TYPE-PRESCRIPTION ADD1-INDUCTION))
 )
(SUB1-LOGCDR-LOGCDR-INDUCTION
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(LOGCDR-LOGCDR-LOGCDR-INDUCTION
 (75 27 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (41 41 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (37 37 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (35 33 (:REWRITE DEFAULT-*-2))
 (33 33 (:REWRITE DEFAULT-*-1))
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (29 22 (:REWRITE DEFAULT-<-1))
 (24 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (16 5 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (15 15 (:REWRITE INTEGERP-+-MINUS-*-4))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:REWRITE ZIP-OPEN))
 (6 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (5 5 (:REWRITE FLOOR-WHEN-J-IS-NOT-AN-ACL2-NUMBERP))
 (5 5 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (5 1 (:REWRITE NATP-POSP))
 (3 3 (:TYPE-PRESCRIPTION IFIX))
 (3 3 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (3 3 (:REWRITE INTEGERP-+-MINUS-*-2))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(ADD1-LOGCDR-INDUCTION
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (10 10 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 8 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:TYPE-PRESCRIPTION ABS))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:REWRITE NATP-POSP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 )
(LOGCDR-LOGCDR-INDUCTION
 (75 27 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (41 41 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (37 37 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (35 33 (:REWRITE DEFAULT-*-2))
 (33 33 (:REWRITE DEFAULT-*-1))
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (29 22 (:REWRITE DEFAULT-<-1))
 (24 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (16 5 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (15 15 (:REWRITE INTEGERP-+-MINUS-*-4))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (8 2 (:REWRITE NATP-RW))
 (7 7 (:REWRITE ZIP-OPEN))
 (6 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (5 5 (:REWRITE FLOOR-WHEN-J-IS-NOT-AN-ACL2-NUMBERP))
 (5 5 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (5 1 (:REWRITE NATP-POSP))
 (3 3 (:TYPE-PRESCRIPTION IFIX))
 (3 3 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (3 3 (:REWRITE INTEGERP-+-MINUS-*-2))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE POSP-RW))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(SUB1-LOGCDR-INDUCTION
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-SUB1-INDUCTION
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-SUB1-LOGCDR-INDUCTION
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-SUB1-LOGCDR-LOGCDR-INDUCTION
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADD1-SUB1-LOGCDR-INDUCTION
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-LOGCDR-LOGCDR-CARRY-INDUCTION
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-LOGCDR-LOGCDR-LOGCDR-CARRY-INDUCTION
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(SUB1-SUB1-LOGCDR-LOGCDR-CARRY-INDUCTION
 (18 18 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (4 4 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(LOGENDP)
(B-MAJ)
(LOGCDR-LOGEND-ACL2-COUNT
 (78 14 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (21 18 (:REWRITE DEFAULT-*-2))
 (18 18 (:REWRITE DEFAULT-*-1))
 (12 2 (:REWRITE DISTRIBUTIVITY))
 (9 9 (:REWRITE INTEGERP-+-MINUS-*-4))
 (8 4 (:REWRITE INTEGERP-SUM-TAKE-OUT-KNOWN-INTEGER))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (7 2 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (6 6 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (6 6 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE FLOOR-WHEN-J-IS-NOT-AN-ACL2-NUMBERP))
 (5 5 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (5 5 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*-2))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 )
(LOGCDR-LOGEND-ACL2-COUNT-2
 (107 19 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (104 52 (:REWRITE DEFAULT-*-2))
 (80 40 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (56 52 (:REWRITE DEFAULT-*-1))
 (40 40 (:REWRITE FLOOR-WHEN-J-IS-NOT-AN-ACL2-NUMBERP))
 (32 8 (:REWRITE FOLD-CONSTS-IN-*))
 (22 22 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (22 22 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (22 22 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (20 2 (:LINEAR FLOOR-TYPE-2 . 2))
 (20 2 (:LINEAR FLOOR-TYPE-2 . 1))
 (18 12 (:REWRITE DEFAULT-+-2))
 (18 2 (:LINEAR FLOOR-TYPE-1 . 2))
 (18 2 (:LINEAR FLOOR-TYPE-1 . 1))
 (16 16 (:REWRITE INTEGERP-+-MINUS-*-4))
 (13 9 (:REWRITE DEFAULT-<-2))
 (13 9 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (6 1 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (5 5 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (3 2 (:REWRITE IFIX-INTEGERP))
 (1 1 (:REWRITE ZIP-OPEN))
 (1 1 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 )
(LOGCDR-LOGEND-ACL2-COUNT-3
 (149 34 (:REWRITE INTEGERP-*-CONSTANT-MEANS-1))
 (51 47 (:REWRITE DEFAULT-*-2))
 (47 47 (:REWRITE DEFAULT-*-1))
 (32 24 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (27 24 (:REWRITE DEFAULT-+-1))
 (17 15 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE INTEGERP-+-MINUS-*-4))
 (16 15 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE INTEGERP-SUM-TAKE-OUT-KNOWN-INTEGER))
 (8 8 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (8 8 (:REWRITE INTEGERP-+-MINUS-*-2))
 (8 1 (:DEFINITION LENGTH))
 (7 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE FLOOR-WHEN-J-IS-NOT-AN-ACL2-NUMBERP))
 (5 5 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
 (5 1 (:DEFINITION LEN))
 (4 4 (:REWRITE <-+-CONSTANT-CONSTANT))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE IFIX-INTEGERP))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(+-R
 (100 10 (:REWRITE LOGCDR-LOGEND-ACL2-COUNT-2))
 (60 10 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (16 12 (:REWRITE DEFAULT-<-2))
 (16 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (12 12 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (10 10 (:TYPE-PRESCRIPTION ZIP))
 (10 10 (:REWRITE ZIP-OPEN))
 (10 10 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (10 10 (:DEFINITION NOT))
 (10 5 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE <-+-CONSTANT-CONSTANT))
 (2 2 (:REWRITE COLLECT-CONSTANTS-+-LEMMA))
 )
(+-INDUCTION)
(LOGNOTR
 (8 6 (:REWRITE DEFAULT-<-1))
 (7 2 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (6 6 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (6 6 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (6 6 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE LOGCDR-LOGEND-ACL2-COUNT-2))
 (3 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 )
(LOGNOT-INDUCTION)
(LOGBINR
 (30 3 (:REWRITE LOGCDR-LOGEND-ACL2-COUNT-2))
 (18 3 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (5 4 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (4 4 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (3 3 (:TYPE-PRESCRIPTION ZIP))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (3 3 (:DEFINITION NOT))
 )
(LOGAND-INDUCTION)
(LOGIOR-INDUCTION)
(LOGXOR-INDUCTION)
(LOGLISTR
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(LOGLIST-FWD-R
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (11 11 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (9 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE ZIP-OPEN))
 )
(LOGLIST-BWD-R
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (11 11 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (9 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE ZIP-OPEN))
 )
(LOGTAIL-INDUCTION)
(SBP-INDUCTION)
(UBP-INDUCTION)
(LOGBITP-INDUCTION)
(LOGEXT-INDUCTION)
(LOGAPP-INDUCTION)
(ASH-INDUCTION)
(LOGLIST-ASHR
 (18 18 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (11 11 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (9 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE ZIP-OPEN))
 )
(LOGLIST-ASH-INDUCTION)
(LOGLISTR--)
(LOGLIST-FWD-R--)
(LOGLIST-BWD-R--)
(LOGLISTR--2)
(LOGLIST-FWD-R--2)
(LOGLIST-BWD-R--2)
(LOGLIST-+-INDUCTION)
(LOGLIST-LOGNOT-INDUCTION)
(LOGLIST-LOGLISTR
 (18 18 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (4 4 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(LOGLIST-LOGHEAD)
(LOGMASKPR
 (30 3 (:REWRITE LOGCDR-LOGEND-ACL2-COUNT-2))
 (18 3 (:REWRITE EQUAL-NEGATION-SAME-SIGN))
 (5 4 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE REMOVE-REDUNDANT-LESS-THANS))
 (4 4 (:REWRITE REMOVE-REDUNDANT-<=-HYPS))
 (3 3 (:TYPE-PRESCRIPTION ZIP))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE MOVE---TO-CONSTANT-IN-EQUAL))
 (3 3 (:DEFINITION NOT))
 )
(LOGMASKP-INDUCTION)
