(M1::OK-INPUTS)
(M1::THETA)
(M1::HELPER)
(M1::FN)
(M1::HELPER-IS-THETA
 (565 271 (:REWRITE DEFAULT-PLUS-2))
 (488 488 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (488 488 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (488 488 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (319 22 (:REWRITE ZP-OPEN))
 (300 271 (:REWRITE DEFAULT-PLUS-1))
 (208 192 (:REWRITE DEFAULT-TIMES-2))
 (134 22 (:REWRITE ACL2-NUMBERP-X))
 (130 130 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (126 30 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (82 82 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (56 14 (:REWRITE RATIONALP-X))
 (54 24 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (49 49 (:REWRITE REDUCE-INTEGERP-+))
 (49 49 (:REWRITE INTEGERP-MINUS-X))
 (49 49 (:META META-INTEGERP-CORRECT))
 (43 5 (:REWRITE DEFAULT-FLOOR-RATIO))
 (32 32 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (32 32 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (32 32 (:REWRITE |(equal c (/ x))|))
 (32 32 (:REWRITE |(equal c (- x))|))
 (32 32 (:REWRITE |(equal (/ x) c)|))
 (32 32 (:REWRITE |(equal (/ x) (/ y))|))
 (32 32 (:REWRITE |(equal (- x) (- y))|))
 (30 30 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (22 22 (:REWRITE |(equal (+ (- c) x) y)|))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (20 20 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (20 20 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (20 20 (:REWRITE INTEGERP-<-CONSTANT))
 (20 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (20 20 (:REWRITE CONSTANT-<-INTEGERP))
 (20 20 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (20 20 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (20 20 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (20 20 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (20 20 (:REWRITE |(< c (- x))|))
 (20 20 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (20 20 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (20 20 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (20 20 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (20 20 (:REWRITE |(< (/ x) (/ y))|))
 (20 20 (:REWRITE |(< (- x) c)|))
 (20 20 (:REWRITE |(< (- x) (- y))|))
 (17 17 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (16 16 (:REWRITE SIMPLIFY-SUMS-<))
 (16 16 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (16 16 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 14 (:REWRITE REDUCE-RATIONALP-+))
 (14 14 (:REWRITE REDUCE-RATIONALP-*))
 (14 14 (:REWRITE RATIONALP-MINUS-X))
 (14 14 (:META META-RATIONALP-CORRECT))
 (11 11 (:REWRITE |(< (/ x) 0)|))
 (11 11 (:REWRITE |(< (* x y) 0)|))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (9 9 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (9 9 (:REWRITE |(< y (+ (- c) x))|))
 (9 9 (:REWRITE |(< x (+ c/d y))|))
 (9 9 (:REWRITE |(< 0 (/ x))|))
 (9 9 (:REWRITE |(< 0 (* x y))|))
 (9 9 (:REWRITE |(+ x (- x))|))
 (7 7 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (7 7 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (6 6 (:REWRITE |(* c (* d x))|))
 (5 5 (:REWRITE DEFAULT-FLOOR-2))
 (5 5 (:REWRITE DEFAULT-FLOOR-1))
 (5 5 (:REWRITE |(floor x 2)| . 2))
 (1 1 (:REWRITE |(floor (+ x r) i)|))
 )
(M1::FN-IS-THETA
 (27 23 (:REWRITE DEFAULT-TIMES-2))
 (23 23 (:REWRITE DEFAULT-TIMES-1))
 (14 2 (:REWRITE DEFAULT-FLOOR-RATIO))
 (13 9 (:REWRITE DEFAULT-PLUS-2))
 (12 12 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (10 10 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (10 10 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (10 10 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (10 10 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (9 9 (:REWRITE DEFAULT-PLUS-1))
 (4 4 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (4 4 (:REWRITE NORMALIZE-ADDENDS))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3 (:REWRITE INTEGERP-MINUS-X))
 (3 3 (:META META-INTEGERP-CORRECT))
 (2 2 (:REWRITE DEFAULT-FLOOR-2))
 (2 2 (:REWRITE DEFAULT-FLOOR-1))
 (2 2 (:REWRITE |(floor x 2)| . 2))
 (1 1 (:REWRITE THE-FLOOR-BELOW))
 (1 1 (:REWRITE THE-FLOOR-ABOVE))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE SIMPLIFY-SUMS-<))
 (1 1 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (1 1 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1 1 (:REWRITE INTEGERP-<-CONSTANT))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-2))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-1))
 (1 1 (:REWRITE CONSTANT-<-INTEGERP))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (- x))|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (/ x) (/ y))|))
 (1 1 (:REWRITE |(< (- x) c)|))
 (1 1 (:REWRITE |(< (- x) (- y))|))
 (1 1 (:REWRITE |(< (* x y) 0)|))
 )
(M1::LOOP-CLK)
(M1::CLK)
(M1::LOOP-IS-HELPER
 (777 51 (:REWRITE ZP-OPEN))
 (390 18 (:REWRITE |(+ (+ x y) z)|))
 (350 332 (:REWRITE DEFAULT-PLUS-1))
 (344 332 (:REWRITE DEFAULT-PLUS-2))
 (333 69 (:REWRITE ACL2-NUMBERP-X))
 (310 202 (:REWRITE NORMALIZE-ADDENDS))
 (216 18 (:REWRITE |(+ y (+ x z))|))
 (194 194 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (194 194 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (194 194 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (194 194 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (184 184 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (172 19 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (148 144 (:REWRITE DEFAULT-TIMES-2))
 (132 33 (:REWRITE RATIONALP-X))
 (110 22 (:REWRITE |(+ c (+ d x))|))
 (108 108 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (108 108 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (108 108 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (98 34 (:REWRITE |(* (- x) y)|))
 (80 2 (:REWRITE |(* (if a b c) x)|))
 (73 7 (:REWRITE DEFAULT-MOD-RATIO))
 (70 70 (:REWRITE REDUCE-INTEGERP-+))
 (70 70 (:REWRITE INTEGERP-MINUS-X))
 (70 70 (:META META-INTEGERP-CORRECT))
 (66 10 (:REWRITE |(- (+ x y))|))
 (66 4 (:REWRITE |(+ (if a b c) x)|))
 (44 44 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (36 19 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (36 18 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (34 34 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (33 33 (:REWRITE THE-FLOOR-BELOW))
 (33 33 (:REWRITE THE-FLOOR-ABOVE))
 (33 33 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (33 33 (:REWRITE REDUCE-RATIONALP-+))
 (33 33 (:REWRITE REDUCE-RATIONALP-*))
 (33 33 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (33 33 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (33 33 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (33 33 (:REWRITE RATIONALP-MINUS-X))
 (33 33 (:REWRITE INTEGERP-<-CONSTANT))
 (33 33 (:REWRITE DEFAULT-LESS-THAN-2))
 (33 33 (:REWRITE DEFAULT-LESS-THAN-1))
 (33 33 (:REWRITE CONSTANT-<-INTEGERP))
 (33 33 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (33 33 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (33 33 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (33 33 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (33 33 (:REWRITE |(< c (- x))|))
 (33 33 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (33 33 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (33 33 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (33 33 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (33 33 (:REWRITE |(< (/ x) (/ y))|))
 (33 33 (:REWRITE |(< (- x) c)|))
 (33 33 (:REWRITE |(< (- x) (- y))|))
 (33 33 (:META META-RATIONALP-CORRECT))
 (32 19 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (29 29 (:REWRITE SIMPLIFY-SUMS-<))
 (29 29 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (29 29 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 10 (:REWRITE |(* x (- y))|))
 (24 2 (:REWRITE |(* x (if a b c))|))
 (22 22 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (22 22 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (22 22 (:REWRITE |(< y (+ (- c) x))|))
 (22 22 (:REWRITE |(< x (+ c/d y))|))
 (22 22 (:REWRITE |(< 0 (/ x))|))
 (22 22 (:REWRITE |(< 0 (* x y))|))
 (21 21 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (21 21 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (21 21 (:REWRITE |(equal c (/ x))|))
 (21 21 (:REWRITE |(equal c (- x))|))
 (21 21 (:REWRITE |(equal (/ x) c)|))
 (21 21 (:REWRITE |(equal (/ x) (/ y))|))
 (21 21 (:REWRITE |(equal (- x) (- y))|))
 (19 19 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (18 18 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (18 18 (:REWRITE |(+ x (- x))|))
 (18 18 (:DEFINITION FIX))
 (11 11 (:REWRITE |(< (/ x) 0)|))
 (11 11 (:REWRITE |(< (* x y) 0)|))
 (7 7 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (7 7 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (7 7 (:REWRITE DEFAULT-MOD-2))
 (7 7 (:REWRITE DEFAULT-MOD-1))
 (7 7 (:REWRITE |(mod x 2)| . 2))
 (2 2 (:REWRITE |(- (* c x))|))
 (2 2 (:REWRITE |(* 0 x)|))
 )
(M1::PROGRAM-IS-FN
 (48 4 (:DEFINITION M1::HELPER))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (22 2 (:REWRITE DEFAULT-MOD-RATIO))
 (14 14 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (14 14 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (14 14 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (14 14 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (10 10 (:REWRITE DEFAULT-TIMES-2))
 (10 10 (:REWRITE DEFAULT-TIMES-1))
 (8 8 (:REWRITE DEFAULT-PLUS-2))
 (8 8 (:REWRITE DEFAULT-PLUS-1))
 (8 2 (:REWRITE |(* y x)|))
 (5 5 (:REWRITE REDUCE-INTEGERP-+))
 (5 5 (:REWRITE INTEGERP-MINUS-X))
 (5 5 (:META META-INTEGERP-CORRECT))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (4 4 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (4 4 (:REWRITE NORMALIZE-ADDENDS))
 (4 4 (:REWRITE |(+ 0 x)|))
 (4 4 (:REWRITE |(* 1 x)|))
 (2 2 (:REWRITE DEFAULT-MOD-2))
 (2 2 (:REWRITE DEFAULT-MOD-1))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE |(mod x 2)| . 2))
 (1 1 (:REWRITE THE-FLOOR-BELOW))
 (1 1 (:REWRITE THE-FLOOR-ABOVE))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE SIMPLIFY-SUMS-<))
 (1 1 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (1 1 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1 1 (:REWRITE INTEGERP-<-CONSTANT))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-2))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-1))
 (1 1 (:REWRITE CONSTANT-<-INTEGERP))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (- x))|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (/ x) (/ y))|))
 (1 1 (:REWRITE |(< (- x) c)|))
 (1 1 (:REWRITE |(< (- x) (- y))|))
 (1 1 (:REWRITE |(< (* x y) 0)|))
 )
(M1::PROGRAM-CORRECT
 (46 46 (:REWRITE DEFAULT-TIMES-2))
 (46 46 (:REWRITE DEFAULT-TIMES-1))
 (28 28 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (28 4 (:REWRITE DEFAULT-FLOOR-RATIO))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (22 2 (:REWRITE DEFAULT-MOD-RATIO))
 (12 12 (:REWRITE DEFAULT-PLUS-2))
 (12 12 (:REWRITE DEFAULT-PLUS-1))
 (9 9 (:REWRITE REDUCE-INTEGERP-+))
 (9 9 (:REWRITE INTEGERP-MINUS-X))
 (9 9 (:META META-INTEGERP-CORRECT))
 (8 8 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (8 8 (:REWRITE NORMALIZE-ADDENDS))
 (4 4 (:REWRITE DEFAULT-FLOOR-2))
 (4 4 (:REWRITE DEFAULT-FLOOR-1))
 (4 4 (:REWRITE |(floor x 2)| . 2))
 (2 2 (:REWRITE DEFAULT-MOD-2))
 (2 2 (:REWRITE DEFAULT-MOD-1))
 (2 2 (:REWRITE |(mod x 2)| . 2))
 (1 1 (:REWRITE THE-FLOOR-BELOW))
 (1 1 (:REWRITE THE-FLOOR-ABOVE))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE SIMPLIFY-SUMS-<))
 (1 1 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (1 1 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1 1 (:REWRITE INTEGERP-<-CONSTANT))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-2))
 (1 1 (:REWRITE DEFAULT-LESS-THAN-1))
 (1 1 (:REWRITE CONSTANT-<-INTEGERP))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (1 1 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< c (- x))|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (1 1 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (/ x) (/ y))|))
 (1 1 (:REWRITE |(< (- x) c)|))
 (1 1 (:REWRITE |(< (- x) (- y))|))
 (1 1 (:REWRITE |(< (* x y) 0)|))
 )
(M1::TOTAL-CORRECTNESS
 (62 62 (:REWRITE DEFAULT-TIMES-2))
 (62 62 (:REWRITE DEFAULT-TIMES-1))
 (55 55 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (55 55 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (55 55 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (55 55 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (40 40 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (35 5 (:REWRITE DEFAULT-FLOOR-RATIO))
 (22 2 (:REWRITE DEFAULT-MOD-RATIO))
 (17 17 (:REWRITE DEFAULT-PLUS-2))
 (17 17 (:REWRITE DEFAULT-PLUS-1))
 (15 15 (:REWRITE REDUCE-INTEGERP-+))
 (15 15 (:REWRITE INTEGERP-MINUS-X))
 (15 15 (:META META-INTEGERP-CORRECT))
 (12 12 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (12 12 (:REWRITE NORMALIZE-ADDENDS))
 (11 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (10 2 (:REWRITE ACL2-NUMBERP-X))
 (5 5 (:REWRITE DEFAULT-FLOOR-2))
 (5 5 (:REWRITE DEFAULT-FLOOR-1))
 (5 5 (:REWRITE |(floor x 2)| . 2))
 (4 1 (:REWRITE RATIONALP-X))
 (3 3 (:REWRITE THE-FLOOR-BELOW))
 (3 3 (:REWRITE THE-FLOOR-ABOVE))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (3 3 (:REWRITE SIMPLIFY-SUMS-<))
 (3 3 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (3 3 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (3 3 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (3 3 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (3 3 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (3 3 (:REWRITE INTEGERP-<-CONSTANT))
 (3 3 (:REWRITE DEFAULT-LESS-THAN-2))
 (3 3 (:REWRITE DEFAULT-LESS-THAN-1))
 (3 3 (:REWRITE CONSTANT-<-INTEGERP))
 (3 3 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (3 3 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (3 3 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (3 3 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (3 3 (:REWRITE |(< c (- x))|))
 (3 3 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (3 3 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (3 3 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (3 3 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (3 3 (:REWRITE |(< (/ x) 0)|))
 (3 3 (:REWRITE |(< (/ x) (/ y))|))
 (3 3 (:REWRITE |(< (- x) c)|))
 (3 3 (:REWRITE |(< (- x) (- y))|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (3 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (2 2 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE DEFAULT-MOD-2))
 (2 2 (:REWRITE DEFAULT-MOD-1))
 (2 2 (:REWRITE |(mod x 2)| . 2))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (1 1 (:REWRITE REDUCE-RATIONALP-+))
 (1 1 (:REWRITE REDUCE-RATIONALP-*))
 (1 1 (:REWRITE RATIONALP-MINUS-X))
 (1 1 (:META META-RATIONALP-CORRECT))
 )
