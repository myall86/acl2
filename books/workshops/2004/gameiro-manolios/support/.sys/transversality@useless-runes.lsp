(VECT_UV
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(I_VECT_UV)
(VECT_UV_OK
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(REAL/RATIONALP-VECT_UV
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(REAL/RATIONALP-I_VECT_UV
 (16 16 (:REWRITE NTH-CONS-OPEN))
 )
(INTERVALP-I_VECT_UV
 (16 16 (:REWRITE NTH-CONS-OPEN))
 )
(VECT_LBDA)
(I_VECT_LBDA)
(UNITSUBINTERVALP)
(I_VECT_LBDA_OK
 (10 10 (:REWRITE NTH-CONS-OPEN))
 (10 1 (:REWRITE PROVE-NOT-IN))
 (7 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE DEFAULT-*-2))
 (5 4 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:DEFINITION NOT))
 (3 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE REAL/RATIONALP-VECT_UV))
 (1 1 (:REWRITE PROVE-INTERVAL))
 (1 1 (:REWRITE PROVE-IN))
 )
(REAL/RATIONALP-VECT_LBDA
 (8 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(REAL/RATIONALP-I_VECT_LBDA
 (32 32 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE PROVE-INTERVAL))
 )
(INTERVALP-I_VECT_LBDA
 (32 32 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE PROVE-INTERVAL))
 )
(EDGE_LBDA)
(I_EDGE_LBDA)
(I_EDGE_LBDA_OK
 (12 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 8 (:REWRITE DEFAULT-<-2))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE NTH-CONS-OPEN))
 (10 1 (:REWRITE PROVE-NOT-IN))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE PROVE-INTERVAL))
 (3 3 (:DEFINITION NOT))
 (2 2 (:REWRITE REAL/RATIONALP-VECT_LBDA))
 )
(REAL/RATIONALP-EDGE_LBDA
 (12 4 (:REWRITE DEFAULT-+-2))
 (8 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(REAL/RATIONALP-I_EDGE_LBDA
 (32 32 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(INTERVALP-I_EDGE_LBDA
 (32 32 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(CHECK_TRANS_LBDA)
(I_CHECK_TRANS_LBDA)
(EDGE_TRANS_L1_L2
 (348 12 (:REWRITE REAL/RATIONALP-I_DOT))
 (287 4 (:REWRITE PROVE-NOT-IN))
 (264 24 (:REWRITE INTERVALP-VEC_FLD))
 (192 48 (:REWRITE INTERVALP-I_EDGE_LBDA))
 (120 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (78 78 (:REWRITE NTH-CONS-OPEN))
 (74 12 (:REWRITE DEFAULT-<-1))
 (73 12 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE INTERVALP-I_NORMAL_VEC))
 (18 2 (:REWRITE REAL/RATIONALP-DOT))
 (12 12 (:META CANCEL_PLUS-LESSP-CORRECT))
 (12 4 (:REWRITE REAL/RATIONALP-VEC))
 (8 8 (:REWRITE REAL/RATIONALP-EDGE_LBDA))
 (4 4 (:REWRITE REAL/RATIONALP-NORMAL_VEC))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(NON-DECREASING-UNIT
 (55 31 (:REWRITE DEFAULT-+-2))
 (39 31 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE PROVE-INTERVAL))
 )
(REAL/RATIONALP-HYPS)
(I_CHECK_TRANS
 (696 24 (:REWRITE REAL/RATIONALP-I_DOT))
 (528 48 (:REWRITE INTERVALP-VEC_FLD))
 (500 4 (:REWRITE PROVE-NOT-IN))
 (384 96 (:REWRITE INTERVALP-I_EDGE_LBDA))
 (248 4 (:REWRITE PROVE-IN))
 (240 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (165 42 (:REWRITE DEFAULT-<-2))
 (165 42 (:REWRITE DEFAULT-<-1))
 (164 164 (:REWRITE NTH-CONS-OPEN))
 (153 153 (:REWRITE DEFAULT-CAR))
 (151 79 (:REWRITE DEFAULT-+-2))
 (105 79 (:REWRITE DEFAULT-+-1))
 (100 100 (:REWRITE PROVE-INTERVAL))
 (97 97 (:REWRITE DEFAULT-CDR))
 (48 48 (:REWRITE INTERVALP-I_NORMAL_VEC))
 (48 6 (:DEFINITION LENGTH))
 (30 6 (:DEFINITION LEN))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 10 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(IN-NOT-INTERVALP
 (17 2 (:REWRITE PROVE-NOT-IN))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 2 (:REWRITE PROVE-IN))
 )
(NON-DECREASING-UNIT-LEMMA
 (80 80 (:REWRITE DEFAULT-CDR))
 (77 9 (:REWRITE PROVE-NOT-IN))
 (54 54 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (44 44 (:META CANCEL_PLUS-LESSP-CORRECT))
 (33 12 (:REWRITE PROVE-IN))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(EDGE_TRANS_F-AUX
 (128 128 (:REWRITE DEFAULT-CDR))
 (64 12 (:REWRITE IN-NOT-INTERVALP))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (26 26 (:META CANCEL_PLUS-LESSP-CORRECT))
 (14 11 (:REWRITE PROVE-IN))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(UNIT-PARTITION)
(EDGE_TRANS_F
 (12 12 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE PROVE-INTERVAL))
 (2 1 (:REWRITE IN-NOT-INTERVALP))
 (1 1 (:REWRITE PROVE-NOT-IN))
 (1 1 (:REWRITE EDGE_TRANS_L1_L2))
 (1 1 (:REWRITE EDGE_TRANS_F-AUX))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
