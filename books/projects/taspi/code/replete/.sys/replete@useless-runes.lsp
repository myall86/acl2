(REPLETE-TREES)
(REPLETE-TREES-WHEN-NOT-CONSP
 (19 19 (:TYPE-PRESCRIPTION REPLETE-TREES))
 )
(REPLETE-TREES-OF-CONSP
 (713 12 (:DEFINITION HONS-ASSOC-EQUAL))
 (487 35 (:REWRITE NOT-MEMBER-NOT-CONSP-ASSOC))
 (167 35 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (136 34 (:REWRITE MEMBER-GEN-WHEN-NOT-CONS))
 (115 91 (:REWRITE DEFAULT-CAR))
 (102 102 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (96 52 (:REWRITE DEFAULT-CDR))
 (80 80 (:TYPE-PRESCRIPTION MEMBER-GEN))
 (79 79 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (64 12 (:DEFINITION HONS-EQUAL))
 (58 34 (:REWRITE STRIP-CARS-GEN-WHEN-NOT-CONSP))
 (57 39 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (42 6 (:REWRITE MEMBER-GIVES-ASSOC-HQUAL))
 (41 41 (:REWRITE SUBSET-SAME-MEMBERS))
 (41 41 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (41 41 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (35 35 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (35 35 (:REWRITE NOT-MEMBER-SUBSET))
 (25 25 (:REWRITE REPLETE-TREES-WHEN-NOT-CONSP))
 (24 6 (:REWRITE MEMBER-TAXA-ASSOC-HQUAL))
 (22 16 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (22 16 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (22 16 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (20 10 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (19 1 (:REWRITE MEMBER-GEN-OF-CONSP))
 (16 16 (:REWRITE |(equal (- x) (- y))|))
 (14 1 (:REWRITE GOOD-TAXON-INDEX-HALIST-OF-CONSP))
 (13 1 (:REWRITE STRIP-CARS-GEN-OF-CONSP))
 (10 10 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (6 6 (:REWRITE GET-TAXA-FROM-TAXON-INDEX-WHEN-NOT-CONSP))
 (3 3 (:TYPE-PRESCRIPTION HONS-GET))
 (3 3 (:TYPE-PRESCRIPTION HONS-ACONS))
 )
(REPLETE-TREES-LIST-TOP1
 (1 1 (:TYPE-PRESCRIPTION REPLETE-TREES))
 )
(REPLETE-TREES-LIST-TOP1-WHEN-NOT-CONSP
 (19 19 (:TYPE-PRESCRIPTION REPLETE-TREES-LIST-TOP1))
 )
(REPLETE-TREES-LIST-TOP1-OF-CONSP
 (366 6 (:DEFINITION HONS-ASSOC-EQUAL))
 (262 18 (:REWRITE NOT-MEMBER-NOT-CONSP-ASSOC))
 (100 18 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (73 5 (:REWRITE DEFAULT-+-2))
 (72 18 (:REWRITE MEMBER-GEN-WHEN-NOT-CONS))
 (66 66 (:TYPE-PRESCRIPTION REPLETE-TREES))
 (54 54 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (51 39 (:REWRITE DEFAULT-CAR))
 (49 21 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (46 18 (:REWRITE STRIP-CARS-GEN-WHEN-NOT-CONSP))
 (42 42 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (36 36 (:TYPE-PRESCRIPTION MEMBER-GEN))
 (30 15 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (30 6 (:DEFINITION HONS-EQUAL))
 (28 20 (:REWRITE DEFAULT-CDR))
 (24 6 (:TYPE-PRESCRIPTION BOUND-TO-NAT-HET-NUMBER))
 (18 18 (:REWRITE SUBSET-SAME-MEMBERS))
 (18 18 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (18 18 (:REWRITE NOT-MEMBER-SUBSET))
 (18 18 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (18 18 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (15 15 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (14 2 (:REWRITE BOUND-TO-NAT-HET-NUMBER))
 (12 3 (:REWRITE MEMBER-TAXA-ASSOC-HQUAL))
 (10 10 (:TYPE-PRESCRIPTION BOUND-TO-NAT-LIST))
 (6 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 6 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 6 (:REWRITE REPLETE-TREES-LIST-TOP1-WHEN-NOT-CONSP))
 (6 6 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 6 (:REWRITE |(equal (- x) (- y))|))
 (6 2 (:REWRITE BOUND-TO-NAT-ATOM-DB))
 (5 5 (:REWRITE REPLETE-TREES-WHEN-NOT-CONSP))
 (5 5 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (5 5 (:REWRITE NORMALIZE-ADDENDS))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE MEMBER-GIVES-ASSOC-HQUAL))
 (2 2 (:REWRITE BOUND-TO-NAT-LIST-WHEN-NOT-CONSP))
 )
(REPLETE-TREES-LIST-TOP)
(SUM-FREQUENCIES-LIST-MEASURE
 (23 1 (:REWRITE INTEGER-HALISTP-HALISTP))
 (20 1 (:DEFINITION INTEGER-HALISTP))
 (9 2 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (7 1 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (7 1 (:DEFINITION LEN))
 (5 5 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (4 1 (:REWRITE GOOD-TAXON-INTEGER-LISTP-ALISTP-GEN))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION TIP-P))
 (2 2 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:META META-INTEGERP-CORRECT))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (1 1 (:REWRITE NORMALIZE-ADDENDS))
 (1 1 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE ALISTP-GEN-OF-NOT-CONSP))
 )
(FREQUENCY-MEASURE)
(SUM-FREQUENCIES-LIST
 (3478 188 (:DEFINITION INTEGER-ABS))
 (3033 1076 (:REWRITE DEFAULT-+-2))
 (1786 94 (:REWRITE |(+ (if a b c) x)|))
 (1404 1076 (:REWRITE DEFAULT-+-1))
 (1076 1076 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (1034 94 (:REWRITE NUMERATOR-NEGATIVE))
 (940 94 (:DEFINITION LENGTH))
 (920 20 (:DEFINITION HONS-ASSOC-EQUAL))
 (756 60 (:REWRITE NOT-MEMBER-NOT-CONSP-ASSOC))
 (657 490 (:REWRITE DEFAULT-CDR))
 (638 225 (:REWRITE DEFAULT-UNARY-MINUS))
 (615 332 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (532 400 (:REWRITE DEFAULT-CAR))
 (501 447 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (434 434 (:REWRITE |(+ c (+ d x))|))
 (426 426 (:REWRITE |(< (- x) (- y))|))
 (414 305 (:REWRITE DEFAULT-<-2))
 (411 305 (:REWRITE DEFAULT-<-1))
 (376 376 (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 2))
 (376 376 (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 1))
 (376 376 (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 2))
 (376 376 (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 1))
 (328 328 (:REWRITE FOLD-CONSTS-IN-+))
 (293 293 (:REWRITE |(< (- x) 0)|))
 (282 108 (:LINEAR MEMBER-OF-ALL-IMPLIES-SMALLER-THAN-SMALLEST))
 (234 60 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (232 58 (:REWRITE MEMBER-GEN-WHEN-NOT-CONS))
 (204 102 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (199 83 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (191 191 (:REWRITE SMALLEST-IN-LIST-WHEN-NOT-CONSP))
 (189 189 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (174 174 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (152 152 (:TYPE-PRESCRIPTION MEMBER-OF-ALL))
 (116 116 (:TYPE-PRESCRIPTION MEMBER-GEN))
 (116 116 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (104 104 (:LINEAR SUBTREEP-SMALLER))
 (104 104 (:LINEAR MEMBER-HQUAL-IMPLIES-SMALLER))
 (104 104 (:LINEAR MEMBER-EQUAL-IMPLIES-SMALLER))
 (102 102 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (101 101 (:REWRITE BIGGEST-CDR-WHEN-NOT-CONSP))
 (100 20 (:DEFINITION HONS-EQUAL))
 (97 97 (:REWRITE REDUCE-INTEGERP-+))
 (97 97 (:REWRITE INTEGERP-MINUS-X))
 (97 97 (:META META-INTEGERP-CORRECT))
 (94 94 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (94 94 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (94 94 (:REWRITE DEFAULT-REALPART))
 (94 94 (:REWRITE DEFAULT-NUMERATOR))
 (94 94 (:REWRITE DEFAULT-IMAGPART))
 (94 94 (:REWRITE DEFAULT-DENOMINATOR))
 (94 94 (:REWRITE DEFAULT-COERCE-2))
 (94 94 (:REWRITE DEFAULT-COERCE-1))
 (86 23 (:REWRITE |(equal (+ d x) (+ c y))|))
 (86 23 (:REWRITE |(equal (+ c x) (+ d y))|))
 (83 83 (:REWRITE |(equal (- x) (- y))|))
 (82 35 (:REWRITE |(< d (+ c x))|))
 (80 21 (:REWRITE |(< (+ d x) (+ c y))|))
 (80 21 (:REWRITE |(< (+ c x) (+ d y))|))
 (76 76 (:REWRITE MEMBER-OF-ALL-WHEN-NOT-CONSP))
 (72 18 (:REWRITE MEMBER-OF-ALL-IMPLIES-SMALLER-THAN-SMALLEST))
 (62 29 (:REWRITE |(equal (+ c x) d)|))
 (58 58 (:REWRITE SUBSET-SAME-MEMBERS))
 (58 58 (:REWRITE STRIP-CARS-GEN-WHEN-NOT-CONSP))
 (58 58 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (58 58 (:REWRITE NOT-MEMBER-SUBSET))
 (58 58 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (58 58 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (58 58 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (58 31 (:REWRITE |(< (+ c x) d)|))
 (36 36 (:REWRITE IF-CONS-RANGE-MEMBER-OF-ALL-HALISTP-WHEN-NOT-CONSP))
 (16 4 (:REWRITE NAT-OR-CONS-RANGE-HALISTP-NOT-INTEGERP-CONSP))
 (13 13 (:REWRITE |(equal (- x) 0)|))
 (12 3 (:REWRITE ATOM-CDR-ASSOC-GOOD-TAXON-LIST))
 (9 9 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (8 8 (:TYPE-PRESCRIPTION NAT-OR-CONS-RANGE-HALISTP))
 (7 7 (:REWRITE |(< 0 (- x))|))
 (6 6 (:TYPE-PRESCRIPTION GOOD-INDEX-TAXON-HALIST))
 (4 4 (:REWRITE NAT-OR-CONS-RANGE-HALISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (3 3 (:REWRITE GOOD-INDEX-TAXON-HALIST-WHEN-NOT-CONSP))
 )
(SUM-FREQUENCIES-LIST-WHEN-NOT-CONSP)
(SUM-FREQUENCIES-LIST-OF-CONSP
 (206 2 (:DEFINITION FREQUENCY))
 (128 2 (:DEFINITION HONS-GET))
 (92 2 (:DEFINITION HONS-ASSOC-EQUAL))
 (78 6 (:REWRITE NOT-MEMBER-NOT-CONSP-ASSOC))
 (36 8 (:REWRITE SUM-FREQUENCIES-LIST-WHEN-NOT-CONSP))
 (31 13 (:REWRITE DEFAULT-CDR))
 (26 26 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (24 6 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (24 6 (:REWRITE MEMBER-GEN-WHEN-NOT-CONS))
 (18 18 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (16 8 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (12 12 (:TYPE-PRESCRIPTION MEMBER-GEN))
 (12 12 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (11 11 (:REWRITE DEFAULT-CAR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE DEFAULT-+-1))
 (10 2 (:DEFINITION HONS-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (8 2 (:REWRITE NAT-OR-CONS-RANGE-HALISTP-NOT-INTEGERP-CONSP))
 (8 2 (:REWRITE ATOM-CDR-ASSOC-GOOD-TAXON-LIST))
 (6 6 (:REWRITE SUBSET-SAME-MEMBERS))
 (6 6 (:REWRITE STRIP-CARS-GEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (6 6 (:REWRITE NOT-MEMBER-SUBSET))
 (6 6 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (6 6 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (6 6 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (5 5 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (5 5 (:REWRITE NORMALIZE-ADDENDS))
 (4 4 (:TYPE-PRESCRIPTION NAT-OR-CONS-RANGE-HALISTP))
 (4 4 (:TYPE-PRESCRIPTION GOOD-INDEX-TAXON-HALIST))
 (2 2 (:TYPE-PRESCRIPTION IF-CONS-RANGE-MEMBER-OF-ALL-HALISTP))
 (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (2 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (2 2 (:REWRITE NAT-OR-CONS-RANGE-HALISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE IF-CONS-RANGE-MEMBER-OF-ALL-HALISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE GOOD-INDEX-TAXON-HALIST-WHEN-NOT-CONSP))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:META META-INTEGERP-CORRECT))
 )
