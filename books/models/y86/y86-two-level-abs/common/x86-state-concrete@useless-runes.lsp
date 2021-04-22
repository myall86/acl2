(CREATE-X86-32-STOBJ-RENAMING-FN-1)
(CREATE-X86-32-STOBJ-RENAMING-FN-2)
(CREATE-X86-32-STOBJ-RENAMING-FN)
(CREATE-X86-32-STOBJ-1)
(GOOD-MEM-TABLE-ENTRIESP
 (2592 1040 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (2080 1040 (:TYPE-PRESCRIPTION NATP-NTH))
 (1040 1040 (:TYPE-PRESCRIPTION NAT-LISTP))
 (1040 1040 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (127 11 (:DEFINITION LEN))
 (70 69 (:REWRITE DEFAULT-<-2))
 (69 69 (:REWRITE DEFAULT-<-1))
 (61 61 (:REWRITE DEFAULT-CDR))
 (53 41 (:REWRITE DEFAULT-+-2))
 (42 41 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE DEFAULT-CAR))
 (17 1 (:DEFINITION STRP))
 (17 1 (:DEFINITION SSRP))
 (17 1 (:DEFINITION SEGP))
 (17 1 (:DEFINITION SEG-LIMITP))
 (17 1 (:DEFINITION SEG-BASEP))
 (17 1 (:DEFINITION SEG-ACCESSP))
 (17 1 (:DEFINITION MEM-TABLEP))
 (17 1 (:DEFINITION MEM-ARRAYP))
 (17 1 (:DEFINITION DBGP))
 (17 1 (:DEFINITION CTRP))
 (9 1 (:DEFINITION RGFP))
 (6 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(GOOD-MEM-TABLE-ENTRIESP-LOGIC
 (122 61 (:TYPE-PRESCRIPTION NATP-NTH))
 (122 61 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (61 61 (:TYPE-PRESCRIPTION NAT-LISTP))
 (61 61 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (24 4 (:DEFINITION NTH))
 (20 19 (:REWRITE DEFAULT-+-2))
 (20 19 (:REWRITE DEFAULT-+-1))
 (13 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (6 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(NTH-NX
 (10 5 (:TYPE-PRESCRIPTION NATP-NTH))
 (10 5 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (5 5 (:TYPE-PRESCRIPTION NAT-LISTP))
 (5 5 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(GOOD-MEM-TABLE-ENTRIESP-IS-GOOD-MEM-TABLE-ENTRIESP-LOGIC
 (1180 420 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (840 420 (:TYPE-PRESCRIPTION NATP-NTH))
 (420 420 (:TYPE-PRESCRIPTION NAT-LISTP))
 (420 420 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (85 76 (:REWRITE DEFAULT-<-2))
 (76 76 (:REWRITE DEFAULT-<-1))
 (75 75 (:REWRITE DEFAULT-CDR))
 (58 58 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-+-1))
 (33 33 (:REWRITE ZP-OPEN))
 (33 33 (:REWRITE DEFAULT-CAR))
 (11 3 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:DEFINITION FIX))
 )
(MERGE-<-INTO->
 (48 23 (:REWRITE DEFAULT-+-2))
 (30 23 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 10 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 4 (:REWRITE DEFAULT-<-2))
 (10 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MERGE->-INTO-<
 (48 23 (:REWRITE DEFAULT-+-2))
 (30 23 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 10 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 4 (:REWRITE DEFAULT-<-2))
 (10 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 )
(GOOD-MEM-TABLE-ENTRIESP-WEAK
 (2282 933 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (1866 933 (:TYPE-PRESCRIPTION NATP-NTH))
 (933 933 (:TYPE-PRESCRIPTION NAT-LISTP))
 (933 933 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (127 11 (:DEFINITION LEN))
 (59 59 (:REWRITE DEFAULT-CDR))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (36 24 (:REWRITE DEFAULT-+-2))
 (25 24 (:REWRITE DEFAULT-+-1))
 (17 17 (:REWRITE DEFAULT-CAR))
 (17 1 (:DEFINITION STRP))
 (17 1 (:DEFINITION SSRP))
 (17 1 (:DEFINITION SEGP))
 (17 1 (:DEFINITION SEG-LIMITP))
 (17 1 (:DEFINITION SEG-BASEP))
 (17 1 (:DEFINITION SEG-ACCESSP))
 (17 1 (:DEFINITION MEM-TABLEP))
 (17 1 (:DEFINITION MEM-ARRAYP))
 (17 1 (:DEFINITION DBGP))
 (17 1 (:DEFINITION CTRP))
 (9 1 (:DEFINITION RGFP))
 (4 4 (:REWRITE ZP-OPEN))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(MEM-TABLE-ENTRIES
 (1662 516 (:REWRITE DEFAULT-PLUS-2))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (263 143 (:REWRITE DEFAULT-LESS-THAN-1))
 (236 110 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (227 143 (:REWRITE DEFAULT-LESS-THAN-2))
 (194 162 (:REWRITE DEFAULT-TIMES-2))
 (162 162 (:REWRITE DEFAULT-TIMES-1))
 (150 150 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (143 143 (:REWRITE THE-FLOOR-BELOW))
 (143 143 (:REWRITE THE-FLOOR-ABOVE))
 (131 126 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (131 126 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (126 126 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (126 126 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (126 126 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (126 126 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (126 126 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (126 126 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (126 126 (:REWRITE |(< c (- x))|))
 (126 126 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (126 126 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (126 126 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (126 126 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (126 126 (:REWRITE |(< (/ x) (/ y))|))
 (126 126 (:REWRITE |(< (- x) (- y))|))
 (110 110 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (110 110 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (110 110 (:REWRITE INTEGERP-<-CONSTANT))
 (110 110 (:REWRITE CONSTANT-<-INTEGERP))
 (104 84 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (68 2 (:REWRITE DEFAULT-FLOOR-RATIO))
 (53 53 (:META META-INTEGERP-CORRECT))
 (47 47 (:REWRITE |(< (/ x) 0)|))
 (47 47 (:REWRITE |(< (* x y) 0)|))
 (46 2 (:REWRITE |(* y x)|))
 (45 45 (:REWRITE FOLD-CONSTS-IN-+))
 (43 43 (:REWRITE |(< (+ c/d x) y)|))
 (43 43 (:REWRITE |(< (+ (- c) x) y)|))
 (41 41 (:REWRITE |(* (- x) y)|))
 (38 2 (:REWRITE SUM-IS-EVEN . 2))
 (36 4 (:REWRITE ACL2-NUMBERP-X))
 (32 32 (:REWRITE |(< y (+ (- c) x))|))
 (32 32 (:REWRITE |(< x (+ c/d y))|))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (20 20 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (20 20 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (20 20 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (20 20 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (20 20 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (20 20 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (20 20 (:REWRITE |(equal c (/ x))|))
 (20 20 (:REWRITE |(equal c (- x))|))
 (20 20 (:REWRITE |(equal (/ x) c)|))
 (20 20 (:REWRITE |(equal (/ x) (/ y))|))
 (20 20 (:REWRITE |(equal (- x) c)|))
 (20 20 (:REWRITE |(equal (- x) (- y))|))
 (16 16 (:REWRITE |(< 0 (/ x))|))
 (16 16 (:REWRITE |(< 0 (* x y))|))
 (16 4 (:REWRITE RATIONALP-X))
 (10 10 (:TYPE-PRESCRIPTION ABS))
 (10 10 (:REWRITE |(equal (+ (- c) x) y)|))
 (4 4 (:REWRITE REDUCE-RATIONALP-+))
 (4 4 (:REWRITE REDUCE-RATIONALP-*))
 (4 4 (:REWRITE RATIONALP-MINUS-X))
 (4 4 (:META META-RATIONALP-CORRECT))
 (2 2 (:REWRITE DEFAULT-FLOOR-2))
 (2 2 (:REWRITE DEFAULT-FLOOR-1))
 (2 2 (:REWRITE |(floor x 2)| . 2))
 (2 2 (:REWRITE |(floor (+ x r) i)|))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (1 1 (:REWRITE |(- (- x))|))
 )
(RATIONAL-LISTP-REVAPPEND
 (26 20 (:REWRITE DEFAULT-CAR))
 (21 15 (:REWRITE DEFAULT-CDR))
 )
(RATIONAL-LISTP-MERGE->-INTO-<
 (122 112 (:REWRITE DEFAULT-CAR))
 (64 54 (:REWRITE DEFAULT-CDR))
 (52 52 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (52 26 (:REWRITE DEFAULT-<-2))
 (52 26 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION REVAPPEND))
 )
(RATIONAL-LISTP-MERGE-<-INTO->
 (122 112 (:REWRITE DEFAULT-CAR))
 (64 54 (:REWRITE DEFAULT-CDR))
 (52 52 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (52 26 (:REWRITE DEFAULT-<-2))
 (52 26 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION REVAPPEND))
 )
(GOOD-MEM-TABLE-ENTRIESP-WEAK-PRESERVED-LEMMA
 (1298 446 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (892 446 (:TYPE-PRESCRIPTION NATP-NTH))
 (446 446 (:TYPE-PRESCRIPTION NAT-LISTP))
 (446 446 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (320 40 (:DEFINITION NTH))
 (59 57 (:REWRITE DEFAULT-<-2))
 (59 57 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE ZP-OPEN))
 (20 20 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GOOD-MEM-TABLE-ENTRIESP-WEAK-PRESERVED
 (1588 548 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (1096 548 (:TYPE-PRESCRIPTION NATP-NTH))
 (548 548 (:TYPE-PRESCRIPTION NAT-LISTP))
 (548 548 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (328 42 (:DEFINITION NTH))
 (65 63 (:REWRITE DEFAULT-<-2))
 (65 63 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE ZP-OPEN))
 (18 18 (:REWRITE DEFAULT-CAR))
 (16 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE UNICITY-OF-0))
 (2 2 (:DEFINITION FIX))
 )
(ASH-MINUS-1-INEQUALITY-1
 (268 52 (:REWRITE DEFAULT-PLUS-2))
 (245 245 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (245 245 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (245 245 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (245 245 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (175 52 (:REWRITE DEFAULT-PLUS-1))
 (102 3 (:REWRITE DEFAULT-FLOOR-RATIO))
 (79 11 (:REWRITE DEFAULT-LESS-THAN-2))
 (69 3 (:REWRITE |(* y x)|))
 (57 57 (:REWRITE DEFAULT-TIMES-2))
 (57 57 (:REWRITE DEFAULT-TIMES-1))
 (57 9 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (57 3 (:REWRITE SUM-IS-EVEN . 2))
 (52 52 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (28 4 (:REWRITE DEFAULT-MINUS))
 (27 11 (:REWRITE DEFAULT-LESS-THAN-1))
 (23 23 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (19 7 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (14 14 (:REWRITE REDUCE-INTEGERP-+))
 (14 14 (:REWRITE INTEGERP-MINUS-X))
 (14 14 (:META META-INTEGERP-CORRECT))
 (11 11 (:REWRITE THE-FLOOR-BELOW))
 (11 11 (:REWRITE THE-FLOOR-ABOVE))
 (11 10 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (11 10 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (10 10 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (10 10 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (10 10 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (10 10 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (10 10 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (10 10 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (10 10 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (10 10 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (10 10 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (10 10 (:REWRITE |(< (/ x) (/ y))|))
 (10 10 (:REWRITE |(< (- x) (- y))|))
 (9 9 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (9 9 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (9 9 (:REWRITE INTEGERP-<-CONSTANT))
 (9 9 (:REWRITE CONSTANT-<-INTEGERP))
 (9 9 (:REWRITE |(< (- x) c)|))
 (8 8 (:REWRITE |(+ c (+ d x))|))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE |(< y (+ (- c) x))|))
 (4 4 (:REWRITE |(< x (+ c/d y))|))
 (3 3 (:REWRITE DEFAULT-FLOOR-2))
 (3 3 (:REWRITE DEFAULT-FLOOR-1))
 (3 3 (:REWRITE |(floor x 2)| . 2))
 (3 3 (:REWRITE |(floor (+ x r) i)|))
 (3 3 (:REWRITE |(< (/ x) 0)|))
 (3 3 (:REWRITE |(< (+ c/d x) y)|))
 (3 3 (:REWRITE |(< (+ (- c) x) y)|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (3 3 (:REWRITE |(* (- x) y)|))
 (2 2 (:TYPE-PRESCRIPTION ABS))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2 (:REWRITE |(< 0 (/ x))|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 )
(ASH-MINUS-1-INEQUALITY-2
 (363 63 (:REWRITE DEFAULT-PLUS-2))
 (290 290 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (290 290 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (290 290 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (290 290 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (191 63 (:REWRITE DEFAULT-PLUS-1))
 (136 4 (:REWRITE DEFAULT-FLOOR-RATIO))
 (92 4 (:REWRITE |(* y x)|))
 (78 10 (:REWRITE DEFAULT-LESS-THAN-2))
 (76 4 (:REWRITE SUM-IS-EVEN . 2))
 (72 72 (:REWRITE DEFAULT-TIMES-2))
 (72 72 (:REWRITE DEFAULT-TIMES-1))
 (66 66 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (57 9 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (31 31 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (18 18 (:REWRITE REDUCE-INTEGERP-+))
 (18 18 (:REWRITE INTEGERP-MINUS-X))
 (18 18 (:META META-INTEGERP-CORRECT))
 (18 10 (:REWRITE DEFAULT-LESS-THAN-1))
 (16 8 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (10 10 (:REWRITE THE-FLOOR-BELOW))
 (10 10 (:REWRITE THE-FLOOR-ABOVE))
 (9 9 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (9 9 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (9 9 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (9 9 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (9 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (9 9 (:REWRITE INTEGERP-<-CONSTANT))
 (9 9 (:REWRITE CONSTANT-<-INTEGERP))
 (9 9 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (9 9 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (9 9 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (9 9 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< c (- x))|))
 (9 9 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (9 9 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (9 9 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (9 9 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< (/ x) (/ y))|))
 (9 9 (:REWRITE |(< (- x) c)|))
 (9 9 (:REWRITE |(< (- x) (- y))|))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE |(< y (+ (- c) x))|))
 (6 6 (:REWRITE |(< x (+ c/d y))|))
 (4 4 (:REWRITE DEFAULT-FLOOR-2))
 (4 4 (:REWRITE DEFAULT-FLOOR-1))
 (4 4 (:REWRITE |(floor x 2)| . 2))
 (4 4 (:REWRITE |(floor (+ x r) i)|))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (2 2 (:REWRITE |(< 0 (/ x))|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2 (:REWRITE |(< (/ x) 0)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:REWRITE |(* (- x) y)|))
 (1 1 (:REWRITE |(< (+ c/d x) y)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|))
 )
(RATIONAL-LISTP-MEM-TABLE-ENTRIES
 (2746 1373 (:TYPE-PRESCRIPTION NATP-NTH))
 (1373 1373 (:TYPE-PRESCRIPTION NAT-LISTP))
 (304 154 (:REWRITE DEFAULT-<-2))
 (304 154 (:REWRITE DEFAULT-<-1))
 (266 266 (:REWRITE DEFAULT-CDR))
 (250 250 (:REWRITE DEFAULT-+-1))
 (210 66 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (119 119 (:REWRITE DEFAULT-CAR))
 (23 1 (:DEFINITION MERGE->-INTO-<))
 (23 1 (:DEFINITION MERGE-<-INTO->))
 (16 4 (:DEFINITION REVAPPEND))
 )
(MEM-TABLE-ENTRIES
 (7164 3582 (:TYPE-PRESCRIPTION NATP-NTH))
 (3582 3582 (:TYPE-PRESCRIPTION NAT-LISTP))
 (1336 4 (:DEFINITION MEM-TABLE-ENTRIES))
 (374 168 (:REWRITE DEFAULT-<-2))
 (373 33 (:DEFINITION LEN))
 (328 239 (:REWRITE DEFAULT-+-2))
 (320 168 (:REWRITE DEFAULT-<-1))
 (262 262 (:REWRITE DEFAULT-CDR))
 (239 239 (:REWRITE DEFAULT-+-1))
 (176 14 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (93 93 (:REWRITE DEFAULT-CAR))
 (51 3 (:DEFINITION STRP))
 (51 3 (:DEFINITION SSRP))
 (51 3 (:DEFINITION SEGP))
 (51 3 (:DEFINITION SEG-LIMITP))
 (51 3 (:DEFINITION SEG-BASEP))
 (51 3 (:DEFINITION SEG-ACCESSP))
 (51 3 (:DEFINITION MEM-ARRAYP))
 (51 3 (:DEFINITION DBGP))
 (51 3 (:DEFINITION CTRP))
 (50 28 (:REWRITE ZP-OPEN))
 (46 2 (:DEFINITION MERGE->-INTO-<))
 (46 2 (:DEFINITION MERGE-<-INTO->))
 (43 3 (:DEFINITION MEM-TABLEP))
 (32 8 (:DEFINITION REVAPPEND))
 (27 3 (:DEFINITION RGFP))
 (24 24 (:TYPE-PRESCRIPTION MEM-TABLE-ENTRIES))
 (20 2 (:REWRITE COMMUTATIVITY-OF-+))
 (16 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (6 3 (:DEFINITION TRUE-LISTP))
 )
(NO-DUPLICATESP-SORTED
 (36 16 (:REWRITE DEFAULT-+-2))
 (23 16 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 2 (:DEFINITION INTEGER-ABS))
 (8 1 (:DEFINITION LENGTH))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (5 3 (:REWRITE DEFAULT-<-2))
 (5 1 (:DEFINITION LEN))
 (4 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(RATIONAL-LISTP-IMPLIES-EQLABLE-LISTP
 (11 11 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(GOOD-MEM-TABLE-NO-DUPSP
 (18 9 (:TYPE-PRESCRIPTION NATP-NTH))
 (18 9 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (9 9 (:TYPE-PRESCRIPTION NAT-LISTP))
 (9 9 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(MEM-TABLE-ENTRIES-LOGIC
 (1662 516 (:REWRITE DEFAULT-PLUS-2))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (1360 1360 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (263 143 (:REWRITE DEFAULT-LESS-THAN-1))
 (236 110 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (227 143 (:REWRITE DEFAULT-LESS-THAN-2))
 (194 162 (:REWRITE DEFAULT-TIMES-2))
 (162 162 (:REWRITE DEFAULT-TIMES-1))
 (150 150 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (143 143 (:REWRITE THE-FLOOR-BELOW))
 (143 143 (:REWRITE THE-FLOOR-ABOVE))
 (131 126 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (131 126 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (126 126 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (126 126 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (126 126 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (126 126 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (126 126 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (126 126 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (126 126 (:REWRITE |(< c (- x))|))
 (126 126 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (126 126 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (126 126 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (126 126 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (126 126 (:REWRITE |(< (/ x) (/ y))|))
 (126 126 (:REWRITE |(< (- x) (- y))|))
 (110 110 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (110 110 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (110 110 (:REWRITE INTEGERP-<-CONSTANT))
 (110 110 (:REWRITE CONSTANT-<-INTEGERP))
 (104 84 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (68 2 (:REWRITE DEFAULT-FLOOR-RATIO))
 (53 53 (:META META-INTEGERP-CORRECT))
 (47 47 (:REWRITE |(< (/ x) 0)|))
 (47 47 (:REWRITE |(< (* x y) 0)|))
 (46 2 (:REWRITE |(* y x)|))
 (45 45 (:REWRITE FOLD-CONSTS-IN-+))
 (43 43 (:REWRITE |(< (+ c/d x) y)|))
 (43 43 (:REWRITE |(< (+ (- c) x) y)|))
 (41 41 (:REWRITE |(* (- x) y)|))
 (38 2 (:REWRITE SUM-IS-EVEN . 2))
 (36 18 (:TYPE-PRESCRIPTION NATP-NTH))
 (36 18 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (36 4 (:REWRITE ACL2-NUMBERP-X))
 (32 32 (:REWRITE |(< y (+ (- c) x))|))
 (32 32 (:REWRITE |(< x (+ c/d y))|))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (23 23 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (20 20 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (20 20 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (20 20 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (20 20 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (20 20 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (20 20 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (20 20 (:REWRITE |(equal c (/ x))|))
 (20 20 (:REWRITE |(equal c (- x))|))
 (20 20 (:REWRITE |(equal (/ x) c)|))
 (20 20 (:REWRITE |(equal (/ x) (/ y))|))
 (20 20 (:REWRITE |(equal (- x) c)|))
 (20 20 (:REWRITE |(equal (- x) (- y))|))
 (18 18 (:TYPE-PRESCRIPTION NAT-LISTP))
 (18 18 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (16 16 (:REWRITE |(< 0 (/ x))|))
 (16 16 (:REWRITE |(< 0 (* x y))|))
 (16 4 (:REWRITE RATIONALP-X))
 (10 10 (:TYPE-PRESCRIPTION ABS))
 (10 10 (:REWRITE |(equal (+ (- c) x) y)|))
 (4 4 (:REWRITE REDUCE-RATIONALP-+))
 (4 4 (:REWRITE REDUCE-RATIONALP-*))
 (4 4 (:REWRITE RATIONALP-MINUS-X))
 (4 4 (:META META-RATIONALP-CORRECT))
 (2 2 (:REWRITE DEFAULT-FLOOR-2))
 (2 2 (:REWRITE DEFAULT-FLOOR-1))
 (2 2 (:REWRITE |(floor x 2)| . 2))
 (2 2 (:REWRITE |(floor (+ x r) i)|))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (1 1 (:REWRITE |(- (- x))|))
 )
(GOOD-MEM-TABLE-NO-DUPSP-LOGIC)
(MEM-TABLE-ENTRIES-IS-MEM-TABLE-ENTRIES-LOGIC
 (4304 2152 (:TYPE-PRESCRIPTION NATP-NTH))
 (2152 2152 (:TYPE-PRESCRIPTION NAT-LISTP))
 (1439 135 (:REWRITE DEFAULT-<-2))
 (1429 135 (:REWRITE DEFAULT-<-1))
 (1420 178 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (539 539 (:REWRITE DEFAULT-CDR))
 (306 306 (:REWRITE DEFAULT-+-1))
 (299 299 (:REWRITE DEFAULT-CAR))
 (184 8 (:DEFINITION MERGE->-INTO-<))
 (184 8 (:DEFINITION MERGE-<-INTO->))
 (176 176 (:TYPE-PRESCRIPTION ASH))
 (128 32 (:DEFINITION REVAPPEND))
 (20 2 (:REWRITE COMMUTATIVITY-OF-+))
 (16 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 )
(GOOD-MEM-TABLE-NO-DUPSP-IS-GOOD-MEM-TABLE-NO-DUPSP-LOGIC)
(EXPECTED-MEM-ARRAY-NEXT-ADDR
 (1932 826 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (1652 826 (:TYPE-PRESCRIPTION NATP-NTH))
 (826 826 (:TYPE-PRESCRIPTION NAT-LISTP))
 (826 826 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (127 11 (:DEFINITION LEN))
 (65 1 (:DEFINITION EXPECTED-MEM-ARRAY-NEXT-ADDR))
 (59 59 (:REWRITE DEFAULT-CDR))
 (56 56 (:REWRITE DEFAULT-<-2))
 (56 56 (:REWRITE DEFAULT-<-1))
 (47 34 (:REWRITE DEFAULT-+-2))
 (35 34 (:REWRITE DEFAULT-+-1))
 (17 1 (:DEFINITION STRP))
 (17 1 (:DEFINITION SSRP))
 (17 1 (:DEFINITION SEGP))
 (17 1 (:DEFINITION SEG-LIMITP))
 (17 1 (:DEFINITION SEG-BASEP))
 (17 1 (:DEFINITION SEG-ACCESSP))
 (17 1 (:DEFINITION MEM-TABLEP))
 (17 1 (:DEFINITION MEM-ARRAYP))
 (17 1 (:DEFINITION DBGP))
 (17 1 (:DEFINITION CTRP))
 (15 15 (:REWRITE DEFAULT-CAR))
 (13 5 (:REWRITE FOLD-CONSTS-IN-+))
 (9 1 (:DEFINITION RGFP))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE ZP-OPEN))
 (2 1 (:REWRITE UNICITY-OF-0))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:DEFINITION FIX))
 )
(EXPECTED-MEM-ARRAY-IN-PARTS
 (1940 694 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (1388 694 (:TYPE-PRESCRIPTION NATP-NTH))
 (694 694 (:TYPE-PRESCRIPTION NAT-LISTP))
 (694 694 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (223 164 (:REWRITE DEFAULT-+-2))
 (190 164 (:REWRITE DEFAULT-+-1))
 (122 122 (:REWRITE DEFAULT-CDR))
 (91 91 (:REWRITE DEFAULT-<-2))
 (91 91 (:REWRITE DEFAULT-<-1))
 (39 39 (:REWRITE ZP-OPEN))
 (39 39 (:REWRITE DEFAULT-CAR))
 )
(EXPECTED-MEM-ARRAY-BOUND-GENERAL
 (952 322 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (644 322 (:TYPE-PRESCRIPTION NATP-NTH))
 (482 32 (:REWRITE ACL2-NUMBERP-X))
 (410 5 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (322 322 (:TYPE-PRESCRIPTION NAT-LISTP))
 (322 322 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (222 27 (:REWRITE RATIONALP-X))
 (130 5 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (74 57 (:REWRITE DEFAULT-PLUS-2))
 (68 60 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (68 60 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (67 59 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (65 65 (:REWRITE THE-FLOOR-BELOW))
 (65 65 (:REWRITE THE-FLOOR-ABOVE))
 (65 58 (:REWRITE SIMPLIFY-SUMS-<))
 (60 60 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (60 60 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (60 60 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (60 60 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (60 60 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (60 60 (:REWRITE |(< c (- x))|))
 (60 60 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (60 60 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (60 60 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (60 60 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (60 60 (:REWRITE |(< (/ x) (/ y))|))
 (60 60 (:REWRITE |(< (- x) (- y))|))
 (59 59 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (59 59 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (59 59 (:REWRITE INTEGERP-<-CONSTANT))
 (59 59 (:REWRITE CONSTANT-<-INTEGERP))
 (48 48 (:REWRITE REDUCE-INTEGERP-+))
 (48 48 (:REWRITE INTEGERP-MINUS-X))
 (48 48 (:META META-INTEGERP-CORRECT))
 (37 37 (:REWRITE DEFAULT-TIMES-2))
 (37 37 (:REWRITE DEFAULT-TIMES-1))
 (34 34 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (32 32 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (27 27 (:REWRITE REDUCE-RATIONALP-+))
 (27 27 (:REWRITE REDUCE-RATIONALP-*))
 (27 27 (:REWRITE RATIONALP-MINUS-X))
 (27 27 (:META META-RATIONALP-CORRECT))
 (26 26 (:REWRITE |(< (/ x) 0)|))
 (26 26 (:REWRITE |(< (* x y) 0)|))
 (25 25 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (25 25 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (16 16 (:TYPE-PRESCRIPTION ABS))
 (14 14 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE |(< y (+ (- c) x))|))
 (7 7 (:REWRITE |(< x (+ c/d y))|))
 (5 5 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (5 5 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (5 5 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (5 5 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (5 5 (:REWRITE |(equal c (/ x))|))
 (5 5 (:REWRITE |(equal c (- x))|))
 (5 5 (:REWRITE |(equal (/ x) c)|))
 (5 5 (:REWRITE |(equal (/ x) (/ y))|))
 (5 5 (:REWRITE |(equal (- x) c)|))
 (5 5 (:REWRITE |(equal (- x) (- y))|))
 (4 4 (:REWRITE |(+ c (+ d x))|))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE |(< 0 (/ x))|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2 (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* (- x) y)|))
 (1 1 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (1 1 (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (1 1 (:REWRITE |(< (+ c/d x) y)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|))
 )
(EXPECTED-MEM-ARRAY-BOUND)
(EXPECTED-MEM-ARRAY-NEXT-ADDR-ONLY-DEPENDS-ON-MEM-TABLE-LEMMA
 (1092 489 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (978 489 (:TYPE-PRESCRIPTION NATP-NTH))
 (489 489 (:TYPE-PRESCRIPTION NAT-LISTP))
 (489 489 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (75 19 (:LINEAR EXPECTED-MEM-ARRAY-BOUND-GENERAL))
 (69 60 (:REWRITE DEFAULT-<-2))
 (69 60 (:REWRITE DEFAULT-<-1))
 (38 38 (:REWRITE DEFAULT-CDR))
 (30 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE DEFAULT-CAR))
 )
(EXPECTED-MEM-ARRAY-NEXT-ADDR-ONLY-DEPENDS-ON-MEM-TABLE
 (182 91 (:TYPE-PRESCRIPTION NATP-NTH))
 (182 91 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (152 4 (:DEFINITION EXPECTED-MEM-ARRAY-NEXT-ADDR))
 (104 4 (:DEFINITION MEM-TABLEI))
 (100 16 (:DEFINITION NTH))
 (91 91 (:TYPE-PRESCRIPTION NAT-LISTP))
 (91 91 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (12 12 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(GOOD-MEM-TABLE-ENTRIESP-LOGIC-FORWARD-TO-GOOD-MEM-TABLE-ENTRIESP-WEAK
 (1208 416 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (832 416 (:TYPE-PRESCRIPTION NATP-NTH))
 (416 416 (:TYPE-PRESCRIPTION NAT-LISTP))
 (416 416 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (61 56 (:REWRITE DEFAULT-<-2))
 (56 56 (:REWRITE DEFAULT-<-1))
 (45 45 (:REWRITE DEFAULT-CDR))
 (31 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE ZP-OPEN))
 (20 20 (:REWRITE DEFAULT-CAR))
 (12 8 (:REWRITE GOOD-MEM-TABLE-ENTRIESP-WEAK-PRESERVED))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GOOD-MEM-ARRAYP-1
 (1176 556 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (1112 556 (:TYPE-PRESCRIPTION NATP-NTH))
 (556 556 (:TYPE-PRESCRIPTION NAT-LISTP))
 (556 556 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (140 12 (:DEFINITION LEN))
 (55 55 (:REWRITE DEFAULT-CDR))
 (41 40 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-<-2))
 (34 21 (:REWRITE DEFAULT-+-2))
 (22 21 (:REWRITE DEFAULT-+-1))
 (17 1 (:DEFINITION STRP))
 (17 1 (:DEFINITION SSRP))
 (17 1 (:DEFINITION SEGP))
 (17 1 (:DEFINITION SEG-LIMITP))
 (17 1 (:DEFINITION SEG-BASEP))
 (17 1 (:DEFINITION SEG-ACCESSP))
 (17 1 (:DEFINITION MEM-TABLEP))
 (17 1 (:DEFINITION MEM-ARRAYP))
 (17 1 (:DEFINITION DBGP))
 (17 1 (:DEFINITION CTRP))
 (14 14 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION RGFP))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE ZP-OPEN))
 )
(GOOD-MEM-ARRAYP-1-LOGIC
 (82 41 (:TYPE-PRESCRIPTION NATP-NTH))
 (82 41 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (41 41 (:TYPE-PRESCRIPTION NAT-LISTP))
 (41 41 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (10 9 (:REWRITE DEFAULT-+-2))
 (10 9 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION NTH))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GOOD-MEM-ARRAYP-1-IS-GOOD-MEM-ARRAYP-1-LOGIC
 (430 150 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (300 150 (:TYPE-PRESCRIPTION NATP-NTH))
 (150 150 (:TYPE-PRESCRIPTION NAT-LISTP))
 (150 150 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (35 35 (:REWRITE DEFAULT-<-2))
 (35 35 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE DEFAULT-CAR))
 )
(GOOD-MEM-ARRAYP
 (36 18 (:TYPE-PRESCRIPTION NATP-NTH))
 (36 18 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (18 18 (:TYPE-PRESCRIPTION NAT-LISTP))
 (18 18 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(MEM-TABLEP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(NATP-MEM-TABLEP-WHEN-VALID-MEM-TABLE-INDEX
 (24 11 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (22 11 (:TYPE-PRESCRIPTION NATP-NTH))
 (11 11 (:TYPE-PRESCRIPTION NAT-LISTP))
 (11 11 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(NATP-MEM-TABLEP-WHEN-VALID-MEM-TABLE-INDEX-NTH-VERSION
 (42 17 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (34 17 (:TYPE-PRESCRIPTION NATP-NTH))
 (17 17 (:TYPE-PRESCRIPTION NAT-LISTP))
 (17 17 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(NTH-OF-MEM-TABLE-<=-*MEM-SIZE-IN-BYTES*
 (83 29 (:REWRITE DEFAULT-<-1))
 (35 29 (:REWRITE DEFAULT-<-2))
 (26 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 9 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE ZP-OPEN))
 )
(MEM-TABLEI-LESS-THAN-*MEM-SIZE-IN-BYTES*
 (26 13 (:TYPE-PRESCRIPTION NATP-NTH))
 (26 13 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (13 13 (:TYPE-PRESCRIPTION NAT-LISTP))
 (13 13 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (8 4 (:TYPE-PRESCRIPTION NATP-MEM-TABLEP-WHEN-VALID-MEM-TABLE-INDEX-NTH-VERSION))
 )
(MEM-TABLEI-LESS-THAN-*MEM-SIZE-IN-BYTES*-NTH-VERSION
 (26 13 (:TYPE-PRESCRIPTION NATP-NTH))
 (26 13 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (13 13 (:TYPE-PRESCRIPTION NAT-LISTP))
 (13 13 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(GOOD-MEMP
 (645 57 (:DEFINITION LEN))
 (281 281 (:REWRITE DEFAULT-CDR))
 (171 149 (:REWRITE DEFAULT-<-1))
 (149 149 (:REWRITE DEFAULT-<-2))
 (114 57 (:REWRITE DEFAULT-+-2))
 (85 5 (:DEFINITION STRP))
 (85 5 (:DEFINITION SSRP))
 (85 5 (:DEFINITION SEGP))
 (85 5 (:DEFINITION SEG-LIMITP))
 (85 5 (:DEFINITION SEG-BASEP))
 (85 5 (:DEFINITION SEG-ACCESSP))
 (85 5 (:DEFINITION DBGP))
 (85 5 (:DEFINITION CTRP))
 (65 65 (:REWRITE DEFAULT-CAR))
 (57 57 (:REWRITE DEFAULT-+-1))
 (45 5 (:DEFINITION RGFP))
 (34 2 (:DEFINITION MEM-ARRAYP))
 (20 10 (:TYPE-PRESCRIPTION NATP-MEM-TABLEP-WHEN-VALID-MEM-TABLE-INDEX-NTH-VERSION))
 (10 5 (:DEFINITION TRUE-LISTP))
 (4 4 (:LINEAR N20P-LOGAND-N20P-LESS-THAN-1048576))
 (4 4 (:LINEAR N16P-LOGAND-N16P-LESS-THAN-65536))
 (4 4 (:LINEAR N12P-LOGAND-N12P-LESS-THAN-4096))
 (4 4 (:LINEAR N08P-LOGAND-N08P-LESS-THAN-256))
 (4 4 (:LINEAR N05P-LOGAND-N05P-LESS-THAN-32))
 (4 4 (:LINEAR N04P-LOGAND-N04P-LESS-THAN-16))
 (4 4 (:LINEAR N03P-LOGAND-N03P-LESS-THAN-8))
 (4 4 (:LINEAR N02P-LOGAND-N02P-LESS-THAN-4))
 (4 4 (:LINEAR N01P-LOGAND-N01P-LESS-THAN-2))
 )
(X86-32$CP)
(X86-32-CONCRETE-STOBJ-ARRAY-THMS-1)
(X86-32-CONCRETE-STOBJ-ARRAY-THMS)
(RGFP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(RGFP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(SEGP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(SEGP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(STRP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(STRP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(SSRP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(SSRP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(CTRP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(CTRP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(DBGP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(DBGP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(SEG-BASEP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(SEG-BASEP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(SEG-LIMITP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(SEG-LIMITP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(SEG-ACCESSP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(SEG-ACCESSP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(MEM-TABLEP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(MEM-ARRAYP-FORWARD
 (14 14 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(MEM-ARRAYP-UPDATE-NTH
 (48 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (21 15 (:REWRITE DEFAULT-CAR))
 (20 14 (:REWRITE DEFAULT-CDR))
 (15 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE ZP-OPEN))
 )
(NATP-MEM-ARRAYI
 (24 11 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (22 11 (:TYPE-PRESCRIPTION NATP-NTH))
 (11 11 (:TYPE-PRESCRIPTION NAT-LISTP))
 (11 11 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(NTH-OF-MEM-ARRAYI-LESS-THAN-EXPT-2-8
 (83 29 (:REWRITE DEFAULT-<-1))
 (35 29 (:REWRITE DEFAULT-<-2))
 (26 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 9 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE ZP-OPEN))
 )
(MEM-ARRAYI-LESS-THAN-EXPT-2-8
 (42 17 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (34 17 (:TYPE-PRESCRIPTION NATP-NTH))
 (17 17 (:TYPE-PRESCRIPTION NAT-LISTP))
 (17 17 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 )
(DISABLE-STOBJ-FNS-FN-1)
(X86-32$CP-FORWARD-TO-X86-32$CP-PRE
 (1366 684 (:TYPE-PRESCRIPTION NATP-NTH))
 (1366 684 (:TYPE-PRESCRIPTION INTEGERP-NTH))
 (49 25 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-+-1))
 (9 1 (:DEFINITION GOOD-MEM-ARRAYP-1-LOGIC))
 (5 3 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE EXPECTED-MEM-ARRAY-NEXT-ADDR-ONLY-DEPENDS-ON-MEM-TABLE))
 )
(X86-32$CP-FORWARD-TO-GOOD-MEMP)
