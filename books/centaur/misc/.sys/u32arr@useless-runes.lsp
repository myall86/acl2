(U32P)
(U32P-NATP)
(U32P-BOUND)
(STOBJS::1D-ARR-TMP-EQUIV)
(STOBJS::1D-ARR-TMP-EQUIV-REFL)
(STOBJS::1D-ARR-TMP-EQUIV-SYMM)
(STOBJS::1D-ARR-TMP-EQUIV-TRANS)
(1D-ARR-TMP-EQUIV-IS-AN-EQUIVALENCE)
(STOBJS::1D-ARR-TMP-LISTP)
(U32P-NTH-OF-1D-ARR-TMP-LISTP
 (92 7 (:REWRITE NTH-WITH-LARGE-INDEX))
 (30 30 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (28 19 (:REWRITE DEFAULT-<-2))
 (27 15 (:REWRITE DEFAULT-+-2))
 (26 9 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 19 (:REWRITE DEFAULT-<-1))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (15 15 (:REWRITE DEFAULT-+-1))
 (12 12 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 4 (:REWRITE U32P-NATP))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-RW))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 )
(STOBJS::1D-ARR-TMP-LISTP-OF-UPDATE-NTH
 (39 19 (:REWRITE DEFAULT-CAR))
 (37 37 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (37 17 (:REWRITE DEFAULT-CDR))
 (22 16 (:REWRITE DEFAULT-<-1))
 (22 7 (:REWRITE NFIX-WHEN-NOT-NATP))
 (19 16 (:REWRITE DEFAULT-<-2))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (15 9 (:REWRITE DEFAULT-+-2))
 (10 4 (:REWRITE U32P-NATP))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-RW))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 )
(STOBJS::1D-ARR-TMP-LISTP-OF-RESIZE-LIST)
(U32S$CP-OF-UPDATE-NTH
 (69 23 (:REWRITE U32P-BOUND))
 (68 62 (:REWRITE DEFAULT-<-1))
 (65 62 (:REWRITE DEFAULT-<-2))
 (54 54 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (52 52 (:TYPE-PRESCRIPTION U32P))
 (39 19 (:REWRITE DEFAULT-CAR))
 (37 17 (:REWRITE DEFAULT-CDR))
 (22 7 (:REWRITE NFIX-WHEN-NOT-NATP))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (15 9 (:REWRITE DEFAULT-+-2))
 (10 4 (:REWRITE U32P-NATP))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-RW))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 )
(U32S$CP-OF-RESIZE-LIST)
(U32ARR$AP)
(U32ARR$AP-REWRITE-TO-1D-ARR-TMP-LISTP
 (10 10 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(CREATE-U32ARR$A)
(U32S$A-LENGTH)
(RESIZE-U32S$A)
(U32S$AI)
(UPDATE-U32S$AI)
(U32ARR$CORR)
(CREATE-U32ARR{CORRESPONDENCE})
(CREATE-U32ARR{PRESERVED})
(U32S-LENGTH{CORRESPONDENCE})
(GET-U32{CORRESPONDENCE}
 (59 6 (:REWRITE NTH-WITH-LARGE-INDEX))
 (30 6 (:DEFINITION LEN))
 (12 6 (:REWRITE DEFAULT-+-2))
 (10 6 (:REWRITE DEFAULT-<-2))
 (10 3 (:REWRITE NFIX-WHEN-NOT-NATP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (4 4 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 1 (:DEFINITION STOBJS::1D-ARR-TMP-LISTP))
 (1 1 (:REWRITE NATP-WHEN-INTEGERP))
 (1 1 (:REWRITE NATP-WHEN-GTE-0))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GET-U32{GUARD-THM})
(SET-U32{CORRESPONDENCE}
 (72 6 (:REWRITE NTH-WITH-LARGE-INDEX))
 (35 6 (:DEFINITION LEN))
 (18 13 (:REWRITE DEFAULT-<-2))
 (17 10 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-<-1))
 (12 3 (:REWRITE ZP-WHEN-INTEGERP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE ZP-WHEN-GT-0))
 (5 5 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (5 5 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (5 5 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 1 (:DEFINITION STOBJS::1D-ARR-TMP-LISTP))
 (1 1 (:REWRITE NFIX-WHEN-NOT-NATP))
 (1 1 (:REWRITE CDR-CONS))
 )
(SET-U32{GUARD-THM}
 (45 3 (:REWRITE NTH-WITH-LARGE-INDEX))
 (25 5 (:DEFINITION LEN))
 (13 9 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 1 (:DEFINITION STOBJS::1D-ARR-TMP-LISTP))
 (3 3 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (3 3 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(SET-U32{PRESERVED}
 (13 1 (:DEFINITION UPDATE-NTH))
 (10 2 (:DEFINITION LEN))
 (6 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 1 (:REWRITE ZP-WHEN-INTEGERP))
 (4 1 (:DEFINITION STOBJS::1D-ARR-TMP-LISTP))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE ZP-WHEN-GT-0))
 (2 2 (:REWRITE NFIX-WHEN-NOT-NATP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(RESIZE-U32S{CORRESPONDENCE}
 (56 4 (:REWRITE NTH-WITH-LARGE-INDEX))
 (25 4 (:DEFINITION LEN))
 (10 5 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (5 5 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 1 (:DEFINITION STOBJS::1D-ARR-TMP-LISTP))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (1 1 (:TYPE-PRESCRIPTION U32P))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CDR-CONS))
 )
(RESIZE-U32S{PRESERVED})
