(CONS-SIZE)
(CONS-SIZE-TYPE)
(ACONS-CONS-SIZE-LEMMA
 (81 30 (:REWRITE DEFAULT-+-2))
 (47 30 (:REWRITE DEFAULT-+-1))
 (12 6 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE CONSP-BY-LEN))
 )
(SPLIT-LIST-1-CONS-SIZE
 (92 41 (:REWRITE DEFAULT-+-2))
 (58 41 (:REWRITE DEFAULT-+-1))
 (58 29 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (48 6 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (38 38 (:REWRITE DEFAULT-CAR))
 (38 38 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (33 33 (:REWRITE DEFAULT-CDR))
 (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (29 29 (:REWRITE CONSP-BY-LEN))
 (24 6 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (23 12 (:REWRITE DEFAULT-<-2))
 (23 12 (:REWRITE DEFAULT-<-1))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (12 12 (:TYPE-PRESCRIPTION ALISTP))
 (6 6 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE ALISTP-WHEN-ATOM))
 (4 4 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(HEAD-CONS-SIZE
 (55 22 (:REWRITE DEFAULT-+-2))
 (33 22 (:REWRITE DEFAULT-+-1))
 (30 9 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (24 3 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (13 13 (:REWRITE DEFAULT-CAR))
 (13 13 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (12 3 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (11 11 (:REWRITE FOLD-CONSTS-IN-+))
 (11 6 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE SET::IN-SET))
 (9 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION ALISTP))
 (6 1 (:REWRITE SET::SFIX-WHEN-EMPTY))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (3 3 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (3 3 (:REWRITE ALISTP-WHEN-ATOM))
 )
(TAIL-CONS-SIZE
 (55 22 (:REWRITE DEFAULT-+-2))
 (33 22 (:REWRITE DEFAULT-+-1))
 (30 9 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (13 13 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (9 9 (:REWRITE SET::IN-SET))
 (9 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (7 6 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (6 1 (:REWRITE SET::SFIX-WHEN-EMPTY))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE CONSP-BY-LEN))
 )
(CONS-SIZE-APPEND
 (159 63 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (121 50 (:REWRITE DEFAULT-+-2))
 (115 17 (:REWRITE DEFAULT-CDR))
 (90 90 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (82 50 (:REWRITE DEFAULT-+-1))
 (63 63 (:REWRITE CONSP-BY-LEN))
 (54 27 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (36 21 (:REWRITE DEFAULT-CAR))
 (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (27 27 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (19 5 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (11 11 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 2 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (4 4 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (4 4 (:TYPE-PRESCRIPTION ALISTP))
 (2 2 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE ALISTP-WHEN-ATOM))
 )
(REV-CONS-SIZE-LEMMA
 (54 23 (:REWRITE DEFAULT-+-2))
 (35 23 (:REWRITE DEFAULT-+-1))
 (33 3 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (15 3 (:REWRITE REV-UNDER-IFF))
 (13 13 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (13 13 (:REWRITE CONSP-BY-LEN))
 (11 11 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(CONS-SIZE-EVENS-STRONG
 (727 302 (:REWRITE DEFAULT-+-2))
 (442 302 (:REWRITE DEFAULT-+-1))
 (320 34 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (283 142 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (160 40 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (157 154 (:REWRITE DEFAULT-CAR))
 (154 154 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (125 125 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (125 125 (:REWRITE CONSP-BY-LEN))
 (80 80 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (80 80 (:TYPE-PRESCRIPTION ALISTP))
 (69 28 (:REWRITE DEFAULT-<-2))
 (68 28 (:REWRITE DEFAULT-<-1))
 (55 55 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (48 6 (:REWRITE ALISTP-OF-CDR))
 (40 40 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (40 40 (:REWRITE ALISTP-WHEN-ATOM))
 (34 34 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (11 11 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 )
(CONS-SIZE-EVENS-WEAK
 (248 99 (:REWRITE DEFAULT-+-2))
 (147 99 (:REWRITE DEFAULT-+-1))
 (132 66 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (56 56 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (56 56 (:REWRITE CONSP-BY-LEN))
 (56 7 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (52 51 (:REWRITE DEFAULT-CAR))
 (51 51 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (36 8 (:LINEAR CONS-SIZE-EVENS-STRONG))
 (33 33 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 7 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (27 11 (:REWRITE DEFAULT-<-2))
 (27 11 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (14 14 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (14 14 (:TYPE-PRESCRIPTION ALISTP))
 (7 7 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (7 7 (:REWRITE ALISTP-WHEN-ATOM))
 (6 6 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 )
(CONS-SIZE-OF-REMOVE-ASSOC-EQUAL-UPPER-BOUND
 (159 44 (:REWRITE DEFAULT-CAR))
 (120 12 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (95 38 (:REWRITE DEFAULT-+-2))
 (65 32 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (60 15 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (57 38 (:REWRITE DEFAULT-+-1))
 (44 44 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (36 33 (:REWRITE DEFAULT-CDR))
 (30 30 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (30 30 (:TYPE-PRESCRIPTION ALISTP))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (24 24 (:REWRITE CONSP-BY-LEN))
 (24 3 (:REWRITE ALISTP-OF-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (18 8 (:REWRITE DEFAULT-<-1))
 (17 8 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (15 15 (:REWRITE ALISTP-WHEN-ATOM))
 (5 5 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(CONS-SIZE-WHEN-MEMBER
 (89 40 (:REWRITE DEFAULT-+-2))
 (63 9 (:REWRITE SUBSETP-MEMBER . 3))
 (58 29 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (57 40 (:REWRITE DEFAULT-+-1))
 (34 4 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (29 29 (:REWRITE CONSP-BY-LEN))
 (24 12 (:REWRITE DEFAULT-<-1))
 (23 12 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (16 2 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (9 9 (:REWRITE SUBSETP-MEMBER . 4))
 (9 9 (:REWRITE SUBSETP-MEMBER . 2))
 (9 9 (:REWRITE SUBSETP-MEMBER . 1))
 (9 9 (:REWRITE INTERSECTP-MEMBER . 3))
 (9 9 (:REWRITE INTERSECTP-MEMBER . 2))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (8 8 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (8 2 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (4 4 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (4 4 (:TYPE-PRESCRIPTION ALISTP))
 (4 4 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (4 4 (:REWRITE SUBSETP-TRANS2))
 (4 4 (:REWRITE SUBSETP-TRANS))
 (4 4 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (2 2 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE ALISTP-WHEN-ATOM))
 )
(CONS-SIZE-OF-REMOVE-DUPLICATES
 (116 57 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (112 8 (:REWRITE SUBSETP-CAR-MEMBER))
 (95 38 (:REWRITE DEFAULT-+-2))
 (57 38 (:REWRITE DEFAULT-+-1))
 (49 49 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (49 49 (:REWRITE CONSP-BY-LEN))
 (46 11 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (45 41 (:REWRITE DEFAULT-CDR))
 (43 8 (:REWRITE MEMBER-WHEN-ATOM))
 (40 36 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (36 3 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (35 35 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (33 5 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (26 26 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (22 22 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (18 8 (:REWRITE DEFAULT-<-1))
 (17 8 (:REWRITE DEFAULT-<-2))
 (16 4 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (12 12 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (11 11 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (11 11 (:REWRITE SUBSETP-TRANS2))
 (11 11 (:REWRITE SUBSETP-TRANS))
 (8 8 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (8 8 (:TYPE-PRESCRIPTION ALISTP))
 (8 8 (:REWRITE SUBSETP-MEMBER . 4))
 (8 8 (:REWRITE SUBSETP-MEMBER . 3))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (8 8 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 3))
 (8 8 (:REWRITE INTERSECTP-MEMBER . 2))
 (4 4 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ALISTP-WHEN-ATOM))
 )
(CONS-SIZE-OF-HONS-REMOVE-DUPLICATES
 (42 1 (:DEFINITION REMOVE-DUPLICATES-EQUAL))
 (33 2 (:DEFINITION CONS-SIZE))
 (25 9 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (18 3 (:REWRITE REMOVE-DUPLICATES-EQUAL-WHEN-ATOM))
 (11 11 (:TYPE-PRESCRIPTION REV))
 (10 4 (:REWRITE DEFAULT-+-2))
 (10 1 (:REWRITE SUBSETP-CAR-MEMBER))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (4 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (4 1 (:REWRITE REV-UNDER-IFF))
 (4 1 (:REWRITE MEMBER-WHEN-ATOM))
 (3 3 (:TYPE-PRESCRIPTION REMOVE-DUPLICATES-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE SUBSETP-MEMBER . 4))
 (1 1 (:REWRITE SUBSETP-MEMBER . 3))
 (1 1 (:REWRITE SUBSETP-MEMBER . 2))
 (1 1 (:REWRITE SUBSETP-MEMBER . 1))
 (1 1 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(CONS-SIZE-OF-NTHCDR-LINEAR
 (742 10 (:REWRITE CAR-OF-NTHCDR))
 (517 68 (:REWRITE DEFAULT-CDR))
 (444 10 (:DEFINITION NTH))
 (380 20 (:REWRITE NTH-WHEN-TOO-LARGE-CHEAP))
 (308 120 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (247 134 (:REWRITE DEFAULT-+-2))
 (233 187 (:REWRITE DEFAULT-<-2))
 (206 187 (:REWRITE DEFAULT-<-1))
 (169 134 (:REWRITE DEFAULT-+-1))
 (140 28 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (134 134 (:TYPE-PRESCRIPTION LEN))
 (129 24 (:REWRITE NTHCDR-WHEN-ZP))
 (124 20 (:REWRITE NTH-WHEN-ATOM))
 (118 20 (:REWRITE NTH-WHEN-ZP))
 (92 92 (:REWRITE CONSP-BY-LEN))
 (72 72 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (72 72 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (72 72 (:LINEAR LEN-WHEN-PREFIXP))
 (71 24 (:REWRITE NTHCDR-WHEN-ATOM))
 (68 68 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (64 16 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (63 51 (:REWRITE FOLD-CONSTS-IN-+))
 (52 52 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (38 38 (:REWRITE DEFAULT-CAR))
 (38 38 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (36 36 (:LINEAR INDEX-OF-<-LEN))
 (36 36 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (32 32 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (32 32 (:TYPE-PRESCRIPTION ALISTP))
 (20 20 (:TYPE-PRESCRIPTION NFIX))
 (16 16 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (16 16 (:REWRITE ALISTP-WHEN-ATOM))
 (10 10 (:REWRITE NTH-WHEN-PREFIXP))
 (4 4 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(CONS-SIZE-OF-NTHCDR-LINEAR-WEAK
 (319 5 (:REWRITE CAR-OF-NTHCDR))
 (257 32 (:REWRITE DEFAULT-CDR))
 (225 13 (:REWRITE CONSP-OF-NTHCDR))
 (175 4 (:DEFINITION NTH))
 (170 9 (:REWRITE NTH-WHEN-TOO-LARGE-CHEAP))
 (160 63 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (128 65 (:REWRITE DEFAULT-+-2))
 (110 36 (:REWRITE ZP-OPEN))
 (109 109 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (104 81 (:REWRITE DEFAULT-<-2))
 (95 81 (:REWRITE DEFAULT-<-1))
 (92 46 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (86 65 (:REWRITE DEFAULT-+-1))
 (71 15 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (68 22 (:REWRITE LEN-WHEN-ATOM))
 (66 22 (:DEFINITION NFIX))
 (61 61 (:TYPE-PRESCRIPTION LEN))
 (52 8 (:REWRITE NTH-WHEN-ATOM))
 (50 50 (:REWRITE CONSP-BY-LEN))
 (48 9 (:REWRITE NTH-WHEN-ZP))
 (36 36 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (34 34 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (34 34 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (34 34 (:LINEAR LEN-WHEN-PREFIXP))
 (33 7 (:LINEAR CONS-SIZE-OF-NTHCDR-LINEAR))
 (32 8 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (30 23 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (17 17 (:LINEAR INDEX-OF-<-LEN))
 (17 17 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (16 16 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (16 16 (:TYPE-PRESCRIPTION ALISTP))
 (16 16 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (9 9 (:TYPE-PRESCRIPTION NFIX))
 (9 9 (:REWRITE OPEN-SMALL-NTHCDR))
 (8 8 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (8 8 (:REWRITE ALISTP-WHEN-ATOM))
 (7 3 (:REWRITE |(< 0 (len x))|))
 (5 5 (:REWRITE NTH-WHEN-PREFIXP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CONS-SIZE-OF-NTH-LINEAR-WEAK
 (42 18 (:REWRITE DEFAULT-+-2))
 (30 20 (:REWRITE DEFAULT-<-2))
 (30 15 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (28 5 (:REWRITE NTH-WHEN-ZP))
 (26 20 (:REWRITE DEFAULT-<-1))
 (26 18 (:REWRITE DEFAULT-+-1))
 (19 5 (:REWRITE NTH-WHEN-ATOM))
 (18 8 (:REWRITE ZP-OPEN))
 (16 16 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 15 (:REWRITE CONSP-BY-LEN))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (10 10 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (10 10 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (10 10 (:LINEAR LEN-WHEN-PREFIXP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION ZP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:LINEAR INDEX-OF-<-LEN))
 (5 5 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (4 4 (:REWRITE NTH-WHEN-PREFIXP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(CONS-SIZE-OF-NTH-LINEAR
 (256 115 (:REWRITE DEFAULT-+-2))
 (215 39 (:REWRITE NTH-WHEN-ZP))
 (173 123 (:REWRITE DEFAULT-<-2))
 (162 115 (:REWRITE DEFAULT-+-1))
 (142 57 (:REWRITE ZP-OPEN))
 (136 123 (:REWRITE DEFAULT-<-1))
 (118 39 (:REWRITE NTH-WHEN-ATOM))
 (110 55 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (74 74 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (74 74 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (74 74 (:LINEAR LEN-WHEN-PREFIXP))
 (66 66 (:REWRITE DEFAULT-CAR))
 (66 66 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (63 63 (:REWRITE DEFAULT-CDR))
 (55 55 (:TYPE-PRESCRIPTION ZP))
 (55 55 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (55 55 (:REWRITE CONSP-BY-LEN))
 (49 49 (:REWRITE FOLD-CONSTS-IN-+))
 (37 37 (:LINEAR INDEX-OF-<-LEN))
 (37 37 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (34 34 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (25 4 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (24 24 (:REWRITE NTH-WHEN-PREFIXP))
 (19 19 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (12 3 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION ALISTP))
 (3 3 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (3 3 (:REWRITE ALISTP-WHEN-ATOM))
 )
(CONS-SIZE-OF-PROD-CONS1
 (25 10 (:REWRITE DEFAULT-+-2))
 (24 24 (:TYPE-PRESCRIPTION STD::PROD-CONS-WHEN-EITHER))
 (18 6 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (15 10 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE CONSP-BY-LEN))
 (6 6 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (3 3 (:REWRITE STD::PROD-CONS-WHEN-EITHER))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-<-2))
 )
(CONS-SIZE-OF-PROD-CONS2
 (48 20 (:REWRITE DEFAULT-+-2))
 (32 32 (:TYPE-PRESCRIPTION STD::PROD-CONS-WHEN-EITHER))
 (32 11 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (28 20 (:REWRITE DEFAULT-+-1))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (11 11 (:REWRITE CONSP-BY-LEN))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (5 5 (:REWRITE STD::PROD-CONS-WHEN-EITHER))
 (5 1 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-<-2))
 )
(RECORDS-LEMMA-CONS-SIZE
 (7245 1927 (:REWRITE DEFAULT-CAR))
 (6934 396 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (3467 724 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (3109 881 (:REWRITE <<-TRICHOTOMY))
 (2729 514 (:REWRITE <<-ASYMMETRIC))
 (2624 328 (:REWRITE ALISTP-OF-CDR))
 (2068 1025 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (1927 1927 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (1483 1215 (:REWRITE DEFAULT-CDR))
 (1448 1448 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (1448 1448 (:TYPE-PRESCRIPTION ALISTP))
 (1295 724 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (1295 724 (:REWRITE ALISTP-WHEN-ATOM))
 (1084 849 (:REWRITE <<-TRANSITIVE))
 (1025 1025 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1025 1025 (:REWRITE CONSP-BY-LEN))
 (983 464 (:REWRITE DEFAULT-+-2))
 (605 464 (:REWRITE DEFAULT-+-1))
 (565 565 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (189 189 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (132 132 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (130 63 (:REWRITE DEFAULT-<-2))
 (104 63 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE <<-IRREFLEXIVE))
 )
(RECORDS-CONS-SIZE-LINEAR-ARITH-<=
 (7826 508 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (4080 1097 (:REWRITE <<-TRICHOTOMY))
 (3904 810 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (3577 643 (:REWRITE <<-ASYMMETRIC))
 (2558 1269 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2450 306 (:REWRITE ALISTP-OF-CDR))
 (1899 1899 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (1620 1620 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (1620 1620 (:TYPE-PRESCRIPTION ALISTP))
 (1565 602 (:REWRITE DEFAULT-+-2))
 (1559 1099 (:REWRITE DEFAULT-CDR))
 (1474 810 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (1474 810 (:REWRITE ALISTP-WHEN-ATOM))
 (1269 1269 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1269 1269 (:REWRITE CONSP-BY-LEN))
 (1242 1073 (:REWRITE <<-TRANSITIVE))
 (907 602 (:REWRITE DEFAULT-+-1))
 (576 576 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (165 165 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (157 54 (:REWRITE DEFAULT-<-1))
 (108 54 (:REWRITE DEFAULT-<-2))
 (98 98 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (24 24 (:TYPE-PRESCRIPTION ACL2->MAP))
 )
(RECORDS-CONS-SIZE-LINEAR-ARITH-<
 (16016 3765 (:REWRITE DEFAULT-CAR))
 (14581 1024 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (7270 1539 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (4758 2371 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (4338 542 (:REWRITE ALISTP-OF-CDR))
 (3765 3765 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (3529 1389 (:REWRITE DEFAULT-+-2))
 (3431 2053 (:REWRITE DEFAULT-CDR))
 (3078 3078 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (3078 3078 (:TYPE-PRESCRIPTION ALISTP))
 (2653 1539 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2653 1539 (:REWRITE ALISTP-WHEN-ATOM))
 (2515 2095 (:REWRITE <<-TRANSITIVE))
 (2371 2371 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2371 2371 (:REWRITE CONSP-BY-LEN))
 (2060 1389 (:REWRITE DEFAULT-+-1))
 (1040 1040 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (325 114 (:REWRITE DEFAULT-<-2))
 (246 246 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (227 114 (:REWRITE DEFAULT-<-1))
 (144 144 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (24 24 (:TYPE-PRESCRIPTION ACL2->MAP))
 )
(RECORDS-CONS-SIZE
 (3550 251 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (1735 359 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (1188 583 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (951 951 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (895 110 (:REWRITE ALISTP-OF-CDR))
 (819 585 (:REWRITE DEFAULT-CDR))
 (818 345 (:REWRITE DEFAULT-+-2))
 (718 718 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (718 718 (:TYPE-PRESCRIPTION ALISTP))
 (658 359 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (658 359 (:REWRITE ALISTP-WHEN-ATOM))
 (643 619 (:REWRITE <<-TRANSITIVE))
 (583 583 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (583 583 (:REWRITE CONSP-BY-LEN))
 (493 345 (:REWRITE DEFAULT-+-1))
 (232 232 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (147 147 (:TYPE-PRESCRIPTION ACL2->MAP))
 (110 110 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (68 32 (:REWRITE DEFAULT-<-2))
 (51 51 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (51 32 (:REWRITE DEFAULT-<-1))
 )
(LEN-<=-CONS-SIZE
 (45 18 (:REWRITE DEFAULT-+-2))
 (28 14 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (27 18 (:REWRITE DEFAULT-+-1))
 (25 11 (:REWRITE DEFAULT-<-1))
 (24 24 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (24 24 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (24 24 (:LINEAR LEN-WHEN-PREFIXP))
 (24 3 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (22 11 (:REWRITE DEFAULT-<-2))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (14 14 (:REWRITE CONSP-BY-LEN))
 (12 12 (:LINEAR INDEX-OF-<-LEN))
 (12 12 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (12 12 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (12 3 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (9 9 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 6 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION ALISTP))
 (3 3 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (3 3 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (3 3 (:REWRITE ALISTP-WHEN-ATOM))
 )
(CONS-SIZE-<=-ACL2-COUNT
 (82 37 (:REWRITE DEFAULT-+-2))
 (54 37 (:REWRITE DEFAULT-+-1))
 (36 18 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (28 17 (:REWRITE DEFAULT-<-1))
 (25 17 (:REWRITE DEFAULT-<-2))
 (24 24 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 18 (:REWRITE CONSP-BY-LEN))
 (18 18 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (18 18 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (18 18 (:LINEAR LEN-WHEN-PREFIXP))
 (16 2 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:LINEAR INDEX-OF-<-LEN))
 (9 9 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (8 8 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (8 2 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 3 (:REWRITE STR::CONSP-OF-EXPLODE))
 (4 4 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (4 4 (:TYPE-PRESCRIPTION ALISTP))
 (3 3 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (2 2 (:REWRITE ALISTP-WHEN-ATOM))
 )
(ACL2-SIZE
 (1103 483 (:REWRITE DEFAULT-+-2))
 (697 483 (:REWRITE DEFAULT-+-1))
 (256 128 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (208 26 (:DEFINITION LENGTH))
 (196 196 (:REWRITE FOLD-CONSTS-IN-+))
 (182 182 (:REWRITE DEFAULT-CDR))
 (182 182 (:REWRITE DEFAULT-CAR))
 (182 182 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (152 19 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (128 128 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (128 128 (:REWRITE CONSP-BY-LEN))
 (90 72 (:REWRITE DEFAULT-<-2))
 (80 72 (:REWRITE DEFAULT-<-1))
 (76 19 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (70 33 (:REWRITE DEFAULT-*-2))
 (56 56 (:REWRITE DEFAULT-UNARY-MINUS))
 (52 52 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (52 26 (:REWRITE STR::CONSP-OF-EXPLODE))
 (52 26 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (48 48 (:LINEAR CONS-SIZE-WHEN-MEMBER))
 (40 40 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (40 40 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (40 40 (:LINEAR LEN-WHEN-PREFIXP))
 (38 38 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (38 38 (:TYPE-PRESCRIPTION ALISTP))
 (38 38 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (33 33 (:REWRITE DEFAULT-*-1))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (26 26 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (20 20 (:LINEAR INDEX-OF-<-LEN))
 (20 20 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (19 19 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (19 19 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (19 19 (:REWRITE ALISTP-WHEN-ATOM))
 (17 17 (:REWRITE DEFAULT-REALPART))
 (17 17 (:REWRITE DEFAULT-IMAGPART))
 )
