(JAVA::GRAMMAR-DEC-DIGITP)
(JAVA::GRAMMAR-DEC-DIGITP-SUFF)
(JAVA::BOOLEANP-OF-GRAMMAR-DEC-DIGITP)
(JAVA::GRAMMAR-DEC-DIGITP)
(JAVA::SINGLETON-WHEN-GRAMMAR-DEC-DIGITP
 (1606 1602 (:REWRITE DEFAULT-CAR))
 (1602 1602 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (920 120 (:REWRITE ABNF::TREE-TERMINATEDP-OF-CAR-WHEN-TREE-LIST-TERMINATEDP))
 (760 200 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-OF-CAR-WHEN-TREE-LIST-LIST-TERMINATEDP))
 (455 70 (:REWRITE ABNF::TREEP-WHEN-MAYBE-TREEP))
 (400 400 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-SUBSETP-EQUAL))
 (400 400 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-LIST-TERMINATEDP))
 (355 351 (:REWRITE DEFAULT-CDR))
 (350 35 (:REWRITE ABNF::MAYBE-TREEP-WHEN-TREEP))
 (322 322 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-SUBSETP-EQUAL))
 (290 290 (:REWRITE ABNF::TREE-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-TERMINATEDP))
 (200 200 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-NOT-CONSP))
 (200 200 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-ATOM))
 (166 161 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-NOT-CONSP))
 (166 161 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-ATOM))
 (140 140 (:REWRITE ABNF::TREEP-WHEN-MEMBER-EQUAL-OF-TREE-LISTP))
 (105 105 (:TYPE-PRESCRIPTION ABNF::MAYBE-TREEP))
 (82 77 (:REWRITE ABNF::TREE-LIST-LIST->STRING-WHEN-ATOM))
 (76 76 (:REWRITE ABNF::TREE-LIST->STRING-WHEN-ATOM))
 (70 70 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (70 70 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (70 70 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (66 11 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-OF-CAR-WHEN-TREE-LIST-MATCH-ELEMENT-P))
 (60 24 (:REWRITE LEN-WHEN-ATOM))
 (24 24 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (22 22 (:TYPE-PRESCRIPTION ABNF::TREE-LIST-MATCH-ELEMENT-P))
 (22 22 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (22 22 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (22 22 (:REWRITE ABNF::TREE-LIST-MATCH-ELEMENT-P-WHEN-SUBSETP-EQUAL))
 (11 11 (:REWRITE ABNF::TREE-LIST-MATCH-ELEMENT-P-WHEN-NOT-CONSP))
 (4 4 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (4 4 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (2 2 (:REWRITE JAVA::ABNF-TREE-WITH-ROOT-P-WHEN-MEMBER-EQUAL-OF-ABNF-TREE-LIST-WITH-ROOT-P))
 (2 2 (:LINEAR INDEX-OF-<-LEN))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (1 1 (:REWRITE JAVA::GRAMMAR-DEC-DIGITP-SUFF))
 )
(JAVA::DEC-DIGIT-TREE
 (4 4 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (4 4 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (4 4 (:REWRITE ABNF::TREE-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE ABNF::TREE-LISTP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-LISTP))
 (4 4 (:REWRITE ABNF::TREE-LIST-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (3 3 (:REWRITE-QUOTED-CONSTANT NAT-LIST-FIX-UNDER-NAT-LIST-EQUIV))
 (2 2 (:REWRITE ABNF::TREE-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE ABNF::TREE-LIST-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 (2 2 (:REWRITE JAVA::ABNF-TREE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-LIST-FIX-UNDER-TREE-LIST-LIST-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-FIX-UNDER-TREE-LIST-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::MAYBE-RULENAME-FIX-UNDER-MAYBE-RULENAME-EQUIV))
 (1 1 (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 )
(JAVA::RETURN-TYPE-OF-DEC-DIGIT-TREE
 (34 34 (:REWRITE DEFAULT-<-2))
 (34 34 (:REWRITE DEFAULT-<-1))
 (33 32 (:REWRITE DEFAULT-CAR))
 (32 31 (:REWRITE DEFAULT-CDR))
 (30 5 (:REWRITE ABNF::TREEP-WHEN-MAYBE-TREEP))
 (24 24 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (22 22 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (22 22 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (19 19 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-LIST-FIX-UNDER-TREE-LIST-LIST-EQUIV))
 (19 19 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-FIX-UNDER-TREE-LIST-EQUIV))
 (18 2 (:REWRITE JAVA::DEC-DIGIT-FIX-WHEN-DEC-DIGITP))
 (17 17 (:REWRITE-QUOTED-CONSTANT ABNF::MAYBE-RULENAME-FIX-UNDER-MAYBE-RULENAME-EQUIV))
 (16 6 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-NOT-CONSP))
 (16 6 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-ATOM))
 (15 5 (:REWRITE ABNF::MAYBE-TREEP-WHEN-TREEP))
 (12 12 (:REWRITE-QUOTED-CONSTANT NAT-LIST-FIX-UNDER-NAT-LIST-EQUIV))
 (12 12 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-SUBSETP-EQUAL))
 (10 10 (:TYPE-PRESCRIPTION ABNF::MAYBE-TREEP))
 (10 10 (:REWRITE ABNF::TREE-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-TERMINATEDP))
 (8 8 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 (5 5 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (5 5 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (5 5 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (4 4 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-LIST-TERMINATEDP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (2 2 (:TYPE-PRESCRIPTION JAVA::DEC-DIGITP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::DEC-DIGIT-FIX))
 (2 2 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE ABNF::TREE-LIST-TERMINATEDP-WHEN-ATOM))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::ELEMENT-FIX-UNDER-ELEMENT-EQUIV))
 )
(JAVA::TREE->STRING-OF-DEC-DIGIT-TREE
 (14 4 (:REWRITE ABNF::TREE-LIST-LIST->STRING-WHEN-ATOM))
 (12 2 (:REWRITE ABNF::TREEP-WHEN-MAYBE-TREEP))
 (11 11 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-LIST-FIX-UNDER-TREE-LIST-LIST-EQUIV))
 (11 11 (:REWRITE-QUOTED-CONSTANT ABNF::TREE-LIST-FIX-UNDER-TREE-LIST-EQUIV))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (10 2 (:REWRITE JAVA::DEC-DIGIT-FIX-WHEN-DEC-DIGITP))
 (9 9 (:REWRITE-QUOTED-CONSTANT ABNF::MAYBE-RULENAME-FIX-UNDER-MAYBE-RULENAME-EQUIV))
 (8 8 (:TYPE-PRESCRIPTION ABNF::TREE-KIND$INLINE))
 (7 7 (:REWRITE-QUOTED-CONSTANT NAT-LIST-FIX-UNDER-NAT-LIST-EQUIV))
 (6 6 (:TYPE-PRESCRIPTION ABNF::TREE-NONLEAF->BRANCHES$INLINE))
 (6 6 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 (6 2 (:REWRITE ABNF::MAYBE-TREEP-WHEN-TREEP))
 (4 4 (:TYPE-PRESCRIPTION ABNF::MAYBE-TREEP))
 (2 2 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (2 2 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (2 2 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (1 1 (:TYPE-PRESCRIPTION JAVA::DEC-DIGITP))
 )
(JAVA::DEC-DIGIT-TREE-OF-DEC-DIGIT-FIX-DIGIT
 (18 18 (:TYPE-PRESCRIPTION JAVA::DEC-DIGIT-FIX))
 )
(JAVA::DEC-DIGIT-TREE-DEC-DIGIT-EQUIV-CONGRUENCE-ON-DIGIT)
(JAVA::GRAMMAR-DEC-DIGITP-WHEN-DEC-DIGITP)
(JAVA::LEMMA
 (9918 188 (:REWRITE ABNF::TREEP-OF-CAR-WHEN-TREE-LISTP))
 (5946 5433 (:REWRITE DEFAULT-CAR))
 (5889 5672 (:REWRITE DEFAULT-CDR))
 (5433 5433 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (5053 89 (:REWRITE ABNF::TREE-LISTP-OF-CAR-WHEN-TREE-LIST-LISTP))
 (3066 219 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (1533 219 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (905 905 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (905 905 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (905 905 (:REWRITE CONSP-BY-LEN))
 (785 263 (:REWRITE LEN-WHEN-ATOM))
 (784 56 (:REWRITE JAVA::DEC-DIGITP-OF-CAR-WHEN-DEC-DIGIT-LISTP))
 (606 606 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (606 606 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (606 606 (:LINEAR LEN-WHEN-PREFIXP))
 (460 460 (:REWRITE ABNF::TREE-LISTP-WHEN-SUBSETP-EQUAL))
 (460 460 (:REWRITE ABNF::TREE-LISTP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-LISTP))
 (440 40 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (438 438 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (438 219 (:REWRITE ABNF::SETP-WHEN-TREE-SETP))
 (438 219 (:REWRITE ABNF::SETP-WHEN-RULENAME-SETP))
 (438 219 (:REWRITE SET::SETP-WHEN-NAT-SETP))
 (438 219 (:REWRITE SET::SETP-WHEN-INTEGER-SETP))
 (438 219 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (400 400 (:REWRITE ABNF::TREEP-WHEN-MEMBER-EQUAL-OF-TREE-LISTP))
 (384 384 (:REWRITE ABNF::TREE-LIST-LISTP-WHEN-SUBSETP-EQUAL))
 (360 20 (:DEFINITION INTEGER-LISTP))
 (355 355 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (336 56 (:REWRITE JAVA::DEC-DIGIT-LISTP-WHEN-NOT-CONSP))
 (303 303 (:LINEAR INDEX-OF-<-LEN))
 (301 91 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (230 230 (:REWRITE JAVA::ABNF-TREE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (219 219 (:TYPE-PRESCRIPTION ABNF::TREE-SETP))
 (219 219 (:TYPE-PRESCRIPTION ABNF::RULENAME-SETP))
 (219 219 (:TYPE-PRESCRIPTION SET::NAT-SETP))
 (219 219 (:TYPE-PRESCRIPTION SET::INTEGER-SETP))
 (219 219 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (219 219 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (219 219 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (219 219 (:REWRITE JAVA::TRUE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (219 219 (:REWRITE SET::IN-SET))
 (203 203 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (203 203 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (203 203 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (200 20 (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
 (160 40 (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (132 22 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-OF-CAR-WHEN-TREE-LIST-MATCH-ELEMENT-P))
 (119 119 (:REWRITE ABNF::RULENAMEP-WHEN-IN-RULENAME-SETP-BINDS-FREE-X))
 (112 112 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 (112 112 (:REWRITE JAVA::DEC-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (91 91 (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (78 78 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-SUBSETP-EQUAL))
 (61 39 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-NOT-CONSP))
 (61 39 (:REWRITE ABNF::TREE-LIST-LIST-TERMINATEDP-WHEN-ATOM))
 (46 46 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (44 44 (:TYPE-PRESCRIPTION ABNF::TREE-LIST-MATCH-ELEMENT-P))
 (44 44 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (44 44 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (44 44 (:REWRITE ABNF::TREE-LIST-MATCH-ELEMENT-P-WHEN-SUBSETP-EQUAL))
 (40 20 (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (24 4 (:REWRITE ABNF::TREE-LIST-LIST-FIX-UNDER-IFF))
 (22 22 (:REWRITE ABNF::TREE-LIST-MATCH-ELEMENT-P-WHEN-NOT-CONSP))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (19 19 (:REWRITE ABNF::MAYBE-RULENAME-FIX-WHEN-NONE))
 (16 16 (:TYPE-PRESCRIPTION ABNF::TREE-LIST-LIST-FIX$INLINE))
 (14 14 (:REWRITE ABNF::TREE-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-TERMINATEDP))
 (14 7 (:REWRITE ABNF::TREE-LIST-LISTP-OF-CDR-WHEN-TREE-LIST-LISTP))
 (9 9 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (3 3 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT ABNF::ALTERNATION-FIX-UNDER-ALTERNATION-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT ABNF::ELEMENT-FIX-UNDER-ELEMENT-EQUIV))
 )
(JAVA::DEC-DIGITP-WHEN-GRAMMAR-DEC-DIGITP
 (30 3 (:REWRITE JAVA::DEC-DIGITP-OF-CAR-WHEN-DEC-DIGIT-LISTP))
 (12 3 (:REWRITE DEFAULT-CAR))
 (12 3 (:REWRITE JAVA::DEC-DIGIT-LISTP-WHEN-NOT-CONSP))
 (6 6 (:TYPE-PRESCRIPTION JAVA::DEC-DIGIT-LISTP))
 (6 6 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 (6 6 (:REWRITE JAVA::DEC-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (6 6 (:REWRITE JAVA::ABNF-TREE-WITH-ROOT-P-WHEN-MEMBER-EQUAL-OF-ABNF-TREE-LIST-WITH-ROOT-P))
 )
(JAVA::DEC-DIGITP-IS-GRAMMAR-DEC-DIGITP
 (2 2 (:REWRITE JAVA::DEC-DIGITP-WHEN-MEMBER-EQUAL-OF-DEC-DIGIT-LISTP))
 )
