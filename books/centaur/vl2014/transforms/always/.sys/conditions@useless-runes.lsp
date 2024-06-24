(VL2014::VL-CONDITION-FIX
 (39 2 (:REWRITE NATP-POSP))
 (20 1 (:REWRITE VL2014::NATP-WHEN-POSP))
 (10 2 (:REWRITE POSP-RW))
 (9 1 (:REWRITE NATP-RW))
 (6 2 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (4 4 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (4 4 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (2 2 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (2 2 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (1 1 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::RETURN-TYPE-OF-VL-CONDITION-FIX
 (117 6 (:REWRITE NATP-POSP))
 (60 3 (:REWRITE VL2014::NATP-WHEN-POSP))
 (30 6 (:REWRITE POSP-RW))
 (27 3 (:REWRITE NATP-RW))
 (26 6 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (18 6 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (16 16 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (15 15 (:TYPE-PRESCRIPTION NATP))
 (12 12 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (12 12 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 (6 6 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (6 6 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 )
(VL2014::VL-EXPR-WELLTYPED-P-OF-VL-CONDITION-FIX
 (18918 2016 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (4210 1680 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (3376 148 (:REWRITE DEFAULT-CAR))
 (3189 168 (:REWRITE NATP-POSP))
 (2754 42 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-OF-CAR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (2700 174 (:REWRITE DEFAULT-CDR))
 (2606 544 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2220 12 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP-1))
 (2016 2016 (:REWRITE SUBSETP-MEMBER . 2))
 (2016 2016 (:REWRITE SUBSETP-MEMBER . 1))
 (2016 2016 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (1952 102 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-NOT-CONSP))
 (1898 87 (:REWRITE VL2014::NATP-WHEN-POSP))
 (1680 1680 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1680 1680 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1626 12 (:DEFINITION ALL-EQUALP))
 (1548 60 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-OF-CDR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (1122 48 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-UNDER-IFF))
 (1088 1088 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (1088 1088 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (954 168 (:REWRITE POSP-RW))
 (948 78 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-WHEN-NOT-CONSP))
 (897 87 (:REWRITE NATP-RW))
 (812 48 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-NOT-CONSP))
 (696 24 (:REWRITE LEN-WHEN-ATOM))
 (636 12 (:REWRITE REPEAT-WHEN-ZP))
 (588 12 (:REWRITE ZP-OPEN))
 (558 272 (:REWRITE VL2014::ARG1-EXISTS-BY-ARITY))
 (558 12 (:REWRITE ALL-EQUALP-WHEN-ATOM))
 (542 12 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (528 528 (:TYPE-PRESCRIPTION VL2014::MAYBE-NATP-OF-VL-OP-ARITY))
 (496 496 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (496 496 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (496 496 (:REWRITE CONSP-BY-LEN))
 (486 486 (:REWRITE SUBSETP-MEMBER . 4))
 (486 486 (:REWRITE SUBSETP-MEMBER . 3))
 (486 486 (:REWRITE INTERSECTP-MEMBER . 3))
 (486 486 (:REWRITE INTERSECTP-MEMBER . 2))
 (486 162 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (429 429 (:TYPE-PRESCRIPTION NATP))
 (414 12 (:REWRITE VL2014::SUM-NATS-WHEN-ATOM))
 (346 170 (:REWRITE VL2014::ARG2-EXISTS-BY-ARITY))
 (344 18 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-OF-CDR-WHEN-VL-EXPRLIST-WELLTYPED-P))
 (342 342 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (342 342 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (336 336 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (324 324 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (312 12 (:REWRITE VL2014::LEN-OF-VL-EXPRLIST->FINALWIDTHS))
 (282 12 (:REWRITE |(< 0 (len x))|))
 (224 224 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (218 218 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (218 109 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (218 109 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (204 204 (:TYPE-PRESCRIPTION VL2014::VL-EXPRLIST-RESOLVED-P))
 (204 204 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-SUBSETP-EQUAL))
 (174 174 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (174 174 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (148 148 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (109 109 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (109 109 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (109 109 (:REWRITE SET::IN-SET))
 (108 54 (:REWRITE VL2014::ARG3-EXISTS-BY-ARITY))
 (96 96 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-SUBSETP-EQUAL))
 (90 18 (:REWRITE DEFAULT-+-2))
 (84 84 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-RESOLVED-P))
 (66 6 (:REWRITE <-0-+-NEGATIVE-2))
 (54 54 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (50 5 (:REWRITE VL2014::VL-EXPR-FIX-WHEN-VL-EXPR-P))
 (42 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (36 36 (:TYPE-PRESCRIPTION REPEAT))
 (36 36 (:TYPE-PRESCRIPTION LEN))
 (36 36 (:META CANCEL_PLUS-LESSP-CORRECT))
 (36 18 (:REWRITE DEFAULT-<-2))
 (36 18 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (30 30 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (30 30 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (30 30 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (30 30 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 (30 18 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE VL2014::VL-EXPR-WELLTYPED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-WELLTYPED-P))
 (25 5 (:REWRITE VL2014::VL-EXPR-P-WHEN-VL-MAYBE-EXPR-P))
 (24 12 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (20 20 (:REWRITE VL2014::VL-ATOM-P-WHEN-MEMBER-EQUAL-OF-VL-ATOMLIST-P))
 (18 6 (:REWRITE VL2014::LEN-OF-VL-NONATOM->ARGS))
 (15 15 (:TYPE-PRESCRIPTION VL2014::VL-EXPR-P))
 (12 12 (:TYPE-PRESCRIPTION ZP))
 (12 12 (:TYPE-PRESCRIPTION ALL-EQUALP))
 (12 12 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP))
 (12 12 (:REWRITE FN-CHECK-DEF-FORMALS))
 (12 12 (:REWRITE ALL-EQUALP-BY-SUPERSET))
 (12 6 (:REWRITE DEFAULT-*-1))
 (10 10 (:TYPE-PRESCRIPTION VL2014::VL-MAYBE-EXPR-P))
 (10 10 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (10 5 (:REWRITE VL2014::VL-MAYBE-EXPR-P-WHEN-VL-EXPR-P))
 (9 9 (:REWRITE VL2014::VL-EXPR-FIX-UNDER-VL-MAYBE-EXPR-EQUIV-WHEN-EXISTS))
 (6 6 (:REWRITE VL2014::VL-HIDEXPR-P-WHEN-ID-ATOM))
 (6 6 (:REWRITE VL2014::NOT-VL-HIDEXPR-P-BY-OP))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 )
(VL2014::VL-CONDITION-NEG
 (39 2 (:REWRITE NATP-POSP))
 (20 1 (:REWRITE VL2014::NATP-WHEN-POSP))
 (11 11 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (11 11 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 2 (:REWRITE POSP-RW))
 (9 1 (:REWRITE NATP-RW))
 (6 6 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (6 2 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (4 4 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (4 4 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (4 4 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (3 3 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 (2 2 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (2 2 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 )
(VL2014::RETURN-TYPE-OF-VL-CONDITION-NEG
 (117 6 (:REWRITE NATP-POSP))
 (60 3 (:REWRITE VL2014::NATP-WHEN-POSP))
 (48 8 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (30 6 (:REWRITE POSP-RW))
 (27 3 (:REWRITE NATP-RW))
 (20 20 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (18 6 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (15 15 (:TYPE-PRESCRIPTION NATP))
 (15 15 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (15 15 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (15 15 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (15 15 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (15 15 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 (12 12 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (12 12 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 6 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (6 6 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 )
(VL2014::VL-EXPR-WELLTYPED-P-OF-VL-CONDITION-NEG
 (25224 2688 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (5622 2232 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (4501 197 (:REWRITE DEFAULT-CAR))
 (4213 222 (:REWRITE NATP-POSP))
 (3486 56 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-OF-CAR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (3472 232 (:REWRITE DEFAULT-CDR))
 (3448 712 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2960 16 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP-1))
 (2688 2688 (:REWRITE SUBSETP-MEMBER . 2))
 (2688 2688 (:REWRITE SUBSETP-MEMBER . 1))
 (2688 2688 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2512 115 (:REWRITE VL2014::NATP-WHEN-POSP))
 (2464 136 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-NOT-CONSP))
 (2232 2232 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2232 2232 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2168 16 (:DEFINITION ALL-EQUALP))
 (1878 80 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-OF-CDR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (1496 64 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-UNDER-IFF))
 (1424 1424 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (1424 1424 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (1264 104 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-WHEN-NOT-CONSP))
 (1262 222 (:REWRITE POSP-RW))
 (1187 115 (:REWRITE NATP-RW))
 (1023 71 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-NOT-CONSP))
 (928 32 (:REWRITE LEN-WHEN-ATOM))
 (848 16 (:REWRITE REPEAT-WHEN-ZP))
 (784 16 (:REWRITE ZP-OPEN))
 (744 16 (:REWRITE ALL-EQUALP-WHEN-ATOM))
 (724 16 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (712 352 (:REWRITE VL2014::ARG1-EXISTS-BY-ARITY))
 (672 672 (:TYPE-PRESCRIPTION VL2014::MAYBE-NATP-OF-VL-OP-ARITY))
 (648 648 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (648 648 (:REWRITE SUBSETP-MEMBER . 4))
 (648 648 (:REWRITE SUBSETP-MEMBER . 3))
 (648 648 (:REWRITE INTERSECTP-MEMBER . 3))
 (648 648 (:REWRITE INTERSECTP-MEMBER . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (648 648 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (648 648 (:REWRITE CONSP-BY-LEN))
 (642 214 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (567 567 (:TYPE-PRESCRIPTION NATP))
 (552 16 (:REWRITE VL2014::SUM-NATS-WHEN-ATOM))
 (448 224 (:REWRITE VL2014::ARG2-EXISTS-BY-ARITY))
 (444 444 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (440 440 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (440 440 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (428 428 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (416 16 (:REWRITE VL2014::LEN-OF-VL-EXPRLIST->FINALWIDTHS))
 (413 24 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-OF-CDR-WHEN-VL-EXPRLIST-WELLTYPED-P))
 (376 16 (:REWRITE |(< 0 (len x))|))
 (296 296 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (294 294 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (294 147 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (294 147 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (272 272 (:TYPE-PRESCRIPTION VL2014::VL-EXPRLIST-RESOLVED-P))
 (272 272 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-SUBSETP-EQUAL))
 (230 230 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (230 230 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (197 197 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (147 147 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (147 147 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (147 147 (:REWRITE SET::IN-SET))
 (144 72 (:REWRITE VL2014::ARG3-EXISTS-BY-ARITY))
 (142 142 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-SUBSETP-EQUAL))
 (120 24 (:REWRITE DEFAULT-+-2))
 (112 112 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-RESOLVED-P))
 (88 8 (:REWRITE <-0-+-NEGATIVE-2))
 (82 82 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (77 77 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (77 77 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (77 77 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (77 77 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 (72 72 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (58 10 (:REWRITE VL2014::VL-EXPR-P-WHEN-VL-MAYBE-EXPR-P))
 (56 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (48 48 (:TYPE-PRESCRIPTION REPEAT))
 (48 48 (:TYPE-PRESCRIPTION LEN))
 (48 48 (:META CANCEL_PLUS-LESSP-CORRECT))
 (48 24 (:REWRITE DEFAULT-<-2))
 (48 24 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE VL2014::VL-EXPR-WELLTYPED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-WELLTYPED-P))
 (40 24 (:REWRITE DEFAULT-+-1))
 (34 6 (:REWRITE VL2014::VL-MAYBE-EXPR-P-WHEN-VL-EXPR-P))
 (32 16 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (26 26 (:REWRITE VL2014::VL-ATOM-P-WHEN-MEMBER-EQUAL-OF-VL-ATOMLIST-P))
 (24 8 (:REWRITE VL2014::LEN-OF-VL-NONATOM->ARGS))
 (16 16 (:TYPE-PRESCRIPTION ZP))
 (16 16 (:TYPE-PRESCRIPTION VL2014::VL-MAYBE-EXPR-P))
 (16 16 (:TYPE-PRESCRIPTION ALL-EQUALP))
 (16 16 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (16 16 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP))
 (16 16 (:REWRITE FN-CHECK-DEF-FORMALS))
 (16 16 (:REWRITE ALL-EQUALP-BY-SUPERSET))
 (16 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE VL2014::VL-HIDEXPR-P-WHEN-ID-ATOM))
 (8 8 (:REWRITE VL2014::NOT-VL-HIDEXPR-P-BY-OP))
 (8 8 (:REWRITE EQUAL-CONSTANT-+))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 )
(VL2014::VL-CONDITION-MERGE
 (78 4 (:REWRITE NATP-POSP))
 (40 2 (:REWRITE VL2014::NATP-WHEN-POSP))
 (20 4 (:REWRITE POSP-RW))
 (18 2 (:REWRITE NATP-RW))
 (12 4 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (10 10 (:TYPE-PRESCRIPTION NATP))
 (8 8 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (8 8 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (8 8 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (4 4 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (4 4 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (4 4 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 )
(VL2014::RETURN-TYPE-OF-VL-CONDITION-MERGE
 (117 6 (:REWRITE NATP-POSP))
 (60 3 (:REWRITE VL2014::NATP-WHEN-POSP))
 (30 6 (:REWRITE POSP-RW))
 (27 3 (:REWRITE NATP-RW))
 (18 6 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (15 15 (:TYPE-PRESCRIPTION NATP))
 (12 12 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (12 12 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (12 12 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (6 6 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (6 6 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 )
(VL2014::VL-EXPR-WELLTYPED-P-OF-VL-CONDITION-MERGE
 (11571 711 (:REWRITE MEMBER-OF-CONS))
 (9459 1008 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (3591 3591 (:TYPE-PRESCRIPTION VL2014::VL-NONATOM->OP$INLINE))
 (2514 1257 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (2095 825 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (1692 89 (:REWRITE NATP-POSP))
 (1688 74 (:REWRITE DEFAULT-CAR))
 (1303 88 (:REWRITE DEFAULT-CDR))
 (1293 267 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (1191 21 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-OF-CAR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (1110 6 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP-1))
 (1008 1008 (:REWRITE SUBSETP-MEMBER . 2))
 (1008 1008 (:REWRITE SUBSETP-MEMBER . 1))
 (1008 1008 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (995 46 (:REWRITE VL2014::NATP-WHEN-POSP))
 (924 51 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-NOT-CONSP))
 (825 825 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (825 825 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (813 6 (:DEFINITION ALL-EQUALP))
 (588 30 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-OF-CDR-WHEN-VL-EXPRLIST-RESOLVED-P))
 (561 24 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-UNDER-IFF))
 (534 534 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (534 534 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (502 89 (:REWRITE POSP-RW))
 (474 39 (:REWRITE VL2014::VL-EXPRLIST->FINALWIDTHS-WHEN-NOT-CONSP))
 (471 46 (:REWRITE NATP-RW))
 (411 411 (:TYPE-PRESCRIPTION VL2014::MAYBE-NATP-OF-VL-NONATOM->FINALWIDTH))
 (396 54 (:REWRITE MEMBER-WHEN-ATOM))
 (382 25 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-NOT-CONSP))
 (348 12 (:REWRITE LEN-WHEN-ATOM))
 (342 3 (:DEFINITION ABS))
 (318 6 (:REWRITE REPEAT-WHEN-ZP))
 (294 6 (:REWRITE ZP-OPEN))
 (279 6 (:REWRITE ALL-EQUALP-WHEN-ATOM))
 (273 273 (:TYPE-PRESCRIPTION VL2014::NATP-OF-VL-RESOLVED->VAL))
 (267 132 (:REWRITE VL2014::ARG1-EXISTS-BY-ARITY))
 (267 6 (:REWRITE VL2014::NEGATIVE-WHEN-NATP))
 (258 86 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (252 252 (:TYPE-PRESCRIPTION VL2014::MAYBE-NATP-OF-VL-OP-ARITY))
 (243 243 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (243 243 (:REWRITE SUBSETP-MEMBER . 4))
 (243 243 (:REWRITE SUBSETP-MEMBER . 3))
 (243 243 (:REWRITE INTERSECTP-MEMBER . 3))
 (243 243 (:REWRITE INTERSECTP-MEMBER . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (243 243 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (243 243 (:REWRITE CONSP-BY-LEN))
 (227 227 (:TYPE-PRESCRIPTION NATP))
 (207 6 (:REWRITE VL2014::SUM-NATS-WHEN-ATOM))
 (178 178 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (174 9 (:REWRITE VL2014::CDR-OF-VL-EXPRLIST->FINALWIDTHS))
 (172 172 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (168 84 (:REWRITE VL2014::ARG2-EXISTS-BY-ARITY))
 (165 165 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (165 165 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (162 162 (:TYPE-PRESCRIPTION VL2014::TRUE-LISTP-OF-VL-EXPRLIST->FINALWIDTHS))
 (159 54 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (156 6 (:REWRITE VL2014::LEN-OF-VL-EXPRLIST->FINALWIDTHS))
 (141 141 (:TYPE-PRESCRIPTION VL2014::VL-NONATOM->FINALTYPE$INLINE))
 (141 6 (:REWRITE |(< 0 (len x))|))
 (120 9 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-OF-CDR-WHEN-VL-EXPRLIST-WELLTYPED-P))
 (111 111 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (110 110 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (110 55 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (110 55 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (102 102 (:TYPE-PRESCRIPTION VL2014::VL-EXPRLIST-RESOLVED-P))
 (102 102 (:REWRITE VL2014::VL-EXPRLIST-RESOLVED-P-WHEN-SUBSETP-EQUAL))
 (92 92 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (92 92 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (74 74 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (55 55 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (55 55 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (55 55 (:REWRITE SET::IN-SET))
 (54 27 (:REWRITE VL2014::ARG3-EXISTS-BY-ARITY))
 (51 6 (:REWRITE <-+-NEGATIVE-0-2))
 (50 50 (:REWRITE VL2014::VL-EXPRLIST-WELLTYPED-P-WHEN-SUBSETP-EQUAL))
 (45 9 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE VL2014::VL-EXPR-RESOLVED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-RESOLVED-P))
 (40 8 (:REWRITE VL2014::VL-EXPR-P-WHEN-VL-MAYBE-EXPR-P))
 (33 3 (:REWRITE <-0-+-NEGATIVE-2))
 (28 4 (:REWRITE VL2014::VL-MAYBE-EXPR-P-WHEN-VL-EXPR-P))
 (27 27 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (24 3 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (21 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:TYPE-PRESCRIPTION REPEAT))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:META CANCEL_PLUS-LESSP-CORRECT))
 (18 9 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (18 9 (:REWRITE DEFAULT-<-2))
 (18 9 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (15 15 (:TYPE-PRESCRIPTION VL2014::VL-EXPR-RESOLVED-P$INLINE))
 (15 9 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE VL2014::VL-EXPR-WELLTYPED-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-WELLTYPED-P))
 (12 12 (:TYPE-PRESCRIPTION VL2014::VL-MAYBE-EXPR-P))
 (12 6 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION VL2014::VL-EXPR-KIND$INLINE))
 (9 3 (:REWRITE VL2014::LEN-OF-VL-NONATOM->ARGS))
 (8 8 (:REWRITE VL2014::VL-ATOM-P-WHEN-MEMBER-EQUAL-OF-VL-ATOMLIST-P))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:TYPE-PRESCRIPTION VL2014::VL-SYSCALL->RETURNINFO))
 (6 6 (:TYPE-PRESCRIPTION VL2014::SUM-NATS))
 (6 6 (:TYPE-PRESCRIPTION ALL-EQUALP))
 (6 6 (:REWRITE VL2014::SUM-NATS-WHEN-ALL-EQUALP))
 (6 6 (:REWRITE FN-CHECK-DEF-FORMALS))
 (6 6 (:REWRITE ALL-EQUALP-BY-SUPERSET))
 (6 3 (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS))
 (6 3 (:REWRITE DEFAULT-*-1))
 (3 3 (:TYPE-PRESCRIPTION VL2014::VL-SYSFUNEXPR-P$INLINE))
 (3 3 (:TYPE-PRESCRIPTION VL2014::VL-SYSFUN-SHOULD-SIZE-ARGS-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::VL-SELEXPR-WELLTYPED-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::VL-INDEXEXPR-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::VL-HIDEXPR-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::MAYBE-NATP-OF-VL-COREDATATYPE-INFO->SIZE))
 (3 3 (:REWRITE VL2014::VL-HIDEXPR-P-WHEN-ID-ATOM))
 (3 3 (:REWRITE VL2014::NOT-VL-HIDEXPR-P-BY-OP))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE VL2014::|(< c2 (+ c1 a))|))
 (3 3 (:DEFINITION FIX))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-EXPRLIST-FIX-UNDER-VL-EXPRLIST-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-MAYBE-EXPRTYPE-FIX-UNDER-VL-MAYBE-EXPRTYPE-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-ATTS-FIX-UNDER-VL-ATTS-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT MAYBE-NATP-FIX-UNDER-MAYBE-NAT-EQUIV))
 )
(VL2014::VL-SAFE-QMARK-EXPR
 (948 60 (:REWRITE NATP-POSP))
 (480 24 (:REWRITE VL2014::NATP-WHEN-POSP))
 (252 60 (:REWRITE POSP-RW))
 (216 24 (:REWRITE NATP-RW))
 (144 48 (:REWRITE VL2014::INTEGERP-WHEN-NATP))
 (120 120 (:TYPE-PRESCRIPTION NATP))
 (120 120 (:REWRITE VL2014::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (96 96 (:REWRITE INTEGERP-WHEN-MEMBER-EQUAL-OF-INTEGER-LISTP))
 (48 48 (:REWRITE VL2014::NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (48 48 (:REWRITE NATP-WHEN-MEMBER-EQUAL-OF-NAT-LISTP))
 (12 12 (:REWRITE VL2014::VL-EXPR-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLIST-P))
 (8 8 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (8 8 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (8 8 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 6 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (3 3 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-OP-FIX-UNDER-VL-OP-EQUIV))
 )
(VL2014::VL-EXPR-P-OF-VL-SAFE-QMARK-EXPR)
