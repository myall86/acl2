(MV-NTH-NTH
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(INTERVALP)
(INTERVALP-REAL/RATIONALP)
(INTERVALP-<=)
(PROVE-INTERVAL
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(IN)
(IN-REAL/RATIONALP
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE PROVE-INTERVAL))
 )
(IN-<=)
(NOT-IN-<
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(PROVE-IN
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(PROVE-NOT-IN)
(I+)
(I+_OK
 (27 3 (:REWRITE PROVE-NOT-IN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(REAL/RATIONALP-I+
 (23 3 (:REWRITE PROVE-NOT-IN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE PROVE-INTERVAL))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(INTERVALP-I+
 (40 4 (:REWRITE PROVE-NOT-IN))
 (17 11 (:REWRITE DEFAULT-<-2))
 (17 11 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE REAL/RATIONALP-I+))
 (12 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(I+-EXPAND-FC-1A
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(I+-EXPAND-FC-1)
(I+-EXPAND-FC-2A
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(I+-EXPAND-FC-2)
(I+-OK-
 (49 3 (:REWRITE PROVE-NOT-IN))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 6 (:REWRITE DEFAULT-<-1))
 (12 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(I+-OK
 (20 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(I-
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(I-_OK
 (53 3 (:REWRITE PROVE-NOT-IN))
 (37 37 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (8 6 (:REWRITE DEFAULT-<-2))
 (8 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(REAL/RATIONALP-I-
 (38 3 (:REWRITE PROVE-NOT-IN))
 (18 18 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (7 6 (:REWRITE DEFAULT-<-2))
 (7 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE PROVE-INTERVAL))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(INTERVALP-I-
 (84 84 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (70 4 (:REWRITE PROVE-NOT-IN))
 (21 11 (:REWRITE DEFAULT-<-1))
 (19 11 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE REAL/RATIONALP-I-))
 (12 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(I--EXPAND-FC-1
 (34 34 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(I--EXPAND-FC-2
 (37 37 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(I--OK-
 (73 73 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (57 3 (:REWRITE PROVE-NOT-IN))
 (13 6 (:REWRITE DEFAULT-<-2))
 (13 6 (:REWRITE DEFAULT-<-1))
 (12 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(I--OK2
 (42 42 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (32 32 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (20 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(I--OK
 (48 48 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (20 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(MAX4
 (21 21 (:TYPE-PRESCRIPTION MAX))
 )
(I*
 (3 3 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 )
(L1
 (20 13 (:REWRITE DEFAULT-<-2))
 (15 1 (:LINEAR X*Y>1-POSITIVE))
 (14 14 (:META CANCEL_PLUS-LESSP-CORRECT))
 (13 13 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (8 2 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (5 2 (:REWRITE *-PRESERVES->=-FOR-NONNEGATIVES))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(L2
 (19 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(RATP-ABS
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(RATP-MAX4)
(L4
 (50 2 (:LINEAR X*Y>1-POSITIVE))
 (41 41 (:TYPE-PRESCRIPTION RATP-ABS))
 (31 5 (:REWRITE DEFAULT-<-2))
 (21 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 5 (:REWRITE DEFAULT-<-1))
 (6 4 (:REWRITE DEFAULT-*-2))
 (6 4 (:REWRITE DEFAULT-*-1))
 (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(ABS-M
 (2692 2600 (:REWRITE DEFAULT-<-1))
 (2604 2600 (:REWRITE DEFAULT-<-2))
 (2600 2600 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1076 1076 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(I*_OK-B
 (5443 5443 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5443 5443 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (135 23 (:REWRITE DEFAULT-<-1))
 (120 3 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (120 3 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (39 23 (:REWRITE DEFAULT-<-2))
 (38 7 (:REWRITE DEFAULT-*-2))
 (38 7 (:REWRITE DEFAULT-*-1))
 (23 23 (:META CANCEL_PLUS-LESSP-CORRECT))
 (20 2 (:REWRITE PROVE-NOT-IN))
 (11 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE PROVE-IN))
 )
(L1-A
 (18 2 (:LINEAR X*Y>1-POSITIVE))
 (10 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 )
(I*_OK-A
 (5443 5443 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5443 5443 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (99 19 (:REWRITE DEFAULT-<-1))
 (57 1 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (57 1 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (45 19 (:REWRITE DEFAULT-<-2))
 (38 7 (:REWRITE DEFAULT-*-2))
 (38 7 (:REWRITE DEFAULT-*-1))
 (20 2 (:REWRITE PROVE-NOT-IN))
 (19 19 (:META CANCEL_PLUS-LESSP-CORRECT))
 (12 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE PROVE-IN))
 )
(I*_OK
 (63 9 (:REWRITE DEFAULT-*-2))
 (63 9 (:REWRITE DEFAULT-*-1))
 (49 1 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (49 1 (:REWRITE *-PRESERVES->=-FOR-NONNEGATIVES))
 (49 1 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (46 9 (:REWRITE DEFAULT-<-1))
 (45 7 (:REWRITE PROVE-NOT-IN))
 (33 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (19 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(REAL/RATIONALP-I*
 (23 3 (:REWRITE PROVE-NOT-IN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE PROVE-INTERVAL))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(INTERVALP-I*
 (40 4 (:REWRITE PROVE-NOT-IN))
 (17 11 (:REWRITE DEFAULT-<-2))
 (17 11 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE REAL/RATIONALP-I*))
 (12 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(I*-EXPAND-FC-1A
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(I*-EXPAND-FC-1
 (4 1 (:LINEAR X*Y>1-POSITIVE))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(I*-EXPAND-FC-2A
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(I*-EXPAND-FC-2
 (4 1 (:LINEAR X*Y>1-POSITIVE))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(I*-OK-
 (49 3 (:REWRITE PROVE-NOT-IN))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 6 (:REWRITE DEFAULT-<-1))
 (12 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(I*-OK2
 (40 40 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (30 2 (:REWRITE PROVE-NOT-IN))
 (12 9 (:REWRITE DEFAULT-*-2))
 (11 9 (:REWRITE DEFAULT-*-1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE PROVE-IN))
 (5 4 (:REWRITE DEFAULT-+-2))
 (5 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 3 (:REWRITE RATIONALP-+))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE RATIONALP-UNARY--))
 )
(I*-OK-1
 (19 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(I*-OK
 (20 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE NTH-CONS-OPEN))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(VEC_FLD
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(I_VEC_FLD)
(VEC_FLD_OK
 (20 2 (:REWRITE PROVE-NOT-IN))
 (4 4 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE PROVE-IN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(REAL/RATIONALP-VEC
 (40 4 (:REWRITE PROVE-NOT-IN))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE NTH-CONS-OPEN))
 )
(REAL/RATIONALP-VEC_FLD
 (42 4 (:REWRITE PROVE-NOT-IN))
 (12 8 (:REWRITE DEFAULT-<-2))
 (12 8 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE NTH-CONS-OPEN))
 (8 8 (:REWRITE REAL/RATIONALP-VEC))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE PROVE-INTERVAL))
 )
(INTERVALP-VEC_FLD
 (122 8 (:REWRITE PROVE-NOT-IN))
 (56 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (52 24 (:REWRITE DEFAULT-<-2))
 (52 24 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE REAL/RATIONALP-VEC_FLD))
 (26 26 (:REWRITE NTH-CONS-OPEN))
 (24 24 (:REWRITE REAL/RATIONALP-VEC))
 (24 24 (:META CANCEL_PLUS-LESSP-CORRECT))
 )
(VEC_FLD-OK-1)
(VEC_FLD-OK-2)
(DOT)
(I_DOT)
(I_DOT_OK
 (40 4 (:REWRITE PROVE-NOT-IN))
 (14 2 (:REWRITE I*-OK))
 (12 12 (:REWRITE NTH-CONS-OPEN))
 (12 6 (:REWRITE PROVE-IN))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(REAL/RATIONALP-DOT)
(REAL/RATIONALP-I_DOT
 (12 12 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE PROVE-INTERVAL))
 )
(INTERVALP-I_DOT
 (12 12 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE PROVE-INTERVAL))
 )
(PERP)
(PERP_CORRECT
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 5 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(NTH0-PERP)
(NTH1-PERP
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(I_PERP)
(I_PERP_OK
 (21 3 (:REWRITE PROVE-NOT-IN))
 (8 8 (:REWRITE NTH-CONS-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(REAL/RATIONALP-PERP
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(REAL/RATIONALP-I_PERP
 (8 8 (:REWRITE NTH-CONS-OPEN))
 (2 2 (:REWRITE PROVE-INTERVAL))
 )
(INTERVALP-I_PERP
 (8 8 (:REWRITE NTH-CONS-OPEN))
 )
(NORMAL_VEC
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(I_NORMAL_VEC)
(I_NORMAL_VEC_OK
 (113 3 (:REWRITE PROVE-NOT-IN))
 (96 12 (:REWRITE REAL/RATIONALP-I*))
 (68 68 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (60 12 (:REWRITE INTERVALP-I-))
 (36 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (34 34 (:REWRITE NTH-CONS-OPEN))
 (28 6 (:REWRITE DEFAULT-<-1))
 (26 6 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE PROVE-INTERVAL))
 (22 22 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-+-1))
 (20 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 9 (:REWRITE DEFAULT-*-2))
 (9 9 (:REWRITE DEFAULT-*-1))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE I*-OK-))
 )
(REAL/RATIONALP-NORMAL_VEC
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (5 5 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(REAL/RATIONALP-I_NORMAL_VEC
 (24 24 (:REWRITE NTH-CONS-OPEN))
 )
(INTERVALP-I_NORMAL_VEC
 (24 24 (:REWRITE NTH-CONS-OPEN))
 )
