(VALID-TAXON)
(VALID-CHAR)
(VALID-SEQ)
(VALID-SEQUENCES)
(VALID-SEQUENCES-LENGTH-N)
(VALID-SEQUENCES-SAME-LENGTH)
(GET-TAXA-FROM-SEQUENCES
 (284 10 (:REWRITE INTEGER-HALISTP-HALISTP))
 (259 14 (:DEFINITION INTEGER-HALISTP))
 (101 101 (:REWRITE DEFAULT-CAR))
 (96 22 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (74 11 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (64 64 (:REWRITE DEFAULT-CDR))
 (54 54 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (29 29 (:REWRITE REDUCE-INTEGERP-+))
 (29 29 (:REWRITE INTEGERP-MINUS-X))
 (29 29 (:META META-INTEGERP-CORRECT))
 (24 1 (:REWRITE GOOD-TAXON-INDEX-HALIST-OF-CONSP))
 (22 22 (:TYPE-PRESCRIPTION TIP-P))
 (8 8 (:REWRITE ALISTP-GEN-OF-NOT-CONSP))
 (5 5 (:REWRITE CAR-CONS))
 (3 3 (:REWRITE CDR-CONS))
 )
(TREE-MATCHES-SEQUENCES
 (666 36 (:DEFINITION INTEGER-ABS))
 (532 184 (:REWRITE DEFAULT-+-2))
 (342 18 (:REWRITE |(+ (if a b c) x)|))
 (235 184 (:REWRITE DEFAULT-+-1))
 (198 18 (:REWRITE NUMERATOR-NEGATIVE))
 (184 184 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (180 18 (:DEFINITION LENGTH))
 (126 18 (:DEFINITION LEN))
 (124 44 (:REWRITE DEFAULT-UNARY-MINUS))
 (108 95 (:REWRITE DEFAULT-CAR))
 (91 77 (:REWRITE DEFAULT-CDR))
 (78 70 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (72 72 (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 2))
 (72 72 (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 1))
 (72 72 (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 2))
 (72 72 (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 1))
 (70 70 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (65 65 (:REWRITE |(< (- x) (- y))|))
 (61 47 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (61 47 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (56 56 (:REWRITE FOLD-CONSTS-IN-+))
 (54 54 (:REWRITE |(< (- x) 0)|))
 (50 45 (:REWRITE DEFAULT-<-2))
 (48 45 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (20 20 (:LINEAR SUBTREEP-SMALLER))
 (20 8 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (20 8 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (19 19 (:REWRITE REDUCE-INTEGERP-+))
 (19 19 (:REWRITE INTEGERP-MINUS-X))
 (19 19 (:META META-INTEGERP-CORRECT))
 (19 1 (:REWRITE |(< (if a b c) x)|))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (18 18 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (18 18 (:REWRITE DEFAULT-REALPART))
 (18 18 (:REWRITE DEFAULT-NUMERATOR))
 (18 18 (:REWRITE DEFAULT-IMAGPART))
 (18 18 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (17 5 (:REWRITE |(equal (+ d x) (+ c y))|))
 (17 5 (:REWRITE |(< (+ d x) (+ c y))|))
 (14 1 (:DEFINITION POSP))
 (12 5 (:REWRITE |(equal (+ c x) d)|))
 (8 8 (:REWRITE |(equal (- x) (- y))|))
 (8 4 (:REWRITE |(< d (+ c x y))|))
 (6 3 (:REWRITE |(< (+ c x) d)|))
 (4 2 (:REWRITE |(equal (+ c x y) d)|))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (2 2 (:REWRITE |(< 0 (- x))|))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (1 1 (:REWRITE |(equal (- x) 0)|))
 )
(VALID-SEQUENCES-SAME-LENGTH-VALID-SEQUENCES
 (411 411 (:REWRITE DEFAULT-CAR))
 (128 64 (:REWRITE DEFAULT-+-2))
 (64 64 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (64 64 (:REWRITE NORMALIZE-ADDENDS))
 (64 64 (:REWRITE DEFAULT-+-1))
 (30 10 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (30 10 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (30 10 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (10 10 (:REWRITE |(equal (- x) (- y))|))
 )
(ASSOC-HQUAL-VALID-SEQUENCES-LENGTH-N
 (92 92 (:REWRITE DEFAULT-CAR))
 (76 19 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (60 60 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (59 53 (:REWRITE DEFAULT-CDR))
 (57 57 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (49 11 (:REWRITE MEMBER-STRIP-CARS-GOOD-TAXON-BDD-ASSOC))
 (40 10 (:REWRITE MEMBER-TAXA-ASSOC-HQUAL))
 (30 30 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (28 14 (:REWRITE DEFAULT-+-2))
 (28 7 (:DEFINITION VALID-SEQ))
 (26 16 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (26 16 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (26 16 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (24 12 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (24 6 (:REWRITE ATOM-CDR-ASSOC-GOOD-TAXON-LIST))
 (21 21 (:TYPE-PRESCRIPTION GOOD-TAXON-BDD-ALIST))
 (21 21 (:REWRITE SUBSET-SAME-MEMBERS))
 (21 21 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (21 21 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (20 20 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (20 20 (:REWRITE NOT-MEMBER-SUBSET))
 (16 16 (:REWRITE |(equal (- x) (- y))|))
 (14 14 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (14 14 (:REWRITE NORMALIZE-ADDENDS))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (12 12 (:TYPE-PRESCRIPTION GOOD-INDEX-TAXON-HALIST))
 (11 11 (:REWRITE GOOD-TAXON-BDD-ALIST-WHEN-NOT-CONSP))
 (10 10 (:REWRITE MEMBER-GIVES-ASSOC-HQUAL))
 (7 7 (:DEFINITION VALID-CHAR))
 (6 6 (:REWRITE GOOD-INDEX-TAXON-HALIST-WHEN-NOT-CONSP))
 (4 1 (:REWRITE ASSOC-CAR-FROM-SUBSET))
 )
(VALID-SEQUENCES-SAME-LENGTH-ASSOC-HQUAL
 (483 483 (:REWRITE DEFAULT-CAR))
 (382 64 (:REWRITE NOT-CONSP-ASSOC-NOT-ASSOC-HQUAL))
 (192 8 (:REWRITE GOOD-TAXON-INDEX-HALIST-OF-CONSP))
 (184 184 (:TYPE-PRESCRIPTION GOOD-TAXON-INDEX-HALIST))
 (178 31 (:REWRITE MEMBER-STRIP-CARS-GOOD-TAXON-BDD-ASSOC))
 (168 168 (:TYPE-PRESCRIPTION STRIP-CARS-GEN))
 (160 29 (:REWRITE MEMBER-TAXA-ASSOC-HQUAL))
 (142 71 (:REWRITE DEFAULT-+-2))
 (92 92 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 (72 44 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (72 44 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (72 44 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (71 71 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (71 71 (:REWRITE NORMALIZE-ADDENDS))
 (71 71 (:REWRITE DEFAULT-+-1))
 (70 70 (:REWRITE SUBSET-SAME-MEMBERS))
 (70 70 (:REWRITE MEMBER-PERM-GIVES-MEMBER))
 (70 70 (:REWRITE MEMBER-DIFFERENCE-MEMBER))
 (68 68 (:REWRITE PROPER-SUBTREE-MEMBER-GEN))
 (68 68 (:REWRITE NOT-MEMBER-SUBSET))
 (64 32 (:TYPE-PRESCRIPTION INTEGER-ASSOC-HQUAL-INTEGER-HALISTP))
 (64 16 (:REWRITE ATOM-CDR-ASSOC-GOOD-TAXON-LIST))
 (60 60 (:TYPE-PRESCRIPTION GOOD-TAXON-BDD-ALIST))
 (60 20 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (54 6 (:REWRITE MEMBER-GEN-OF-CONSP))
 (48 2 (:REWRITE GOOD-TAXON-BDD-ALIST-OF-CONSP))
 (44 44 (:REWRITE |(equal (- x) (- y))|))
 (40 10 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (32 32 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (32 32 (:TYPE-PRESCRIPTION GOOD-INDEX-TAXON-HALIST))
 (31 31 (:REWRITE GOOD-TAXON-BDD-ALIST-WHEN-NOT-CONSP))
 (29 29 (:REWRITE MEMBER-GIVES-ASSOC-HQUAL))
 (24 6 (:REWRITE STRIP-CARS-GEN-OF-CONSP))
 (20 20 (:TYPE-PRESCRIPTION TIP-P))
 (18 18 (:REWRITE REDUCE-INTEGERP-+))
 (18 18 (:REWRITE INTEGERP-MINUS-X))
 (18 18 (:META META-INTEGERP-CORRECT))
 (16 16 (:REWRITE GOOD-INDEX-TAXON-HALIST-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION VALID-BDD))
 (4 1 (:REWRITE ASSOC-CAR-FROM-SUBSET))
 (2 2 (:REWRITE VALID-BDD-WHEN-NOT-CONSP))
 )
(VALID-SEQS-ALISTP-GEN
 (284 10 (:REWRITE INTEGER-HALISTP-HALISTP))
 (270 10 (:DEFINITION VALID-SEQUENCES-LENGTH-N))
 (259 14 (:DEFINITION INTEGER-HALISTP))
 (230 230 (:REWRITE DEFAULT-CAR))
 (156 156 (:REWRITE DEFAULT-CDR))
 (140 20 (:DEFINITION LEN))
 (96 22 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (74 11 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (54 54 (:TYPE-PRESCRIPTION INTEGER-HALISTP))
 (40 40 (:TYPE-PRESCRIPTION VALID-SEQUENCES-LENGTH-N))
 (40 20 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE REDUCE-INTEGERP-+))
 (29 29 (:REWRITE INTEGERP-MINUS-X))
 (29 29 (:META META-INTEGERP-CORRECT))
 (24 1 (:REWRITE GOOD-TAXON-INDEX-HALIST-OF-CONSP))
 (22 22 (:TYPE-PRESCRIPTION TIP-P))
 (20 20 (:TYPE-PRESCRIPTION LEN))
 (20 20 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (20 20 (:REWRITE NORMALIZE-ADDENDS))
 (20 20 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE ALISTP-GEN-OF-NOT-CONSP))
 (5 5 (:REWRITE CAR-CONS))
 (3 3 (:REWRITE CDR-CONS))
 )
