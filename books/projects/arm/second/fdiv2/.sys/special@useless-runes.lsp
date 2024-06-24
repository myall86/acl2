(RTL::SPECIALP)
(RTL::FMTW)
(RTL::OPAW)
(RTL::OPBW)
(RTL::OPAZ)
(RTL::OPBZ)
(RTL::AUX-1
 (26 26 (:REWRITE AND*-REM-FIRST))
 (8 8 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-LIST-OF-G-BOOLEANS))
 (8 8 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-2))
 (8 8 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-1))
 (8 8 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-ATOM))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (2 2 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (2 2 (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 2))
 (2 2 (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (2 2 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-LIST-OF-G-BOOLEANS))
 (2 2 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-ATOM))
 )
(RTL::A-CLASS
 (20573 867 (:REWRITE RTL::BVECP-BITN-1))
 (12794 786 (:REWRITE ACL2-NUMBERP-X))
 (10875 87 (:LINEAR EXPT-<=-1-TWO))
 (10875 87 (:LINEAR EXPT-<-1-TWO))
 (10857 774 (:REWRITE DEFAULT-LESS-THAN-1))
 (9942 861 (:REWRITE DEFAULT-LESS-THAN-2))
 (9137 5603 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (8678 5603 (:REWRITE RTL::BITS-NEG-INDICES))
 (6871 2915 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6551 2933 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (6283 2915 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6076 2915 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (6004 586 (:REWRITE RATIONALP-X))
 (5220 783 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (5000 625 (:TYPE-PRESCRIPTION RTL::NATP-PREC))
 (3783 87 (:LINEAR RTL::BVECP-BMUX4SIGNED))
 (3257 2915 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (3100 1476 (:REWRITE O-INFP->NEQ-0))
 (2958 87 (:LINEAR RTL::EXPT-LEMMA-3))
 (2933 2933 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2915 2915 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2915 2915 (:REWRITE |(equal c (/ x))|))
 (2915 2915 (:REWRITE |(equal c (- x))|))
 (2915 2915 (:REWRITE |(equal (/ x) c)|))
 (2915 2915 (:REWRITE |(equal (/ x) (/ y))|))
 (2915 2915 (:REWRITE |(equal (- x) c)|))
 (2915 2915 (:REWRITE |(equal (- x) (- y))|))
 (2523 87 (:LINEAR EXPT-X->=-X))
 (2523 87 (:LINEAR EXPT-X->-X))
 (2523 87 (:LINEAR EXPT->=-1-ONE))
 (2523 87 (:LINEAR EXPT->-1-ONE))
 (2343 683 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (2262 87 (:DEFINITION NATP))
 (2072 676 (:REWRITE RTL::BITN-NEG))
 (1695 683 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1476 1476 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1236 30 (:REWRITE |(+ (+ x y) z)|))
 (1218 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (1218 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (1218 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (1124 683 (:REWRITE SIMPLIFY-SUMS-<))
 (1116 1116 (:REWRITE REDUCE-INTEGERP-+))
 (1116 1116 (:REWRITE INTEGERP-MINUS-X))
 (1116 1116 (:META META-INTEGERP-CORRECT))
 (861 861 (:REWRITE THE-FLOOR-BELOW))
 (861 861 (:REWRITE THE-FLOOR-ABOVE))
 (765 85 (:REWRITE |(< (+ (- c) x) y)|))
 (683 683 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (683 683 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (683 683 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (683 683 (:REWRITE INTEGERP-<-CONSTANT))
 (683 683 (:REWRITE CONSTANT-<-INTEGERP))
 (683 683 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (683 683 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (683 683 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (683 683 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (683 683 (:REWRITE |(< c (- x))|))
 (683 683 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (683 683 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (683 683 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (683 683 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (683 683 (:REWRITE |(< (/ x) (/ y))|))
 (683 683 (:REWRITE |(< (- x) c)|))
 (683 683 (:REWRITE |(< (- x) (- y))|))
 (669 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (669 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (669 669 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (606 30 (:REWRITE |(+ y x)|))
 (586 586 (:REWRITE REDUCE-RATIONALP-+))
 (586 586 (:REWRITE REDUCE-RATIONALP-*))
 (586 586 (:REWRITE RATIONALP-MINUS-X))
 (586 586 (:META META-RATIONALP-CORRECT))
 (529 529 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (432 432 (:TYPE-PRESCRIPTION BOOLEANP))
 (302 4 (:REWRITE |(< x (if a b c))|))
 (252 252 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (252 252 (:REWRITE NORMALIZE-ADDENDS))
 (210 105 (:REWRITE DEFAULT-LOGAND-1))
 (180 8 (:REWRITE DEFAULT-EXPT-2))
 (174 174 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (174 174 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (174 174 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (174 174 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (172 22 (:REWRITE |(< y (+ (- c) x))|))
 (162 12 (:REWRITE |(equal (+ (- c) x) y)|))
 (155 155 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (155 155 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (155 155 (:REWRITE |(< (/ x) 0)|))
 (155 155 (:REWRITE |(< (* x y) 0)|))
 (114 114 (:REWRITE FOLD-CONSTS-IN-+))
 (111 111 (:TYPE-PRESCRIPTION O-FINP))
 (111 37 (:REWRITE O-FIRST-EXPT-O-INFP))
 (105 105 (:REWRITE LOGAND-CONSTANT-MASK))
 (105 105 (:REWRITE DEFAULT-LOGAND-2))
 (103 103 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (103 103 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (103 103 (:REWRITE |(< 0 (/ x))|))
 (103 103 (:REWRITE |(< 0 (* x y))|))
 (87 87 (:TYPE-PRESCRIPTION NATP))
 (87 87 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (87 87 (:LINEAR EXPT-LINEAR-UPPER-<))
 (87 87 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (87 87 (:LINEAR EXPT-LINEAR-LOWER-<))
 (87 87 (:LINEAR RTL::EXPT-LEMMA-5))
 (87 87 (:LINEAR EXPT->=-1-TWO))
 (87 87 (:LINEAR EXPT->-1-TWO))
 (87 87 (:LINEAR EXPT-<=-1-ONE))
 (87 87 (:LINEAR EXPT-<-1-ONE))
 (85 85 (:REWRITE |(< (+ c/d x) y)|))
 (74 37 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (57 19 (:LINEAR RTL::PREC-LOWER-BOUND))
 (44 4 (:REWRITE |(+ x (if a b c))|))
 (22 22 (:REWRITE |(< x (+ c/d y))|))
 (12 12 (:TYPE-PRESCRIPTION RTL::ENCODINGP))
 (8 8 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (4 4 (:REWRITE DEFAULT-EXPT-1))
 (4 4 (:REWRITE |(expt 1/c n)|))
 (4 4 (:REWRITE |(expt (- x) n)|))
 (2 2 (:TYPE-PRESCRIPTION RTL::NANP))
 )
(RTL::B-CLASS
 (138268 7461 (:REWRITE RTL::BVECP-BITN-1))
 (43179 20715 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (41940 20715 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (41652 20715 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (35166 31632 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (34707 31632 (:REWRITE RTL::BITS-NEG-INDICES))
 (28457 2313 (:REWRITE ACL2-NUMBERP-X))
 (26212 12846 (:REWRITE O-INFP->NEQ-0))
 (24351 20733 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (24266 3805 (:REWRITE DEFAULT-LESS-THAN-1))
 (21925 3979 (:REWRITE DEFAULT-LESS-THAN-2))
 (21750 174 (:LINEAR EXPT-<=-1-TWO))
 (21750 174 (:LINEAR EXPT-<-1-TWO))
 (21057 20715 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (20733 20733 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (20715 20715 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (20715 20715 (:REWRITE |(equal c (/ x))|))
 (20715 20715 (:REWRITE |(equal c (- x))|))
 (20715 20715 (:REWRITE |(equal (/ x) c)|))
 (20715 20715 (:REWRITE |(equal (/ x) (/ y))|))
 (20715 20715 (:REWRITE |(equal (- x) c)|))
 (20715 20715 (:REWRITE |(equal (- x) (- y))|))
 (13072 1570 (:REWRITE RATIONALP-X))
 (12846 12846 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (10440 1566 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (7566 174 (:LINEAR RTL::BVECP-BMUX4SIGNED))
 (7346 5950 (:REWRITE RTL::BITN-NEG))
 (7043 3627 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (5916 174 (:LINEAR RTL::EXPT-LEMMA-3))
 (5912 3627 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (5046 174 (:LINEAR EXPT-X->=-X))
 (5046 174 (:LINEAR EXPT-X->-X))
 (5046 174 (:LINEAR EXPT->=-1-ONE))
 (5046 174 (:LINEAR EXPT->-1-ONE))
 (5032 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (5032 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (5032 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (5000 625 (:TYPE-PRESCRIPTION RTL::NATP-PREC))
 (4524 174 (:DEFINITION NATP))
 (4068 3627 (:REWRITE SIMPLIFY-SUMS-<))
 (3979 3979 (:REWRITE THE-FLOOR-BELOW))
 (3979 3979 (:REWRITE THE-FLOOR-ABOVE))
 (3934 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (3934 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (3934 3934 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (3627 3627 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (3627 3627 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (3627 3627 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (3627 3627 (:REWRITE INTEGERP-<-CONSTANT))
 (3627 3627 (:REWRITE CONSTANT-<-INTEGERP))
 (3627 3627 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (3627 3627 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (3627 3627 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (3627 3627 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (3627 3627 (:REWRITE |(< c (- x))|))
 (3627 3627 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (3627 3627 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (3627 3627 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (3627 3627 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (3627 3627 (:REWRITE |(< (/ x) (/ y))|))
 (3627 3627 (:REWRITE |(< (- x) c)|))
 (3627 3627 (:REWRITE |(< (- x) (- y))|))
 (3429 3429 (:TYPE-PRESCRIPTION RTL::BVECP64-OPA))
 (3386 3386 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2622 2622 (:REWRITE REDUCE-INTEGERP-+))
 (2622 2622 (:REWRITE INTEGERP-MINUS-X))
 (2622 2622 (:META META-INTEGERP-CORRECT))
 (1704 1704 (:TYPE-PRESCRIPTION BOOLEANP))
 (1570 1570 (:REWRITE REDUCE-RATIONALP-+))
 (1570 1570 (:REWRITE REDUCE-RATIONALP-*))
 (1570 1570 (:REWRITE RATIONALP-MINUS-X))
 (1570 1570 (:META META-RATIONALP-CORRECT))
 (1347 732 (:REWRITE DEFAULT-LOGAND-1))
 (1236 30 (:REWRITE |(+ (+ x y) z)|))
 (978 489 (:LINEAR RTL::BVECP64-OPA))
 (765 85 (:REWRITE |(< (+ (- c) x) y)|))
 (732 732 (:REWRITE LOGAND-CONSTANT-MASK))
 (732 732 (:REWRITE DEFAULT-LOGAND-2))
 (606 30 (:REWRITE |(+ y x)|))
 (390 390 (:TYPE-PRESCRIPTION O-FINP))
 (390 130 (:REWRITE O-FIRST-EXPT-O-INFP))
 (348 348 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (348 348 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (348 348 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (348 348 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (302 4 (:REWRITE |(< x (if a b c))|))
 (298 298 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (298 298 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (298 298 (:REWRITE |(< 0 (/ x))|))
 (298 298 (:REWRITE |(< 0 (* x y))|))
 (260 130 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (252 252 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (252 252 (:REWRITE NORMALIZE-ADDENDS))
 (242 242 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (242 242 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (242 242 (:REWRITE |(< (/ x) 0)|))
 (242 242 (:REWRITE |(< (* x y) 0)|))
 (180 8 (:REWRITE DEFAULT-EXPT-2))
 (174 174 (:TYPE-PRESCRIPTION NATP))
 (174 174 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (174 174 (:LINEAR EXPT-LINEAR-UPPER-<))
 (174 174 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (174 174 (:LINEAR EXPT-LINEAR-LOWER-<))
 (174 174 (:LINEAR RTL::EXPT-LEMMA-5))
 (174 174 (:LINEAR EXPT->=-1-TWO))
 (174 174 (:LINEAR EXPT->-1-TWO))
 (174 174 (:LINEAR EXPT-<=-1-ONE))
 (174 174 (:LINEAR EXPT-<-1-ONE))
 (172 22 (:REWRITE |(< y (+ (- c) x))|))
 (162 12 (:REWRITE |(equal (+ (- c) x) y)|))
 (114 114 (:REWRITE FOLD-CONSTS-IN-+))
 (92 92 (:DEFINITION RTL::SETBITS))
 (85 85 (:REWRITE |(< (+ c/d x) y)|))
 (57 19 (:LINEAR RTL::PREC-LOWER-BOUND))
 (44 4 (:REWRITE |(+ x (if a b c))|))
 (22 22 (:REWRITE |(< x (+ c/d y))|))
 (12 12 (:TYPE-PRESCRIPTION RTL::ENCODINGP))
 (8 8 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (4 4 (:REWRITE DEFAULT-EXPT-1))
 (4 4 (:REWRITE |(expt 1/c n)|))
 (4 4 (:REWRITE |(expt (- x) n)|))
 (2 2 (:TYPE-PRESCRIPTION RTL::NANP))
 )
(RTL::FLAGS-A-REWRITE
 (3084 64 (:REWRITE RTL::BVECP-BITN-1))
 (1781 9 (:REWRITE |(< (if a b c) x)|))
 (995 12 (:REWRITE |(< x (if a b c))|))
 (716 28 (:REWRITE ACL2-NUMBERP-X))
 (591 220 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (579 275 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (579 275 (:REWRITE RTL::BITS-NEG-INDICES))
 (502 92 (:REWRITE DEFAULT-LESS-THAN-2))
 (482 220 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (480 220 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (448 56 (:TYPE-PRESCRIPTION RTL::NATP-PREC))
 (420 90 (:REWRITE DEFAULT-LESS-THAN-1))
 (344 26 (:REWRITE RATIONALP-X))
 (300 120 (:REWRITE O-INFP->NEQ-0))
 (288 12 (:REWRITE |(+ (if a b c) x)|))
 (285 220 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (250 2 (:LINEAR EXPT-<=-1-TWO))
 (250 2 (:LINEAR EXPT-<-1-TWO))
 (241 7 (:REWRITE |(< (+ (- c) x) y)|))
 (223 223 (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (220 220 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (220 220 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (220 220 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (220 220 (:REWRITE |(equal c (/ x))|))
 (220 220 (:REWRITE |(equal c (- x))|))
 (220 220 (:REWRITE |(equal (/ x) c)|))
 (220 220 (:REWRITE |(equal (/ x) (/ y))|))
 (220 220 (:REWRITE |(equal (- x) c)|))
 (220 220 (:REWRITE |(equal (- x) (- y))|))
 (139 47 (:REWRITE RTL::BITN-NEG))
 (132 22 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (120 120 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (102 2 (:LINEAR RTL::BVECP-BMUX4SIGNED))
 (92 92 (:REWRITE THE-FLOOR-BELOW))
 (92 92 (:REWRITE THE-FLOOR-ABOVE))
 (88 62 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (88 62 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (68 2 (:LINEAR RTL::EXPT-LEMMA-3))
 (67 67 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (67 67 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (62 62 (:REWRITE SIMPLIFY-SUMS-<))
 (62 62 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (62 62 (:REWRITE INTEGERP-<-CONSTANT))
 (62 62 (:REWRITE CONSTANT-<-INTEGERP))
 (62 62 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (62 62 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (62 62 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (62 62 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (62 62 (:REWRITE |(< c (- x))|))
 (62 62 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (62 62 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (62 62 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (62 62 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (62 62 (:REWRITE |(< (/ x) (/ y))|))
 (62 62 (:REWRITE |(< (- x) c)|))
 (62 62 (:REWRITE |(< (- x) (- y))|))
 (58 2 (:LINEAR EXPT-X->=-X))
 (58 2 (:LINEAR EXPT-X->-X))
 (58 2 (:LINEAR EXPT->=-1-ONE))
 (58 2 (:LINEAR EXPT->-1-ONE))
 (54 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (54 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (54 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (53 53 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (52 2 (:DEFINITION NATP))
 (48 12 (:REWRITE |(+ y x)|))
 (45 40 (:REWRITE DEFAULT-LOGAND-2))
 (45 40 (:REWRITE DEFAULT-LOGAND-1))
 (44 4 (:REWRITE |(+ (+ x y) z)|))
 (42 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (42 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (42 42 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (40 40 (:REWRITE LOGAND-CONSTANT-MASK))
 (38 38 (:REWRITE REDUCE-INTEGERP-+))
 (38 38 (:REWRITE INTEGERP-MINUS-X))
 (38 38 (:META META-INTEGERP-CORRECT))
 (30 30 (:TYPE-PRESCRIPTION O-FINP))
 (30 30 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (30 30 (:REWRITE NORMALIZE-ADDENDS))
 (30 10 (:REWRITE O-FIRST-EXPT-O-INFP))
 (26 26 (:REWRITE REDUCE-RATIONALP-+))
 (26 26 (:REWRITE REDUCE-RATIONALP-*))
 (26 26 (:REWRITE RATIONALP-MINUS-X))
 (26 26 (:META META-RATIONALP-CORRECT))
 (24 8 (:LINEAR RTL::PREC-LOWER-BOUND))
 (22 22 (:TYPE-PRESCRIPTION BOOLEANP))
 (20 10 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (15 15 (:REWRITE |(< y (+ (- c) x))|))
 (15 15 (:REWRITE |(< x (+ c/d y))|))
 (10 10 (:LINEAR LOGAND-BOUNDS-NEG . 2))
 (10 10 (:LINEAR LOGAND-BOUNDS-NEG . 1))
 (9 9 (:REWRITE |(< (* x y) 0)|))
 (8 8 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (8 8 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE |(< (/ x) 0)|))
 (7 7 (:REWRITE |(< (+ c/d x) y)|))
 (5 5 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (5 5 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (5 5 (:REWRITE |(< 0 (/ x))|))
 (5 5 (:REWRITE |(< 0 (* x y))|))
 (4 4 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (4 4 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (4 4 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (4 4 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<))
 (2 2 (:LINEAR RTL::EXPT-LEMMA-5))
 (2 2 (:LINEAR EXPT->=-1-TWO))
 (2 2 (:LINEAR EXPT->-1-TWO))
 (2 2 (:LINEAR EXPT-<=-1-ONE))
 (2 2 (:LINEAR EXPT-<-1-ONE))
 (1 1 (:TYPE-PRESCRIPTION RTL::ENCODINGP))
 )
(RTL::FLAGS-B-REWRITE
 (5224 138 (:REWRITE RTL::BVECP-BITN-1))
 (1893 11 (:REWRITE |(< (if a b c) x)|))
 (1488 64 (:REWRITE ACL2-NUMBERP-X))
 (1307 538 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (1146 538 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (1119 538 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (1113 809 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (1113 809 (:REWRITE RTL::BITS-NEG-INDICES))
 (995 12 (:REWRITE |(< x (if a b c))|))
 (978 164 (:REWRITE DEFAULT-LESS-THAN-2))
 (936 158 (:REWRITE DEFAULT-LESS-THAN-1))
 (832 104 (:TYPE-PRESCRIPTION RTL::NATP-PREC))
 (792 338 (:REWRITE O-INFP->NEQ-0))
 (750 6 (:LINEAR EXPT-<=-1-TWO))
 (750 6 (:LINEAR EXPT-<-1-TWO))
 (712 58 (:REWRITE RATIONALP-X))
 (603 538 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (561 561 (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (538 538 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (538 538 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (538 538 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (538 538 (:REWRITE |(equal c (/ x))|))
 (538 538 (:REWRITE |(equal c (- x))|))
 (538 538 (:REWRITE |(equal (/ x) c)|))
 (538 538 (:REWRITE |(equal (/ x) (/ y))|))
 (538 538 (:REWRITE |(equal (- x) c)|))
 (538 538 (:REWRITE |(equal (- x) (- y))|))
 (377 101 (:REWRITE RTL::BITN-NEG))
 (372 58 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (338 338 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (313 9 (:REWRITE |(< (+ (- c) x) y)|))
 (306 6 (:LINEAR RTL::BVECP-BMUX4SIGNED))
 (288 12 (:REWRITE |(+ (if a b c) x)|))
 (204 6 (:LINEAR RTL::EXPT-LEMMA-3))
 (180 122 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (180 122 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (174 6 (:LINEAR EXPT-X->=-X))
 (174 6 (:LINEAR EXPT-X->-X))
 (174 6 (:LINEAR EXPT->=-1-ONE))
 (174 6 (:LINEAR EXPT->-1-ONE))
 (164 164 (:REWRITE THE-FLOOR-BELOW))
 (164 164 (:REWRITE THE-FLOOR-ABOVE))
 (156 6 (:DEFINITION NATP))
 (132 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (132 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (132 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (129 129 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (129 129 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (122 122 (:REWRITE SIMPLIFY-SUMS-<))
 (122 122 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (122 122 (:REWRITE INTEGERP-<-CONSTANT))
 (122 122 (:REWRITE CONSTANT-<-INTEGERP))
 (122 122 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (122 122 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (122 122 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (122 122 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (122 122 (:REWRITE |(< c (- x))|))
 (122 122 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (122 122 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (122 122 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (122 122 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (122 122 (:REWRITE |(< (/ x) (/ y))|))
 (122 122 (:REWRITE |(< (- x) c)|))
 (122 122 (:REWRITE |(< (- x) (- y))|))
 (107 107 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (99 88 (:REWRITE DEFAULT-LOGAND-2))
 (99 88 (:REWRITE DEFAULT-LOGAND-1))
 (96 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (96 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (96 96 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (94 94 (:REWRITE REDUCE-INTEGERP-+))
 (94 94 (:REWRITE INTEGERP-MINUS-X))
 (94 94 (:META META-INTEGERP-CORRECT))
 (88 88 (:REWRITE LOGAND-CONSTANT-MASK))
 (58 58 (:REWRITE REDUCE-RATIONALP-+))
 (58 58 (:REWRITE REDUCE-RATIONALP-*))
 (58 58 (:REWRITE RATIONALP-MINUS-X))
 (58 58 (:META META-RATIONALP-CORRECT))
 (54 54 (:TYPE-PRESCRIPTION O-FINP))
 (54 18 (:REWRITE O-FIRST-EXPT-O-INFP))
 (48 12 (:REWRITE |(+ y x)|))
 (46 46 (:TYPE-PRESCRIPTION BOOLEANP))
 (44 4 (:REWRITE |(+ (+ x y) z)|))
 (36 18 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (36 12 (:LINEAR RTL::PREC-LOWER-BOUND))
 (32 32 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (32 32 (:REWRITE NORMALIZE-ADDENDS))
 (22 22 (:LINEAR LOGAND-BOUNDS-NEG . 2))
 (22 22 (:LINEAR LOGAND-BOUNDS-NEG . 1))
 (15 15 (:REWRITE |(< y (+ (- c) x))|))
 (15 15 (:REWRITE |(< x (+ c/d y))|))
 (15 15 (:REWRITE |(< (* x y) 0)|))
 (12 12 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (12 12 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (12 12 (:REWRITE |(< (/ x) 0)|))
 (12 12 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (12 12 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (12 12 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (12 12 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (9 9 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (9 9 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (9 9 (:REWRITE |(< 0 (/ x))|))
 (9 9 (:REWRITE |(< 0 (* x y))|))
 (9 9 (:REWRITE |(< (+ c/d x) y)|))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (6 6 (:LINEAR EXPT-LINEAR-UPPER-<))
 (6 6 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (6 6 (:LINEAR EXPT-LINEAR-LOWER-<))
 (6 6 (:LINEAR RTL::EXPT-LEMMA-5))
 (6 6 (:LINEAR EXPT->=-1-TWO))
 (6 6 (:LINEAR EXPT->-1-TWO))
 (6 6 (:LINEAR EXPT-<=-1-ONE))
 (6 6 (:LINEAR EXPT-<-1-ONE))
 (3 3 (:TYPE-PRESCRIPTION RTL::ENCODINGP))
 )
(RTL::SIGN-REWRITE
 (40782 687 (:LINEAR RTL::LOGXOR-OF-BITS-<=-1))
 (33340 1543 (:REWRITE DEFAULT-LESS-THAN-1))
 (13662 1406 (:REWRITE ACL2-NUMBERP-X))
 (9776 849 (:REWRITE RTL::BVECP-BITN-1))
 (6128 1397 (:REWRITE RATIONALP-X))
 (4578 2 (:LINEAR RTL::SGNF-UPPER-BOUND))
 (3948 1463 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (3743 1463 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (3666 1463 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (3257 833 (:REWRITE RTL::BVECP-BITN-0))
 (3160 20 (:REWRITE RTL::BITS-BVECP-SIMPLE))
 (2565 2565 (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (2190 882 (:REWRITE O-INFP->NEQ-0))
 (2029 1725 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (2029 1725 (:REWRITE RTL::BITS-NEG-INDICES))
 (1979 1463 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (1548 12 (:REWRITE |(+ (+ x y) z)|))
 (1545 1543 (:REWRITE DEFAULT-LESS-THAN-2))
 (1543 1543 (:REWRITE THE-FLOOR-BELOW))
 (1543 1543 (:REWRITE THE-FLOOR-ABOVE))
 (1463 1463 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (1463 1463 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (1463 1463 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (1463 1463 (:REWRITE |(equal c (/ x))|))
 (1463 1463 (:REWRITE |(equal c (- x))|))
 (1463 1463 (:REWRITE |(equal (/ x) c)|))
 (1463 1463 (:REWRITE |(equal (/ x) (/ y))|))
 (1463 1463 (:REWRITE |(equal (- x) c)|))
 (1463 1463 (:REWRITE |(equal (- x) (- y))|))
 (1397 1397 (:REWRITE REDUCE-RATIONALP-+))
 (1397 1397 (:REWRITE REDUCE-RATIONALP-*))
 (1397 1397 (:REWRITE REDUCE-INTEGERP-+))
 (1397 1397 (:REWRITE RATIONALP-MINUS-X))
 (1397 1397 (:REWRITE INTEGERP-MINUS-X))
 (1397 1397 (:META META-RATIONALP-CORRECT))
 (1397 1397 (:META META-INTEGERP-CORRECT))
 (1341 833 (:REWRITE RTL::BITN-NEG))
 (995 846 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (931 846 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (882 882 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (846 846 (:REWRITE SIMPLIFY-SUMS-<))
 (846 846 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (846 846 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (846 846 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (846 846 (:REWRITE INTEGERP-<-CONSTANT))
 (846 846 (:REWRITE CONSTANT-<-INTEGERP))
 (846 846 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (846 846 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (846 846 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (846 846 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (846 846 (:REWRITE |(< c (- x))|))
 (846 846 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (846 846 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (846 846 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (846 846 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (846 846 (:REWRITE |(< (/ x) (/ y))|))
 (846 846 (:REWRITE |(< (- x) c)|))
 (846 846 (:REWRITE |(< (- x) (- y))|))
 (834 834 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (764 12 (:REWRITE |(< (if a b c) x)|))
 (697 697 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (697 697 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (697 697 (:REWRITE |(< (/ x) 0)|))
 (697 697 (:REWRITE |(< (* x y) 0)|))
 (528 528 (:TYPE-PRESCRIPTION RTL::BVECP64-OPA))
 (456 456 (:TYPE-PRESCRIPTION RTL::BVECP64-OPB))
 (417 378 (:REWRITE DEFAULT-LOGAND-2))
 (417 378 (:REWRITE DEFAULT-LOGAND-1))
 (378 378 (:REWRITE LOGAND-CONSTANT-MASK))
 (185 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (149 149 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (132 66 (:LINEAR RTL::BVECP64-OPA))
 (130 65 (:LINEAR RTL::BVECP64-OPB))
 (102 102 (:LINEAR LOGAND-BOUNDS-NEG . 2))
 (102 102 (:LINEAR LOGAND-BOUNDS-NEG . 1))
 (68 68 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (68 68 (:REWRITE NORMALIZE-ADDENDS))
 (62 2 (:REWRITE RTL::BITS-BVECP))
 (32 8 (:REWRITE |(+ y x)|))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (12 4 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (4 4 (:REWRITE |(< (+ c/d x) y)|))
 (4 4 (:REWRITE |(< (+ (- c) x) y)|))
 (4 4 (:DEFINITION RTL::SETBITS))
 )
(RTL::AUX-2-HP
 (9 9 (:REWRITE AND*-REM-FIRST))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-LIST-OF-G-BOOLEANS))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-2))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-1))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-ATOM))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-LIST-OF-G-BOOLEANS))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-ATOM))
 )
(RTL::AUX-2-SP
 (9 9 (:REWRITE AND*-REM-FIRST))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-LIST-OF-G-BOOLEANS))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-2))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-1))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-ATOM))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-LIST-OF-G-BOOLEANS))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-ATOM))
 )
(RTL::AUX-2-DP
 (9 9 (:REWRITE AND*-REM-FIRST))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-LIST-OF-G-BOOLEANS))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-2))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-INTEGER-1))
 (3 3 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-BACKCHAIN-ATOM))
 (2 2 (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 2))
 (2 2 (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 1))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (2 2 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-LIST-OF-G-BOOLEANS))
 (1 1 (:REWRITE GL::SHAPE-SPEC-OBJ-IN-RANGE-OPEN-ATOM))
 )
(RTL::AUX-3
 (20 4 (:REWRITE ACL2-NUMBERP-X))
 (20 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (8 2 (:REWRITE RATIONALP-X))
 (6 2 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (6 1 (:REWRITE O-INFP->NEQ-0))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (3 3 (:TYPE-PRESCRIPTION O-FINP))
 (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
 (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (2 2 (:REWRITE REDUCE-RATIONALP-+))
 (2 2 (:REWRITE REDUCE-RATIONALP-*))
 (2 2 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2 (:REWRITE RATIONALP-MINUS-X))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:META META-RATIONALP-CORRECT))
 (2 2 (:META META-INTEGERP-CORRECT))
 (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 )
(RTL::FDIVLANE-SPECIAL-CORRECT
 (26547 11724 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (25982 11730 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (23478 8442 (:REWRITE RTL::BVECP-BITN-1))
 (23478 8442 (:REWRITE RTL::BVECP-BITN-0))
 (22583 11730 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (21756 21452 (:REWRITE RTL::BITS-REVERSE-INDICES))
 (21756 21452 (:REWRITE RTL::BITS-NEG-INDICES))
 (13483 13483 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (13483 13483 (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (12408 11730 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (11766 11730 (:REWRITE |(equal (- x) (- y))|))
 (11730 11730 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (11730 11730 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (11730 11730 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (11730 11730 (:REWRITE |(equal c (/ x))|))
 (11730 11730 (:REWRITE |(equal c (- x))|))
 (11730 11730 (:REWRITE |(equal (/ x) c)|))
 (11730 11730 (:REWRITE |(equal (/ x) (/ y))|))
 (11730 11730 (:REWRITE |(equal (- x) c)|))
 (8442 8442 (:REWRITE RTL::BITN-NEG))
 (8241 8241 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (7395 4644 (:REWRITE DEFAULT-TIMES-2))
 (6991 3407 (:REWRITE DEFAULT-LOGIOR-2))
 (6870 4644 (:REWRITE DEFAULT-TIMES-1))
 (5528 3407 (:REWRITE DEFAULT-LOGIOR-1))
 (4929 2079 (:REWRITE O-INFP->NEQ-0))
 (4644 2322 (:REWRITE DEFAULT-LOGXOR-2))
 (4644 2322 (:REWRITE DEFAULT-LOGXOR-1))
 (4158 4158 (:REWRITE SUBSETP-MEMBER . 4))
 (4158 4158 (:REWRITE SUBSETP-MEMBER . 3))
 (4158 4158 (:REWRITE SUBSETP-MEMBER . 2))
 (4158 4158 (:REWRITE SUBSETP-MEMBER . 1))
 (4158 4158 (:REWRITE INTERSECTP-MEMBER . 3))
 (4158 4158 (:REWRITE INTERSECTP-MEMBER . 2))
 (3630 3630 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (3072 1695 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (3030 1695 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (2975 1956 (:REWRITE DEFAULT-LESS-THAN-1))
 (2574 1956 (:REWRITE DEFAULT-LESS-THAN-2))
 (2397 1695 (:REWRITE SIMPLIFY-SUMS-<))
 (2262 2262 (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
 (2262 2262 (:REWRITE DEFAULT-DIVIDE))
 (1956 1956 (:REWRITE THE-FLOOR-BELOW))
 (1956 1956 (:REWRITE THE-FLOOR-ABOVE))
 (1743 1743 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (1743 1743 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1743 1743 (:REWRITE INTEGERP-<-CONSTANT))
 (1743 1743 (:REWRITE CONSTANT-<-INTEGERP))
 (1743 1743 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (1743 1743 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (1743 1743 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (1743 1743 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (1743 1743 (:REWRITE |(< c (- x))|))
 (1743 1743 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (1743 1743 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (1743 1743 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (1743 1743 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (1743 1743 (:REWRITE |(< (/ x) (/ y))|))
 (1743 1743 (:REWRITE |(< (- x) c)|))
 (1743 1743 (:REWRITE |(< (- x) (- y))|))
 (807 807 (:REWRITE |(< (/ x) 0)|))
 (807 807 (:REWRITE |(< (* x y) 0)|))
 (765 765 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (765 765 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (612 204 (:REWRITE RTL::IEEE-MODE-IS-COMMON-MODE))
 (514 10 (:REWRITE ACL2-NUMBERP-X))
 (456 456 (:REWRITE |(< 0 (/ x))|))
 (456 456 (:REWRITE |(< 0 (* x y))|))
 (450 450 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (450 450 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (408 408 (:TYPE-PRESCRIPTION RTL::IEEE-ROUNDING-MODE-P))
 (408 12 (:REWRITE RTL::RND-NON-POS))
 (399 363 (:REWRITE DEFAULT-MINUS))
 (270 118 (:REWRITE RTL::LOGIOR-1-X))
 (252 9 (:REWRITE RATIONALP-X))
 (216 216 (:LINEAR RTL::LARGEST-LPN-LINEAR-2))
 (216 216 (:LINEAR RTL::LARGEST-LPN-LINEAR-1))
 (216 216 (:LINEAR RTL::LARGEST-LPN-LINEAR))
 (216 216 (:LINEAR RTL::LARGEST-LPN-INSTANCE-2))
 (216 216 (:LINEAR RTL::LARGEST-LPN-INSTANCE-1))
 (210 210 (:REWRITE |(- (* c x))|))
 (180 180 (:LINEAR RTL::SMALLEST-SPN-LINEAR))
 (168 168 (:TYPE-PRESCRIPTION BOOLEANP))
 (90 90 (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (60 60 (:TYPE-PRESCRIPTION RTL::SGN))
 (60 60 (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (60 60 (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
 (20 20 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (20 20 (:REWRITE NORMALIZE-ADDENDS))
 (9 9 (:REWRITE REDUCE-RATIONALP-+))
 (9 9 (:REWRITE REDUCE-RATIONALP-*))
 (9 9 (:REWRITE REDUCE-INTEGERP-+))
 (9 9 (:REWRITE RATIONALP-MINUS-X))
 (9 9 (:REWRITE INTEGERP-MINUS-X))
 (9 9 (:META META-RATIONALP-CORRECT))
 (9 9 (:META META-INTEGERP-CORRECT))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:LINEAR RTL::EXPW-LOWER-BOUND))
 (2 2 (:REWRITE |(< (+ c/d x) y)|))
 (2 2 (:REWRITE |(< (+ (- c) x) y)|))
 )
