(EFFECTIVE-FAT)
(LEN-OF-EFFECTIVE-FAT
 (206 2 (:REWRITE TAKE-OF-TOO-MANY))
 (177 1 (:DEFINITION TAKE))
 (131 5 (:REWRITE CONSP-OF-NTH-WHEN-ALISTP))
 (83 4 (:REWRITE NFIX-WHEN-ZP))
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (78 4 (:REWRITE ZP-OPEN))
 (74 6 (:DEFINITION LEN))
 (72 24 (:LINEAR LOFAT-FS-P-CORRECTNESS-1))
 (70 4 (:REWRITE NFIX-WHEN-NATP))
 (69 3 (:DEFINITION ALISTP))
 (61 2 (:REWRITE TAKE-OF-LEN-FREE))
 (57 3 (:DEFINITION NATP))
 (48 48 (:TYPE-PRESCRIPTION LOFAT-FS-P))
 (46 4 (:REWRITE DEFAULT-CAR))
 (45 2 (:REWRITE TAKE-WHEN-ATOM))
 (32 2 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (29 18 (:REWRITE DEFAULT-<-2))
 (29 18 (:REWRITE DEFAULT-<-1))
 (25 4 (:DEFINITION NOT))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (24 6 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (21 12 (:REWRITE DEFAULT-+-2))
 (18 1 (:DEFINITION NTH))
 (15 15 (:TYPE-PRESCRIPTION ALISTP))
 (14 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 11 (:REWRITE DEFAULT-CDR))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (9 9 (:LINEAR POSITION-WHEN-MEMBER))
 (9 9 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (6 6 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (4 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:LINEAR POSITION-WHEN-MEMBER-OF-TAKE))
 )
(FAT32-ENTRY-LIST-P-OF-EFFECTIVE-FAT
 (1219 23 (:REWRITE INTEGERP-OF-NTH-WHEN-INTEGER-LISTP))
 (874 46 (:REWRITE INTEGER-LISTP-WHEN-NAT-LISTP))
 (874 23 (:DEFINITION INTEGER-LISTP))
 (819 72 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (722 84 (:DEFINITION LEN))
 (647 17 (:REWRITE CONSP-OF-NTH-WHEN-ALISTP))
 (575 92 (:REWRITE NAT-LISTP-IF-FAT32-MASKED-ENTRY-LIST-P))
 (390 30 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (345 15 (:DEFINITION ALISTP))
 (253 23 (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
 (253 23 (:LINEAR NATP-OF-NTH-WHEN-NAT-LISTP))
 (230 230 (:TYPE-PRESCRIPTION FAT32-MASKED-ENTRY-LIST-P))
 (204 2 (:REWRITE TAKE-OF-TOO-MANY))
 (200 28 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (184 184 (:TYPE-PRESCRIPTION NAT-LISTP))
 (183 94 (:REWRITE DEFAULT-+-2))
 (177 1 (:DEFINITION TAKE))
 (163 162 (:REWRITE DEFAULT-CDR))
 (161 161 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (150 30 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (150 30 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (149 100 (:REWRITE DEFAULT-<-2))
 (122 122 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (120 30 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (115 115 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-WHEN-NOT-CONSP))
 (115 115 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-WHEN-BOUNDED-NAT-LISTP))
 (115 23 (:REWRITE UNSIGNED-BYTE-P-OF-NTH-WHEN-UNSIGNED-BYTE-LISTP))
 (115 23 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-OF-CDR-WHEN-FAT32-MASKED-ENTRY-LIST-P))
 (114 100 (:REWRITE DEFAULT-<-1))
 (98 94 (:REWRITE DEFAULT-+-1))
 (97 3 (:DEFINITION STRING-LISTP))
 (92 92 (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (92 92 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (92 92 (:REWRITE BOUNDED-NAT-LISTP-CORRECTNESS-1))
 (86 44 (:REWRITE DEFAULT-CAR))
 (82 3 (:REWRITE NFIX-WHEN-ZP))
 (78 4 (:REWRITE ZP-OPEN))
 (75 75 (:TYPE-PRESCRIPTION ALISTP))
 (69 3 (:REWRITE NFIX-WHEN-NATP))
 (60 60 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (60 60 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (60 60 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (60 30 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (60 30 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (57 3 (:DEFINITION NATP))
 (57 2 (:REWRITE TAKE-OF-LEN-FREE))
 (50 3 (:REWRITE FAT32-ENTRY-LIST-P-WHEN-NOT-CONSP))
 (46 46 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (46 23 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (46 23 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (46 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
 (45 2 (:REWRITE TAKE-WHEN-ATOM))
 (44 44 (:LINEAR POSITION-WHEN-MEMBER))
 (44 44 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (39 3 (:REWRITE STRINGP-WHEN-NONEMPTY-STRINGP))
 (37 1 (:DEFINITION TRUE-LISTP))
 (30 30 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (28 28 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (24 3 (:REWRITE NONEMPTY-STRINGP-OF-CAR-WHEN-NONEMPTY-STRING-LISTP))
 (16 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION NONEMPTY-STRING-LISTP))
 (8 8 (:REWRITE NONEMPTY-STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION NONEMPTY-STRINGP))
 (6 6 (:REWRITE NONEMPTY-STRINGP-WHEN-MEMBER-EQUAL-OF-NONEMPTY-STRING-LISTP))
 (6 1 (:REWRITE NONEMPTY-STRING-LISTP-OF-CDR-WHEN-NONEMPTY-STRING-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE NONEMPTY-STRING-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE SET::IN-SET))
 (1 1 (:REWRITE LENGTH-WHEN-STRINGP))
 )
(NTH-OF-EFFECTIVE-FAT
 (339 9 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (303 9 (:REWRITE CONSP-OF-NTH-WHEN-ALISTP))
 (206 2 (:REWRITE TAKE-OF-TOO-MANY))
 (190 12 (:DEFINITION LEN))
 (184 4 (:DEFINITION NTH))
 (182 14 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (177 1 (:DEFINITION TAKE))
 (161 7 (:DEFINITION ALISTP))
 (114 12 (:REWRITE NFIX-WHEN-ZP))
 (95 11 (:REWRITE ZP-OPEN))
 (90 12 (:REWRITE NFIX-WHEN-NATP))
 (72 24 (:LINEAR LOFAT-FS-P-CORRECTNESS-1))
 (70 14 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (70 14 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (66 6 (:DEFINITION NATP))
 (63 40 (:REWRITE DEFAULT-<-2))
 (61 2 (:REWRITE TAKE-OF-LEN-FREE))
 (58 1 (:REWRITE LEN-OF-TAKE))
 (56 56 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (56 14 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (52 40 (:REWRITE DEFAULT-<-1))
 (52 10 (:REWRITE DEFAULT-CAR))
 (48 48 (:TYPE-PRESCRIPTION LOFAT-FS-P))
 (45 2 (:REWRITE TAKE-WHEN-ATOM))
 (35 35 (:TYPE-PRESCRIPTION ALISTP))
 (35 20 (:REWRITE DEFAULT-+-2))
 (31 6 (:DEFINITION NOT))
 (28 28 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (28 28 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (28 28 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (28 14 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (28 14 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (25 24 (:REWRITE DEFAULT-CDR))
 (22 20 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (14 14 (:LINEAR POSITION-WHEN-MEMBER))
 (14 14 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (11 11 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (4 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(EFFECTIVE-FAT-OF-UPDATE-DATA-REGIONI
 (412 4 (:REWRITE TAKE-OF-TOO-MANY))
 (354 2 (:DEFINITION TAKE))
 (262 10 (:REWRITE CONSP-OF-NTH-WHEN-ALISTP))
 (166 166 (:TYPE-PRESCRIPTION COUNT-OF-CLUSTERS))
 (156 12 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (148 12 (:DEFINITION LEN))
 (138 6 (:DEFINITION ALISTP))
 (122 4 (:REWRITE TAKE-OF-LEN-FREE))
 (110 6 (:REWRITE ZP-OPEN))
 (110 4 (:REWRITE NFIX-WHEN-ZP))
 (108 36 (:LINEAR LOFAT-FS-P-CORRECTNESS-1))
 (92 8 (:REWRITE DEFAULT-CAR))
 (92 4 (:REWRITE NFIX-WHEN-NATP))
 (90 4 (:REWRITE TAKE-WHEN-ATOM))
 (76 76 (:TYPE-PRESCRIPTION LEN))
 (76 4 (:DEFINITION NATP))
 (72 72 (:TYPE-PRESCRIPTION LOFAT-FS-P))
 (64 4 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (60 12 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (60 12 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (48 48 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (48 12 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (44 26 (:REWRITE DEFAULT-<-2))
 (42 26 (:REWRITE DEFAULT-<-1))
 (36 20 (:REWRITE DEFAULT-+-2))
 (36 6 (:DEFINITION NOT))
 (36 2 (:DEFINITION NTH))
 (30 30 (:TYPE-PRESCRIPTION ALISTP))
 (28 4 (:DEFINITION NFIX))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (24 24 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (24 24 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (24 22 (:REWRITE DEFAULT-CDR))
 (24 12 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (24 12 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (22 20 (:REWRITE DEFAULT-+-1))
 (16 16 (:LINEAR POSITION-WHEN-MEMBER))
 (16 16 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (12 12 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (8 2 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 )
(EFFECTIVE-FAT-OF-UPDATE-FATI
 (902 9 (:REWRITE TAKE-OF-TOO-MANY))
 (698 26 (:REWRITE CONSP-OF-NTH-WHEN-ALISTP))
 (655 4 (:DEFINITION TAKE))
 (416 32 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (368 16 (:DEFINITION ALISTP))
 (341 4 (:DEFINITION UPDATE-NTH))
 (339 24 (:DEFINITION LEN))
 (277 24 (:REWRITE DEFAULT-CAR))
 (261 87 (:LINEAR LOFAT-FS-P-CORRECTNESS-1))
 (259 15 (:REWRITE NFIX-WHEN-ZP))
 (256 19 (:REWRITE ZP-OPEN))
 (241 8 (:REWRITE TAKE-OF-LEN-FREE))
 (221 15 (:REWRITE NFIX-WHEN-NATP))
 (184 9 (:REWRITE TAKE-WHEN-ATOM))
 (177 11 (:DEFINITION NATP))
 (174 174 (:TYPE-PRESCRIPTION LOFAT-FS-P))
 (169 54 (:REWRITE DEFAULT-CDR))
 (168 168 (:TYPE-PRESCRIPTION LEN))
 (164 2 (:REWRITE CAR-OF-TAKE))
 (160 32 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (160 32 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (128 128 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (128 32 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (126 7 (:REWRITE NTH-WHEN->=-N-LEN-L))
 (117 70 (:REWRITE DEFAULT-<-2))
 (105 70 (:REWRITE DEFAULT-<-1))
 (83 2 (:REWRITE LEN-UPDATE-NTH))
 (80 80 (:TYPE-PRESCRIPTION ALISTP))
 (76 44 (:REWRITE DEFAULT-+-2))
 (64 64 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (64 64 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (64 64 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (64 32 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (64 32 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (60 4 (:REWRITE CONSP-OF-TAKE))
 (54 3 (:DEFINITION NTH))
 (48 44 (:REWRITE DEFAULT-+-1))
 (32 32 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (30 30 (:LINEAR POSITION-WHEN-MEMBER))
 (30 30 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (16 4 (:REWRITE FOLD-CONSTS-IN-+))
 (14 2 (:DEFINITION MAX))
 (13 13 (:TYPE-PRESCRIPTION ZP))
 (11 11 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:TYPE-PRESCRIPTION MAX))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(STOBJ-FIND-N-FREE-CLUSTERS-HELPER
 (61 44 (:REWRITE DEFAULT-+-1))
 (59 44 (:REWRITE DEFAULT-+-2))
 (28 21 (:REWRITE DEFAULT-<-2))
 (28 4 (:REWRITE NFIX-WHEN-ZP))
 (21 21 (:REWRITE DEFAULT-<-1))
 (9 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:LINEAR POSITION-WHEN-MEMBER-OF-TAKE))
 )
(NAT-LISTP-OF-STOBJ-FIND-N-FREE-CLUSTERS-HELPER
 (92 61 (:REWRITE DEFAULT-+-2))
 (83 61 (:REWRITE DEFAULT-+-1))
 (69 7 (:REWRITE NAT-LISTP-IF-FAT32-MASKED-ENTRY-LIST-P))
 (22 8 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-WHEN-NOT-CONSP))
 (21 7 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (18 18 (:REWRITE FOLD-CONSTS-IN-+))
 (18 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 3 (:REWRITE NFIX-WHEN-NATP))
 (14 14 (:TYPE-PRESCRIPTION FAT32-MASKED-ENTRY-LIST-P))
 (12 3 (:REWRITE NFIX-WHEN-ZP))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (9 3 (:DEFINITION NATP))
 (8 8 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-WHEN-BOUNDED-NAT-LISTP))
 (8 1 (:REWRITE FAT32-MASKED-ENTRY-LIST-P-OF-CONS))
 (7 7 (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (7 7 (:REWRITE BOUNDED-NAT-LISTP-CORRECTNESS-1))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION FAT32-MASKED-ENTRY-P))
 )
(STOBJ-FIND-N-FREE-CLUSTERS-HELPER-CORRECTNESS-1
 (556 46 (:REWRITE DEFAULT-CDR))
 (486 63 (:REWRITE NFIX-WHEN-ZP))
 (451 300 (:REWRITE DEFAULT-+-2))
 (390 300 (:REWRITE DEFAULT-+-1))
 (172 8 (:REWRITE CONSP-OF-CDR-OF-NTHCDR))
 (126 18 (:DEFINITION LEN))
 (117 74 (:REWRITE DEFAULT-<-2))
 (74 74 (:REWRITE DEFAULT-<-1))
 (54 2 (:REWRITE DEFAULT-CAR))
 (16 16 (:LINEAR POSITION-WHEN-MEMBER))
 (16 16 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (7 7 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(STOBJ-FIND-N-FREE-CLUSTERS)
(NAT-LISTP-OF-STOBJ-FIND-N-FREE-CLUSTERS)
(STOBJ-FIND-N-FREE-CLUSTERS-CORRECTNESS-1
 (167 4 (:REWRITE NTHCDR-WHEN->=-N-LEN-L))
 (85 1 (:REWRITE LEN-OF-EFFECTIVE-FAT))
 (84 13 (:LINEAR LOFAT-FS-P-CORRECTNESS-1))
 (51 1 (:REWRITE NFIX-WHEN-ZP))
 (49 49 (:TYPE-PRESCRIPTION COUNT-OF-CLUSTERS))
 (48 2 (:DEFINITION NTHCDR))
 (47 1 (:REWRITE ZP-OPEN))
 (28 17 (:REWRITE DEFAULT-+-2))
 (26 1 (:REWRITE NFIX-WHEN-NATP))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (23 17 (:REWRITE DEFAULT-+-1))
 (22 1 (:DEFINITION NATP))
 (14 2 (:DEFINITION LEN))
 (12 12 (:TYPE-PRESCRIPTION FAT-ENTRY-COUNT))
 (10 5 (:REWRITE DEFAULT-<-2))
 (10 4 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-<-1))
 (2 2 (:LINEAR POSITION-WHEN-MEMBER))
 (2 2 (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 )
