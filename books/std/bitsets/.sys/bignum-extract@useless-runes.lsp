(BITSETS::BIGNUM-EXTRACT)
(BITSETS::NATP-OF-BIGNUM-EXTRACT
 (33 1 (:LINEAR LOGHEAD-LEQ))
 (33 1 (:LINEAR LOGAND-UPPER-BOUND . 2))
 (18 5 (:REWRITE DEFAULT-<-1))
 (14 1 (:DEFINITION EXPT))
 (11 5 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE LOGHEAD-IDENTITY))
 (7 5 (:REWRITE DEFAULT-*-1))
 (6 6 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 1 (:LINEAR LOGHEAD-UPPER-BOUND))
 (3 3 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZIP-OPEN))
 )
(BITSETS::UNSIGNED-BYTE-P-OF-BIGNUM-EXTRACT
 (14 1 (:DEFINITION EXPT))
 (11 5 (:REWRITE DEFAULT-*-2))
 (7 5 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (3 1 (:REWRITE LOGHEAD-IDENTITY))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ZIP-OPEN))
 )
(BITSETS::UPPER-BOUND-OF-BIGNUM-EXTRACT)
(BITSETS::BIGNUM-EXTRACT
 (304 8 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (68 40 (:REWRITE DEFAULT-+-2))
 (60 40 (:REWRITE DEFAULT-+-1))
 (56 4 (:DEFINITION EXPT))
 (50 26 (:REWRITE DEFAULT-<-1))
 (45 21 (:REWRITE DEFAULT-*-2))
 (42 26 (:REWRITE DEFAULT-<-2))
 (36 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (29 21 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (12 4 (:REWRITE DEFAULT-NUMERATOR))
 (12 4 (:REWRITE DEFAULT-DENOMINATOR))
 (5 3 (:REWRITE LOGHEAD-IDENTITY))
 (4 4 (:REWRITE ZIP-OPEN))
 )
