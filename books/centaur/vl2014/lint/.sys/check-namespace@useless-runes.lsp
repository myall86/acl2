(VL2014::VL-MODULE-CHECK-NAMESPACE
 (20702 104 (:DEFINITION SET::MERGESORT))
 (19979 1970 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (15235 160 (:REWRITE SET::IN-MERGESORT-UNDER-IFF))
 (14225 111 (:REWRITE SET::INSERT-IDENTITY))
 (12844 257 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-FIRST-TWO-SAME-YADA-YADA))
 (8691 114 (:REWRITE SUBSETP-CAR-MEMBER))
 (7975 195 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-ATOM))
 (6875 50 (:REWRITE REMOVE-UNDER-IFF))
 (5997 208 (:REWRITE SET::MERGESORT-SET-IDENTITY))
 (5925 25 (:REWRITE SUBSETP-OF-REMOVE2))
 (5834 241 (:REWRITE VL2014::VL-PORTLIST->NAMES-UNDER-IFF))
 (5596 226 (:REWRITE LEN-WHEN-ATOM))
 (5531 611 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4592 709 (:REWRITE DEFAULT-CDR))
 (4424 7 (:DEFINITION SET::INTERSECT))
 (3940 3940 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (3940 3940 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (3758 257 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-CDR-ATOM))
 (3358 218 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (3286 327 (:REWRITE VL2014::VL-PORTDECLLIST->NAMES-WHEN-NOT-CONSP))
 (3275 136 (:REWRITE VL2014::CDR-OF-VL-PORTDECLLIST->NAMES))
 (3195 361 (:REWRITE VL2014::PROMOTE-MEMBER-EQUAL-TO-MEMBERSHIP))
 (3182 132 (:REWRITE VL2014::VL-PORTDECLLIST->NAMES-UNDER-IFF))
 (3000 25 (:REWRITE LEN-OF-REMOVE-EXACT))
 (2910 376 (:REWRITE VL2014::VL-PORTLIST->NAMES-WHEN-NOT-CONSP))
 (2650 100 (:REWRITE VL2014::CDR-OF-VL-PORTLIST->NAMES))
 (2650 100 (:REWRITE VL2014::CAR-OF-VL-PORTLIST->NAMES))
 (2559 84 (:REWRITE REMOVE-WHEN-NON-MEMBER))
 (2335 361 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (2271 357 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (2195 361 (:REWRITE SUBSETP-MEMBER . 1))
 (2184 7 (:REWRITE SET::INTERSECT-IN))
 (2014 404 (:REWRITE DEFAULT-CAR))
 (2000 195 (:REWRITE NO-DUPLICATESP-EQUAL-NON-CONS))
 (1990 243 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1964 75 (:REWRITE VL2014::CAR-OF-VL-PORTDECLLIST->NAMES))
 (1909 250 (:REWRITE SUBSETP-TRANS))
 (1901 322 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (1834 56 (:DEFINITION SET::SUBSET))
 (1785 357 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (1640 840 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (1586 65 (:REWRITE MEMBER-WHEN-ATOM))
 (1578 1578 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (1457 1457 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1385 581 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (1372 28 (:REWRITE SET::INTERSECT-WITH-SUBSET-RIGHT))
 (1288 114 (:REWRITE VL2014::SETP-OF-CDR))
 (1200 714 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (1190 28 (:REWRITE SET::INTERSECT-WITH-SUBSET-LEFT))
 (1170 1170 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (1170 1170 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (1170 1170 (:REWRITE CONSP-BY-LEN))
 (1156 34 (:REWRITE REMOVE-WHEN-ATOM))
 (1125 100 (:REWRITE SUBSETP-CONS-2))
 (1032 24 (:REWRITE INTERSECTION$-UNDER-IFF))
 (900 25 (:LINEAR DUPLICITY-WHEN-MEMBER-EQUAL))
 (875 25 (:REWRITE DUPLICITY-WHEN-NOT-CONSP))
 (850 25 (:DEFINITION ATOM))
 (714 714 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (714 357 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (714 357 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (658 7 (:REWRITE VL2014::SUBSETP-OF-VL-PORTDECLLIST->NAMES-WHEN-SUBSETP))
 (625 25 (:REWRITE VL2014::LEN-OF-VL-PORTLIST->NAMES))
 (581 581 (:REWRITE SET::IN-SET))
 (579 579 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (450 450 (:TYPE-PRESCRIPTION VL2014::MAYBE-STRINGP-OF-VL-PORT->NAME))
 (450 25 (:REWRITE DUPLICITY-WHEN-NON-MEMBER-EQUAL))
 (428 428 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (428 428 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (428 428 (:LINEAR LEN-WHEN-PREFIXP))
 (385 79 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPEDEF-P))
 (385 79 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPE-P))
 (375 111 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (361 361 (:REWRITE SUBSETP-MEMBER . 2))
 (361 361 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (322 322 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (322 322 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (314 314 (:TYPE-PRESCRIPTION VL2014::STRINGP-OF-VL-PORTDECL->NAME))
 (314 7 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (302 32 (:REWRITE VL2014::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (300 100 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (281 281 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (280 280 (:TYPE-PRESCRIPTION SET::SUBSET-TYPE))
 (253 253 (:REWRITE FN-CHECK-DEF-FORMALS))
 (252 14 (:DEFINITION SET::IN))
 (250 250 (:REWRITE SUBSETP-TRANS2))
 (248 248 (:TYPE-PRESCRIPTION INTERSECTION-EQUAL))
 (248 32 (:REWRITE INTERSECTION$-WHEN-ATOM-RIGHT))
 (248 32 (:REWRITE INTERSECTION$-WHEN-ATOM-LEFT))
 (240 24 (:REWRITE INTERSECTP-EQUAL-OF-ATOM-RIGHT))
 (240 24 (:REWRITE INTERSECTP-EQUAL-OF-ATOM-LEFT))
 (240 24 (:REWRITE INTERSECTP-EQUAL-NON-CONS-1))
 (240 24 (:REWRITE INTERSECTP-EQUAL-NON-CONS))
 (224 224 (:REWRITE SET::SUBSET-TRANSITIVE))
 (224 112 (:REWRITE SET::EMPTY-SUBSET-2))
 (224 112 (:REWRITE SET::EMPTY-SUBSET))
 (214 214 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (214 214 (:LINEAR INDEX-OF-<-LEN))
 (214 214 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (209 209 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (204 102 (:REWRITE VL2014::TAG-WHEN-VL-OPINFO-P))
 (200 200 (:TYPE-PRESCRIPTION DUPLICITY))
 (195 195 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-DUPLICITY-BADGUY1))
 (112 112 (:REWRITE SET::PICK-A-POINT-SUBSET-STRATEGY))
 (112 42 (:REWRITE VL2014::SUBSET-OF-MERGESORT-WHEN-SUBSETP-EQUAL))
 (108 108 (:REWRITE NO-DUPLICATESP-EQUAL-WHEN-HIGH-DUPLICITY))
 (104 104 (:REWRITE VL2014::VL-MODULE-P-WHEN-MEMBER-EQUAL-OF-VL-MODULELIST-P))
 (102 102 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-OPINFO-P))
 (84 84 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (84 84 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (84 84 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (70 70 (:REWRITE SET::SUBSET-IN))
 (65 65 (:REWRITE SUBSETP-MEMBER . 4))
 (65 65 (:REWRITE SUBSETP-MEMBER . 3))
 (65 65 (:REWRITE INTERSECTP-MEMBER . 3))
 (65 65 (:REWRITE INTERSECTP-MEMBER . 2))
 (64 64 (:REWRITE VL2014::VL-WARNINGLIST-P-WHEN-SUBSETP-EQUAL))
 (56 56 (:REWRITE SET::PICK-A-POINT-SUBSET-CONSTRAINT-HELPER))
 (56 28 (:REWRITE SET::IN-TAIL))
 (55 23 (:REWRITE SET::SFIX-WHEN-EMPTY))
 (50 25 (:REWRITE DEFAULT-UNARY-MINUS))
 (50 25 (:REWRITE DEFAULT-+-2))
 (50 25 (:REWRITE DEFAULT-+-1))
 (45 45 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (44 44 (:REWRITE VL2014::VL-WARNING-P-WHEN-MEMBER-EQUAL-OF-VL-WARNINGLIST-P))
 (28 28 (:REWRITE-QUOTED-CONSTANT VL2014::MAYBE-STRING-FIX-UNDER-MAYBE-STRING-EQUIV))
 (28 28 (:REWRITE SET::SUBSET-MEMBERSHIP-TAIL))
 (25 25 (:REWRITE EQUAL-CONSTANT-+))
 (24 24 (:TYPE-PRESCRIPTION INTERSECTP-EQUAL))
 (24 24 (:REWRITE INTERSECTP-MEMBER . 1))
 (21 21 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSET))
 (21 7 (:REWRITE SET::INTERSECT-EMPTY-Y))
 (21 7 (:REWRITE SET::INTERSECT-EMPTY-X))
 (14 14 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (7 7 (:REWRITE SUBSETP-REFL))
 (7 7 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (7 7 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (7 7 (:REWRITE SET::HEAD-UNIQUE))
 )
(VL2014::VL-MODULE-P-OF-VL-MODULE-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-EXEC)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-NREV)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-P-OF-VL-MODULELIST-CHECK-NAMESPACE
 (127 1 (:REWRITE SUBSETP-OF-CONS))
 (96 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-FIRST-TWO-SAME-YADA-YADA))
 (34 5 (:REWRITE DEFAULT-CAR))
 (28 2 (:REWRITE VL2014::PROMOTE-MEMBER-EQUAL-TO-MEMBERSHIP))
 (26 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-CDR-ATOM))
 (25 8 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (22 2 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (19 7 (:REWRITE DEFAULT-CDR))
 (19 3 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (19 2 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (18 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 2 (:REWRITE VL2014::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (7 7 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (7 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (7 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (3 3 (:REWRITE SET::IN-SET))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (1 1 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (1 1 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE CAR-CONS))
 )
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-NIL-PRESERVINGP-LEMMA)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-UPDATE-NTH
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-REVAPPEND)
(VL2014::NTHCDR-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::NTH-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-NREV-REMOVAL
 (241 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (192 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (75 3 (:REWRITE |(equal 0 (len x))|))
 (72 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (72 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (72 3 (:REWRITE LEN-WHEN-ATOM))
 (45 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (39 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (34 17 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (24 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (17 17 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (17 17 (:REWRITE CONSP-BY-LEN))
 (12 3 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (3 3 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSET))
 (3 3 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 3 (:LINEAR INDEX-OF-<-LEN))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-EXEC-REMOVAL
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-TAKE)
(VL2014::SET-EQUIV-CONGRUENCE-OVER-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::SUBSETP-OF-VL-MODULELIST-CHECK-NAMESPACE-WHEN-SUBSETP)
(VL2014::MEMBER-OF-VL-MODULE-CHECK-NAMESPACE-IN-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-REV)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-LIST-FIX)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-APPEND)
(VL2014::CDR-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::CAR-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-UNDER-IFF)
(VL2014::CONSP-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::LEN-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::TRUE-LISTP-OF-VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-WHEN-NOT-CONSP)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-OF-CONS)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-NREV
 (169 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-FIRST-TWO-SAME-YADA-YADA))
 (119 2 (:REWRITE VL2014::VL-MODULE-P-WHEN-VL-MAYBE-MODULE-P))
 (106 1 (:REWRITE VL2014::VL-MAYBE-MODULE-P-WHEN-VL-MODULE-P))
 (104 7 (:REWRITE DEFAULT-CAR))
 (79 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-CDR-ATOM))
 (48 2 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (40 2 (:REWRITE VL2014::PROMOTE-MEMBER-EQUAL-TO-MEMBERSHIP))
 (36 7 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (31 7 (:REWRITE DEFAULT-CDR))
 (30 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (28 5 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (26 2 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (24 24 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (24 24 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (24 12 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (24 2 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (16 16 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (16 7 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (16 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (13 13 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (12 12 (:REWRITE CONSP-BY-LEN))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (9 9 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (9 9 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (9 2 (:REWRITE VL2014::FIRST-UNDER-IFF-WHEN-VL-EXPRLIST-P))
 (8 8 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 2 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPEDEF-P))
 (8 2 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPE-P))
 (8 2 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (8 2 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (7 7 (:REWRITE SET::IN-SET))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 4 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (4 4 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (4 2 (:REWRITE VL2014::TAG-WHEN-VL-OPINFO-P))
 (4 2 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-MAYBE-MODULE-P))
 (2 2 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-OPINFO-P))
 (2 2 (:REWRITE VL2014::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSET))
 (2 2 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::VL-MODULELIST-CHECK-NAMESPACE)
(VL2014::VL-MODULELIST-CHECK-NAMESPACE-EXEC
 (169 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-FIRST-TWO-SAME-YADA-YADA))
 (119 2 (:REWRITE VL2014::VL-MODULE-P-WHEN-VL-MAYBE-MODULE-P))
 (106 1 (:REWRITE VL2014::VL-MAYBE-MODULE-P-WHEN-VL-MODULE-P))
 (104 7 (:REWRITE DEFAULT-CAR))
 (79 3 (:REWRITE VL2014::SUBSETP-EQUAL-WHEN-CDR-ATOM))
 (40 2 (:REWRITE VL2014::PROMOTE-MEMBER-EQUAL-TO-MEMBERSHIP))
 (32 5 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (31 7 (:REWRITE DEFAULT-CDR))
 (28 5 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (20 20 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (20 20 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (20 10 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 5 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (11 11 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-MODITEM-ALIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (10 10 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (10 10 (:REWRITE CONSP-BY-LEN))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (9 9 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (9 2 (:REWRITE VL2014::FIRST-UNDER-IFF-WHEN-VL-EXPRLIST-P))
 (8 8 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (8 2 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPEDEF-P))
 (8 2 (:REWRITE VL2014::VL-MODULE-P-BY-TAG-WHEN-VL-SCOPE-P))
 (8 2 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (7 7 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (5 5 (:REWRITE SET::IN-SET))
 (5 5 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (5 5 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 2 (:REWRITE VL2014::TAG-WHEN-VL-OPINFO-P))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-MAYBE-MODULE-P))
 (2 2 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-OPINFO-P))
 (2 2 (:REWRITE VL2014::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-MEMBER-EQUAL-OF-VL-EXPRLISTLIST-P))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (1 1 (:REWRITE VL2014::VL-EXPRLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::VL-DESIGN-CHECK-NAMESPACE)
(VL2014::VL-DESIGN-P-OF-VL-DESIGN-CHECK-NAMESPACE)
