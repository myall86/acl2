(STR::FIRSTN-CHARS-AUX
 (23 23 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(STR::FIRSTN-CHARS)
(STR::FIRSTN-CHARS-AUX-REMOVAL
 (1939 62 (:REWRITE NTH-WHEN-BIGGER))
 (1148 325 (:REWRITE LEN-WHEN-ATOM))
 (1009 40 (:REWRITE TAKE-OF-TOO-MANY))
 (873 40 (:REWRITE TAKE-OF-LEN-FREE))
 (719 275 (:REWRITE DEFAULT-CDR))
 (714 714 (:REWRITE CONSP-BY-LEN))
 (520 294 (:REWRITE DEFAULT-+-2))
 (299 299 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (294 294 (:REWRITE DEFAULT-+-1))
 (207 144 (:REWRITE DEFAULT-<-2))
 (201 68 (:REWRITE DEFAULT-CAR))
 (186 144 (:REWRITE DEFAULT-<-1))
 (100 40 (:REWRITE TAKE-WHEN-ATOM))
 (68 68 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (57 28 (:REWRITE EQUAL-CONSTANT-+))
 (46 46 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (42 5 (:REWRITE LEFT-CANCELLATION-FOR-+))
 (38 13 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (22 11 (:REWRITE POSP-NATP))
 (18 3 (:REWRITE SECOND-OF-TAKE))
 (9 9 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (6 2 (:REWRITE |(equal 0 (len x))|))
 (4 4 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (4 2 (:DEFINITION ATOM))
 (3 3 (:REWRITE NATP-RW))
 )
(STR::FIRSTN-CHARS
 (288 54 (:REWRITE LEN-WHEN-ATOM))
 (216 1 (:DEFINITION STR::FIRSTN-CHARS-AUX))
 (159 2 (:DEFINITION CHAR))
 (136 28 (:REWRITE DEFAULT-CDR))
 (126 3 (:REWRITE NTH-WHEN-BIGGER))
 (117 117 (:REWRITE CONSP-BY-LEN))
 (100 3 (:REWRITE TAKE-OF-LEN-FREE))
 (80 46 (:REWRITE DEFAULT-+-2))
 (74 28 (:REWRITE DEFAULT-<-2))
 (70 2 (:DEFINITION NTH))
 (50 46 (:REWRITE DEFAULT-+-1))
 (41 28 (:REWRITE DEFAULT-<-1))
 (29 29 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (24 24 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (18 3 (:REWRITE TAKE-WHEN-ATOM))
 (9 9 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (6 6 (:REWRITE NATP-RW))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE POSP-NATP))
 (3 1 (:REWRITE <-0-+-NEGATIVE-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(STR::CHARACTER-LISTP-OF-FIRSTN-CHARS
 (190 10 (:DEFINITION LEN))
 (95 20 (:REWRITE LEN-WHEN-ATOM))
 (50 10 (:REWRITE DEFAULT-CDR))
 (44 1 (:REWRITE TAKE-OF-TOO-MANY))
 (39 1 (:REWRITE TAKE-OF-LEN-FREE))
 (38 38 (:REWRITE CONSP-BY-LEN))
 (23 12 (:REWRITE DEFAULT-<-2))
 (20 10 (:REWRITE DEFAULT-+-2))
 (19 12 (:REWRITE DEFAULT-<-1))
 (11 3 (:REWRITE NATP-RW))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 8 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 1 (:REWRITE TAKE-WHEN-ATOM))
 (2 2 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 2 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (1 1 (:TYPE-PRESCRIPTION NFIX))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(STR::STREQV-IMPLIES-EQUAL-FIRSTN-CHARS-2
 (114 6 (:DEFINITION LEN))
 (88 2 (:REWRITE TAKE-OF-TOO-MANY))
 (78 2 (:REWRITE TAKE-OF-LEN-FREE))
 (58 58 (:TYPE-PRESCRIPTION LEN))
 (52 12 (:REWRITE LEN-WHEN-ATOM))
 (48 24 (:TYPE-PRESCRIPTION MIN))
 (44 44 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (30 6 (:REWRITE DEFAULT-CDR))
 (26 16 (:REWRITE STR::CONSP-OF-EXPLODE))
 (22 22 (:REWRITE CONSP-BY-LEN))
 (22 6 (:REWRITE NEGATIVE-WHEN-NATP))
 (14 2 (:DEFINITION MIN))
 (12 8 (:REWRITE DEFAULT-<-2))
 (12 8 (:REWRITE DEFAULT-<-1))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 2 (:REWRITE TAKE-WHEN-ATOM))
 (10 2 (:REWRITE NATP-RW))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (4 4 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (4 4 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 )
(STR::ISTREQV-IMPLIES-ICHARLISTEQV-FIRSTN-CHARS-2
 (152 8 (:DEFINITION LEN))
 (96 48 (:TYPE-PRESCRIPTION MIN))
 (94 94 (:TYPE-PRESCRIPTION LEN))
 (88 2 (:REWRITE TAKE-OF-TOO-MANY))
 (78 2 (:REWRITE TAKE-OF-LEN-FREE))
 (76 16 (:REWRITE LEN-WHEN-ATOM))
 (64 64 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (64 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (64 2 (:REWRITE CONSP-OF-TAKE))
 (42 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (42 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (40 24 (:REWRITE STR::CONSP-OF-EXPLODE))
 (40 8 (:REWRITE DEFAULT-CDR))
 (34 34 (:REWRITE CONSP-BY-LEN))
 (24 12 (:REWRITE DEFAULT-<-2))
 (24 2 (:REWRITE ZP-OPEN))
 (22 6 (:REWRITE NEGATIVE-WHEN-NATP))
 (16 12 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-+-2))
 (14 2 (:DEFINITION MIN))
 (12 2 (:REWRITE TAKE-WHEN-ATOM))
 (10 2 (:REWRITE NATP-RW))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 )
(STR::APPEND-FIRSTN-CHARS)
(STR::APPEND-FIRSTN-CHARS
 (252 46 (:REWRITE LEN-WHEN-ATOM))
 (169 5 (:DEFINITION BINARY-APPEND))
 (140 28 (:REWRITE DEFAULT-CDR))
 (123 123 (:REWRITE CONSP-BY-LEN))
 (113 9 (:REWRITE CONSP-OF-TAKE))
 (100 3 (:REWRITE TAKE-OF-LEN-FREE))
 (91 91 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (82 27 (:REWRITE DEFAULT-<-2))
 (62 35 (:REWRITE DEFAULT-+-2))
 (39 35 (:REWRITE DEFAULT-+-1))
 (37 27 (:REWRITE DEFAULT-<-1))
 (30 3 (:REWRITE CAR-OF-TAKE))
 (28 28 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (28 5 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (18 3 (:REWRITE TAKE-WHEN-ATOM))
 (7 7 (:REWRITE NATP-RW))
 (7 7 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 )
(STR::CHARACTER-LISTP-OF-APPEND-FIRSTN-CHARS
 (24 2 (:DEFINITION CHARACTER-LISTP))
 (9 1 (:DEFINITION BINARY-APPEND))
 (8 2 (:REWRITE CHARACTERP-OF-CAR-WHEN-CHARACTER-LISTP))
 (8 2 (:REWRITE CHARACTER-LISTP-OF-CDR-WHEN-CHARACTER-LISTP))
 (8 2 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(STR::STREQV-IMPLIES-EQUAL-APPEND-FIRSTN-CHARS-2
 (6 6 (:TYPE-PRESCRIPTION STR::APPEND-FIRSTN-CHARS))
 )
(STR::ISTREQV-IMPLIES-ICHARLISTEQV-APPEND-FIRSTN-CHARS-2)
(STR::LIST-EQUIV-IMPLIES-LIST-EQUIV-APPEND-FIRSTN-CHARS-3)
(STR::CHARLISTEQV-IMPLIES-CHARLISTEQV-APPEND-FIRSTN-CHARS-3)
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-APPEND-FIRSTN-CHARS-3)
(STR::CONSP-OF-FIRSTN-CHARS
 (132 7 (:DEFINITION LEN))
 (73 14 (:REWRITE LEN-WHEN-ATOM))
 (44 1 (:REWRITE TAKE-OF-TOO-MANY))
 (39 1 (:REWRITE TAKE-OF-LEN-FREE))
 (36 18 (:REWRITE DEFAULT-<-2))
 (35 7 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE CONSP-BY-LEN))
 (22 18 (:REWRITE DEFAULT-<-1))
 (19 7 (:REWRITE NATP-RW))
 (17 17 (:TYPE-PRESCRIPTION NATP))
 (14 7 (:REWRITE DEFAULT-+-2))
 (8 2 (:REWRITE NATP-POSP))
 (7 7 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (6 1 (:REWRITE TAKE-WHEN-ATOM))
 (3 3 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE POSP-RW))
 (1 1 (:TYPE-PRESCRIPTION NFIX))
 )
(STR::CONSP-OF-FIRSTN-CHARS-OF-1
 (57 3 (:DEFINITION LEN))
 (50 1 (:REWRITE TAKE-OF-TOO-MANY))
 (45 1 (:REWRITE TAKE-OF-LEN-FREE))
 (15 3 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE CONSP-BY-LEN))
 (12 4 (:REWRITE DEFAULT-<-2))
 (8 1 (:DEFINITION NFIX))
 (7 4 (:REWRITE DEFAULT-<-1))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:REWRITE TAKE-WHEN-ATOM))
 (4 4 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (4 1 (:REWRITE NEGATIVE-WHEN-NATP))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (1 1 (:TYPE-PRESCRIPTION NFIX))
 )
