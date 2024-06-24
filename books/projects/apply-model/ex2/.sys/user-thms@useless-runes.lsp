(MODAPP::COLLECT-EXAMPLE)
(MODAPP::COLLECT-COLLECT-EXAMPLE
 (4 2 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (1 1 (:REWRITE MODAPP::APPLY$-WARRANT-COLLECT-NECC))
 )
(MODAPP::RECUR-BY-COLLECT-EXAMPLE)
(MODAPP::COLLECT*-COLLECT-EXAMPLE
 (30 15 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (1 1 (:REWRITE MODAPP::APPLY$-WARRANT-SQUARE-NECC))
 (1 1 (:REWRITE MODAPP::APPLY$-WARRANT-COLLECT-NECC))
 )
(MODAPP::COLLECT-MY-APPEND1
 (45 15 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (30 30 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (24 22 (:REWRITE DEFAULT-CAR))
 (21 19 (:REWRITE DEFAULT-CDR))
 )
(MODAPP::SUMLIST-MY-APPEND1
 (70 35 (:REWRITE DEFAULT-+-2))
 (69 35 (:REWRITE DEFAULT-+-1))
 (45 15 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (30 30 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (19 18 (:REWRITE DEFAULT-CAR))
 (16 15 (:REWRITE DEFAULT-CDR))
 (11 11 (:TYPE-PRESCRIPTION MODAPP::MY-APPEND1))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MODAPP::ALL-MY-APPEND1
 (87 29 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (58 58 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (42 39 (:REWRITE DEFAULT-CAR))
 (31 29 (:REWRITE DEFAULT-CDR))
 (22 22 (:TYPE-PRESCRIPTION MODAPP::MY-APPEND1))
 )
(MODAPP::XISTS-MY-APPEND1
 (90 30 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (60 60 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (43 40 (:REWRITE DEFAULT-CAR))
 (32 30 (:REWRITE DEFAULT-CDR))
 (24 24 (:TYPE-PRESCRIPTION MODAPP::MY-APPEND1))
 )
(MODAPP::LEN-FILTER
 (24 12 (:REWRITE DEFAULT-+-2))
 (18 6 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (14 13 (:REWRITE DEFAULT-CDR))
 (12 12 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 6 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-CAR))
 )
(MODAPP::FILTER-V-ALL
 (1047 13 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (1009 13 (:DEFINITION MODAPP::TAMEP))
 (412 411 (:REWRITE DEFAULT-CDR))
 (206 205 (:REWRITE DEFAULT-CAR))
 (204 12 (:DEFINITION LENGTH))
 (144 36 (:REWRITE O-P-O-INFP-CAR))
 (129 43 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (120 12 (:DEFINITION SYMBOL-LISTP))
 (110 110 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (73 73 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (72 72 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (60 60 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (56 28 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE O-P-DEF-O-FINP-1))
 (36 12 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (28 28 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-COERCE-2))
 (12 12 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 )
(MODAPP::FILTER-V-XISTS
 (63 21 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (42 42 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (28 28 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE DEFAULT-CDR))
 )
(MODAPP::SUMLIST-NATS
 (1785 139 (:REWRITE DEFAULT-PLUS-2))
 (801 139 (:REWRITE DEFAULT-PLUS-1))
 (642 642 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (642 642 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (638 95 (:REWRITE DEFAULT-TIMES-2))
 (542 542 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (542 542 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (542 542 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (542 542 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (328 24 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (257 13 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (120 5 (:REWRITE |(+ (if a b c) x)|))
 (99 90 (:REWRITE DEFAULT-TIMES-1))
 (90 10 (:REWRITE ACL2-NUMBERP-X))
 (83 17 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (60 60 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (41 1 (:LINEAR EXPT-X->=-X))
 (41 1 (:LINEAR EXPT->=-1-TWO))
 (41 1 (:LINEAR EXPT->=-1-ONE))
 (41 1 (:LINEAR EXPT->-1-TWO))
 (41 1 (:LINEAR EXPT-<=-1-TWO))
 (41 1 (:LINEAR EXPT-<=-1-ONE))
 (41 1 (:LINEAR EXPT-<-1-ONE))
 (40 10 (:REWRITE RATIONALP-X))
 (40 1 (:LINEAR EXPT-X->-X))
 (40 1 (:LINEAR EXPT->-1-ONE))
 (40 1 (:LINEAR EXPT-<-1-TWO))
 (38 38 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (38 38 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP-BASE))
 (33 6 (:REWRITE DEFAULT-MINUS))
 (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-3L))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-2L))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-1L))
 (26 26 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (24 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (24 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (21 21 (:REWRITE DEFAULT-EXPT-2))
 (21 21 (:REWRITE DEFAULT-EXPT-1))
 (21 21 (:REWRITE |(expt 1/c n)|))
 (21 21 (:REWRITE |(expt (- x) n)|))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE SIMPLIFY-SUMS-<))
 (14 14 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (14 14 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (14 14 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (14 14 (:REWRITE REDUCE-INTEGERP-+))
 (14 14 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 14 (:REWRITE INTEGERP-MINUS-X))
 (14 14 (:REWRITE INTEGERP-<-CONSTANT))
 (14 14 (:REWRITE CONSTANT-<-INTEGERP))
 (14 14 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (14 14 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (14 14 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (14 14 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (14 14 (:REWRITE |(< c (- x))|))
 (14 14 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (14 14 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (14 14 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (14 14 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (14 14 (:REWRITE |(< (/ x) (/ y))|))
 (14 14 (:REWRITE |(< (- x) c)|))
 (14 14 (:REWRITE |(< (- x) (- y))|))
 (14 14 (:META META-INTEGERP-CORRECT))
 (13 13 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (13 13 (:REWRITE |(equal c (/ x))|))
 (13 13 (:REWRITE |(equal c (- x))|))
 (13 13 (:REWRITE |(equal (/ x) c)|))
 (13 13 (:REWRITE |(equal (/ x) (/ y))|))
 (13 13 (:REWRITE |(equal (- x) c)|))
 (13 13 (:REWRITE |(equal (- x) (- y))|))
 (13 12 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE REDUCE-RATIONALP-+))
 (10 10 (:REWRITE REDUCE-RATIONALP-*))
 (10 10 (:REWRITE RATIONALP-MINUS-X))
 (10 10 (:REWRITE |(* (- x) y)|))
 (10 10 (:META META-RATIONALP-CORRECT))
 (8 8 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (8 8 (:REWRITE |(equal (+ (- c) x) y)|))
 (7 7 (:REWRITE |(< x (+ c/d y))|))
 (7 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE MODAPP::APPLY$-WARRANT-SQUARE-NECC))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (4 4 (:REWRITE O-INFP->NEQ-0))
 (4 4 (:REWRITE |(< (/ x) 0)|))
 (4 4 (:REWRITE |(< (* x y) 0)|))
 (3 3 (:REWRITE |(< 0 (* x y))|))
 (3 3 (:REWRITE |(< (+ c/d x) y)|))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (2 2 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (1 1 (:REWRITE |(* c (expt d n))|))
 (1 1 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (1 1 (:LINEAR EXPT-LINEAR-UPPER-<))
 (1 1 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (1 1 (:LINEAR EXPT-LINEAR-LOWER-<))
 )
(MODAPP::REV-REV-VERSION-1
 (6522 76 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (6296 76 (:DEFINITION MODAPP::TAMEP))
 (2516 2504 (:REWRITE DEFAULT-CDR))
 (1340 1328 (:REWRITE DEFAULT-CAR))
 (1324 331 (:REWRITE O-P-O-INFP-CAR))
 (1241 73 (:DEFINITION LENGTH))
 (1022 146 (:DEFINITION LEN))
 (740 74 (:DEFINITION SYMBOL-LISTP))
 (446 446 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
 (442 442 (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
 (370 370 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (331 331 (:REWRITE O-P-DEF-O-FINP-1))
 (292 146 (:REWRITE DEFAULT-+-2))
 (220 74 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (146 146 (:TYPE-PRESCRIPTION LEN))
 (146 146 (:REWRITE DEFAULT-+-1))
 (73 73 (:REWRITE DEFAULT-COERCE-2))
 (73 73 (:REWRITE DEFAULT-COERCE-1))
 (22 22 (:REWRITE MODAPP::APPLY$-WARRANT-MY-REV-NECC))
 )
(MODAPP::FOLDR-AS-MY-APPEND1
 (81 81 (:TYPE-PRESCRIPTION MODAPP::MY-APPEND1))
 (18 18 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(MODAPP::FOLDR-AS-MY-REV
 (133 114 (:REWRITE DEFAULT-CAR))
 (84 74 (:REWRITE DEFAULT-CDR))
 (27 27 (:TYPE-PRESCRIPTION MODAPP::EV$-LIST))
 (26 6 (:DEFINITION MODAPP::MY-APPEND1))
 (4 4 (:REWRITE MODAPP::APPLY$-WARRANT-FOLDR-NECC))
 )
(MODAPP::REV-REV-VERSION-2
 (6522 76 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (2931 2918 (:REWRITE DEFAULT-CDR))
 (2000 1986 (:REWRITE DEFAULT-CAR))
 (1340 335 (:REWRITE O-P-O-INFP-CAR))
 (1241 73 (:DEFINITION LENGTH))
 (1022 146 (:DEFINITION LEN))
 (740 74 (:DEFINITION SYMBOL-LISTP))
 (370 370 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (335 335 (:REWRITE O-P-DEF-O-FINP-1))
 (292 146 (:REWRITE DEFAULT-+-2))
 (146 146 (:TYPE-PRESCRIPTION LEN))
 (146 146 (:REWRITE DEFAULT-+-1))
 (73 73 (:REWRITE DEFAULT-COERCE-2))
 (73 73 (:REWRITE DEFAULT-COERCE-1))
 (22 22 (:REWRITE MODAPP::APPLY$-WARRANT-FOLDR-NECC))
 )
(MODAPP::REV-REV-VERSION-3
 (8703 101 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
 (6183 5988 (:REWRITE DEFAULT-CDR))
 (4188 3991 (:REWRITE DEFAULT-CAR))
 (2917 653 (:REWRITE O-P-O-INFP-CAR))
 (1683 99 (:DEFINITION LENGTH))
 (1600 160 (:DEFINITION SYMBOL-LISTP))
 (1386 198 (:DEFINITION LEN))
 (958 653 (:REWRITE O-P-DEF-O-FINP-1))
 (800 800 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (793 793 (:TYPE-PRESCRIPTION MODAPP::EV$-LIST))
 (396 198 (:REWRITE DEFAULT-+-2))
 (198 198 (:TYPE-PRESCRIPTION LEN))
 (198 198 (:REWRITE DEFAULT-+-1))
 (122 122 (:TYPE-PRESCRIPTION O-FINP))
 (99 99 (:REWRITE DEFAULT-COERCE-2))
 (99 99 (:REWRITE DEFAULT-COERCE-1))
 (21 21 (:REWRITE MODAPP::APPLY$-WARRANT-FOLDR-NECC))
 )
(MODAPP::SUMLIST-BINARY-*-CONSTANT
 (159 159 (:REWRITE DEFAULT-CDR))
 (111 111 (:REWRITE DEFAULT-CAR))
 (68 4 (:DEFINITION LENGTH))
 (56 8 (:DEFINITION LEN))
 (48 12 (:REWRITE O-P-O-INFP-CAR))
 (30 15 (:REWRITE DEFAULT-+-2))
 (28 4 (:DEFINITION SYMBOL-LISTP))
 (21 11 (:REWRITE DEFAULT-*-2))
 (19 11 (:REWRITE DEFAULT-*-1))
 (18 15 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE O-P-DEF-O-FINP-1))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::LAMB-X-X-IS-IDENTITY
 (21 13 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE MODAPP::APPLY$-EQUIVALENCE-NECC))
 )
(MODAPP::EXAMPLE-OF-LOOP$-REWRITING
 (56 4 (:DEFINITION MODAPP::SUMLIST))
 (28 4 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (20 4 (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
 (14 7 (:REWRITE DEFAULT-+-2))
 (14 7 (:REWRITE DEFAULT-+-1))
 (13 13 (:REWRITE DEFAULT-CAR))
 (11 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-*-1))
 (4 4 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE CAR-CONS))
 (4 4 (:DEFINITION IDENTITY))
 (3 1 (:DEFINITION MODAPP::MY-APPEND1))
 )
(MODAPP::GENERAL-COLLECT-IS-A-FOLDR
 (169 168 (:REWRITE DEFAULT-CDR))
 (145 144 (:REWRITE DEFAULT-CAR))
 (68 4 (:DEFINITION LENGTH))
 (56 8 (:DEFINITION LEN))
 (32 8 (:REWRITE O-P-O-INFP-CAR))
 (28 4 (:DEFINITION SYMBOL-LISTP))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE O-P-DEF-O-FINP-1))
 (8 8 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::FOLDR-AS-COLLECT
 (154 153 (:REWRITE DEFAULT-CDR))
 (130 129 (:REWRITE DEFAULT-CAR))
 (68 4 (:DEFINITION LENGTH))
 (56 8 (:DEFINITION LEN))
 (32 8 (:REWRITE O-P-O-INFP-CAR))
 (28 4 (:DEFINITION SYMBOL-LISTP))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE O-P-DEF-O-FINP-1))
 (8 8 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::FOLDR-AS-SUMLIST
 (154 153 (:REWRITE DEFAULT-CDR))
 (130 129 (:REWRITE DEFAULT-CAR))
 (68 4 (:DEFINITION LENGTH))
 (56 8 (:DEFINITION LEN))
 (36 18 (:REWRITE DEFAULT-+-2))
 (32 8 (:REWRITE O-P-O-INFP-CAR))
 (28 18 (:REWRITE DEFAULT-+-1))
 (28 4 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE O-P-DEF-O-FINP-1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::FOLDR-AS-FILTER
 (196 194 (:REWRITE DEFAULT-CDR))
 (175 173 (:REWRITE DEFAULT-CAR))
 (85 5 (:DEFINITION LENGTH))
 (70 10 (:DEFINITION LEN))
 (40 10 (:REWRITE O-P-O-INFP-CAR))
 (35 5 (:DEFINITION SYMBOL-LISTP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE O-P-DEF-O-FINP-1))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::FOLDR-AS-ALL
 (169 168 (:REWRITE DEFAULT-CDR))
 (126 125 (:REWRITE DEFAULT-CAR))
 (85 5 (:DEFINITION LENGTH))
 (70 10 (:DEFINITION LEN))
 (42 14 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (40 10 (:REWRITE O-P-O-INFP-CAR))
 (38 38 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (35 5 (:DEFINITION SYMBOL-LISTP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 5 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE O-P-DEF-O-FINP-1))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::FOLDR-AS-XISTS
 (169 168 (:REWRITE DEFAULT-CDR))
 (126 125 (:REWRITE DEFAULT-CAR))
 (85 5 (:DEFINITION LENGTH))
 (70 10 (:DEFINITION LEN))
 (42 14 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
 (40 10 (:REWRITE O-P-O-INFP-CAR))
 (38 38 (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
 (35 5 (:DEFINITION SYMBOL-LISTP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 5 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE O-P-DEF-O-FINP-1))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(MODAPP::MAXLIST-NON-NIL
 (504 7 (:DEFINITION MODAPP::TAMEP))
 (211 208 (:REWRITE DEFAULT-CDR))
 (133 130 (:REWRITE DEFAULT-CAR))
 (119 7 (:DEFINITION LENGTH))
 (98 14 (:DEFINITION LEN))
 (56 14 (:REWRITE O-P-O-INFP-CAR))
 (49 7 (:DEFINITION SYMBOL-LISTP))
 (28 28 (:TYPE-PRESCRIPTION O-P))
 (28 14 (:REWRITE DEFAULT-+-2))
 (21 7 (:REWRITE MODAPP::APPLY$-PRIMP-BADGE))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 14 (:REWRITE O-P-DEF-O-FINP-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE DEFAULT-<-1))
 (7 7 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (7 4 (:REWRITE DEFAULT-<-2))
 )
(MODAPP::FOLDR-AS-MAXLIST
 (1187 1184 (:REWRITE DEFAULT-CDR))
 (1110 1100 (:REWRITE DEFAULT-CAR))
 (357 21 (:DEFINITION LENGTH))
 (294 42 (:DEFINITION LEN))
 (168 42 (:REWRITE O-P-O-INFP-CAR))
 (147 21 (:DEFINITION SYMBOL-LISTP))
 (84 42 (:REWRITE DEFAULT-+-2))
 (78 78 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (60 35 (:REWRITE DEFAULT-<-2))
 (42 42 (:TYPE-PRESCRIPTION LEN))
 (42 42 (:REWRITE O-P-DEF-O-FINP-1))
 (42 42 (:REWRITE DEFAULT-+-1))
 (21 21 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (21 21 (:REWRITE DEFAULT-COERCE-2))
 (21 21 (:REWRITE DEFAULT-COERCE-1))
 )
