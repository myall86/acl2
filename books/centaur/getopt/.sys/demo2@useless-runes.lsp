(GETOPT-DEMO::DEMO2-OPTS-P
 (3 3 (:TYPE-PRESCRIPTION CONSP-ASSOC-EQUAL))
 )
(GETOPT-DEMO::DEMO2-OPTS)
(GETOPT-DEMO::HONSED-DEMO2-OPTS)
(GETOPT-DEMO::DEMO2-OPTS->HELP$INLINE
 (7 7 (:DEFINITION ASSOC-EQUAL))
 )
(GETOPT-DEMO::DEMO2-OPTS->VERSION$INLINE
 (7 7 (:DEFINITION ASSOC-EQUAL))
 )
(GETOPT-DEMO::DEMO2-OPTS->FAIL$INLINE
 (7 7 (:DEFINITION ASSOC-EQUAL))
 )
(GETOPT-DEMO::CONSP-OF-DEMO2-OPTS)
(GETOPT-DEMO::BOOLEANP-OF-DEMO2-OPTS-P)
(GETOPT-DEMO::DEMO2-OPTS-P-OF-DEMO2-OPTS)
(GETOPT-DEMO::TAG-OF-DEMO2-OPTS)
(GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P)
(GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG)
(GETOPT-DEMO::CONSP-WHEN-DEMO2-OPTS-P)
(GETOPT-DEMO::DEMO2-OPTS->HELP-OF-DEMO2-OPTS)
(GETOPT-DEMO::DEMO2-OPTS->VERSION-OF-DEMO2-OPTS)
(GETOPT-DEMO::DEMO2-OPTS->FAIL-OF-DEMO2-OPTS)
(GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->HELP)
(GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->VERSION)
(GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->FAIL)
(GETOPT-DEMO::PARSE-DEMO2-OPTS-LONG
 (288 48 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (270 27 (:DEFINITION MEMBER-EQUAL))
 (192 24 (:DEFINITION TRUE-LISTP))
 (97 97 (:REWRITE DEFAULT-CDR))
 (96 96 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (96 48 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (74 74 (:REWRITE DEFAULT-CAR))
 (66 26 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (54 54 (:REWRITE SUBSETP-MEMBER . 4))
 (54 54 (:REWRITE SUBSETP-MEMBER . 3))
 (54 54 (:REWRITE SUBSETP-MEMBER . 2))
 (54 54 (:REWRITE SUBSETP-MEMBER . 1))
 (54 54 (:REWRITE MEMBER-WHEN-ATOM))
 (54 54 (:REWRITE INTERSECTP-MEMBER . 3))
 (54 54 (:REWRITE INTERSECTP-MEMBER . 2))
 (48 48 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (48 48 (:REWRITE SET::IN-SET))
 (40 20 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 )
(GETOPT-DEMO::DEMO2-OPTS-P-OF-PARSE-DEMO2-OPTS-LONG.ACC
 (60 6 (:DEFINITION MEMBER-EQUAL))
 (33 8 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (22 8 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 (12 12 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE SUBSETP-MEMBER . 3))
 (12 12 (:REWRITE SUBSETP-MEMBER . 2))
 (12 12 (:REWRITE SUBSETP-MEMBER . 1))
 (12 12 (:REWRITE MEMBER-WHEN-ATOM))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE GETOPT-DEMO::TAG-OF-DEMO2-OPTS))
 )
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS-LONG.REST
 (30 3 (:DEFINITION MEMBER-EQUAL))
 (6 6 (:REWRITE SUBSETP-MEMBER . 4))
 (6 6 (:REWRITE SUBSETP-MEMBER . 3))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (6 6 (:REWRITE MEMBER-WHEN-ATOM))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 3))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 2 (:DEFINITION STRING-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-LONG-MAKES-PROGRESS
 (107 3 (:REWRITE LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (101 1 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (82 4 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (46 4 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (30 6 (:DEFINITION LEN))
 (30 3 (:DEFINITION MEMBER-EQUAL))
 (25 3 (:REWRITE LEN-WHEN-PREFIXP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (11 11 (:TYPE-PRESCRIPTION PREFIXP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (8 8 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (6 6 (:REWRITE SUBSETP-MEMBER . 4))
 (6 6 (:REWRITE SUBSETP-MEMBER . 3))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (6 6 (:REWRITE MEMBER-WHEN-ATOM))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 3))
 (6 6 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 3 (:REWRITE DEFAULT-<-2))
 (6 3 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION SUBLISTP))
 (4 4 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (4 4 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (4 4 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (4 4 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (4 4 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (4 4 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (1 1 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (1 1 (:REWRITE SUBLISTP-COMPLETE))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-SHORT->LONG
 (22 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (16 2 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CONS))
 (8 4 (:REWRITE STR::DEC-DIGIT-CHAR-P-WHEN-NONZERO-DEC-DIGIT-CHAR-P))
 (6 6 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-P$INLINE))
 (4 4 (:TYPE-PRESCRIPTION STR::NONZERO-DEC-DIGIT-CHAR-P$INLINE))
 (2 2 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 )
(GETOPT-DEMO::STRINGP-OF-PARSE-DEMO2-OPTS-SHORT->LONG.LONGNAME
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-SHORT->LONG-LIST
 (25 1 (:DEFINITION CHARACTER-LISTP))
 (18 4 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (4 4 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CDR-WHEN-DEC-DIGIT-CHAR-LISTP))
 )
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS-SHORT->LONG-LIST.LONGNAMES
 (18 18 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::TRUE-LISTP-OF-PARSE-DEMO2-OPTS-SHORT->LONG-LIST
 (36 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (24 3 (:DEFINITION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-BUNDLE
 (16 16 (:REWRITE DEFAULT-CAR))
 (13 13 (:REWRITE DEFAULT-CDR))
 (10 4 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (6 3 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 )
(GETOPT-DEMO::DEMO2-OPTS-P-OF-PARSE-DEMO2-OPTS-BUNDLE.ACC
 (65 23 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (42 21 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 (14 14 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS-BUNDLE.SEEN
 (58 58 (:REWRITE DEFAULT-CAR))
 (45 45 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS-BUNDLE.REST
 (37 37 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-BUNDLE-MAKES-PROGRESS
 (170 34 (:DEFINITION LEN))
 (151 17 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (100 11 (:REWRITE LEN-WHEN-PREFIXP))
 (68 34 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-CDR))
 (34 34 (:REWRITE DEFAULT-+-1))
 (22 11 (:REWRITE DEFAULT-<-2))
 (22 11 (:REWRITE DEFAULT-<-1))
 (20 20 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (20 20 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (20 20 (:LINEAR LEN-WHEN-PREFIXP))
 (17 17 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (17 17 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (17 17 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (17 17 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (15 15 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (15 15 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (10 10 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE SUBLISTP-COMPLETE))
 (4 4 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (4 4 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (2 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (2 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-AUX
 (158 142 (:REWRITE DEFAULT-CAR))
 (132 102 (:REWRITE DEFAULT-CDR))
 (115 20 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (80 10 (:DEFINITION TRUE-LISTP))
 (56 28 (:REWRITE DEFAULT-+-2))
 (38 38 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (38 19 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (29 13 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (28 28 (:REWRITE DEFAULT-+-1))
 (24 13 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (19 19 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (19 19 (:REWRITE SET::IN-SET))
 (16 8 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
 (10 10 (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
 (10 5 (:REWRITE DEFAULT-<-2))
 (10 5 (:REWRITE DEFAULT-<-1))
 (10 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-REVAPPEND-TYPE-PRESCRIPTION))
 (4 2 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 )
(GETOPT-DEMO::DEMO2-OPTS-P-OF-PARSE-DEMO2-OPTS-AUX.RESULT
 (529 420 (:REWRITE DEFAULT-CAR))
 (367 131 (:REWRITE GETOPT-DEMO::DEMO2-OPTS-P-WHEN-WRONG-TAG))
 (254 85 (:REWRITE DEFAULT-CDR))
 (236 118 (:REWRITE GETOPT-DEMO::TAG-WHEN-DEMO2-OPTS-P))
 (218 109 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (45 3 (:DEFINITION BINARY-APPEND))
 (30 30 (:TYPE-PRESCRIPTION REV))
 (24 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (12 12 (:REWRITE CONSP-OF-REV))
 (3 3 (:REWRITE REV-WHEN-NOT-CONSP))
 )
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS-AUX.SKIPPED
 (827 709 (:REWRITE DEFAULT-CAR))
 (528 354 (:REWRITE DEFAULT-CDR))
 (236 118 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (36 2 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (30 2 (:DEFINITION BINARY-APPEND))
 (24 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (22 2 (:DEFINITION TRUE-LISTP))
 (16 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 2 (:DEFINITION LEN))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE CONSP-OF-REV))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (4 4 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE REV-WHEN-NOT-CONSP))
 (2 2 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(GETOPT-DEMO::PARSE-DEMO2-OPTS-FN)
(GETOPT-DEMO::DEMO2-OPTS-P-OF-PARSE-DEMO2-OPTS.RESULT)
(GETOPT-DEMO::STRING-LISTP-OF-PARSE-DEMO2-OPTS.EXTRA)
(GETOPT-DEMO::DEMO2-MAIN
 (18 18 (:TYPE-PRESCRIPTION GETOPT-DEMO::BOOLEANP-OF-DEMO2-OPTS-P))
 (12 6 (:TYPE-PRESCRIPTION GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->VERSION))
 (12 6 (:TYPE-PRESCRIPTION GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->HELP))
 (12 6 (:TYPE-PRESCRIPTION GETOPT-DEMO::RETURN-TYPE-OF-DEMO2-OPTS->FAIL))
 )
