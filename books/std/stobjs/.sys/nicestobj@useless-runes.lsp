(STOBJS::KWD-ALIST-FIELD-ACCESSOR-ALIST)
(STOBJS::MEMBER-EQ-TREE)
(STOBJS::CONGRUENT-STOBJ-PRED)
(STOBJS::REMOVE-REDUNDANT-PAIRS)
(STOBJS::PARSE-NICESTOBJ-FIELD)
(STOBJS::PARSE-NICESTOBJ-FIELDS)
(STOBJS::NICESTOBJ-FIELD-TEMPLATE)
(STOBJS::NICESTOBJ-FIELD-TEMPLATES)
(STOBJS::PARSE-NICESTOBJ)
(STOBJS::DEFNICESTOBJ-FN)
(STOBJS::REDUNDANT-UPDATE-NTH
 (33 20 (:REWRITE DEFAULT-+-2))
 (27 18 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-+-1))
 (20 18 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::LEN-OF-RESIZE-LIST
 (29 25 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-+-1))
 (18 17 (:REWRITE DEFAULT-<-1))
 (17 17 (:REWRITE DEFAULT-<-2))
 (14 12 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->NAT$INLINE
 (10 2 (:DEFINITION LEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::NATP-OF-FOO->NAT)
(STOBJS::UPDATE-FOO->NAT$INLINE
 (10 2 (:DEFINITION LEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->STR$INLINE
 (10 2 (:DEFINITION LEN))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::RETURN-TYPE-OF-FOO->STR)
(STOBJS::UPDATE-FOO->STR$INLINE
 (10 2 (:DEFINITION LEN))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->FAI$INLINE)
(STOBJS::NATP-OF-FOO->FAI)
(STOBJS::UPDATE-FOO->FAI$INLINE)
(STOBJS::FOO-FIELD-P)
(STOBJS::TYPE-WHEN-FOO-FIELD-P)
(STOBJS::FOO-FIELD-P-POSSIBILITIES)
(STOBJS::FOO-FIELD-FIX$INLINE)
(STOBJS::RETURN-TYPE-OF-FOO-FIELD-FIX)
(STOBJS::FOO-FIELD-FIX-IDEMPOTENT)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(STOBJS::FOO-FIELD-EQUIV$INLINE)
(STOBJS::FOO-FIELD-EQUIV-IS-AN-EQUIVALENCE)
(STOBJS::FOO-FIELD-EQUIV-IMPLIES-EQUAL-FOO-FIELD-FIX-1)
(STOBJS::FOO-FIELD-FIX-UNDER-FOO-FIELD-EQUIV)
(STOBJS::FOO-GET
 (21 21 (:REWRITE DEFAULT-CDR))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO-GET-OF-FOO-FIELD-FIX-KEY
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::FOO-GET-FOO-FIELD-EQUIV-CONGRUENCE-ON-KEY)
(STOBJS::FOO->NAT-OF-UPDATE)
(STOBJS::UPDATE-FOO->NAT-PRESERVES-OTHERS
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::UPDATE-FOO->NAT-SELF-IDENTITY
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->NAT-OF-UPDATE-FOO->NAT
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->STR-OF-UPDATE)
(STOBJS::UPDATE-FOO->STR-PRESERVES-OTHERS
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE STR-FIX-DEFAULT))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::UPDATE-FOO->STR-SELF-IDENTITY
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->STR-OF-UPDATE-FOO->STR
 (2 2 (:REWRITE STR-FIX-DEFAULT))
 )
(STOBJS::FOO->GRUMBLE-OF-UPDATE)
(STOBJS::UPDATE-FOO->GRUMBLE-PRESERVES-OTHERS
 (34 17 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (17 17 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::UPDATE-FOO->GRUMBLE-SELF-IDENTITY
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->GRUMBLE-OF-UPDATE-FOO->GRUMBLE)
(STOBJS::FOO->GRUMBLE-TYPE)
(STOBJS::FOO->ANY-OF-UPDATE)
(STOBJS::UPDATE-FOO->ANY-PRESERVES-OTHERS
 (34 17 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (17 17 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::UPDATE-FOO->ANY-SELF-IDENTITY
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->ANY-OF-UPDATE-FOO->ANY)
(STOBJS::FOO->FAI-OF-UPDATE
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::UPDATE-FOO->FAI-PRESERVES-OTHERS
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 )
(STOBJS::UPDATE-FOO->FAI-SELF-IDENTITY)
(STOBJS::FOO->FAI-OF-UPDATE-FOO->FAI
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->FAI-OF-UPDATE-FOO->FAI-DIFF
 (25 25 (:REWRITE DEFAULT-<-2))
 (25 25 (:REWRITE DEFAULT-<-1))
 (12 12 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (12 12 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->FAI-OF-UPDATE-FOO->FAI-SPLIT
 (94 77 (:REWRITE DEFAULT-<-1))
 (78 78 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (78 78 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (77 77 (:REWRITE DEFAULT-<-2))
 (39 39 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (39 39 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(STOBJS::FOO->FA-LENGTH-OF-UPDATE)
(STOBJS::FOO->FA-LENGTH-OF-UPDATE-FOO->FAI)
(STOBJS::NTH-WHEN-FOO->FAP
 (45 36 (:REWRITE DEFAULT-<-2))
 (38 36 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE DEFAULT-CAR))
 (24 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-+-1))
 (8 8 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (8 8 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (7 7 (:REWRITE ZP-OPEN))
 (4 4 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (4 4 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(STOBJS::FOO->FBI-OF-UPDATE)
(STOBJS::UPDATE-FOO->FBI-PRESERVES-OTHERS
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 (2 2 (:REWRITE STR-FIX-WHEN-STRINGP))
 (2 2 (:REWRITE STR-FIX-DEFAULT))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::UPDATE-FOO->FBI-SELF-IDENTITY
 (18 9 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 1 (:DEFINITION STOBJS::FOO->FAP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:DEFINITION STOBJS::FOO->FBP))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::FOO->FBI-OF-UPDATE-FOO->FBI
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::FOO->FBI-OF-UPDATE-FOO->FBI-DIFF
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->FBI-OF-UPDATE-FOO->FBI-SPLIT
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::FOO->FB-LENGTH-OF-UPDATE
 (10 2 (:DEFINITION LEN))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::FOO->FB-LENGTH-OF-UPDATE-FOO->FBI
 (35 7 (:DEFINITION LEN))
 (15 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::NTH-WHEN-FOO->FBP
 (19 12 (:REWRITE DEFAULT-<-2))
 (18 11 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::RESIZE-FOO->FB-PRESERVES-OTHERS
 (20 4 (:REWRITE STOBJS::NTH-WHEN-FOO->FBP))
 (20 2 (:REWRITE STR-FIX-WHEN-STRINGP))
 (12 2 (:DEFINITION STOBJS::FOO->FBP))
 (10 10 (:TYPE-PRESCRIPTION STOBJS::FOO->FBP))
 (9 1 (:DEFINITION RESIZE-LIST))
 (4 2 (:REWRITE STR-FIX-DEFAULT))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::FOO-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::FOO-FIELD-P))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::FOO->FB-LENGTH-OF-RESIZE-FOO->FB
 (9 1 (:DEFINITION RESIZE-LIST))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::FOO->FBI-TYPE)
(STOBJS::BAR->NAT$INLINE
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::NATP-OF-BAR->NAT)
(STOBJS::UPDATE-BAR->NAT$INLINE
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::BAR->STR$INLINE
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::RETURN-TYPE-OF-BAR->STR)
(STOBJS::UPDATE-BAR->STR$INLINE
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::BAR-FIELD-P)
(STOBJS::TYPE-WHEN-BAR-FIELD-P)
(STOBJS::BAR-FIELD-P-POSSIBILITIES)
(STOBJS::BAR-FIELD-FIX$INLINE)
(STOBJS::RETURN-TYPE-OF-BAR-FIELD-FIX)
(STOBJS::BAR-FIELD-FIX-IDEMPOTENT)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(STOBJS::BAR-FIELD-EQUIV$INLINE)
(STOBJS::BAR-FIELD-EQUIV-IS-AN-EQUIVALENCE)
(STOBJS::BAR-FIELD-EQUIV-IMPLIES-EQUAL-BAR-FIELD-FIX-1)
(STOBJS::BAR-FIELD-FIX-UNDER-BAR-FIELD-EQUIV)
(STOBJS::BAR-GET
 (13 13 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::BAR-GET-OF-BAR-FIELD-FIX-KEY
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 )
(STOBJS::BAR-GET-BAR-FIELD-EQUIV-CONGRUENCE-ON-KEY)
(STOBJS::BAR->NAT-OF-UPDATE)
(STOBJS::UPDATE-BAR->NAT-PRESERVES-OTHERS
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 )
(STOBJS::UPDATE-BAR->NAT-SELF-IDENTITY
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->NAT-OF-UPDATE-BAR->NAT
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::BAR->STR-OF-UPDATE)
(STOBJS::UPDATE-BAR->STR-PRESERVES-OTHERS
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE STR-FIX-DEFAULT))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 )
(STOBJS::UPDATE-BAR->STR-SELF-IDENTITY
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->STR-OF-UPDATE-BAR->STR
 (2 2 (:REWRITE STR-FIX-DEFAULT))
 )
(STOBJS::BAR->FOO-OF-UPDATE)
(STOBJS::UPDATE-BAR->FOO-PRESERVES-OTHERS
 (34 17 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (17 17 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 )
(STOBJS::UPDATE-BAR->FOO-SELF-IDENTITY
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->FOO-OF-UPDATE-BAR->FOO)
(STOBJS::BAR->FOO-TYPE)
(STOBJS::BAR->GRUMBLE-OF-UPDATE)
(STOBJS::UPDATE-BAR->GRUMBLE-PRESERVES-OTHERS
 (34 17 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (17 17 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 )
(STOBJS::UPDATE-BAR->GRUMBLE-SELF-IDENTITY
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->GRUMBLE-OF-UPDATE-BAR->GRUMBLE)
(STOBJS::BAR->GRUMBLE-TYPE)
(STOBJS::BAR->FOOSI-OF-UPDATE)
(STOBJS::UPDATE-BAR->FOOSI-PRESERVES-OTHERS
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(STOBJS::UPDATE-BAR->FOOSI-SELF-IDENTITY
 (16 8 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (4 1 (:DEFINITION STOBJS::BAR->FOOSP))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->FOOSI-OF-UPDATE-BAR->FOOSI
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::BAR->FOOSI-OF-UPDATE-BAR->FOOSI-DIFF
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (6 6 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (6 6 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (3 3 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::BAR->FOOSI-OF-UPDATE-BAR->FOOSI-SPLIT
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::BAR->FOOS-LENGTH-OF-UPDATE
 (10 2 (:DEFINITION LEN))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(STOBJS::BAR->FOOS-LENGTH-OF-UPDATE-BAR->FOOSI
 (35 7 (:DEFINITION LEN))
 (15 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::NTH-WHEN-BAR->FOOSP
 (19 12 (:REWRITE DEFAULT-<-2))
 (18 11 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE ZP-OPEN))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::RESIZE-BAR->FOOS-PRESERVES-OTHERS
 (18 2 (:DEFINITION RESIZE-LIST))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE STR-FIX-WHEN-STRINGP))
 (4 4 (:REWRITE STR-FIX-DEFAULT))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(STOBJS::BAR->FOOS-LENGTH-OF-RESIZE-BAR->FOOS
 (9 1 (:DEFINITION RESIZE-LIST))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR STOBJS::RANGE-NAT-EQUIV-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (2 2 (:LINEAR STOBJS::RANGE-EQUAL-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:LINEAR STOBJS::RANGE-NAT-EQUIV-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 (1 1 (:LINEAR STOBJS::RANGE-EQUAL-MIN-MAX-BADGUY-UPPER-BOUND-WHEN-NOT-EQUAL))
 )
(STOBJS::BAR->FOOSI-TYPE)
(STOBJS::BAR->ANY-OF-UPDATE)
(STOBJS::UPDATE-BAR->ANY-PRESERVES-OTHERS
 (32 16 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (3 1 (:REWRITE STOBJS::BAR-FIELD-FIX-IDEMPOTENT))
 (2 2 (:TYPE-PRESCRIPTION STOBJS::BAR-FIELD-P))
 (2 2 (:REWRITE STR-FIX-WHEN-STRINGP))
 (2 2 (:REWRITE STR-FIX-DEFAULT))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(STOBJS::UPDATE-BAR->ANY-SELF-IDENTITY
 (12 2 (:DEFINITION STOBJS::BAR->FOOSP))
 (11 1 (:REWRITE STOBJS::NTH-WHEN-BAR->FOOSP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(STOBJS::BAR->ANY-OF-UPDATE-BAR->ANY)
