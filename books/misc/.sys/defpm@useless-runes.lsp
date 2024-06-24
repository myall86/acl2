(DEFPM-ADD-SUFFIX
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(DEFPM-ADD-SUFFIX-LST
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(DEFPM-MAKE-SUFFIX-LST
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(DEFPM-MAKE-CALLS
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(SYNTAXP-SYMBOLP-LST)
(DEFPM-FORM
 (609 593 (:REWRITE DEFAULT-CAR))
 (523 507 (:REWRITE DEFAULT-CDR))
 (497 497 (:REWRITE DEFAULT-COERCE-2))
 (478 313 (:REWRITE DEFAULT-COERCE-1))
 (430 184 (:REWRITE DEFAULT-COERCE-3))
 (271 271 (:TYPE-PRESCRIPTION STRING-APPEND-LST))
 (215 40 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (157 157 (:REWRITE DEFAULT-SYMBOL-NAME))
 (80 80 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (78 40 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (38 19 (:REWRITE DEFAULT-PKG-IMPORTS))
 (19 19 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (19 19 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 )
(MAYBE-VERBOSE-FORM)
(DEFPM-ROOT-FROM-TERMINATES)
(DEFTHM-DOMAIN-FORM)
(DEFPM-TEST)
(DEFPM-STEP)
(DEFPM-CLK-REC
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-BOUND)
(DEFPM-CLK)
(DEFPM-CLK-REC-DECREASES
 (102 102 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 9 (:REWRITE DEFAULT-<-2))
 (22 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 9 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-0-IMPLIES-TEST-LEMMA-1
 (182 182 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (46 46 (:REWRITE ZP-OPEN))
 (36 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-CLK-SUFF
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(DEFPM-TAILREC-LEMMA-1
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (1 1 (:REWRITE NATP-RW))
 )
(DEFPM-TAILREC-LEMMA-2
 (168 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (52 9 (:REWRITE NATP-POSP))
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 (29 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 9 (:REWRITE POSP-RW))
 (19 7 (:DEFINITION NATP))
 (17 1 (:REWRITE NATP-POSP--1))
 (7 7 (:REWRITE NATP-RW))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-3
 (46 36 (:REWRITE DEFAULT-+-2))
 (42 7 (:REWRITE NATP-POSP))
 (36 36 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NATP))
 (13 7 (:REWRITE POSP-RW))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE NATP-RW))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-4
 (969 961 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (429 65 (:REWRITE NATP-POSP))
 (407 65 (:REWRITE POSP-RW))
 (345 212 (:REWRITE DEFAULT-+-2))
 (228 76 (:REWRITE <-0-+-NEGATIVE-1))
 (216 212 (:REWRITE DEFAULT-+-1))
 (182 166 (:REWRITE DEFAULT-<-2))
 (162 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (130 130 (:TYPE-PRESCRIPTION POSP))
 (118 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (85 39 (:REWRITE FOLD-CONSTS-IN-+))
 (58 58 (:REWRITE EQUAL-CONSTANT-+))
 (46 23 (:REWRITE POSP-NATP))
 (14 12 (:REWRITE NATP-RW))
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 )
(DEFPM-TERMINATES-STEP-LEMMA
 (174 14 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (64 14 (:REWRITE POSP-RW))
 (60 60 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 14 (:REWRITE NATP-POSP))
 (28 28 (:TYPE-PRESCRIPTION POSP))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE NATP-RW))
 (5 5 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 )
(DEFPM-MEASURE)
(DEFPM-TERMINATES)
(DEFPM-TERMINATES-BASE
 (15 3 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (6 2 (:REWRITE POSP-RW))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE NATP-POSP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-TERMINATES-STEP
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE DEFPM-TERMINATES-BASE))
 )
(DEFPM-TERMINATES-STEP-COMMUTED
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE DEFPM-TERMINATES-BASE))
 (4 1 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 )
(DEFPM-MEASURE-TYPE
 (99 6 (:DEFINITION DEFPM-CLK-REC))
 (78 6 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (30 30 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (30 6 (:REWRITE POSP-RW))
 (24 18 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE ZP-OPEN))
 (23 3 (:REWRITE NATP-RW))
 (21 6 (:REWRITE NATP-POSP))
 (18 18 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 3 (:REWRITE <-0-+-NEGATIVE-1))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 )
(DEFPM-MEASURE-DECREASES
 (8 1 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(DEFPM-TAILREC
 (1 1 (:REWRITE DEFPM-TERMINATES-BASE))
 )
(TRFACT-TEST)
(TRFACT-STEP-X)
(TRFACT-STEP-ACC)
(DEFPM-CLK-REC
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-BOUND)
(DEFPM-CLK)
(DEFPM-CLK-REC-DECREASES
 (102 102 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 9 (:REWRITE DEFAULT-<-2))
 (22 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 9 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-0-IMPLIES-TEST-LEMMA-1
 (182 182 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (46 46 (:REWRITE ZP-OPEN))
 (36 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-CLK-SUFF
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(DEFPM-TAILREC-LEMMA-1
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (1 1 (:REWRITE NATP-RW))
 )
(DEFPM-TAILREC-LEMMA-2
 (168 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (52 9 (:REWRITE NATP-POSP))
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 (29 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 9 (:REWRITE POSP-RW))
 (19 7 (:DEFINITION NATP))
 (17 1 (:REWRITE NATP-POSP--1))
 (7 7 (:REWRITE NATP-RW))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-3
 (46 36 (:REWRITE DEFAULT-+-2))
 (42 7 (:REWRITE NATP-POSP))
 (36 36 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NATP))
 (13 7 (:REWRITE POSP-RW))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE NATP-RW))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-4
 (969 961 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (429 65 (:REWRITE NATP-POSP))
 (407 65 (:REWRITE POSP-RW))
 (345 212 (:REWRITE DEFAULT-+-2))
 (228 76 (:REWRITE <-0-+-NEGATIVE-1))
 (216 212 (:REWRITE DEFAULT-+-1))
 (182 166 (:REWRITE DEFAULT-<-2))
 (162 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (130 130 (:TYPE-PRESCRIPTION POSP))
 (118 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (85 39 (:REWRITE FOLD-CONSTS-IN-+))
 (58 58 (:REWRITE EQUAL-CONSTANT-+))
 (46 23 (:REWRITE POSP-NATP))
 (14 12 (:REWRITE NATP-RW))
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 )
(DEFPM-TERMINATES-STEP-LEMMA
 (174 14 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (64 14 (:REWRITE POSP-RW))
 (60 60 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 14 (:REWRITE NATP-POSP))
 (28 28 (:TYPE-PRESCRIPTION POSP))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE NATP-RW))
 (5 5 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 )
(TRFACT-MEASURE)
(TRFACT-TERMINATES)
(TRFACT-TERMINATES-BASE
 (15 3 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (6 2 (:REWRITE POSP-RW))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE NATP-POSP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(TRFACT-TERMINATES-STEP
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE TRFACT-TERMINATES-BASE))
 )
(TRFACT-TERMINATES-STEP-COMMUTED
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE TRFACT-TERMINATES-BASE))
 (4 1 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 )
(TRFACT-MEASURE-TYPE
 (99 6 (:DEFINITION DEFPM-CLK-REC))
 (78 6 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (30 30 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (30 6 (:REWRITE POSP-RW))
 (24 18 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE ZP-OPEN))
 (23 3 (:REWRITE NATP-RW))
 (21 6 (:REWRITE NATP-POSP))
 (18 18 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 3 (:REWRITE <-0-+-NEGATIVE-1))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 )
(TRFACT-MEASURE-DECREASES
 (8 1 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(TRFACT-SIMPLE
 (1 1 (:REWRITE TRFACT-TERMINATES-BASE))
 )
(TRFACT)
(TRFACT-TERMINATES-HOLDS-ON-NATP-FN)
(TRFACT-TERMINATES-HOLDS-ON-NATP-INDUCTION-HINT
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(TRFACT-TERMINATES-HOLDS-ON-NATP-BASE)
(TRFACT-STEP-PRESERVES-TRFACT-TERMINATES)
(TRFACT-TERMINATES-HOLDS-ON-NATP-STEP)
(TRFACT-TERMINATES-HOLDS-ON-NATP-FN-MAIN)
(TRFACT-TERMINATES-HOLDS-ON-NATP)
(FACT-TEST)
(FACT-STEP)
(DEFPM-CLK-REC
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-BOUND)
(DEFPM-CLK)
(DEFPM-CLK-REC-DECREASES
 (102 102 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 9 (:REWRITE DEFAULT-<-2))
 (22 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 9 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-0-IMPLIES-TEST-LEMMA-1
 (182 182 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (46 46 (:REWRITE ZP-OPEN))
 (36 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-CLK-SUFF
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(DEFPM-TAILREC-LEMMA-1
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (1 1 (:REWRITE NATP-RW))
 )
(DEFPM-TAILREC-LEMMA-2
 (168 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (52 9 (:REWRITE NATP-POSP))
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 (29 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 9 (:REWRITE POSP-RW))
 (19 7 (:DEFINITION NATP))
 (17 1 (:REWRITE NATP-POSP--1))
 (7 7 (:REWRITE NATP-RW))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-3
 (46 36 (:REWRITE DEFAULT-+-2))
 (42 7 (:REWRITE NATP-POSP))
 (36 36 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NATP))
 (13 7 (:REWRITE POSP-RW))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE NATP-RW))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-4
 (969 961 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (429 65 (:REWRITE NATP-POSP))
 (407 65 (:REWRITE POSP-RW))
 (345 212 (:REWRITE DEFAULT-+-2))
 (228 76 (:REWRITE <-0-+-NEGATIVE-1))
 (216 212 (:REWRITE DEFAULT-+-1))
 (182 166 (:REWRITE DEFAULT-<-2))
 (162 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (130 130 (:TYPE-PRESCRIPTION POSP))
 (118 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (85 39 (:REWRITE FOLD-CONSTS-IN-+))
 (58 58 (:REWRITE EQUAL-CONSTANT-+))
 (46 23 (:REWRITE POSP-NATP))
 (14 12 (:REWRITE NATP-RW))
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 )
(DEFPM-TERMINATES-STEP-LEMMA
 (174 14 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (64 14 (:REWRITE POSP-RW))
 (60 60 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 14 (:REWRITE NATP-POSP))
 (28 28 (:TYPE-PRESCRIPTION POSP))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE NATP-RW))
 (5 5 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 )
(FACT-MEASURE)
(FACT-TERMINATES)
(FACT-TERMINATES-BASE
 (15 3 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (6 2 (:REWRITE POSP-RW))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE NATP-POSP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FACT-TERMINATES-STEP
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE FACT-TERMINATES-BASE))
 )
(FACT-TERMINATES-STEP-COMMUTED
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE FACT-TERMINATES-BASE))
 (4 1 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 )
(FACT-MEASURE-TYPE
 (99 6 (:DEFINITION DEFPM-CLK-REC))
 (78 6 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (30 30 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (30 6 (:REWRITE POSP-RW))
 (24 18 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE ZP-OPEN))
 (23 3 (:REWRITE NATP-RW))
 (21 6 (:REWRITE NATP-POSP))
 (18 18 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 3 (:REWRITE <-0-+-NEGATIVE-1))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 )
(FACT-MEASURE-DECREASES
 (8 1 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(FACT
 (1 1 (:REWRITE FACT-TERMINATES-BASE))
 )
(FACT-TERMINATES-HOLDS-ON-NATP-FN)
(FACT-TERMINATES-HOLDS-ON-NATP-INDUCTION-HINT
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FACT-TERMINATES-HOLDS-ON-NATP-BASE)
(FACT-STEP-PRESERVES-FACT-TERMINATES)
(FACT-TERMINATES-HOLDS-ON-NATP-STEP)
(FACT-TERMINATES-HOLDS-ON-NATP-FN-MAIN)
(FACT-TERMINATES-HOLDS-ON-NATP)
(FACT-DEF)
(FACT2-TEST)
(FACT2-STEP)
(DEFPM-CLK-REC
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-BOUND)
(DEFPM-CLK)
(DEFPM-CLK-REC-DECREASES
 (102 102 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 9 (:REWRITE DEFAULT-<-2))
 (22 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 9 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(DEFPM-CLK-0-IMPLIES-TEST-LEMMA-1
 (182 182 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (46 46 (:REWRITE ZP-OPEN))
 (36 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-CLK-SUFF
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(DEFPM-TAILREC-LEMMA-1
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (1 1 (:REWRITE NATP-RW))
 )
(DEFPM-TAILREC-LEMMA-2
 (168 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (52 9 (:REWRITE NATP-POSP))
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 (29 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 9 (:REWRITE POSP-RW))
 (19 7 (:DEFINITION NATP))
 (17 1 (:REWRITE NATP-POSP--1))
 (7 7 (:REWRITE NATP-RW))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-3
 (46 36 (:REWRITE DEFAULT-+-2))
 (42 7 (:REWRITE NATP-POSP))
 (36 36 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NATP))
 (13 7 (:REWRITE POSP-RW))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE NATP-RW))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(DEFPM-TAILREC-LEMMA-4
 (969 961 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (429 65 (:REWRITE NATP-POSP))
 (407 65 (:REWRITE POSP-RW))
 (345 212 (:REWRITE DEFAULT-+-2))
 (228 76 (:REWRITE <-0-+-NEGATIVE-1))
 (216 212 (:REWRITE DEFAULT-+-1))
 (182 166 (:REWRITE DEFAULT-<-2))
 (162 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (130 130 (:TYPE-PRESCRIPTION POSP))
 (118 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (85 39 (:REWRITE FOLD-CONSTS-IN-+))
 (58 58 (:REWRITE EQUAL-CONSTANT-+))
 (46 23 (:REWRITE POSP-NATP))
 (14 12 (:REWRITE NATP-RW))
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 )
(DEFPM-TERMINATES-STEP-LEMMA
 (174 14 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (64 14 (:REWRITE POSP-RW))
 (60 60 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 14 (:REWRITE NATP-POSP))
 (28 28 (:TYPE-PRESCRIPTION POSP))
 (27 27 (:REWRITE DEFAULT-<-2))
 (27 27 (:REWRITE DEFAULT-<-1))
 (18 14 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE <-0-+-NEGATIVE-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE NATP-RW))
 (5 5 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE |(natp a)  <=>  (posp a+1)|))
 )
(FACT2-MEASURE)
(FACT2-TERMINATES)
(FACT2-TERMINATES-BASE
 (15 3 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (6 2 (:REWRITE POSP-RW))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE NATP-POSP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FACT2-TERMINATES-STEP
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE FACT2-TERMINATES-BASE))
 )
(FACT2-TERMINATES-STEP-COMMUTED
 (7 7 (:REWRITE DEFPM-CLK-SUFF))
 (4 4 (:REWRITE FACT2-TERMINATES-BASE))
 (4 1 (:REWRITE DEFPM-TAILREC-LEMMA-1))
 )
(FACT2-MEASURE-TYPE
 (99 6 (:DEFINITION DEFPM-CLK-REC))
 (78 6 (:REWRITE DEFPM-TAILREC-LEMMA-3))
 (30 30 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (30 6 (:REWRITE POSP-RW))
 (24 18 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE ZP-OPEN))
 (23 3 (:REWRITE NATP-RW))
 (21 6 (:REWRITE NATP-POSP))
 (18 18 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 3 (:REWRITE <-0-+-NEGATIVE-1))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFPM-CLK-SUFF))
 )
(FACT2-MEASURE-DECREASES
 (8 1 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFPM-CLK-SUFF))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(FACT2-TERMINATES-HOLDS-ON-NATP-FN)
(FACT2-TERMINATES-HOLDS-ON-NATP-INDUCTION-HINT
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FACT2-TERMINATES-HOLDS-ON-NATP-BASE)
(FACT2-STEP-PRESERVES-FACT2-TERMINATES)
(FACT2-TERMINATES-HOLDS-ON-NATP-STEP)
(FACT2-TERMINATES-HOLDS-ON-NATP-FN-MAIN)
(FACT2-TERMINATES-HOLDS-ON-NATP)
(NATP-FACT2-STEP)
(FACT2
 (1 1 (:REWRITE FACT2-TERMINATES-BASE))
 )
