(RTL::CAT-EXPAND-BITS
 (61 7 (:REWRITE RTL::BITS-TAIL))
 (59 33 (:REWRITE DEFAULT-+-2))
 (55 33 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE FOLD-CONSTS-IN-+))
 (19 7 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (19 7 (:REWRITE RTL::BITS-NEG))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (14 5 (:REWRITE DEFAULT-*-2))
 (12 6 (:REWRITE UNICITY-OF-0))
 (12 4 (:REWRITE RTL::BVECP-BITN-0))
 (12 4 (:REWRITE RTL::BITN-BVECP-1))
 (8 5 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE RTL::BITN-NEG))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(RTL::CAT-FACT
 (14 14 (:TYPE-PRESCRIPTION RTL::BVECP))
 (14 5 (:REWRITE RTL::BVECP-BITN-0))
 (10 4 (:REWRITE RTL::BITN-BVECP-1))
 (4 4 (:REWRITE RTL::BITN-NEG))
 (1 1 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::CAT-FACT-2
 (45 17 (:REWRITE RTL::BVECP-BITN-0))
 (29 13 (:REWRITE RTL::BITN-BVECP-1))
 (21 1 (:REWRITE RTL::CAT-FACT))
 (13 13 (:REWRITE RTL::BITN-NEG))
 (4 4 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::CAT-FACT-3
 (39 1 (:REWRITE RTL::CAT-FACT-2))
 (26 12 (:REWRITE RTL::BVECP-BITN-0))
 (17 9 (:REWRITE RTL::BITN-BVECP-1))
 (9 9 (:REWRITE RTL::BITN-NEG))
 (2 2 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::CAT-FACT-4
 (45 17 (:REWRITE RTL::BVECP-BITN-0))
 (29 13 (:REWRITE RTL::BITN-BVECP-1))
 (21 1 (:REWRITE RTL::CAT-FACT))
 (13 13 (:REWRITE RTL::BITN-NEG))
 (4 4 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::CAT-FACT-5
 (39 1 (:REWRITE RTL::CAT-FACT-4))
 (26 12 (:REWRITE RTL::BVECP-BITN-0))
 (17 9 (:REWRITE RTL::BITN-BVECP-1))
 (9 9 (:REWRITE RTL::BITN-NEG))
 (2 2 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::CAT-FACT-6
 (49 17 (:REWRITE RTL::BVECP-BITN-0))
 (41 15 (:REWRITE RTL::BITN-BVECP-1))
 (15 15 (:REWRITE RTL::BITN-NEG))
 (2 2 (:REWRITE RTL::BITN-BVECP))
 )
(RTL::BITN-0-OR-1)
(RTL::BITN-0-LESS-THAN-1)
(RTL::BITN-0-LESS-THAN-2)
(RTL::BITS-THAN-2
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (5 3 (:REWRITE DEFAULT-<-2))
 (5 3 (:REWRITE DEFAULT-<-1))
 (5 1 (:REWRITE RTL::BITS-TAIL))
 (1 1 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (1 1 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-EXPANSION-SPECIFIC
 (41 5 (:REWRITE RTL::BITS-TAIL))
 (31 19 (:REWRITE DEFAULT-+-1))
 (29 19 (:REWRITE DEFAULT-+-2))
 (24 8 (:REWRITE RTL::BVECP-BITN-0))
 (24 8 (:REWRITE RTL::BITN-BVECP-1))
 (20 4 (:REWRITE FOLD-CONSTS-IN-+))
 (9 3 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE RTL::BITN-NEG))
 (8 4 (:REWRITE UNICITY-OF-0))
 (7 3 (:REWRITE DEFAULT-*-1))
 (5 5 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (5 5 (:REWRITE RTL::BITS-NEG))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(RTL::BITS-PLUS-REDUCE
 (133 133 (:TYPE-PRESCRIPTION RTL::EXPT-2-POSITIVE-INTEGER-TYPE))
 (56 56 (:REWRITE DEFAULT-+-2))
 (56 56 (:REWRITE DEFAULT-+-1))
 (45 15 (:REWRITE DEFAULT-*-2))
 (20 12 (:REWRITE DEFAULT-<-2))
 (19 19 (:REWRITE RTL::EXPT-WITH-I-NON-INTEGER))
 (19 19 (:REWRITE RTL::EXPT-2-EVALUATOR))
 (17 17 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (17 17 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (17 17 (:REWRITE RTL::EXPT-COMPARE))
 (17 17 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (16 16 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (16 16 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (15 15 (:REWRITE DEFAULT-*-1))
 (14 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE RTL::POWER2-INTEGER))
 (3 3 (:REWRITE RTL::INTEGERP-MINUS))
 (2 2 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE RTL::COLLECT-CONSTANTS-IN-EQUAL-OF-SUMS))
 (2 2 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE RTL::MOVE-NEGATIVE-CONSTANT-1))
 (1 1 (:LINEAR RTL::EXPT-WITH-SMALL-N))
 )
(RTL::CAT-FACT-7
 (204 68 (:REWRITE RTL::BVECP-BITN-0))
 (204 68 (:REWRITE RTL::BITN-BVECP-1))
 (68 68 (:REWRITE RTL::BITN-NEG))
 (41 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (4 4 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-8
 (228 76 (:REWRITE RTL::BVECP-BITN-0))
 (228 76 (:REWRITE RTL::BITN-BVECP-1))
 (76 76 (:REWRITE RTL::BITN-NEG))
 (51 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (6 6 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-9
 (69 23 (:REWRITE RTL::BVECP-BITN-0))
 (69 23 (:REWRITE RTL::BITN-BVECP-1))
 (23 23 (:REWRITE RTL::BITN-NEG))
 (20 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (2 2 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-10
 (39 13 (:REWRITE RTL::BVECP-BITN-0))
 (39 13 (:REWRITE RTL::BITN-BVECP-1))
 (23 8 (:REWRITE DEFAULT-+-2))
 (20 2 (:LINEAR RTL::BITN-0-LESS-THAN-2))
 (13 13 (:REWRITE RTL::BITN-NEG))
 (8 8 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (1 1 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-11
 (2910 970 (:REWRITE RTL::BVECP-BITN-0))
 (2910 970 (:REWRITE RTL::BITN-BVECP-1))
 (2580 258 (:LINEAR RTL::BITN-0-LESS-THAN-2))
 (1360 455 (:REWRITE DEFAULT-+-2))
 (970 970 (:REWRITE RTL::BITN-NEG))
 (455 455 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (10 10 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-12
 (1064 1064 (:TYPE-PRESCRIPTION RTL::BVECP))
 (591 197 (:REWRITE RTL::BVECP-BITN-0))
 (591 197 (:REWRITE RTL::BITN-BVECP-1))
 (444 168 (:REWRITE RTL::BITS-TAIL))
 (364 182 (:REWRITE DEFAULT-+-2))
 (197 197 (:REWRITE RTL::BITN-NEG))
 (182 182 (:REWRITE DEFAULT-+-1))
 (168 168 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (168 168 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-13
 (448 448 (:TYPE-PRESCRIPTION RTL::BVECP))
 (252 84 (:REWRITE RTL::BVECP-BITN-0))
 (252 84 (:REWRITE RTL::BITN-BVECP-1))
 (182 70 (:REWRITE RTL::BITS-TAIL))
 (138 69 (:REWRITE DEFAULT-+-2))
 (84 84 (:REWRITE RTL::BITN-NEG))
 (70 70 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (70 70 (:REWRITE RTL::BITS-NEG))
 (69 69 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-14
 (184 184 (:TYPE-PRESCRIPTION RTL::BVECP))
 (105 35 (:REWRITE RTL::BVECP-BITN-0))
 (105 35 (:REWRITE RTL::BITN-BVECP-1))
 (72 28 (:REWRITE RTL::BITS-TAIL))
 (48 24 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE RTL::BITN-NEG))
 (28 28 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (28 28 (:REWRITE RTL::BITS-NEG))
 (24 24 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-15
 (72 72 (:TYPE-PRESCRIPTION RTL::BVECP))
 (42 14 (:REWRITE RTL::BVECP-BITN-0))
 (42 14 (:REWRITE RTL::BITN-BVECP-1))
 (26 10 (:REWRITE RTL::BITS-TAIL))
 (14 14 (:REWRITE RTL::BITN-NEG))
 (14 7 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (10 10 (:REWRITE RTL::BITS-NEG))
 (7 7 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-16
 (14 14 (:TYPE-PRESCRIPTION RTL::BVECP))
 (9 3 (:REWRITE RTL::BVECP-BITN-0))
 (9 3 (:REWRITE RTL::BITN-BVECP-1))
 (3 3 (:REWRITE RTL::BITN-NEG))
 (3 1 (:REWRITE RTL::BITS-TAIL))
 (1 1 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (1 1 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-17
 (22 22 (:TYPE-PRESCRIPTION RTL::BVECP))
 (12 4 (:REWRITE RTL::BVECP-BITN-0))
 (12 4 (:REWRITE RTL::BITN-BVECP-1))
 (9 3 (:REWRITE RTL::BITS-TAIL))
 (4 4 (:REWRITE RTL::BITN-NEG))
 (3 3 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (3 3 (:REWRITE RTL::BITS-NEG))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-18
 (30 30 (:TYPE-PRESCRIPTION RTL::BVECP))
 (15 5 (:REWRITE RTL::BVECP-BITN-0))
 (15 5 (:REWRITE RTL::BITS-TAIL))
 (15 5 (:REWRITE RTL::BITN-BVECP-1))
 (5 5 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (5 5 (:REWRITE RTL::BITS-NEG))
 (5 5 (:REWRITE RTL::BITN-NEG))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-19
 (38 38 (:TYPE-PRESCRIPTION RTL::BVECP))
 (21 7 (:REWRITE RTL::BITS-TAIL))
 (18 6 (:REWRITE RTL::BVECP-BITN-0))
 (18 6 (:REWRITE RTL::BITN-BVECP-1))
 (7 7 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (7 7 (:REWRITE RTL::BITS-NEG))
 (6 6 (:REWRITE RTL::BITN-NEG))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-20
 (46 46 (:TYPE-PRESCRIPTION RTL::BVECP))
 (27 9 (:REWRITE RTL::BITS-TAIL))
 (21 7 (:REWRITE RTL::BVECP-BITN-0))
 (21 7 (:REWRITE RTL::BITN-BVECP-1))
 (9 9 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (9 9 (:REWRITE RTL::BITS-NEG))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE RTL::BITN-NEG))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-21
 (1833 611 (:REWRITE RTL::BVECP-BITN-0))
 (1833 611 (:REWRITE RTL::BITN-BVECP-1))
 (611 611 (:REWRITE RTL::BITN-NEG))
 (595 207 (:REWRITE DEFAULT-+-2))
 (207 207 (:REWRITE DEFAULT-+-1))
 (196 98 (:REWRITE DEFAULT-<-1))
 (107 107 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (107 107 (:REWRITE RTL::BITS-NEG))
 (98 98 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-22
 (104 104 (:TYPE-PRESCRIPTION RTL::BVECP))
 (54 18 (:REWRITE RTL::BVECP-BITN-0))
 (54 18 (:REWRITE RTL::BITN-BVECP-1))
 (50 18 (:REWRITE RTL::BITS-TAIL))
 (22 11 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (18 18 (:REWRITE RTL::BITS-NEG))
 (18 18 (:REWRITE RTL::BITN-NEG))
 (11 11 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-23
 (136 136 (:TYPE-PRESCRIPTION RTL::BVECP))
 (74 26 (:REWRITE RTL::BITS-TAIL))
 (66 22 (:REWRITE RTL::BVECP-BITN-0))
 (66 22 (:REWRITE RTL::BITN-BVECP-1))
 (30 15 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (26 26 (:REWRITE RTL::BITS-NEG))
 (22 22 (:REWRITE RTL::BITN-NEG))
 (15 15 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-24
 (168 168 (:TYPE-PRESCRIPTION RTL::BVECP))
 (98 34 (:REWRITE RTL::BITS-TAIL))
 (78 26 (:REWRITE RTL::BVECP-BITN-0))
 (78 26 (:REWRITE RTL::BITN-BVECP-1))
 (38 19 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (34 34 (:REWRITE RTL::BITS-NEG))
 (26 26 (:REWRITE RTL::BITN-NEG))
 (19 19 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-25
 (984 328 (:REWRITE RTL::BVECP-BITN-0))
 (984 328 (:REWRITE RTL::BITN-BVECP-1))
 (328 328 (:REWRITE RTL::BITN-NEG))
 (275 100 (:REWRITE DEFAULT-+-2))
 (100 100 (:REWRITE DEFAULT-+-1))
 (64 64 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (64 64 (:REWRITE RTL::BITS-NEG))
 (60 30 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-26
 (663 221 (:REWRITE RTL::BVECP-BITN-0))
 (663 221 (:REWRITE RTL::BITN-BVECP-1))
 (228 90 (:REWRITE DEFAULT-+-2))
 (221 221 (:REWRITE RTL::BITN-NEG))
 (90 90 (:REWRITE DEFAULT-+-1))
 (70 70 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (70 70 (:REWRITE RTL::BITS-NEG))
 (20 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-27
 (312 312 (:TYPE-PRESCRIPTION RTL::BVECP))
 (168 60 (:REWRITE RTL::BITS-TAIL))
 (153 51 (:REWRITE RTL::BVECP-BITN-0))
 (153 51 (:REWRITE RTL::BITN-BVECP-1))
 (80 40 (:REWRITE DEFAULT-+-2))
 (60 60 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (60 60 (:REWRITE RTL::BITS-NEG))
 (51 51 (:REWRITE RTL::BITN-NEG))
 (40 40 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-28
 (248 248 (:TYPE-PRESCRIPTION RTL::BVECP))
 (129 43 (:REWRITE RTL::BVECP-BITN-0))
 (129 43 (:REWRITE RTL::BITN-BVECP-1))
 (120 44 (:REWRITE RTL::BITS-TAIL))
 (64 32 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (44 44 (:REWRITE RTL::BITS-NEG))
 (43 43 (:REWRITE RTL::BITN-NEG))
 (32 32 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-29
 (184 184 (:TYPE-PRESCRIPTION RTL::BVECP))
 (105 35 (:REWRITE RTL::BVECP-BITN-0))
 (105 35 (:REWRITE RTL::BITN-BVECP-1))
 (72 28 (:REWRITE RTL::BITS-TAIL))
 (48 24 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE RTL::BITN-NEG))
 (28 28 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (28 28 (:REWRITE RTL::BITS-NEG))
 (24 24 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-30
 (576 576 (:TYPE-PRESCRIPTION RTL::BVECP))
 (300 100 (:REWRITE RTL::BVECP-BITN-0))
 (300 100 (:REWRITE RTL::BITN-BVECP-1))
 (278 102 (:REWRITE RTL::BITS-TAIL))
 (170 85 (:REWRITE DEFAULT-+-2))
 (102 102 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (102 102 (:REWRITE RTL::BITS-NEG))
 (100 100 (:REWRITE RTL::BITN-NEG))
 (85 85 (:REWRITE DEFAULT-+-1))
 )
(RTL::CAT-FACT-31
 (606 202 (:REWRITE RTL::BVECP-BITN-0))
 (606 202 (:REWRITE RTL::BITN-BVECP-1))
 (251 112 (:REWRITE DEFAULT-+-2))
 (202 202 (:REWRITE RTL::BITN-NEG))
 (112 112 (:REWRITE DEFAULT-+-1))
 (104 104 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (104 104 (:REWRITE RTL::BITS-NEG))
 (4 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-32
 (909 303 (:REWRITE RTL::BVECP-BITN-0))
 (909 303 (:REWRITE RTL::BITN-BVECP-1))
 (493 225 (:REWRITE DEFAULT-+-2))
 (303 303 (:REWRITE RTL::BITN-NEG))
 (225 225 (:REWRITE DEFAULT-+-1))
 (168 168 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (168 168 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-33
 (2910 970 (:REWRITE RTL::BVECP-BITN-0))
 (2910 970 (:REWRITE RTL::BITN-BVECP-1))
 (2580 258 (:LINEAR RTL::BITN-0-LESS-THAN-2))
 (1360 455 (:REWRITE DEFAULT-+-2))
 (970 970 (:REWRITE RTL::BITN-NEG))
 (455 455 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (10 10 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-34
 (2910 970 (:REWRITE RTL::BVECP-BITN-0))
 (2910 970 (:REWRITE RTL::BITN-BVECP-1))
 (2580 258 (:LINEAR RTL::BITN-0-LESS-THAN-2))
 (1360 455 (:REWRITE DEFAULT-+-2))
 (970 970 (:REWRITE RTL::BITN-NEG))
 (455 455 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (10 10 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-35
 (909 303 (:REWRITE RTL::BVECP-BITN-0))
 (909 303 (:REWRITE RTL::BITN-BVECP-1))
 (493 225 (:REWRITE DEFAULT-+-2))
 (303 303 (:REWRITE RTL::BITN-NEG))
 (225 225 (:REWRITE DEFAULT-+-1))
 (168 168 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (168 168 (:REWRITE RTL::BITS-NEG))
 )
(RTL::CAT-FACT-36
 (606 202 (:REWRITE RTL::BVECP-BITN-0))
 (606 202 (:REWRITE RTL::BITN-BVECP-1))
 (251 112 (:REWRITE DEFAULT-+-2))
 (202 202 (:REWRITE RTL::BITN-NEG))
 (112 112 (:REWRITE DEFAULT-+-1))
 (104 104 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (104 104 (:REWRITE RTL::BITS-NEG))
 (4 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-37
 (663 221 (:REWRITE RTL::BVECP-BITN-0))
 (663 221 (:REWRITE RTL::BITN-BVECP-1))
 (228 90 (:REWRITE DEFAULT-+-2))
 (221 221 (:REWRITE RTL::BITN-NEG))
 (90 90 (:REWRITE DEFAULT-+-1))
 (70 70 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (70 70 (:REWRITE RTL::BITS-NEG))
 (20 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-38
 (984 328 (:REWRITE RTL::BVECP-BITN-0))
 (984 328 (:REWRITE RTL::BITN-BVECP-1))
 (328 328 (:REWRITE RTL::BITN-NEG))
 (275 100 (:REWRITE DEFAULT-+-2))
 (100 100 (:REWRITE DEFAULT-+-1))
 (64 64 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (64 64 (:REWRITE RTL::BITS-NEG))
 (60 30 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE DEFAULT-<-2))
 )
(RTL::CAT-FACT-39
 (1833 611 (:REWRITE RTL::BVECP-BITN-0))
 (1833 611 (:REWRITE RTL::BITN-BVECP-1))
 (611 611 (:REWRITE RTL::BITN-NEG))
 (595 207 (:REWRITE DEFAULT-+-2))
 (207 207 (:REWRITE DEFAULT-+-1))
 (196 98 (:REWRITE DEFAULT-<-1))
 (107 107 (:REWRITE RTL::BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (107 107 (:REWRITE RTL::BITS-NEG))
 (98 98 (:REWRITE DEFAULT-<-2))
 )
