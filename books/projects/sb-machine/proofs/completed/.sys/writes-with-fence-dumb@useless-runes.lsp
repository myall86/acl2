(SB::FENCE-P)
(SB::BOOLEANP-OF-FENCE-P)
(SB::INV)
(SB::STEP-INV
 (26159 802 (:REWRITE SB::SB-LATEST-IMPLIES-NOT-EMPTY))
 (19528 578 (:REWRITE SB::NO-PENDING-WHEN-NOT-CONSP))
 (12644 4656 (:REWRITE SB::NO-PENDING-SB-SB-NEXT-DEQ))
 (11148 4656 (:REWRITE SB::SB-LATEST-SB-DEQ-3))
 (9137 4862 (:REWRITE SB::SB-LATEST-SB-NEXT-FLUSH))
 (6778 283 (:REWRITE SB::NO-PENDING-SB-SB-LATEST))
 (3733 3733 (:TYPE-PRESCRIPTION SB::SB-P))
 (3733 3733 (:REWRITE SB::SB-P-OF-PROC->SB))
 (3476 329 (:REWRITE SB::NO-PENDING-SB-NOT-CONSP))
 (1678 802 (:REWRITE SB::LEN-CONSP))
 (1674 283 (:REWRITE SB::RETURN-TYPE-OF-SB-LATEST))
 (1597 329 (:REWRITE SB::NO-PENDING-SB-SB-LATEST-2))
 (1217 338 (:REWRITE SB::RETURN-TYPE-OF-READ-SB))
 (1007 489 (:REWRITE SB::SB-LATEST-NO-PENDING))
 (764 140 (:REWRITE SB::LOCKP-IS-INTEGERP))
 (658 658 (:TYPE-PRESCRIPTION SB::NO-PENDING-SB))
 (476 52 (:REWRITE SB::LOCK-IF-NATP))
 (283 283 (:TYPE-PRESCRIPTION SB::SB-ELEMENT-P))
 (228 228 (:TYPE-PRESCRIPTION SB::FLUSH-SB))
 (192 192 (:TYPE-PRESCRIPTION SB::LOCKP))
 (132 52 (:REWRITE SB::LOCKP-IF-NIL))
 (114 114 (:REWRITE SB::MACHINE-P-OF-FLUSH-SB))
 (114 114 (:REWRITE SB::FLUSH-SB-NUM-PROCS))
 (88 88 (:REWRITE DEFAULT-<-2))
 (88 88 (:REWRITE DEFAULT-<-1))
 (52 52 (:TYPE-PRESCRIPTION NATP))
 (38 19 (:REWRITE SB::NOT-BLOCKED-FLUSH-SB))
 (19 19 (:REWRITE SB::NO-PENDING-FLUSH-SB-2))
 (19 19 (:REWRITE SB::NO-PENDING-FLUSH-SB-1))
 )
(SB::FLUSH-SB-INV
 (16030 195 (:REWRITE SB::SB-LATEST-IMPLIES-NOT-EMPTY))
 (9013 1925 (:REWRITE SB::NO-PENDING-SB-SB-NEXT-DEQ))
 (5445 132 (:REWRITE SB::NO-PENDING-WHEN-NOT-CONSP))
 (4487 1925 (:REWRITE SB::SB-LATEST-SB-DEQ-3))
 (4478 154 (:REWRITE SB::SB-LATEST-NO-PENDING-2))
 (4396 1971 (:REWRITE SB::SB-LATEST-SB-NEXT-FLUSH))
 (2054 2054 (:TYPE-PRESCRIPTION SB::SB-P))
 (2054 2054 (:REWRITE SB::SB-P-OF-PROC->SB))
 (1276 78 (:REWRITE SB::NO-PENDING-SB-SB-LATEST))
 (793 80 (:REWRITE SB::NO-PENDING-SB-SB-LATEST-2))
 (712 136 (:REWRITE SB::SB-LATEST-FLUSH-SB))
 (623 98 (:REWRITE SB::RETURN-TYPE-OF-READ-SB))
 (621 130 (:REWRITE SB::LOCKP-IS-INTEGERP))
 (564 195 (:REWRITE SB::LEN-CONSP))
 (561 80 (:REWRITE SB::NO-PENDING-SB-NOT-CONSP))
 (528 100 (:REWRITE SB::SB-LATEST-NO-PENDING))
 (451 68 (:REWRITE SB::RETURN-TYPE-OF-SB-LATEST))
 (406 47 (:REWRITE SB::LOCK-IF-NATP))
 (177 177 (:TYPE-PRESCRIPTION SB::LOCKP))
 (163 163 (:TYPE-PRESCRIPTION SB::NO-PENDING-SB))
 (83 83 (:REWRITE DEFAULT-<-2))
 (83 83 (:REWRITE DEFAULT-<-1))
 (75 75 (:TYPE-PRESCRIPTION SB::SB-ELEMENT-P))
 (74 47 (:REWRITE SB::LOCKP-IF-NIL))
 (47 47 (:TYPE-PRESCRIPTION NATP))
 (17 1 (:REWRITE SB::SB-NEXT-NO-PENDING-SB))
 (5 1 (:REWRITE SB::SB-LATEST-SB-DEQ-2))
 (4 1 (:REWRITE SB::SB-NEXT-NO-PENDING))
 )
(SB::STARTING-STATE-P
 (379 8 (:REWRITE SB::SB-LATEST-IMPLIES-NOT-EMPTY))
 (247 56 (:REWRITE SB::NO-PENDING-SB-SB-NEXT-DEQ))
 (126 56 (:REWRITE SB::SB-LATEST-SB-DEQ-3))
 (81 56 (:REWRITE SB::SB-LATEST-SB-NEXT-FLUSH))
 (36 36 (:TYPE-PRESCRIPTION SB::SB-P))
 (36 36 (:REWRITE SB::SB-P-OF-PROC->SB))
 (20 8 (:REWRITE SB::LEN-CONSP))
 (20 5 (:REWRITE SB::READ-SB-NO-PENDING-2))
 (10 10 (:TYPE-PRESCRIPTION SB::NO-PENDING))
 (10 5 (:REWRITE SB::READ-SB-NO-PENDING))
 (8 8 (:REWRITE SB::CONSP-WHEN-NOT-NO-PENDING))
 (5 5 (:TYPE-PRESCRIPTION SB::READ-SB))
 )
(SB::BOOLEANP-OF-STARTING-STATE-P)
(SB::INV-STARTING-STATE
 (242 4 (:REWRITE SB::SB-LATEST-IMPLIES-NOT-EMPTY))
 (161 34 (:REWRITE SB::NO-PENDING-SB-SB-NEXT-DEQ))
 (89 34 (:REWRITE SB::SB-LATEST-SB-DEQ-3))
 (54 34 (:REWRITE SB::SB-LATEST-SB-NEXT-FLUSH))
 (24 24 (:TYPE-PRESCRIPTION SB::SB-P))
 (24 24 (:REWRITE SB::SB-P-OF-PROC->SB))
 (10 4 (:REWRITE SB::LEN-CONSP))
 (4 4 (:REWRITE SB::CONSP-WHEN-NOT-NO-PENDING))
 )
(SB::RUN-INV
 (10524 26 (:REWRITE SB::INV-STARTING-STATE))
 (10472 26 (:DEFINITION SB::STARTING-STATE-P))
 (9560 246 (:REWRITE SB::SB-LATEST-IMPLIES-NOT-EMPTY))
 (6013 1158 (:REWRITE SB::NO-PENDING-SB-SB-NEXT-DEQ))
 (2503 1158 (:REWRITE SB::SB-LATEST-SB-DEQ-3))
 (2451 1158 (:REWRITE SB::SB-LATEST-SB-NEXT-FLUSH))
 (2302 2302 (:TYPE-PRESCRIPTION SB::PROC->SB$INLINE))
 (1240 146 (:REWRITE SB::MACHINE-P-OF-RUN))
 (1125 45 (:DEFINITION LEN))
 (924 93 (:REWRITE SB::READ-SB-NO-PENDING-2))
 (732 732 (:REWRITE SB::SB-P-OF-PROC->SB))
 (581 246 (:REWRITE SB::LEN-CONSP))
 (542 542 (:TYPE-PRESCRIPTION SB::MACHINE->PROCS$INLINE))
 (514 96 (:REWRITE SB::CONSP-WHEN-NOT-NO-PENDING))
 (486 120 (:REWRITE SB::SB-P-WHEN-NOT-CONSP))
 (462 93 (:REWRITE SB::READ-SB-NO-PENDING))
 (437 24 (:DEFINITION SB::FENCE-P))
 (292 292 (:TYPE-PRESCRIPTION SB::PROC->PHASE$INLINE))
 (292 292 (:TYPE-PRESCRIPTION SB::PROC->PC$INLINE))
 (216 216 (:TYPE-PRESCRIPTION SB::PROC->PROGRAM$INLINE))
 (194 97 (:REWRITE DEFAULT-<-1))
 (186 186 (:TYPE-PRESCRIPTION SB::NO-PENDING))
 (170 97 (:REWRITE DEFAULT-<-2))
 (128 32 (:REWRITE SB::SB-P-OF-CDR-WHEN-SB-P))
 (93 93 (:TYPE-PRESCRIPTION SB::READ-SB))
 (90 45 (:REWRITE DEFAULT-+-2))
 (79 79 (:REWRITE DEFAULT-CDR))
 (68 34 (:REWRITE SB::MACHINE-P-OF-FLUSH-SB))
 (62 31 (:REWRITE SB::MACHINE-P-OF-STEP))
 (45 45 (:REWRITE DEFAULT-+-1))
 (38 2 (:DEFINITION TRUE-LISTP))
 (33 33 (:REWRITE DEFAULT-CAR))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (26 26 (:TYPE-PRESCRIPTION SB::STARTING-STATE-P))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 6 (:REWRITE SB::STEP-NUM-PROCS))
 (12 6 (:REWRITE SB::FLUSH-SB-NUM-PROCS))
 (9 3 (:REWRITE SB::NOT-BLOCKED-FLUSH-SB))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (2 2 (:TYPE-PRESCRIPTION SB::FENCE-P))
 )
(SB::INV-HALT)
(SB::CORRECT)
