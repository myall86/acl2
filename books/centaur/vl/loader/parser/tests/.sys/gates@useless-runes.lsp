(VL::VL-PRETTY-GATESTRENGTH)
(VL::VL-PRETTY-DELAY)
(VL::VL-PRETTY-GATEINST
 (40 8 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-SCOPEITEM-P))
 (40 8 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-MODELEMENT-P))
 (40 8 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (16 16 (:REWRITE VL::VL-GATEINST-P-WHEN-MEMBER-EQUAL-OF-VL-GATEINSTLIST-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-TIMETOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-SYSIDTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-STRINGTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-REALTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-INTTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-IDTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-EXTINTTOKEN-P))
 (12 6 (:REWRITE VL::TAG-WHEN-VL-ERANGE-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-TIMETOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-SYSIDTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-STRINGTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-REALTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-INTTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-IDTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-EXTINTTOKEN-P))
 (6 6 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-ERANGE-P))
 )
(VL::VL-PRETTY-GATEINSTLIST-EXEC)
(VL::VL-PRETTY-GATEINSTLIST-NREV)
(VL::VL-PRETTY-GATEINSTLIST)
(VL::VL-PRETTY-GATEINSTLIST-NIL-PRESERVINGP-LEMMA)
(VL::VL-PRETTY-GATEINSTLIST-NREV-REMOVAL
 (142 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (114 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (99 3 (:DEFINITION TRUE-LISTP))
 (69 3 (:DEFINITION LEN))
 (57 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (48 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
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
 (3 3 (:LINEAR VL::LEN-WHEN-VL-MATCHES-STRING-P-FC))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 )
(VL::VL-PRETTY-GATEINSTLIST-EXEC-REMOVAL
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 )
(VL::VL-PRETTY-GATEINSTLIST-OF-TAKE)
(VL::SET-EQUIV-CONGRUENCE-OVER-VL-PRETTY-GATEINSTLIST)
(VL::SUBSETP-OF-VL-PRETTY-GATEINSTLIST-WHEN-SUBSETP)
(VL::MEMBER-OF-VL-PRETTY-GATEINST-IN-VL-PRETTY-GATEINSTLIST)
(VL::VL-PRETTY-GATEINSTLIST-OF-REV)
(VL::VL-PRETTY-GATEINSTLIST-OF-LIST-FIX)
(VL::VL-PRETTY-GATEINSTLIST-OF-APPEND)
(VL::CDR-OF-VL-PRETTY-GATEINSTLIST)
(VL::CAR-OF-VL-PRETTY-GATEINSTLIST)
(VL::VL-PRETTY-GATEINSTLIST-UNDER-IFF)
(VL::CONSP-OF-VL-PRETTY-GATEINSTLIST)
(VL::LEN-OF-VL-PRETTY-GATEINSTLIST)
(VL::TRUE-LISTP-OF-VL-PRETTY-GATEINSTLIST)
(VL::VL-PRETTY-GATEINSTLIST-WHEN-NOT-CONSP)
(VL::VL-PRETTY-GATEINSTLIST-OF-CONS)
(VL::VL-PRETTY-GATEINSTLIST-NREV
 (60 2 (:DEFINITION TRUE-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-SCOPEITEM-P))
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-MODELEMENT-P))
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-TIMETOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-SYSIDTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-STRINGTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-REALTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-INTTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-IDTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-EXTINTTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-ERANGE-P))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-TIMETOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-SYSIDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-STRINGTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-REALTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-INTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-IDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-EXTINTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-ERANGE-P))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE VL::VL-GATEINSTLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::VL-PRETTY-GATEINSTLIST)
(VL::VL-PRETTY-GATEINSTLIST-EXEC
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-SCOPEITEM-P))
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-MODELEMENT-P))
 (17 1 (:REWRITE VL::VL-GATEINST-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-TIMETOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-SYSIDTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-STRINGTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-REALTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-INTTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-IDTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-EXTINTTOKEN-P))
 (6 3 (:REWRITE VL::TAG-WHEN-VL-ERANGE-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-TIMETOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-SYSIDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-STRINGTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-REALTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-INTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-IDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-EXTINTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-ERANGE-P))
 (2 2 (:REWRITE VL::VL-GATEINSTLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::VL-PARSE-GATE-INSTANTIATION-TOP-FN)
(VL::VL-TOKENLIST-P-OF-VL-PARSE-GATE-INSTANTIATION-TOP.TOKENS
 (1 1 (:REWRITE VL::VL-PARSE-GATE-INSTANTIATION-FAILS-GRACEFULLY))
 )
(VL::VL-PARSESTATE-P-OF-VL-PARSE-GATE-INSTANTIATION-TOP.PSTATE
 (1 1 (:REWRITE VL::VL-PARSE-GATE-INSTANTIATION-FAILS-GRACEFULLY))
 )
