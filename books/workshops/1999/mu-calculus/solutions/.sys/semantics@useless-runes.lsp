(MODEL-CHECK::MU-SEMANTICS
 (2828 1378 (:REWRITE DEFAULT-+-2))
 (1846 1378 (:REWRITE DEFAULT-+-1))
 (1300 260 (:DEFINITION INTEGER-ABS))
 (1040 130 (:DEFINITION LENGTH))
 (625 624 (:REWRITE DEFAULT-CDR))
 (351 307 (:REWRITE DEFAULT-<-2))
 (333 307 (:REWRITE DEFAULT-<-1))
 (317 315 (:REWRITE DEFAULT-CAR))
 (260 260 (:REWRITE DEFAULT-UNARY-MINUS))
 (191 191 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (130 130 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (130 130 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (130 130 (:REWRITE DEFAULT-REALPART))
 (130 130 (:REWRITE DEFAULT-NUMERATOR))
 (130 130 (:REWRITE DEFAULT-IMAGPART))
 (130 130 (:REWRITE DEFAULT-DENOMINATOR))
 (130 130 (:REWRITE DEFAULT-COERCE-2))
 (130 130 (:REWRITE DEFAULT-COERCE-1))
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (7 1 (:DEFINITION ASSOC-EQUAL))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:REWRITE ZP-OPEN))
 )
(MODEL-CHECK::SEMANTICS-IND
 (10201 4885 (:REWRITE DEFAULT-+-2))
 (6618 4885 (:REWRITE DEFAULT-+-1))
 (4840 968 (:DEFINITION INTEGER-ABS))
 (3872 484 (:DEFINITION LENGTH))
 (1498 1212 (:REWRITE DEFAULT-<-2))
 (1319 1212 (:REWRITE DEFAULT-<-1))
 (968 968 (:REWRITE DEFAULT-UNARY-MINUS))
 (492 492 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (484 484 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (484 484 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (484 484 (:REWRITE DEFAULT-REALPART))
 (484 484 (:REWRITE DEFAULT-NUMERATOR))
 (484 484 (:REWRITE DEFAULT-IMAGPART))
 (484 484 (:REWRITE DEFAULT-DENOMINATOR))
 (484 484 (:REWRITE DEFAULT-COERCE-2))
 (484 484 (:REWRITE DEFAULT-COERCE-1))
 (74 74 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 21 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (1 1 (:REWRITE ZP-OPEN))
 )
(MODEL-CHECK::ADD-SEMANTICS-IND-TO-MU-SEMANTICS)
(MODEL-CHECK::OPEN-EX
 (223 223 (:REWRITE DEFAULT-CDR))
 (180 32 (:DEFINITION IN))
 (171 171 (:REWRITE DEFAULT-CAR))
 (91 91 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (91 91 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (72 8 (:DEFINITION VALUE-OF))
 (56 8 (:DEFINITION ASSOC-EQUAL))
 (48 6 (:DEFINITION MODEL-CHECK::SIZE))
 (48 6 (:DEFINITION PUT-ASSOC-EQUAL))
 (28 4 (:DEFINITION MODEL-CHECK::A-LABELING))
 (24 12 (:REWRITE DEFAULT-+-2))
 (20 10 (:DEFINITION MODEL-CHECK::STATES))
 (16 4 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (12 12 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION IN))
 (3 3 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 )
(MODEL-CHECK::OPEN-NOT
 (203 203 (:REWRITE DEFAULT-CDR))
 (180 32 (:DEFINITION IN))
 (176 176 (:REWRITE DEFAULT-CAR))
 (94 94 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (94 94 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (72 8 (:DEFINITION VALUE-OF))
 (56 8 (:DEFINITION ASSOC-EQUAL))
 (48 6 (:DEFINITION MODEL-CHECK::SIZE))
 (48 6 (:DEFINITION PUT-ASSOC-EQUAL))
 (28 4 (:DEFINITION MODEL-CHECK::A-LABELING))
 (24 12 (:REWRITE DEFAULT-+-2))
 (18 3 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (16 4 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (14 5 (:REWRITE MODEL-CHECK::OPEN-EX))
 (12 12 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION IN))
 )
(MODEL-CHECK::OPEN-AND
 (391 391 (:REWRITE DEFAULT-CDR))
 (324 324 (:REWRITE DEFAULT-CAR))
 (300 48 (:DEFINITION IN))
 (166 166 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (166 166 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (108 12 (:DEFINITION VALUE-OF))
 (96 12 (:DEFINITION MODEL-CHECK::SIZE))
 (96 12 (:DEFINITION PUT-ASSOC-EQUAL))
 (84 12 (:DEFINITION ASSOC-EQUAL))
 (50 25 (:REWRITE DEFAULT-+-2))
 (42 6 (:DEFINITION MODEL-CHECK::A-LABELING))
 (36 18 (:DEFINITION MODEL-CHECK::STATES))
 (36 6 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (32 8 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (32 8 (:REWRITE MODEL-CHECK::OPEN-EX))
 (25 25 (:REWRITE DEFAULT-+-1))
 (24 6 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (6 6 (:TYPE-PRESCRIPTION IN))
 (6 6 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 )
(MODEL-CHECK::OPEN-OR
 (399 399 (:REWRITE DEFAULT-CDR))
 (332 332 (:REWRITE DEFAULT-CAR))
 (300 48 (:DEFINITION IN))
 (172 172 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (172 172 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (108 12 (:DEFINITION VALUE-OF))
 (96 12 (:DEFINITION MODEL-CHECK::SIZE))
 (96 12 (:DEFINITION PUT-ASSOC-EQUAL))
 (84 12 (:DEFINITION ASSOC-EQUAL))
 (55 38 (:TYPE-PRESCRIPTION FAST-SETS::SET-UNION-RETURN-TYPE))
 (50 25 (:REWRITE DEFAULT-+-2))
 (42 6 (:DEFINITION MODEL-CHECK::A-LABELING))
 (38 38 (:TYPE-PRESCRIPTION FAST-SETS::SET-UNION))
 (36 18 (:DEFINITION MODEL-CHECK::STATES))
 (36 6 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (32 8 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (32 8 (:REWRITE MODEL-CHECK::OPEN-EX))
 (32 8 (:REWRITE MODEL-CHECK::OPEN-AND))
 (25 25 (:REWRITE DEFAULT-+-1))
 (24 6 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (17 17 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION IN))
 (6 6 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 )
(MODEL-CHECK::OPEN-MU
 (97 97 (:REWRITE DEFAULT-CDR))
 (75 3 (:DEFINITION MODEL-CHECK::COMPUTE-FIX-POINT))
 (64 8 (:DEFINITION PUT-ASSOC-EQUAL))
 (56 56 (:REWRITE DEFAULT-CAR))
 (29 16 (:REWRITE DEFAULT-+-2))
 (27 3 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (24 6 (:DEFINITION VALUE-OF))
 (18 18 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (18 18 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE RELATIONS::ASSOC-EQUAL-PUT-ASSOC-EQUAL))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-OR))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-EX))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-AND))
 )
(MODEL-CHECK::OPEN-NU
 (97 97 (:REWRITE DEFAULT-CDR))
 (87 3 (:DEFINITION MODEL-CHECK::COMPUTE-FIX-POINT))
 (66 66 (:REWRITE DEFAULT-CAR))
 (64 8 (:DEFINITION PUT-ASSOC-EQUAL))
 (29 16 (:REWRITE DEFAULT-+-2))
 (27 3 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (24 6 (:DEFINITION VALUE-OF))
 (21 21 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (21 21 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE ZP-OPEN))
 (14 5 (:REWRITE MODEL-CHECK::OPEN-MU))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE RELATIONS::ASSOC-EQUAL-PUT-ASSOC-EQUAL))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-OR))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-EX))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-AND))
 )
(MODEL-CHECK::OPEN-COMPUTE-FIX-POINT
 (1048 8 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (1026 18 (:DEFINITION SETS::REM-DUPS))
 (672 27 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (633 633 (:REWRITE DEFAULT-CAR))
 (599 599 (:REWRITE DEFAULT-CDR))
 (594 18 (:DEFINITION SETS::SET-REMOVE))
 (408 24 (:DEFINITION SETS::=<))
 (401 401 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (401 401 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (360 18 (:REWRITE SETS::SET-REMOVE-THM))
 (306 18 (:DEFINITION SETS::NO-DUPS))
 (258 3 (:DEFINITION SETS::INTERSECT))
 (204 3 (:DEFINITION SETS::MINUS))
 (198 18 (:REWRITE SETS::IN-SET-REMOVE))
 (192 48 (:REWRITE MODEL-CHECK::OPEN-NU))
 (192 48 (:REWRITE MODEL-CHECK::OPEN-MU))
 (189 9 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (189 9 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (186 30 (:DEFINITION LEN))
 (160 20 (:DEFINITION PUT-ASSOC-EQUAL))
 (141 3 (:DEFINITION SETS::SET-UNION))
 (140 20 (:DEFINITION ASSOC-EQUAL))
 (126 6 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (90 90 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (87 3 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (74 41 (:REWRITE DEFAULT-+-2))
 (72 72 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (60 3 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (48 48 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (41 41 (:REWRITE DEFAULT-+-1))
 (36 36 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (30 6 (:REWRITE MODEL-CHECK::OPEN-OR))
 (30 6 (:REWRITE MODEL-CHECK::OPEN-AND))
 (27 6 (:REWRITE ZP-OPEN))
 (27 3 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (24 6 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (24 6 (:REWRITE MODEL-CHECK::OPEN-EX))
 (12 12 (:TYPE-PRESCRIPTION SETS::MINUS))
 (12 3 (:REWRITE <-0-+-NEGATIVE-1))
 (9 9 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (9 9 (:REWRITE SETS::|X & atom = {}|))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (6 6 (:REWRITE SETS::|X u atom == X|))
 (6 6 (:REWRITE CDR-CONS))
 (6 6 (:REWRITE RELATIONS::ASSOC-EQUAL-PUT-ASSOC-EQUAL))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(MODEL-CHECK::SEM-IS-TRUE-LISTP
 (8630 8561 (:REWRITE DEFAULT-CDR))
 (7749 7604 (:REWRITE DEFAULT-CAR))
 (4400 4400 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3570 410 (:DEFINITION PUT-ASSOC-EQUAL))
 (2282 326 (:DEFINITION ASSOC-EQUAL))
 (1829 1071 (:REWRITE DEFAULT-+-2))
 (1485 358 (:DEFINITION TRUE-LISTP))
 (1071 1071 (:REWRITE DEFAULT-+-1))
 (758 82 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (531 531 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (508 508 (:META CANCEL_PLUS-LESSP-CORRECT))
 (330 330 (:REWRITE DEFAULT-<-2))
 (330 330 (:REWRITE DEFAULT-<-1))
 (290 290 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (68 1 (:DEFINITION SETS::MINUS))
 (63 3 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (51 3 (:DEFINITION SETS::=<))
 (15 1 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (6 6 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 )
(MODEL-CHECK::MU-SEMANTICS
 (1681 7 (:DEFINITION MODEL-CHECK::MU-SEMANTICS))
 (664 664 (:REWRITE DEFAULT-CDR))
 (545 545 (:REWRITE DEFAULT-CAR))
 (415 415 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (415 415 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (196 49 (:REWRITE MODEL-CHECK::OPEN-NU))
 (196 49 (:REWRITE MODEL-CHECK::OPEN-MU))
 (175 45 (:DEFINITION TRUE-LISTP))
 (136 17 (:DEFINITION PUT-ASSOC-EQUAL))
 (105 15 (:DEFINITION ASSOC-EQUAL))
 (81 42 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-+-1))
 (35 7 (:REWRITE MODEL-CHECK::OPEN-OR))
 (35 7 (:REWRITE MODEL-CHECK::OPEN-AND))
 (28 7 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (28 7 (:REWRITE MODEL-CHECK::OPEN-EX))
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (7 7 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (1 1 (:REWRITE ZP-OPEN))
 )
(MODEL-CHECK::SEMANTICS
 (1 1 (:TYPE-PRESCRIPTION MODEL-CHECK::TRANSLATE-F))
 )
(MODEL-CHECK::MODEL-CHECK
 (19111 1720 (:DEFINITION IN))
 (18240 160 (:DEFINITION MODEL-CHECK::TRANSLATE-F))
 (16529 2 (:DEFINITION MODEL-CHECK::BASIC-M-CALC-FORMULAP))
 (12966 10 (:DEFINITION MODEL-CHECK::MU-SYMBOLP))
 (5927 5672 (:REWRITE DEFAULT-CAR))
 (3600 3600 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3600 3600 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (3050 2 (:DEFINITION MODEL-CHECK::MU-SEMANTICS))
 (2926 2776 (:REWRITE DEFAULT-CDR))
 (1673 333 (:DEFINITION LEN))
 (748 373 (:REWRITE DEFAULT-+-2))
 (599 599 (:TYPE-PRESCRIPTION MODEL-CHECK::TRANSLATE-F))
 (390 373 (:REWRITE DEFAULT-+-1))
 (154 14 (:REWRITE MODEL-CHECK::OPEN-NU))
 (112 14 (:REWRITE MODEL-CHECK::OPEN-MU))
 (50 10 (:DEFINITION INTEGER-ABS))
 (40 10 (:REWRITE COMMUTATIVITY-OF-+))
 (40 5 (:DEFINITION LENGTH))
 (32 4 (:DEFINITION MODEL-CHECK::SIZE))
 (30 2 (:REWRITE MODEL-CHECK::OPEN-OR))
 (29 8 (:DEFINITION TRUE-LISTP))
 (22 4 (:DEFINITION VALUE-OF))
 (18 2 (:REWRITE MODEL-CHECK::OPEN-AND))
 (16 4 (:DEFINITION ASSOC-EQUAL))
 (16 2 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (16 2 (:REWRITE MODEL-CHECK::OPEN-EX))
 (14 2 (:DEFINITION MODEL-CHECK::A-LABELING))
 (13 12 (:REWRITE DEFAULT-<-2))
 (13 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:TYPE-PRESCRIPTION IN))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (12 6 (:DEFINITION MODEL-CHECK::STATES))
 (12 2 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (5 5 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (5 5 (:REWRITE DEFAULT-REALPART))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (5 5 (:REWRITE DEFAULT-IMAGPART))
 (5 5 (:REWRITE DEFAULT-DENOMINATOR))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:DEFINITION PUT-ASSOC-EQUAL))
 (2 2 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 )
(MODEL-CHECK::MODEL-OK)
(MODEL-CHECK::FIXPOINTP)
(MODEL-CHECK::POST-FIXPOINTP)
(MODEL-CHECK::PRE-FIXPOINTP)
(MODEL-CHECK::INTERSECT-THM
 (132 2 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (130 16 (:DEFINITION IN))
 (114 2 (:DEFINITION SETS::REM-DUPS))
 (104 4 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (95 6 (:DEFINITION SETS::=<))
 (86 1 (:DEFINITION SETS::INTERSECT))
 (83 3 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (71 71 (:TYPE-PRESCRIPTION IN))
 (66 2 (:DEFINITION SETS::SET-REMOVE))
 (40 2 (:REWRITE SETS::SET-REMOVE-THM))
 (36 36 (:REWRITE DEFAULT-CDR))
 (34 34 (:REWRITE DEFAULT-CAR))
 (34 2 (:DEFINITION SETS::NO-DUPS))
 (30 12 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (29 1 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (22 2 (:REWRITE SETS::IN-SET-REMOVE))
 (18 18 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (18 18 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (14 2 (:DEFINITION LEN))
 (10 10 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (8 8 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (4 4 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE SETS::|X & atom = {}|))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 )
(MODEL-CHECK::SET-UNION-THM
 (132 2 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (114 2 (:DEFINITION SETS::REM-DUPS))
 (106 13 (:DEFINITION IN))
 (74 3 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (71 5 (:DEFINITION SETS::=<))
 (66 2 (:DEFINITION SETS::SET-REMOVE))
 (62 2 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (57 57 (:TYPE-PRESCRIPTION IN))
 (47 1 (:DEFINITION SETS::SET-UNION))
 (40 2 (:REWRITE SETS::SET-REMOVE-THM))
 (34 2 (:DEFINITION SETS::NO-DUPS))
 (31 31 (:REWRITE DEFAULT-CDR))
 (29 29 (:REWRITE DEFAULT-CAR))
 (22 2 (:REWRITE SETS::IN-SET-REMOVE))
 (20 1 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (15 15 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (15 15 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (14 2 (:DEFINITION LEN))
 (10 10 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (8 8 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (4 4 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE SETS::|X u atom == X|))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 )
(MODEL-CHECK::SET-MINUS-THM
 (132 2 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (114 2 (:DEFINITION SETS::REM-DUPS))
 (110 13 (:DEFINITION IN))
 (83 3 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (78 5 (:DEFINITION SETS::=<))
 (68 1 (:DEFINITION SETS::MINUS))
 (67 3 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (66 2 (:DEFINITION SETS::SET-REMOVE))
 (57 57 (:TYPE-PRESCRIPTION IN))
 (40 2 (:REWRITE SETS::SET-REMOVE-THM))
 (34 2 (:DEFINITION SETS::NO-DUPS))
 (32 32 (:REWRITE DEFAULT-CDR))
 (30 30 (:REWRITE DEFAULT-CAR))
 (28 10 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (22 2 (:REWRITE SETS::IN-SET-REMOVE))
 (15 15 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (15 15 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (14 2 (:DEFINITION LEN))
 (10 10 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (8 8 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (4 4 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (4 4 (:TYPE-PRESCRIPTION SETS::MINUS))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 )
(MODEL-CHECK::MU-SEMANTICS-STAYS-IN-BOUNDS
 (39622 695 (:DEFINITION SETS::REM-DUPS))
 (22938 695 (:DEFINITION SETS::SET-REMOVE))
 (22251 22160 (:REWRITE DEFAULT-CDR))
 (20769 818 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (16565 16414 (:REWRITE DEFAULT-CAR))
 (13902 695 (:REWRITE SETS::SET-REMOVE-THM))
 (11817 695 (:DEFINITION SETS::NO-DUPS))
 (8167 8167 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (7647 695 (:REWRITE SETS::IN-SET-REMOVE))
 (6560 452 (:DEFINITION TRUE-LISTP))
 (5590 326 (:DEFINITION RELATIONS::REL-RANGE-SUBSET))
 (4067 147 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (3475 3475 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (3466 397 (:DEFINITION PUT-ASSOC-EQUAL))
 (3332 49 (:DEFINITION SETS::MINUS))
 (3292 1809 (:REWRITE DEFAULT-+-2))
 (3182 37 (:DEFINITION SETS::INTERSECT))
 (2780 2780 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (2411 111 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (2344 288 (:REWRITE ZP-OPEN))
 (2114 302 (:DEFINITION ASSOC-EQUAL))
 (1809 1809 (:REWRITE DEFAULT-+-1))
 (1739 37 (:DEFINITION SETS::SET-UNION))
 (1634 74 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (1390 1390 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (1096 1096 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1073 37 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (784 86 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (740 37 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (704 176 (:REWRITE <-0-+-NEGATIVE-1))
 (528 528 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (517 517 (:META CANCEL_PLUS-LESSP-CORRECT))
 (508 508 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (414 341 (:REWRITE DEFAULT-<-2))
 (345 341 (:REWRITE DEFAULT-<-1))
 (338 338 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (111 111 (:REWRITE SETS::|X & atom = {}|))
 (74 74 (:REWRITE SETS::|X u atom == X|))
 (9 9 (:TYPE-PRESCRIPTION FAST-SETS::MINUS))
 )
(MODEL-CHECK::SEM-MON-F)
(MODEL-CHECK::GOOD-MODEL)
(MODEL-CHECK::GOOD-VAL)
(MODEL-CHECK::GOOD-VAR)
(MODEL-CHECK::GOOD-MODEL-IS-A-MODEL)
(MODEL-CHECK::GOOD-VAL-RANGE-OK)
(MODEL-CHECK::GOOD-VAR-VAR)
(MODEL-CHECK::SEM-MON-F-IS-SEM-MONOTONE
 (132 2 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (114 2 (:DEFINITION SETS::REM-DUPS))
 (66 2 (:DEFINITION SETS::SET-REMOVE))
 (61 7 (:DEFINITION IN))
 (52 2 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (40 2 (:REWRITE SETS::SET-REMOVE-THM))
 (34 2 (:DEFINITION SETS::NO-DUPS))
 (31 31 (:TYPE-PRESCRIPTION IN))
 (22 2 (:REWRITE SETS::IN-SET-REMOVE))
 (20 20 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE DEFAULT-CAR))
 (14 2 (:DEFINITION LEN))
 (10 10 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (10 1 (:DEFINITION SETS::=<))
 (9 9 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (9 9 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 8 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (4 4 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-OR))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-NU))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-MU))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-EX))
 (2 2 (:REWRITE MODEL-CHECK::OPEN-AND))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 )
(MODEL-CHECK::MU-SYMBOL-NOT-+-OR-&
 (13 13 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (13 13 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(MODEL-CHECK::MODEL-OK-CARDINALITY)
(MODEL-CHECK::SEMMU-IS-A-FIXPOINT
 (2565 45 (:DEFINITION SETS::REM-DUPS))
 (2107 121 (:DEFINITION SETS::=<))
 (1761 1645 (:REWRITE DEFAULT-CAR))
 (1755 1651 (:REWRITE DEFAULT-CDR))
 (1736 70 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (1485 45 (:DEFINITION SETS::SET-REMOVE))
 (1300 24 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (1195 19 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (1186 16 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (1073 1073 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1073 1073 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1073 33 (:DEFINITION RELATIONS::REL-RANGE-SUBSET))
 (900 45 (:REWRITE SETS::SET-REMOVE-THM))
 (765 45 (:DEFINITION SETS::NO-DUPS))
 (688 8 (:DEFINITION SETS::INTERSECT))
 (568 46 (:DEFINITION PUT-ASSOC-EQUAL))
 (544 8 (:DEFINITION SETS::MINUS))
 (504 24 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (495 45 (:REWRITE SETS::IN-SET-REMOVE))
 (423 9 (:DEFINITION SETS::SET-UNION))
 (360 360 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (312 79 (:REWRITE MODEL-CHECK::OPEN-NU))
 (245 245 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (232 8 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (225 225 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (180 180 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (180 9 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (148 79 (:REWRITE DEFAULT-+-2))
 (147 16 (:REWRITE ZP-OPEN))
 (140 20 (:DEFINITION ASSOC-EQUAL))
 (108 8 (:REWRITE MODEL-CHECK::OPEN-COMPUTE-FIX-POINT))
 (90 90 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (79 79 (:REWRITE DEFAULT-+-1))
 (46 10 (:REWRITE MODEL-CHECK::OPEN-OR))
 (46 10 (:REWRITE MODEL-CHECK::OPEN-AND))
 (37 10 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (37 10 (:REWRITE MODEL-CHECK::OPEN-EX))
 (32 32 (:TYPE-PRESCRIPTION SETS::MINUS))
 (28 17 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE SETS::|X & atom = {}|))
 (21 21 (:META CANCEL_PLUS-LESSP-CORRECT))
 (18 18 (:REWRITE SETS::|X u atom == X|))
 (17 17 (:REWRITE MODEL-CHECK::GOOD-VAL-RANGE-OK))
 (17 17 (:REWRITE DEFAULT-<-1))
 (16 16 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (16 4 (:REWRITE <-0-+-NEGATIVE-1))
 (12 12 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (7 7 (:TYPE-PRESCRIPTION ZP))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MODEL-CHECK::SEMMU-IS-BELOW-ALL-POST-FIXPOINTS
 (3051 3 (:DEFINITION MODEL-CHECK::MU-SEMANTICS))
 (1451 173 (:DEFINITION IN))
 (1015 11 (:REWRITE MODEL-CHECK::MU-SEMANTICS-STAYS-IN-BOUNDS))
 (698 21 (:DEFINITION RELATIONS::REL-RANGE-SUBSET))
 (618 3 (:REWRITE FAST-SETS::FAST-INTERSECT-IS-SET-INTERSECT))
 (585 529 (:REWRITE DEFAULT-CDR))
 (564 9 (:DEFINITION MODEL-CHECK::MU-SYMBOLP))
 (557 516 (:REWRITE DEFAULT-CAR))
 (531 11 (:REWRITE RELATIONS::EXPAND-RELATION-OK))
 (501 3 (:REWRITE FAST-SETS::FAST-SET-UNION-IS-SET-UNION))
 (480 9 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (456 8 (:DEFINITION SETS::REM-DUPS))
 (417 6 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (412 17 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (327 327 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (327 327 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (273 3 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 (270 3 (:REWRITE FAST-SETS::FAST-MINUS-IS-MINUS))
 (264 8 (:DEFINITION SETS::SET-REMOVE))
 (258 3 (:DEFINITION SETS::INTERSECT))
 (252 42 (:REWRITE RELATIONS::=<-IMAGE-REL-OK2))
 (204 3 (:DEFINITION SETS::MINUS))
 (189 9 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (170 170 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (164 13 (:DEFINITION PUT-ASSOC-EQUAL))
 (160 8 (:REWRITE SETS::SET-REMOVE-THM))
 (141 3 (:DEFINITION SETS::SET-UNION))
 (136 8 (:DEFINITION SETS::NO-DUPS))
 (105 105 (:TYPE-PRESCRIPTION RELATIONS::REL-RANGE-SUBSET))
 (95 24 (:REWRITE MODEL-CHECK::OPEN-NU))
 (88 8 (:REWRITE SETS::IN-SET-REMOVE))
 (87 3 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (80 2 (:DEFINITION MODEL-CHECK::COMPUTE-FIX-POINT))
 (79 10 (:DEFINITION VALUE-OF))
 (60 3 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (58 4 (:REWRITE ZP-OPEN))
 (48 2 (:REWRITE MODEL-CHECK::OPEN-COMPUTE-FIX-POINT))
 (42 6 (:DEFINITION ASSOC-EQUAL))
 (40 40 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (34 18 (:REWRITE DEFAULT-+-2))
 (34 7 (:REWRITE RELATIONS::ASSOC-EQUAL-PUT-ASSOC-EQUAL))
 (32 32 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (21 3 (:DEFINITION MODEL-CHECK::A-LABELING))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 3 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (18 2 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (16 16 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-OR))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-AND))
 (12 12 (:TYPE-PRESCRIPTION SETS::MINUS))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-EX))
 (12 3 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (10 10 (:REWRITE MODEL-CHECK::GOOD-VAL-RANGE-OK))
 (9 9 (:REWRITE SETS::|X & atom = {}|))
 (6 6 (:REWRITE SETS::|X u atom == X|))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (4 4 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 )
(MODEL-CHECK::SEMNU-IS-A-FIXPOINT
 (1653 29 (:DEFINITION SETS::REM-DUPS))
 (1054 14 (:LINEAR SETS::=<-LEN-REM-DUPS))
 (958 38 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (957 29 (:DEFINITION SETS::SET-REMOVE))
 (738 42 (:DEFINITION SETS::=<))
 (720 684 (:REWRITE DEFAULT-CDR))
 (708 672 (:REWRITE DEFAULT-CAR))
 (582 6 (:REWRITE MODEL-CHECK::MU-SEMANTICS-STAYS-IN-BOUNDS))
 (580 29 (:REWRITE SETS::SET-REMOVE-THM))
 (493 29 (:DEFINITION SETS::NO-DUPS))
 (480 9 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (417 6 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (406 406 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (406 406 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (396 12 (:DEFINITION RELATIONS::REL-RANGE-SUBSET))
 (319 29 (:REWRITE SETS::IN-SET-REMOVE))
 (318 6 (:REWRITE RELATIONS::EXPAND-RELATION-OK))
 (258 3 (:DEFINITION SETS::INTERSECT))
 (212 19 (:DEFINITION PUT-ASSOC-EQUAL))
 (204 3 (:DEFINITION SETS::MINUS))
 (200 5 (:DEFINITION MODEL-CHECK::COMPUTE-FIX-POINT))
 (189 9 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (150 24 (:REWRITE RELATIONS::=<-IMAGE-REL-OK2))
 (145 145 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (141 3 (:DEFINITION SETS::SET-UNION))
 (120 120 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (116 116 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (105 8 (:REWRITE ZP-OPEN))
 (104 26 (:REWRITE MODEL-CHECK::OPEN-MU))
 (87 3 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (84 84 (:REWRITE SETS::|X =< Y & Y =< Z  =>  X =< Z|))
 (79 42 (:REWRITE DEFAULT-+-2))
 (74 5 (:REWRITE MODEL-CHECK::OPEN-COMPUTE-FIX-POINT))
 (60 60 (:TYPE-PRESCRIPTION RELATIONS::REL-RANGE-SUBSET))
 (60 3 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (58 58 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (45 5 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (42 42 (:REWRITE DEFAULT-+-1))
 (42 6 (:DEFINITION ASSOC-EQUAL))
 (22 11 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-OR))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-AND))
 (14 14 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (12 12 (:TYPE-PRESCRIPTION SETS::MINUS))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-EX))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 11 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE SETS::|X & atom = {}|))
 (6 6 (:REWRITE SETS::|X u atom == X|))
 (6 6 (:REWRITE MODEL-CHECK::GOOD-VAL-RANGE-OK))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 )
(MODEL-CHECK::SEMNU-IS-ABOVE-ALL-PRE-FIXPOINTS
 (3051 3 (:DEFINITION MODEL-CHECK::MU-SEMANTICS))
 (1612 192 (:DEFINITION IN))
 (918 10 (:REWRITE MODEL-CHECK::MU-SEMANTICS-STAYS-IN-BOUNDS))
 (684 12 (:DEFINITION SETS::REM-DUPS))
 (632 19 (:DEFINITION RELATIONS::REL-RANGE-SUBSET))
 (627 575 (:REWRITE DEFAULT-CDR))
 (618 3 (:REWRITE FAST-SETS::FAST-INTERSECT-IS-SET-INTERSECT))
 (604 564 (:REWRITE DEFAULT-CAR))
 (564 9 (:DEFINITION MODEL-CHECK::MU-SYMBOLP))
 (516 21 (:REWRITE SETS::|a in X  =>  {a}uX == X|))
 (501 3 (:REWRITE FAST-SETS::FAST-SET-UNION-IS-SET-UNION))
 (480 9 (:REWRITE SETS::|X =< Y  ==>  X & Y == X|))
 (478 10 (:REWRITE RELATIONS::EXPAND-RELATION-OK))
 (417 6 (:REWRITE SETS::|X =< Y  ==>  X u Y == Y|))
 (396 12 (:DEFINITION SETS::SET-REMOVE))
 (350 350 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (350 350 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (273 3 (:DEFINITION FAST-SETS::SET-COMPLEMENT))
 (270 3 (:REWRITE FAST-SETS::FAST-MINUS-IS-MINUS))
 (258 3 (:DEFINITION SETS::INTERSECT))
 (240 12 (:REWRITE SETS::SET-REMOVE-THM))
 (227 38 (:REWRITE RELATIONS::=<-IMAGE-REL-OK2))
 (204 12 (:DEFINITION SETS::NO-DUPS))
 (204 3 (:DEFINITION SETS::MINUS))
 (189 9 (:REWRITE SETS::|X =< Y  ==>  X-Y == {}|))
 (164 13 (:DEFINITION PUT-ASSOC-EQUAL))
 (160 160 (:TYPE-PRESCRIPTION PUT-ASSOC-EQUAL))
 (141 3 (:DEFINITION SETS::SET-UNION))
 (132 12 (:REWRITE SETS::IN-SET-REMOVE))
 (95 95 (:TYPE-PRESCRIPTION RELATIONS::REL-RANGE-SUBSET))
 (92 23 (:REWRITE MODEL-CHECK::OPEN-MU))
 (87 3 (:REWRITE SETS::|a in X&Y  =  a in X  /  a in Y|))
 (80 2 (:DEFINITION MODEL-CHECK::COMPUTE-FIX-POINT))
 (79 10 (:DEFINITION VALUE-OF))
 (60 60 (:TYPE-PRESCRIPTION SETS::NO-DUPS))
 (60 3 (:REWRITE SETS::|a in X u Y  =  a in X / a in Y|))
 (50 4 (:REWRITE ZP-OPEN))
 (48 48 (:TYPE-PRESCRIPTION SETS::SET-REMOVE))
 (42 22 (:REWRITE DEFAULT-+-2))
 (42 6 (:DEFINITION ASSOC-EQUAL))
 (40 2 (:REWRITE MODEL-CHECK::OPEN-COMPUTE-FIX-POINT))
 (34 7 (:REWRITE RELATIONS::ASSOC-EQUAL-PUT-ASSOC-EQUAL))
 (24 24 (:TYPE-PRESCRIPTION SETS::REM-DUPS))
 (22 22 (:REWRITE DEFAULT-+-1))
 (21 3 (:DEFINITION MODEL-CHECK::A-LABELING))
 (18 3 (:DEFINITION MODEL-CHECK::INVERSE-RELATION))
 (18 2 (:REWRITE RELATIONS::PUT-ASSOC-EQUAL-TWICE))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-OR))
 (15 3 (:REWRITE MODEL-CHECK::OPEN-AND))
 (12 12 (:TYPE-PRESCRIPTION SETS::MINUS))
 (12 6 (:REWRITE DEFAULT-<-2))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-NOT))
 (12 3 (:REWRITE MODEL-CHECK::OPEN-EX))
 (12 3 (:DEFINITION MODEL-CHECK::ATOMIC-PROPS))
 (9 9 (:REWRITE SETS::|X & atom = {}|))
 (9 9 (:REWRITE MODEL-CHECK::GOOD-VAL-RANGE-OK))
 (6 6 (:REWRITE SETS::|X u atom == X|))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 4 (:LINEAR SETS::S<-IMPLIES-<-LEN))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 )
