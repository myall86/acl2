(VL2014::VL-DISTWEIGHTTYPE-P-FORWARD)
(VL2014::VL-DISTITEM->TYPE-FORWARD)
(VL2014::VL-PRETTY-DISTITEM
 (10 10 (:REWRITE VL2014::VL-DISTITEM-P-WHEN-MEMBER-EQUAL-OF-VL-DISTLIST-P))
 )
(VL2014::VL-PRETTY-DISTLIST-EXEC)
(VL2014::VL-PRETTY-DISTLIST-NREV)
(VL2014::VL-PRETTY-DISTLIST)
(VL2014::VL-PRETTY-DISTLIST-NIL-PRESERVINGP-LEMMA)
(VL2014::VL-PRETTY-DISTLIST-NREV-REMOVAL
 (118 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (90 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (75 3 (:DEFINITION TRUE-LISTP))
 (48 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (45 3 (:DEFINITION LEN))
 (33 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (12 6 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:LINEAR VL2014::LEN-WHEN-VL-MATCHES-STRING-P-FC))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 )
(VL2014::VL-PRETTY-DISTLIST-EXEC-REMOVAL
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 )
(VL2014::VL-PRETTY-DISTLIST-OF-TAKE)
(VL2014::SET-EQUIV-CONGRUENCE-OVER-VL-PRETTY-DISTLIST)
(VL2014::SUBSETP-OF-VL-PRETTY-DISTLIST-WHEN-SUBSETP)
(VL2014::MEMBER-OF-VL-PRETTY-DISTITEM-IN-VL-PRETTY-DISTLIST)
(VL2014::VL-PRETTY-DISTLIST-OF-REV)
(VL2014::VL-PRETTY-DISTLIST-OF-LIST-FIX)
(VL2014::VL-PRETTY-DISTLIST-OF-APPEND)
(VL2014::CDR-OF-VL-PRETTY-DISTLIST)
(VL2014::CAR-OF-VL-PRETTY-DISTLIST)
(VL2014::VL-PRETTY-DISTLIST-UNDER-IFF)
(VL2014::CONSP-OF-VL-PRETTY-DISTLIST)
(VL2014::LEN-OF-VL-PRETTY-DISTLIST)
(VL2014::TRUE-LISTP-OF-VL-PRETTY-DISTLIST)
(VL2014::VL-PRETTY-DISTLIST-WHEN-NOT-CONSP)
(VL2014::VL-PRETTY-DISTLIST-OF-CONS)
(VL2014::VL-PRETTY-DISTLIST-NREV
 (44 2 (:DEFINITION TRUE-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE VL2014::VL-DISTLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-PRETTY-DISTLIST)
(VL2014::VL-PRETTY-DISTLIST-EXEC
 (2 2 (:REWRITE VL2014::VL-DISTLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-PRETTY-EXPRDIST)
(VL2014::VL-PARSE-EXPRESSION-OR-DIST-TOP-FN)
(VL2014::RETURN-TYPE-OF-VL-PARSE-EXPRESSION-OR-DIST-TOP.RESULT
 (1 1 (:REWRITE VL2014::VL-PARSE-EXPRESSION-OR-DIST-FAILS-GRACEFULLY))
 )
(VL2014::VL-TOKENLIST-P-OF-VL-PARSE-EXPRESSION-OR-DIST-TOP.TOKENS
 (1 1 (:REWRITE VL2014::VL-PARSE-EXPRESSION-OR-DIST-FAILS-GRACEFULLY))
 )
(VL2014::VL-PARSESTATE-P-OF-VL-PARSE-EXPRESSION-OR-DIST-TOP.PSTATE
 (1 1 (:REWRITE VL2014::VL-PARSE-EXPRESSION-OR-DIST-FAILS-GRACEFULLY))
 )
(VL2014::VL-PRETTY-CYCLEDELAYRANGE)
(VL2014::VL-PARSE-CYCLEDELAYRANGE-TOP-FN)
(VL2014::RETURN-TYPE-OF-VL-PARSE-CYCLEDELAYRANGE-TOP.RESULT
 (1 1 (:REWRITE VL2014::VL-PARSE-CYCLEDELAYRANGE-FAILS-GRACEFULLY))
 )
(VL2014::VL-TOKENLIST-P-OF-VL-PARSE-CYCLEDELAYRANGE-TOP.TOKENS
 (1 1 (:REWRITE VL2014::VL-PARSE-CYCLEDELAYRANGE-FAILS-GRACEFULLY))
 )
(VL2014::VL-PARSESTATE-P-OF-VL-PARSE-CYCLEDELAYRANGE-TOP.PSTATE
 (1 1 (:REWRITE VL2014::VL-PARSE-CYCLEDELAYRANGE-FAILS-GRACEFULLY))
 )
(VL2014::VL-PRETTY-REPETITION)
(VL2014::VL-PARSE-BOOLEAN-ABBREV-TOP-FN)
(VL2014::RETURN-TYPE-OF-VL-PARSE-BOOLEAN-ABBREV-TOP.RESULT
 (1 1 (:REWRITE VL2014::VL-PARSE-BOOLEAN-ABBREV-FAILS-GRACEFULLY))
 )
(VL2014::VL-TOKENLIST-P-OF-VL-PARSE-BOOLEAN-ABBREV-TOP.TOKENS
 (1 1 (:REWRITE VL2014::VL-PARSE-BOOLEAN-ABBREV-FAILS-GRACEFULLY))
 )
(VL2014::VL-PARSESTATE-P-OF-VL-PARSE-BOOLEAN-ABBREV-TOP.PSTATE
 (1 1 (:REWRITE VL2014::VL-PARSE-BOOLEAN-ABBREV-FAILS-GRACEFULLY))
 )
