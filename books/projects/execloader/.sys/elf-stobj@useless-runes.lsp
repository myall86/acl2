(EXLD::ELF-ELEM-P)
(EXLD::ELF-ELEM-P-OPENER
 (12 2 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 )
(EXLD::ELF-ELEM-P-TOP)
(EXLD::ELF-ELEM-FIX)
(EXLD::ELF-ELEM-FIX-OPENER
 (42 6 (:REWRITE NFIX-WHEN-NATP))
 (30 6 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 24 (:TYPE-PRESCRIPTION NATP))
 (24 12 (:REWRITE NATP-WHEN-GTE-0))
 (22 2 (:REWRITE EXLD::SECTION-INFO-LIST-FIX-WHEN-SECTION-INFO-LIST-P))
 (17 17 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX))
 (12 12 (:REWRITE NATP-WHEN-INTEGERP))
 (12 2 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE EXLD::ELF-HEADER-FIX-WHEN-ELF-HEADER-P))
 (4 4 (:TYPE-PRESCRIPTION EXLD::SECTION-INFO-LIST-P))
 (4 4 (:TYPE-PRESCRIPTION EXLD::ELF-HEADER-P))
 (4 4 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 )
(EXLD::ELF-ELEM-P-OF-ELF-ELEM-FIX
 (42 6 (:REWRITE NFIX-WHEN-NATP))
 (30 6 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 24 (:TYPE-PRESCRIPTION NATP))
 (24 12 (:REWRITE NATP-WHEN-GTE-0))
 (12 12 (:REWRITE NATP-WHEN-INTEGERP))
 (12 9 (:REWRITE DEFAULT-<-1))
 (11 1 (:REWRITE EXLD::SECTION-INFO-LIST-FIX-WHEN-SECTION-INFO-LIST-P))
 (9 9 (:REWRITE DEFAULT-<-2))
 (6 1 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-NOT-CONSP))
 (3 3 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (3 1 (:REWRITE EXLD::ELF-HEADER-FIX-WHEN-ELF-HEADER-P))
 (2 2 (:TYPE-PRESCRIPTION EXLD::SECTION-INFO-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION EXLD::ELF-HEADER-P))
 (2 2 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-SUBSETP-EQUAL))
 (1 1 (:REWRITE EXLD::ELF-ELEM-FIX-OPENER))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (1 1 (:REWRITE CONSP-BY-LEN))
 )
(EXLD::ELF-ELEM-FIX-WHEN-ELF-ELEM-P
 (19 19 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX))
 (18 6 (:REWRITE NFIX-WHEN-NOT-NATP))
 (12 12 (:TYPE-PRESCRIPTION NATP))
 (12 6 (:REWRITE NATP-WHEN-GTE-0))
 (12 2 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE EXLD::SECTION-INFO-LIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION EXLD::SECTION-INFO-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION EXLD::ELF-HEADER-P))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE EXLD::ELF-ELEM-FIX-OPENER))
 )
(EXLD::ELF-ELEM-FIX-TOP)
(EXLD::ELF-ELEM-DEFAULT)
(EXLD::ELF-ELEM-DEFAULT-OPENER)
(EXLD::ELF-ELEM-P-OF-ELF-ELEM-DEFAULT
 (4 4 (:REWRITE EXLD::ELF-ELEM-P-OPENER))
 (1 1 (:REWRITE EXLD::ELF-ELEM-DEFAULT-OPENER))
 )
(EXLD::ELF-ELEM-DEFAULT-TOP)
(EXLD::BOOLEANP-OF-ELEM-P-FOR-ELFREC-P)
(EXLD::ELEM-P-OF-DEFAULT-FOR-ELFREC-P)
(EXLD::ELEM-P-OF-ELEM-FIX-FOR-ELFREC-P
 (3 3 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX-TOP))
 )
(EXLD::ELEM-FIX-IDEMPOTENT-FOR-ELFREC-P
 (16 16 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX))
 (12 2 (:REWRITE DEFAULT-CAR))
 (3 3 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX-TOP))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE EXLD::ELF-ELEM-P-OPENER))
 )
(EXLD::ELFREC-P1)
(EXLD::ELFREC-P)
(EXLD::ELFREC-TO-MTR
 (1 1 (:TYPE-PRESCRIPTION EXLD::ELFREC-TO-MTR))
 )
(EXLD::ELFREC-BAD-PART)
(EXLD::ELFREC-GET1)
(EXLD::ELFREC-SET1)
(EXLD::ELFREC-GET
 (22 22 (:TYPE-PRESCRIPTION EXLD::ELFREC-TO-MTR))
 )
(EXLD::ELFREC-SET)
(EXLD::ELFREC-BADGUY
 (4 4 (:TYPE-PRESCRIPTION EXLD::ELFREC-TO-MTR))
 )
(EXLD::ELEM-P-OF-ELFREC-GET
 (9 9 (:TYPE-PRESCRIPTION EXLD::ELFREC-TO-MTR))
 )
(EXLD::ELFREC-GET-OF-ELFREC-SET-SAME
 (1 1 (:TYPE-PRESCRIPTION EXLD::ELFREC-TO-MTR))
 )
(EXLD::ELFREC-GET-OF-ELFREC-SET-DIFF)
(EXLD::ELFREC-SET-OF-ELFREC-GET-SAME)
(EXLD::ELFREC-SET-OF-ELFREC-SET-DIFF)
(EXLD::ELFREC-SET-OF-ELFREC-SET-SAME)
(EXLD::ELFREC-GET-OF-ELFREC-SET-STRONG)
(EXLD::ELFREC-GET-OF-NIL)
(EXLD::ELFREC-BAD-PART-OF-ELFREC-SET
 (12 6 (:DEFINITION EXLD::ELFREC-P1))
 (6 6 (:TYPE-PRESCRIPTION EXLD::BOOLEANP-OF-ELEM-P-FOR-ELFREC-P))
 )
(EXLD::ELFREC-BADGUY-FINDS-COUNTEREXAMPLE)
(EXLD::ELFREC-BADGUY-UNLESS-EQUAL)
(EXLD::EQUAL-OF-ELFREC-SET)
(EXLD::@ELF)
(EXLD::!ELF)
(EXLD::ELF-ELEM-P-OF-@ELF)
(EXLD::ELEM-P-OF-@ELF-ELF-FILE-SIZE)
(EXLD::ELEM-P-OF-@ELF-SECTIONS-NUM)
(EXLD::ELEM-P-OF-@ELF-ELF-HEADER-SIZE)
(EXLD::ELEM-P-OF-@ELF-ELF-HEADER)
(EXLD::ELEM-P-OF-@ELF-SECTIONS)
(EXLD::@ELF-OF-NIL)
(EXLD::ELFREC-BAD-PART-OF-!ELF)
(EXLD::@ELF-OF-!ELF-INTRA-FIELD
 (11 11 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-FIX))
 (8 2 (:REWRITE EXLD::ELF-ELEM-FIX-WHEN-ELF-ELEM-P))
 (4 4 (:TYPE-PRESCRIPTION EXLD::ELF-ELEM-P))
 (2 2 (:REWRITE EXLD::ELF-ELEM-P-OPENER))
 (2 2 (:REWRITE EXLD::ELF-ELEM-FIX-OPENER))
 )
(EXLD::@ELF-OF-!ELF-INTER-FIELD)
(EXLD::!ELF-!ELF-SHADOW-WRITES)
(EXLD::!ELF-!ELF-INTRA-FIELD-ARRANGE-WRITES)
(EXLD::!ELF-!ELF-INTER-FIELD-ARRANGE-WRITES)
(EXLD::!ELF-OF-@ELF)
(EXLD::@ELF-FILE-SIZE$A)
(EXLD::@SECTIONS-NUM$A)
(EXLD::@ELF-HEADER-SIZE$A)
(EXLD::@ELF-HEADER$A)
(EXLD::@SECTIONS$A)
(EXLD::!ELF-FILE-SIZE$A)
(EXLD::!SECTIONS-NUM$A)
(EXLD::!ELF-HEADER-SIZE$A)
(EXLD::!ELF-HEADER$A)
(EXLD::!SECTIONS$A)
(EXLD::ELF$AP)
(EXLD::CREATE-ELF$A)
(EXLD::ELF-CORR)
(EXLD::CREATE-ELF{CORRESPONDENCE})
(EXLD::CREATE-ELF{PRESERVED})
(EXLD::@ELF-FILE-SIZE{CORRESPONDENCE})
(EXLD::!ELF-FILE-SIZE{CORRESPONDENCE}
 (14 14 (:REWRITE RSTOBJ2::NTH-WHEN-ALL-EQUAL))
 )
(EXLD::!ELF-FILE-SIZE{PRESERVED})
(EXLD::@SECTIONS-NUM{CORRESPONDENCE})
(EXLD::!SECTIONS-NUM{CORRESPONDENCE}
 (14 14 (:REWRITE RSTOBJ2::NTH-WHEN-ALL-EQUAL))
 )
(EXLD::!SECTIONS-NUM{PRESERVED})
(EXLD::@ELF-HEADER-SIZE{CORRESPONDENCE})
(EXLD::!ELF-HEADER-SIZE{CORRESPONDENCE}
 (14 14 (:REWRITE RSTOBJ2::NTH-WHEN-ALL-EQUAL))
 )
(EXLD::!ELF-HEADER-SIZE{PRESERVED})
(EXLD::@ELF-HEADER{CORRESPONDENCE})
(EXLD::!ELF-HEADER{CORRESPONDENCE}
 (14 14 (:REWRITE RSTOBJ2::NTH-WHEN-ALL-EQUAL))
 )
(EXLD::!ELF-HEADER{PRESERVED})
(EXLD::@SECTIONS{CORRESPONDENCE})
(EXLD::!SECTIONS{CORRESPONDENCE}
 (14 14 (:REWRITE RSTOBJ2::NTH-WHEN-ALL-EQUAL))
 )
(EXLD::!SECTIONS{PRESERVED})
(EXLD::GOOD-ELF-P)
