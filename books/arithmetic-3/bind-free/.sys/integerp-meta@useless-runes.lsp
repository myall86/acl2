(INTP-+)
(INTP-*)
(APPLY-FOR-DEFEVALUATOR)
(INTP-EVA)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(INTP-EVA-CONSTRAINT-0)
(INTP-EVA-CONSTRAINT-1)
(INTP-EVA-CONSTRAINT-2)
(INTP-EVA-CONSTRAINT-3)
(INTP-EVA-CONSTRAINT-4)
(INTP-EVA-CONSTRAINT-5)
(INTP-EVA-CONSTRAINT-6)
(INTP-EVA-CONSTRAINT-7)
(INTP-EVA-CONSTRAINT-8)
(INTP-EVA-CONSTRAINT-9)
(INTP-EVA-CONSTRAINT-10)
(INTP-EVA-CONSTRAINT-11)
(INTP-EVA-CONSTRAINT-12)
(INTP-EVA-CONSTRAINT-13)
(INTP-EVA-CONSTRAINT-14)
(INTP-EVA-CONSTRAINT-15)
(INTP-EVA-CONSTRAINT-16)
(INTP-1)
(INTP-2)
(NINTP-1)
(NINTP-2)
(LEAVES
 (2089 978 (:REWRITE DEFAULT-+-2))
 (1313 978 (:REWRITE DEFAULT-+-1))
 (800 200 (:DEFINITION INTEGER-ABS))
 (800 100 (:DEFINITION LENGTH))
 (500 100 (:DEFINITION LEN))
 (312 244 (:REWRITE DEFAULT-<-2))
 (283 244 (:REWRITE DEFAULT-<-1))
 (200 200 (:REWRITE DEFAULT-UNARY-MINUS))
 (100 100 (:TYPE-PRESCRIPTION LEN))
 (100 100 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (100 100 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (100 100 (:REWRITE DEFAULT-REALPART))
 (100 100 (:REWRITE DEFAULT-NUMERATOR))
 (100 100 (:REWRITE DEFAULT-IMAGPART))
 (100 100 (:REWRITE DEFAULT-DENOMINATOR))
 (100 100 (:REWRITE DEFAULT-COERCE-2))
 (100 100 (:REWRITE DEFAULT-COERCE-1))
 )
(TREE)
(BIG-TREE)
(BAG-LEAVES)
(BAG-TERMS)
(SUBTRACT-LEAF)
(SUBTRACT-BAG)
(COLLECT-BAGS-INTP)
(COLLECT-BAGS-NON-INTP)
(COLLECT-BAGS)
(META-INTEGERP)
(NIQ-BOUNDS
 (95 81 (:REWRITE DEFAULT-<-2))
 (81 81 (:REWRITE DEFAULT-<-1))
 (54 42 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE DEFAULT-*-2))
 (28 28 (:REWRITE DEFAULT-*-1))
 (18 18 (:REWRITE DEFAULT-UNARY-/))
 (18 18 (:REWRITE ARITH-FOLD-CONSTS-IN-*))
 (13 13 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(FLOOR-BOUNDS-1
 (160 10 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (57 45 (:REWRITE DEFAULT-+-2))
 (47 45 (:REWRITE DEFAULT-+-1))
 (33 29 (:REWRITE DEFAULT-<-2))
 (30 10 (:DEFINITION NFIX))
 (29 29 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE DEFAULT-*-2))
 (22 22 (:REWRITE DEFAULT-*-1))
 (19 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE DEFAULT-UNARY-/))
 (10 10 (:DEFINITION IFIX))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 )
(FLOOR-BOUNDS-2
 (3 3 (:REWRITE DEFAULT-UNARY-/))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
(FLOOR-BOUNDS-3
 (80 5 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (27 21 (:REWRITE DEFAULT-+-2))
 (22 21 (:REWRITE DEFAULT-+-1))
 (15 5 (:DEFINITION NFIX))
 (14 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-*-2))
 (9 9 (:REWRITE DEFAULT-*-1))
 (9 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE DEFAULT-UNARY-/))
 (5 5 (:DEFINITION IFIX))
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 )
(IND-HINT
 (32 8 (:DEFINITION O-FIRST-EXPT))
 (28 28 (:REWRITE DEFAULT-*-2))
 (28 28 (:REWRITE DEFAULT-*-1))
 (24 4 (:LINEAR FLOOR-BOUNDS-3))
 (24 4 (:LINEAR FLOOR-BOUNDS-2))
 (22 22 (:REWRITE DEFAULT-CAR))
 (20 5 (:DEFINITION O-FIRST-COEFF))
 (14 9 (:REWRITE DEFAULT-<-1))
 (11 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 4 (:DEFINITION O-RST))
 (4 4 (:TYPE-PRESCRIPTION ABS))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 1 (:DEFINITION NATP))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE ZIP-OPEN))
 (1 1 (:REWRITE ZP-OPEN))
 )
(ONE
 (224 110 (:REWRITE DEFAULT-*-2))
 (110 110 (:REWRITE DEFAULT-*-1))
 (104 56 (:REWRITE DEFAULT-<-2))
 (66 11 (:LINEAR FLOOR-BOUNDS-3))
 (66 11 (:LINEAR FLOOR-BOUNDS-2))
 (64 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (63 56 (:REWRITE DEFAULT-<-1))
 (46 46 (:REWRITE DEFAULT-+-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 (26 26 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (26 26 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (13 13 (:LINEAR EXPT->-1-2))
 (13 13 (:LINEAR EXPT-<-1-2))
 (13 13 (:LINEAR EXPT-<-1-1))
 )
(TWO-X)
(TWO-Y)
(FOO
 (120 36 (:REWRITE DEFAULT-*-2))
 (83 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-*-1))
 (36 12 (:REWRITE COMMUTATIVITY-OF-+))
 (31 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (24 24 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (24 24 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (12 12 (:LINEAR EXPT->-1-2))
 (12 12 (:LINEAR EXPT-<-1-2))
 (12 12 (:LINEAR EXPT-<-1-1))
 )
(LOGAND-BOUNDS
 (386 300 (:REWRITE DEFAULT-*-2))
 (359 239 (:REWRITE DEFAULT-+-2))
 (350 239 (:REWRITE DEFAULT-+-1))
 (300 300 (:REWRITE DEFAULT-*-1))
 (262 121 (:REWRITE DEFAULT-<-2))
 (166 121 (:REWRITE DEFAULT-<-1))
 (150 58 (:REWRITE ZIP-OPEN))
 (108 27 (:REWRITE DEFAULT-UNARY-MINUS))
 (44 44 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (44 44 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (44 44 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (22 22 (:LINEAR EXPT->-1-2))
 (22 22 (:LINEAR EXPT-<-1-2))
 (22 22 (:LINEAR EXPT-<-1-1))
 )
(LOGAND-THM
 (180 4 (:DEFINITION BINARY-LOGAND))
 (72 12 (:REWRITE COMMUTATIVITY-OF-+))
 (48 8 (:DEFINITION EVENP))
 (36 24 (:REWRITE DEFAULT-+-2))
 (36 24 (:REWRITE DEFAULT-+-1))
 (24 20 (:REWRITE DEFAULT-*-2))
 (24 8 (:REWRITE UNICITY-OF-0))
 (24 8 (:REWRITE COMMUTATIVITY-OF-*))
 (20 20 (:REWRITE DEFAULT-*-1))
 (16 8 (:DEFINITION FIX))
 (15 12 (:REWRITE DEFAULT-<-1))
 (13 12 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE ZIP-OPEN))
 )
(INTP-+)
(INTP-*)
(LEAVES
 (341 341 (:REWRITE DEFAULT-CDR))
 (225 225 (:REWRITE DEFAULT-CAR))
 (100 12 (:DEFINITION LENGTH))
 (80 16 (:DEFINITION LEN))
 (75 75 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (54 54 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (36 36 (:TYPE-PRESCRIPTION LEN))
 (32 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (12 4 (:DEFINITION SYMBOL-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(PSEUDO-TERM-LISTP-LEAVES
 (2422 2389 (:REWRITE DEFAULT-CDR))
 (1829 1796 (:REWRITE DEFAULT-CAR))
 (1440 162 (:DEFINITION LENGTH))
 (1160 226 (:DEFINITION LEN))
 (506 506 (:TYPE-PRESCRIPTION LEN))
 (462 231 (:REWRITE DEFAULT-+-2))
 (410 410 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (333 333 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (231 231 (:REWRITE DEFAULT-+-1))
 (162 54 (:DEFINITION SYMBOL-LISTP))
 (59 59 (:REWRITE DEFAULT-COERCE-2))
 (59 59 (:REWRITE DEFAULT-COERCE-1))
 (54 54 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(TREE
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(BIG-TREE
 (22 22 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (22 22 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(BAG-LEAVES
 (256 4 (:DEFINITION PSEUDO-TERMP))
 (100 100 (:REWRITE DEFAULT-CDR))
 (100 12 (:DEFINITION LENGTH))
 (92 92 (:REWRITE DEFAULT-CAR))
 (80 16 (:DEFINITION LEN))
 (42 42 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (36 36 (:TYPE-PRESCRIPTION LEN))
 (32 16 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 8 (:DEFINITION TRUE-LISTP))
 (12 4 (:DEFINITION SYMBOL-LISTP))
 (6 2 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(PSEUDO-TERM-LIST-LISTP-BAG-LEAVES
 (512 8 (:DEFINITION PSEUDO-TERMP))
 (321 310 (:REWRITE DEFAULT-CDR))
 (310 299 (:REWRITE DEFAULT-CAR))
 (200 24 (:DEFINITION LENGTH))
 (165 165 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (160 32 (:DEFINITION LEN))
 (98 98 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (72 72 (:TYPE-PRESCRIPTION LEN))
 (64 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 (32 16 (:DEFINITION TRUE-LISTP))
 (24 8 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(BAG-TERMS
 (5594 66 (:DEFINITION BINARY-LOGAND))
 (3630 66 (:DEFINITION FLOOR))
 (2112 132 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (2104 2080 (:REWRITE DEFAULT-CDR))
 (2086 2062 (:REWRITE DEFAULT-CAR))
 (1778 1120 (:REWRITE DEFAULT-+-2))
 (1640 328 (:DEFINITION LEN))
 (1434 330 (:REWRITE COMMUTATIVITY-OF-+))
 (1318 1120 (:REWRITE DEFAULT-+-1))
 (912 140 (:DEFINITION PSEUDO-TERM-LISTP))
 (480 24 (:DEFINITION LEAVES))
 (452 452 (:REWRITE DEFAULT-<-2))
 (452 452 (:REWRITE DEFAULT-<-1))
 (448 164 (:DEFINITION TRUE-LISTP))
 (428 346 (:REWRITE DEFAULT-*-2))
 (396 132 (:REWRITE COMMUTATIVITY-OF-*))
 (396 132 (:DEFINITION NFIX))
 (396 66 (:DEFINITION EVENP))
 (362 362 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (346 346 (:REWRITE DEFAULT-*-1))
 (330 330 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (330 264 (:REWRITE DEFAULT-UNARY-MINUS))
 (306 82 (:DEFINITION SYMBOL-LISTP))
 (304 304 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (246 82 (:REWRITE UNICITY-OF-0))
 (164 82 (:DEFINITION FIX))
 (160 160 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (144 48 (:DEFINITION FN-SYMB))
 (132 132 (:DEFINITION IFIX))
 (86 66 (:REWRITE ZIP-OPEN))
 (82 82 (:REWRITE DEFAULT-COERCE-2))
 (82 82 (:REWRITE DEFAULT-COERCE-1))
 (72 72 (:TYPE-PRESCRIPTION LEAVES))
 (66 66 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (66 66 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (66 66 (:REWRITE EQUAL-DENOMINATOR-1))
 (66 66 (:REWRITE DEFAULT-NUMERATOR))
 (66 66 (:REWRITE DEFAULT-DENOMINATOR))
 )
(PSEUDO-TERM-LIST-LISTP-BAG-TERMS
 (7456 466 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (4201 2916 (:REWRITE DEFAULT-+-2))
 (3615 2916 (:REWRITE DEFAULT-+-1))
 (2926 2895 (:REWRITE DEFAULT-CAR))
 (2520 126 (:DEFINITION LEAVES))
 (2444 2413 (:REWRITE DEFAULT-CDR))
 (1534 1233 (:REWRITE DEFAULT-*-2))
 (1398 466 (:DEFINITION NFIX))
 (1233 1233 (:REWRITE DEFAULT-*-1))
 (1225 1225 (:REWRITE DEFAULT-<-2))
 (1225 1225 (:REWRITE DEFAULT-<-1))
 (1165 1165 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (1165 932 (:REWRITE DEFAULT-UNARY-MINUS))
 (765 125 (:DEFINITION PSEUDO-TERM-LISTP))
 (756 252 (:DEFINITION FN-SYMB))
 (750 90 (:DEFINITION LENGTH))
 (600 120 (:DEFINITION LEN))
 (466 466 (:DEFINITION IFIX))
 (315 315 (:TYPE-PRESCRIPTION LEN))
 (280 280 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (233 233 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (233 233 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (233 233 (:REWRITE DEFAULT-NUMERATOR))
 (233 233 (:REWRITE DEFAULT-DENOMINATOR))
 (188 188 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (138 60 (:DEFINITION TRUE-LISTP))
 (99 30 (:DEFINITION SYMBOL-LISTP))
 (42 42 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (30 30 (:REWRITE DEFAULT-COERCE-2))
 (30 30 (:REWRITE DEFAULT-COERCE-1))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 15 (:TYPE-PRESCRIPTION LEAVES))
 )
(SUBTRACT-LEAF)
(TRUE-LISTP-SUBTRACT-LEAF
 (49 36 (:REWRITE DEFAULT-CDR))
 (32 24 (:REWRITE DEFAULT-CAR))
 )
(SUBTRACT-BAG
 (679 34 (:DEFINITION SUBTRACT-LEAF))
 (373 291 (:REWRITE DEFAULT-CDR))
 (289 204 (:REWRITE DEFAULT-CAR))
 )
(TRUE-LISTP-SUBTRACT-BAG
 (194 10 (:DEFINITION SUBTRACT-LEAF))
 (116 87 (:REWRITE DEFAULT-CDR))
 (81 58 (:REWRITE DEFAULT-CAR))
 (69 69 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (28 14 (:DEFINITION TRUE-LISTP))
 )
(COLLECT-BAGS-INTP
 (840 12 (:DEFINITION SUBTRACT-BAG))
 (828 2 (:DEFINITION COLLECT-BAGS-INTP))
 (600 24 (:DEFINITION SUBTRACT-LEAF))
 (318 240 (:REWRITE DEFAULT-CDR))
 (306 235 (:REWRITE DEFAULT-CAR))
 (162 162 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (12 6 (:DEFINITION TRUE-LISTP))
 )
(COLLECT-BAGS-NON-INTP
 (816 12 (:DEFINITION SUBTRACT-BAG))
 (798 2 (:DEFINITION COLLECT-BAGS-INTP))
 (582 24 (:DEFINITION SUBTRACT-LEAF))
 (311 240 (:REWRITE DEFAULT-CAR))
 (295 217 (:REWRITE DEFAULT-CDR))
 (162 162 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (22 11 (:DEFINITION TRUE-LISTP))
 )
(COLLECT-BAGS)
(PSEUDO-TERM-LIST-LISTP-COLLECT-BAGS-INTP
 (952 17 (:DEFINITION SUBTRACT-BAG))
 (697 34 (:DEFINITION SUBTRACT-LEAF))
 (422 322 (:REWRITE DEFAULT-CAR))
 (394 298 (:REWRITE DEFAULT-CDR))
 (221 221 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (46 46 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (23 23 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(PSEUDO-TERM-LIST-LISTP-COLLECT-BAGS-NON-INTP
 (8016 120 (:DEFINITION SUBTRACT-BAG))
 (7182 18 (:DEFINITION COLLECT-BAGS-INTP))
 (5730 240 (:DEFINITION SUBTRACT-LEAF))
 (2998 2308 (:REWRITE DEFAULT-CAR))
 (2775 2001 (:REWRITE DEFAULT-CDR))
 (1614 1614 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (70 70 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (35 35 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (24 12 (:DEFINITION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION COLLECT-BAGS-NON-INTP))
 )
(PSEUDO-TERM-LIST-LISTP-COLLECT-BAGS
 (1090 4 (:DEFINITION COLLECT-BAGS-INTP))
 (1040 16 (:DEFINITION SUBTRACT-BAG))
 (943 1 (:DEFINITION COLLECT-BAGS-NON-INTP))
 (746 32 (:DEFINITION SUBTRACT-LEAF))
 (395 301 (:REWRITE DEFAULT-CAR))
 (376 270 (:REWRITE DEFAULT-CDR))
 (220 220 (:TYPE-PRESCRIPTION SUBTRACT-BAG))
 (214 214 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (39 39 (:TYPE-PRESCRIPTION COLLECT-BAGS-INTP))
 (33 3 (:DEFINITION PSEUDO-TERM-LIST-LISTP))
 (18 3 (:DEFINITION PSEUDO-TERM-LISTP))
 (6 6 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (3 3 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(PSEUDO-TERM-LIST-LISTP-IMPLIES-TRUE-LIST-LISTP
 (48 8 (:DEFINITION PSEUDO-TERM-LISTP))
 (25 25 (:REWRITE DEFAULT-CAR))
 (23 23 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (14 7 (:DEFINITION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(META-INTEGERP
 (11222 558 (:DEFINITION PSEUDO-TERM-LIST-LISTP))
 (8383 101 (:DEFINITION TYPE-ALISTP))
 (8300 996 (:DEFINITION LENGTH))
 (7979 101 (:DEFINITION TYPE-ALIST-ENTRYP))
 (6640 1328 (:DEFINITION LEN))
 (5793 5793 (:TYPE-PRESCRIPTION LEN))
 (3832 3832 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3596 124 (:DEFINITION TRUE-LIST-LISTP))
 (2731 2731 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2656 1328 (:REWRITE DEFAULT-+-2))
 (1557 332 (:DEFINITION SYMBOL-LISTP))
 (1530 510 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (1328 1328 (:REWRITE DEFAULT-+-1))
 (332 332 (:REWRITE DEFAULT-COERCE-2))
 (332 332 (:REWRITE DEFAULT-COERCE-1))
 (202 202 (:REWRITE DEFAULT-<-2))
 (202 202 (:REWRITE DEFAULT-<-1))
 )
(TREE-2)
(TREES
 (1974 1512 (:REWRITE DEFAULT-CAR))
 (1188 1188 (:REWRITE DEFAULT-CDR))
 (714 278 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (714 278 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (714 278 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (714 278 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (512 208 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (512 208 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (470 208 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (238 194 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (140 140 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (75 51 (:REWRITE DEFAULT-*-2))
 (69 45 (:REWRITE DEFAULT-+-1))
 (65 45 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE FOLD-CONSTS-IN-*))
 (9 9 (:REWRITE FOLD-CONSTS-IN-+))
 )
(BIG-TREE-2)
(BIG-TREE-BIG-TREE-2
 (2123 1232 (:REWRITE DEFAULT-CAR))
 (743 132 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (743 132 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (743 132 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (743 132 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (743 132 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (596 110 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (283 283 (:REWRITE DEFAULT-CDR))
 (180 91 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (53 53 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 14 (:REWRITE DEFAULT-+-2))
 (18 14 (:REWRITE DEFAULT-*-2))
 )
(TREE-2-LEAVES
 (509 411 (:REWRITE DEFAULT-CAR))
 (230 220 (:REWRITE DEFAULT-CDR))
 (160 76 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (160 76 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (160 76 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (160 76 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (160 76 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (114 58 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (114 58 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (106 58 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (60 52 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (51 51 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (29 18 (:REWRITE DEFAULT-+-1))
 (29 18 (:REWRITE DEFAULT-*-1))
 (25 18 (:REWRITE DEFAULT-+-2))
 (25 18 (:REWRITE DEFAULT-*-2))
 )
(ACL2-NUMBERP-TREE-2
 (365 200 (:REWRITE DEFAULT-CAR))
 (130 21 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (130 21 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (130 21 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (130 21 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (130 21 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (124 19 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (124 19 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (109 19 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (32 17 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (24 24 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-*-2))
 )
(SUBTRACT-LEAF-GOOD-+
 (551 331 (:REWRITE DEFAULT-CAR))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (187 49 (:REWRITE INTP-EVA-CONSTRAINT-11))
 (167 41 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (167 41 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (167 41 (:REWRITE INTP-EVA-CONSTRAINT-2))
 (149 41 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (112 90 (:REWRITE DEFAULT-CDR))
 (63 41 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (38 19 (:REWRITE DEFAULT-+-2))
 (33 19 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(SUBTRACT-LEAF-GOOD-*
 (1337 766 (:REWRITE DEFAULT-CAR))
 (452 111 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (452 111 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (452 111 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (452 111 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (452 111 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (432 103 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (432 103 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (432 103 (:REWRITE INTP-EVA-CONSTRAINT-2))
 (432 103 (:REWRITE INTP-EVA-CONSTRAINT-10))
 (385 103 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (290 228 (:REWRITE DEFAULT-CDR))
 (155 103 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (104 52 (:REWRITE DEFAULT-*-2))
 (89 52 (:REWRITE DEFAULT-*-1))
 (39 39 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (13 13 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE ARITH-FOLD-CONSTS-IN-*))
 )
(SUBTRACT-BAG-GOOD-+
 (1249 719 (:REWRITE DEFAULT-CAR))
 (616 33 (:DEFINITION SUBTRACT-LEAF))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (352 57 (:REWRITE INTP-EVA-CONSTRAINT-11))
 (340 53 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (340 53 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (330 253 (:REWRITE DEFAULT-CDR))
 (299 53 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (93 50 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (74 35 (:REWRITE DEFAULT-+-2))
 (63 35 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 )
(SUBTRACT-BAG-GOOD-*
 (3527 2096 (:REWRITE DEFAULT-CAR))
 (3179 141 (:DEFINITION SUBTRACT-LEAF))
 (1517 1151 (:REWRITE DEFAULT-CDR))
 (839 131 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (839 131 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (839 131 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (839 131 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (839 131 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (827 127 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (827 127 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (827 127 (:REWRITE INTP-EVA-CONSTRAINT-10))
 (727 127 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (226 124 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (138 63 (:REWRITE DEFAULT-*-2))
 (118 63 (:REWRITE DEFAULT-*-1))
 (22 22 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE FOLD-CONSTS-IN-*))
 (3 3 (:REWRITE ARITH-FOLD-CONSTS-IN-*))
 )
(COLLECT-BAGS-INTP-GOOD-+
 (3746 67 (:DEFINITION SUBTRACT-BAG))
 (2741 134 (:DEFINITION SUBTRACT-LEAF))
 (2661 1709 (:REWRITE DEFAULT-CAR))
 (1355 996 (:REWRITE DEFAULT-CDR))
 (871 871 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-11))
 (419 55 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (419 55 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (367 55 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (106 53 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (8 5 (:REWRITE DEFAULT-+-2))
 (8 5 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(COLLECT-BAGS-INTP-GOOD-*
 (3746 67 (:DEFINITION SUBTRACT-BAG))
 (2741 134 (:DEFINITION SUBTRACT-LEAF))
 (2659 1707 (:REWRITE DEFAULT-CAR))
 (1355 996 (:REWRITE DEFAULT-CDR))
 (871 871 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (425 57 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (419 55 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (419 55 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (419 55 (:REWRITE INTP-EVA-CONSTRAINT-10))
 (367 55 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (106 53 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (8 5 (:REWRITE DEFAULT-*-2))
 (8 5 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(COLLECT-BAGS-GOOD
 (19408 290 (:DEFINITION SUBTRACT-BAG))
 (18286 49 (:DEFINITION COLLECT-BAGS-INTP))
 (13870 580 (:DEFINITION SUBTRACT-LEAF))
 (7806 5804 (:REWRITE DEFAULT-CAR))
 (6620 4740 (:REWRITE DEFAULT-CDR))
 (3902 3902 (:TYPE-PRESCRIPTION SUBTRACT-LEAF))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (222 31 (:REWRITE INTP-EVA-CONSTRAINT-11))
 (219 30 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (219 30 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (219 30 (:REWRITE INTP-EVA-CONSTRAINT-2))
 (192 30 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (60 30 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (57 19 (:DEFINITION TREE-2))
 )
(BIG-TREE-TERM
 (46 32 (:REWRITE DEFAULT-CAR))
 (21 14 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (21 14 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (21 14 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (21 14 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (21 14 (:REWRITE INTP-EVA-CONSTRAINT-12))
 (20 17 (:REWRITE DEFAULT-CDR))
 (17 10 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (17 10 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (17 10 (:REWRITE INTP-EVA-CONSTRAINT-2))
 (16 10 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (11 10 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (6 2 (:DEFINITION BIG-TREE-2))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE DEFAULT-*-2))
 (3 2 (:REWRITE DEFAULT-*-1))
 )
(META-INTEGERP-CORRECT
 (1738 1368 (:REWRITE DEFAULT-CAR))
 (1425 1288 (:REWRITE DEFAULT-CDR))
 (1079 13 (:DEFINITION TYPE-ALISTP))
 (1027 13 (:DEFINITION TYPE-ALIST-ENTRYP))
 (832 13 (:DEFINITION PSEUDO-TERMP))
 (406 250 (:REWRITE INTP-EVA-CONSTRAINT-16))
 (406 250 (:REWRITE INTP-EVA-CONSTRAINT-15))
 (406 250 (:REWRITE INTP-EVA-CONSTRAINT-14))
 (406 250 (:REWRITE INTP-EVA-CONSTRAINT-13))
 (325 39 (:DEFINITION LENGTH))
 (302 162 (:REWRITE INTP-EVA-CONSTRAINT-9))
 (302 162 (:REWRITE INTP-EVA-CONSTRAINT-8))
 (300 162 (:REWRITE INTP-EVA-CONSTRAINT-2))
 (283 162 (:REWRITE INTP-EVA-CONSTRAINT-3))
 (260 52 (:DEFINITION LEN))
 (196 162 (:REWRITE INTP-EVA-CONSTRAINT-1))
 (165 98 (:REWRITE DEFAULT-+-2))
 (125 98 (:REWRITE DEFAULT-+-1))
 (117 117 (:TYPE-PRESCRIPTION LEN))
 (84 84 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (73 46 (:REWRITE DEFAULT-*-1))
 (61 46 (:REWRITE DEFAULT-*-2))
 (39 39 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (39 13 (:DEFINITION SYMBOL-LISTP))
 (26 26 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (20 20 (:REWRITE FOLD-CONSTS-IN-*))
 (13 13 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (13 13 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (13 13 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (13 13 (:REWRITE DEFAULT-COERCE-2))
 (13 13 (:REWRITE DEFAULT-COERCE-1))
 )
