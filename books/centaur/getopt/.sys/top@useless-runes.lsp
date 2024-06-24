(GETOPT::SPLIT-EQUALS
 (33 3 (:DEFINITION LEN))
 (13 13 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (13 8 (:REWRITE STR::CONSP-OF-EXPLODE))
 (12 8 (:REWRITE DEFAULT-+-2))
 (12 3 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE LISTPOS-WHEN-ATOM-RIGHT))
 (9 8 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE LISTPOS-WHEN-ATOM-LEFT))
 (1 1 (:LINEAR LISTPOS-COMPLETE))
 )
(GETOPT::STRINGP-OF-SPLIT-EQUALS.PRE
 (10 1 (:REWRITE LISTPOS-WHEN-ATOM-RIGHT))
 (7 1 (:REWRITE STR::CONSP-OF-EXPLODE))
 (2 2 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (2 1 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (1 1 (:REWRITE STR-FIX-WHEN-STRINGP))
 (1 1 (:REWRITE STR-FIX-DEFAULT))
 (1 1 (:REWRITE LISTPOS-WHEN-ATOM-LEFT))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(GETOPT::RETURN-TYPE-OF-SPLIT-EQUALS.POST
 (472 2 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (340 9 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (310 23 (:REWRITE DEFAULT-+-2))
 (296 1 (:REWRITE ACL2-NUMBERP-OF-LISTPOS))
 (197 9 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (150 2 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (145 15 (:DEFINITION LEN))
 (114 114 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (93 13 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (73 73 (:TYPE-PRESCRIPTION LEN))
 (73 42 (:REWRITE STR::CONSP-OF-EXPLODE))
 (57 18 (:REWRITE DEFAULT-CDR))
 (41 8 (:REWRITE LISTPOS-WHEN-ATOM-RIGHT))
 (39 1 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (36 12 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (26 23 (:REWRITE DEFAULT-+-1))
 (20 1 (:LINEAR LISTPOS-UPPER-BOUND-WEAK))
 (18 4 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (15 3 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (12 3 (:REWRITE DEFAULT-CAR))
 (12 3 (:REWRITE COMMUTATIVITY-OF-+))
 (11 11 (:TYPE-PRESCRIPTION PREFIXP))
 (10 10 (:LINEAR LEN-WHEN-PREFIXP))
 (10 2 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (9 9 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (9 9 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (9 9 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (9 9 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (9 5 (:REWRITE DEFAULT-<-2))
 (9 1 (:LINEAR LISTPOS-LOWER-BOUND-WEAK))
 (8 8 (:REWRITE LISTPOS-WHEN-ATOM-LEFT))
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 4 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (5 1 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 (5 1 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-1))
 (3 3 (:REWRITE STR-FIX-WHEN-STRINGP))
 (3 3 (:REWRITE STR-FIX-DEFAULT))
 (2 2 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (2 2 (:REWRITE SUBLISTP-COMPLETE))
 (2 2 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (1 1 (:TYPE-PRESCRIPTION LIST-EQUIV))
 (1 1 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (1 1 (:LINEAR LISTPOS-COMPLETE))
 )
(GETOPT::FORMAL->LONGNAME)
(GETOPT::FORMALLIST->LONGNAMES-EXEC)
(GETOPT::FORMALLIST->LONGNAMES-NREV)
(GETOPT::FORMALLIST->LONGNAMES)
(GETOPT::FORMAL->ALIAS)
(GETOPT::FORMALLIST->ALIASES-EXEC)
(GETOPT::FORMALLIST->ALIASES-NREV)
(GETOPT::FORMALLIST->ALIASES)
(GETOPT::FORMAL->PARSER)
(GETOPT::FORMALLIST->PARSERS-EXEC)
(GETOPT::FORMALLIST->PARSERS-NREV)
(GETOPT::FORMALLIST->PARSERS)
(GETOPT::FORMAL->MERGE)
(GETOPT::FORMALLIST->MERGES-EXEC)
(GETOPT::FORMALLIST->MERGES-NREV)
(GETOPT::FORMALLIST->MERGES)
(GETOPT::FORMAL->USAGE)
(GETOPT::FORMAL->ARGNAME)
(GETOPT::FORMAL->HIDDENP)
(GETOPT::DROP-HIDDEN-OPTIONS)
(GETOPT::SANITY-CHECK-FORMALS)
(GETOPT::PARSER-NAME)
(GETOPT::PARSER-NAME-AUX)
(GETOPT::PARSER-NAME-LONG)
(GETOPT::PARSER-NAME-BUNDLE)
(GETOPT::PARSER-NAME-SHORT->LONG)
(GETOPT::PARSER-NAME-SHORT->LONG-LIST)
(GETOPT::DEFAULT-NAME)
(GETOPT::MAKE-PARSE-SHORT->LONG)
(GETOPT::COLLECT-PLAIN-OPTIONS)
(GETOPT::MAKE-PARSE-LONG-CASES)
(GETOPT::MAKE-PARSE-LONG)
(GETOPT::MAKE-PARSE-BUNDLE)
(GETOPT::MAKE-PARSE-AUX)
(GETOPT::MAKE-PARSE)
(GETOPT::DEFOPTIONS-LEMMA-1
 (403 19 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (246 41 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (235 21 (:DEFINITION TRUE-LISTP))
 (132 77 (:REWRITE DEFAULT-CDR))
 (129 129 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (82 82 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (82 41 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (68 34 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (48 42 (:REWRITE DEFAULT-CAR))
 (44 22 (:REWRITE DEFAULT-+-2))
 (41 41 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (41 41 (:REWRITE SET::IN-SET))
 (34 34 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (32 32 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (32 32 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (32 32 (:LINEAR LEN-WHEN-PREFIXP))
 (22 22 (:REWRITE DEFAULT-+-1))
 (21 7 (:REWRITE CAR-OF-APPEND))
 (18 18 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (14 14 (:REWRITE CONSP-OF-APPEND))
 (7 7 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(GETOPT::DEFOPTIONS-LEMMA-2
 (234 39 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (217 20 (:DEFINITION TRUE-LISTP))
 (148 82 (:REWRITE DEFAULT-CDR))
 (105 39 (:REWRITE DEFAULT-CAR))
 (93 93 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (78 78 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (78 39 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (67 67 (:REWRITE CONSP-OF-REV))
 (39 39 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (39 39 (:REWRITE SET::IN-SET))
 (34 34 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (34 34 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (34 34 (:LINEAR LEN-WHEN-PREFIXP))
 (32 16 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 1 (:DEFINITION BINARY-APPEND))
 (8 2 (:REWRITE APPEND-WHEN-NOT-CONSP))
 )
(GETOPT::DEFOPTIONS-LEMMA-3
 (177 8 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (143 8 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (108 18 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (106 9 (:DEFINITION TRUE-LISTP))
 (49 9 (:DEFINITION LEN))
 (42 42 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (36 36 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (36 18 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (27 27 (:REWRITE DEFAULT-CDR))
 (20 10 (:REWRITE DEFAULT-+-2))
 (18 18 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (18 18 (:REWRITE SET::IN-SET))
 (14 14 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (14 14 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (14 14 (:LINEAR LEN-WHEN-PREFIXP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 )
(GETOPT::DEFOPTIONS-LEMMA-4
 (32 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (27 12 (:REWRITE DEFAULT-CDR))
 (20 2 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (5 2 (:REWRITE DEFAULT-CAR))
 (4 4 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (4 4 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (3 2 (:REWRITE DEFAULT-<-2))
 (3 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (2 1 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (1 1 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 )
(GETOPT::DEFOPTIONS-LEMMA-5
 (29 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (12 12 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (6 6 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CONS))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CDR-WHEN-DEC-DIGIT-CHAR-LISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE STR::DEC-DIGIT-CHAR-P-WHEN-NONZERO-DEC-DIGIT-CHAR-P))
 (1 1 (:TYPE-PRESCRIPTION STR::NONZERO-DEC-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-P$INLINE))
 )
(GETOPT::DEFOPTIONS-LEMMA-6
 (36 7 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (8 4 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CDR-WHEN-DEC-DIGIT-CHAR-LISTP))
 (7 7 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(GETOPT::DEFOPTIONS-LEMMA-7
 (14 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (8 1 (:REWRITE GETOPT::DEFOPTIONS-LEMMA-5))
 (3 3 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (2 1 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CDR-WHEN-DEC-DIGIT-CHAR-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GETOPT::DEFOPTIONS-LEMMA-8
 (288 2 (:LINEAR GETOPT::DEFOPTIONS-LEMMA-4))
 (256 8 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (194 8 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (146 4 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (45 21 (:REWRITE DEFAULT-CDR))
 (44 12 (:LINEAR LEN-WHEN-PREFIXP))
 (34 17 (:REWRITE DEFAULT-+-2))
 (17 17 (:REWRITE DEFAULT-+-1))
 (12 12 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (12 12 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (10 8 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (10 4 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (8 8 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (8 8 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (2 2 (:TYPE-PRESCRIPTION LIST-EQUIV))
 (2 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 )
(GETOPT::USAGE-MESSAGE-PART)
(GETOPT::MAKE-USAGE-AUX)
(GETOPT::MAKE-USAGE-LOOP)
(GETOPT::MAKE-USAGE)
(GETOPT::DEFOPTIONS-FN)
