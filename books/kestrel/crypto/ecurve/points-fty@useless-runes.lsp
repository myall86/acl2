(ECURVE::POINT-FIX
 (1 1 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINTP-OF-POINT-FIX
 (3 3 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINT-FIX-WHEN-POINTP
 (19 19 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (33 33 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINT-EQUIV$INLINE
 (4 4 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINT-EQUIV-IS-AN-EQUIVALENCE)
(ECURVE::POINT-EQUIV-IMPLIES-EQUAL-POINT-FIX-1)
(ECURVE::POINT-FIX-UNDER-POINT-EQUIV)
(ECURVE::EQUAL-OF-POINT-FIX-1-FORWARD-TO-POINT-EQUIV)
(ECURVE::EQUAL-OF-POINT-FIX-2-FORWARD-TO-POINT-EQUIV)
(ECURVE::POINT-EQUIV-OF-POINT-FIX-1-FORWARD)
(ECURVE::POINT-EQUIV-OF-POINT-FIX-2-FORWARD)
(ECURVE::POINT-KIND)
(ECURVE::KEYWORDP-OF-POINT-KIND
 (2 1 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 )
(ECURVE::POINT-KIND-OF-POINT-FIX-P
 (3 1 (:REWRITE ECURVE::POINT-FIX-WHEN-POINTP))
 )
(ECURVE::POINT-KIND-POINT-EQUIV-CONGRUENCE-ON-P)
(ECURVE::POINT-KIND-POSSIBILITIES)
(ECURVE::POINT-FINITE->X)
(ECURVE::NATP-OF-POINT-FINITE->X
 (132 8 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (120 16 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (118 2 (:REWRITE ECURVE::POINT-FIX-WHEN-POINTP))
 (116 4 (:DEFINITION NAT-LISTP))
 (88 8 (:DEFINITION INTEGER-LISTP))
 (56 56 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (28 28 (:TYPE-PRESCRIPTION NAT-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 (18 18 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (16 8 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (14 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (8 4 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 (2 2 (:TYPE-PRESCRIPTION ECURVE::POINTP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ECURVE::POINT-FINITE->X-OF-POINT-FIX-P
 (18 18 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINT-FINITE->X-POINT-EQUIV-CONGRUENCE-ON-P)
(ECURVE::POINT-FINITE->Y)
(ECURVE::NATP-OF-POINT-FINITE->Y
 (132 8 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (120 16 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (118 2 (:REWRITE ECURVE::POINT-FIX-WHEN-POINTP))
 (116 4 (:DEFINITION NAT-LISTP))
 (88 8 (:DEFINITION INTEGER-LISTP))
 (54 54 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 (18 18 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 8 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (14 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (8 4 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 (2 2 (:TYPE-PRESCRIPTION ECURVE::POINTP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ECURVE::POINT-FINITE->Y-OF-POINT-FIX-P
 (39 39 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 )
(ECURVE::POINT-FINITE->Y-POINT-EQUIV-CONGRUENCE-ON-P)
(ECURVE::POINT-FINITE
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(ECURVE::POINTP-OF-POINT-FINITE
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ECURVE::POINT-KIND-OF-POINT-FINITE
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ECURVE::POINT-FINITE->X-OF-POINT-FINITE
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ECURVE::POINT-FINITE->Y-OF-POINT-FINITE
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ECURVE::POINT-FINITE-OF-POINT-FINITE->X/Y
 (33 2 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (30 4 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (29 1 (:DEFINITION NAT-LISTP))
 (22 2 (:DEFINITION INTEGER-LISTP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (2 2 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (2 1 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 )
(ECURVE::POINT-FIX-WHEN-FINITE
 (33 2 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (30 4 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (29 1 (:DEFINITION NAT-LISTP))
 (22 2 (:DEFINITION INTEGER-LISTP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (2 2 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (2 1 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 )
(ECURVE::EQUAL-OF-POINT-FINITE
 (132 8 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (120 16 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (116 4 (:DEFINITION NAT-LISTP))
 (94 76 (:REWRITE DEFAULT-<-1))
 (88 8 (:DEFINITION INTEGER-LISTP))
 (76 76 (:REWRITE DEFAULT-<-2))
 (47 47 (:REWRITE DEFAULT-CDR))
 (47 47 (:REWRITE DEFAULT-CAR))
 (46 46 (:TYPE-PRESCRIPTION ECURVE::POINT-FIX))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (16 8 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (8 8 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (8 4 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 )
(ECURVE::POINT-FINITE-OF-NFIX-X)
(ECURVE::POINT-FINITE-NAT-EQUIV-CONGRUENCE-ON-X)
(ECURVE::POINT-FINITE-OF-NFIX-Y)
(ECURVE::POINT-FINITE-NAT-EQUIV-CONGRUENCE-ON-Y)
(ECURVE::POINT-INFINITE)
(ECURVE::POINTP-OF-POINT-INFINITE)
(ECURVE::POINT-KIND-OF-POINT-INFINITE)
(ECURVE::POINT-FIX-WHEN-INFINITE
 (137 10 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (122 20 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (119 5 (:DEFINITION NAT-LISTP))
 (102 5 (:REWRITE ECURVE::POINT-FIX-WHEN-POINTP))
 (86 10 (:DEFINITION INTEGER-LISTP))
 (50 50 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (25 25 (:TYPE-PRESCRIPTION NAT-LISTP))
 (24 24 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (12 6 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (6 3 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 (5 5 (:TYPE-PRESCRIPTION ECURVE::POINTP))
 )
(ECURVE::EQUAL-OF-POINT-INFINITE
 (66 4 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (60 8 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (58 2 (:DEFINITION NAT-LISTP))
 (44 4 (:DEFINITION INTEGER-LISTP))
 (8 8 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 )
