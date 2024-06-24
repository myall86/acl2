(M5::F)
(M5::F-IS-JVM-INT-VALUED)
(M5::INTP-F
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE M5::INT-LEMMA0))
 )
(M5::POISED-AT-UNIVERSAL-LOOP)
(M5::UNIVERSAL-LOOP-SCHED
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(M5::UNIVERSAL-LOOP-HINT
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(M5::UNIVERSAL-LOOP-BEHAVIOR
 (1595 145 (:DEFINITION ASSOC-EQUAL))
 (1404 734 (:REWRITE DEFAULT-CAR))
 (668 167 (:REWRITE O-P-O-INFP-CAR))
 (485 483 (:REWRITE DEFAULT-CDR))
 (264 22 (:DEFINITION M5::BIND))
 (178 178 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (178 178 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (167 167 (:REWRITE O-P-DEF-O-FINP-1))
 (53 49 (:REWRITE DEFAULT-+-2))
 (49 49 (:REWRITE DEFAULT-+-1))
 (40 19 (:REWRITE M5::INT-LEMMA6))
 (32 32 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE M5::INT-LEMMA3))
 (3 1 (:REWRITE M5::INT-LEMMA0))
 (2 2 (:TYPE-PRESCRIPTION M5::INT-FIX))
 )
(M5::POISED-TO-INVOKE-UNIVERSAL)
(M5::UNIVERSAL-SCHED)
(M5::UNIVERSAL-IS-CORRECT
 (1897 1897 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1897 1897 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1133 597 (:REWRITE DEFAULT-CAR))
 (638 151 (:REWRITE O-P-O-INFP-CAR))
 (455 443 (:REWRITE DEFAULT-CDR))
 (185 151 (:REWRITE O-P-DEF-O-FINP-1))
 (180 6 (:DEFINITION M5::UNIVERSAL-LOOP-SCHED))
 (144 12 (:DEFINITION M5::BIND))
 (49 43 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE DEFAULT-+-1))
 (34 34 (:TYPE-PRESCRIPTION O-FINP))
 (33 11 (:REWRITE M5::INT-LEMMA0))
 (30 30 (:TYPE-PRESCRIPTION M5::INTP))
 (16 8 (:REWRITE M5::INT-LEMMA6))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(M5::INT-FIX-NAT)
(M5::NATP-INT-FIX-NAT
 (10 3 (:REWRITE M5::INT-LEMMA0))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(M5::EVERY-INT-IS-INT-FIX-NAT
 (123 123 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (49 14 (:REWRITE M5::INT-LEMMA0))
 (47 47 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (47 47 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (47 47 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (28 22 (:REWRITE DEFAULT-<-1))
 (24 24 (:META CANCEL_PLUS-LESSP-CORRECT))
 (22 22 (:REWRITE DEFAULT-<-2))
 (21 1 (:REWRITE MOD-=-0 . 2))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 3))
 (8 2 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 2))
 (8 2 (:REWRITE <-*-/-LEFT-COMMUTED))
 (6 2 (:REWRITE COMMUTATIVITY-OF-*))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:DEFINITION MOD))
 )
(M5::UNIVERSAL-SCHEDULE)
(M5::UNIVERSAL-COMPUTES-F)
(M5::FACTORIAL
 (1 1 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(M5::INTEGERP-FACTORIAL)
(M5::UNIVERSAL-FACTORIAL-SCHEDULE)
(M5::RELIEVE-THE-CONTRAINTS
 (720 9 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (612 18 (:REWRITE NIQ-TYPE . 2))
 (358 20 (:LINEAR NUMERATOR-GOES-DOWN-BY-INTEGER-DIVISION . 1))
 (333 164 (:REWRITE DEFAULT-*-2))
 (315 18 (:REWRITE NIQ-TYPE . 3))
 (206 164 (:REWRITE DEFAULT-*-1))
 (192 24 (:DEFINITION M5::FACTORIAL))
 (151 57 (:REWRITE DEFAULT-<-1))
 (117 9 (:REWRITE DISTRIBUTIVITY))
 (110 83 (:REWRITE DEFAULT-+-2))
 (101 83 (:REWRITE DEFAULT-+-1))
 (100 57 (:REWRITE DEFAULT-<-2))
 (100 20 (:LINEAR NUMERATOR-GOES-DOWN-BY-INTEGER-DIVISION . 2))
 (63 9 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT))
 (60 2 (:LINEAR NIQ-TYPE))
 (57 57 (:META CANCEL_PLUS-LESSP-CORRECT))
 (57 3 (:REWRITE MOD-=-0 . 2))
 (51 3 (:REWRITE FLOOR-=-X/Y . 3))
 (51 3 (:REWRITE FLOOR-=-X/Y . 2))
 (48 28 (:REWRITE M5::INT-LEMMA0))
 (48 3 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 2))
 (48 3 (:REWRITE FLOOR-TYPE-3 . 2))
 (42 42 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (36 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (36 9 (:DEFINITION NFIX))
 (32 26 (:REWRITE DEFAULT-NUMERATOR))
 (27 6 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (24 24 (:REWRITE ZP-OPEN))
 (21 21 (:REWRITE DEFAULT-UNARY-/))
 (20 20 (:TYPE-PRESCRIPTION M5::INTP))
 (12 6 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE INVERSE-OF-*))
 (9 3 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 3))
 (9 3 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 3))
 (9 3 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 2))
 (9 3 (:REWRITE FLOOR-TYPE-4 . 3))
 (9 3 (:REWRITE FLOOR-TYPE-4 . 2))
 (9 3 (:REWRITE FLOOR-TYPE-3 . 3))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(M5::UNIVERSAL-COMPUTES-FACTORIAL
 (24 3 (:DEFINITION M5::FACTORIAL))
 (9 3 (:REWRITE M5::INT-LEMMA6))
 (9 3 (:REWRITE DEFAULT-*-2))
 (6 6 (:TYPE-PRESCRIPTION M5::INTP))
 (3 3 (:TYPE-PRESCRIPTION M5::INTEGERP-FACTORIAL))
 (3 3 (:TYPE-PRESCRIPTION M5::FACTORIAL))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
