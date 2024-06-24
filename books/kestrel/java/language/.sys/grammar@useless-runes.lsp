(JAVA::UNTRANSLATE-PREPROCESS-*GRAMMAR*)
(JAVA::RULELIST-WFP-OF-*GRAMMAR*)
(JAVA::RULELIST-CLOSEDP-OF-*GRAMMAR*)
(JAVA::UNICODE-ONLY-*GRAMMAR*
 (3558 3558 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (2175 1177 (:REWRITE INTEGERS-FROM-TO-NIL-WHEN-MIN>MAX))
 (1206 1206 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1206 1206 (:REWRITE ABNF::REPETITION-IN-TERMSET-P-WHEN-MEMBER-EQUAL-OF-CONCATENATION-IN-TERMSET-P))
 (900 900 (:REWRITE ABNF::CHARS-SENSITIVE-IN-TERMSET-P-WHEN-SUBSETP-EQUAL))
 (758 758 (:REWRITE ABNF::CHAR-SENSITIVE-IN-TERMSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-SENSITIVE-IN-TERMSET-P))
 (516 516 (:REWRITE ABNF::CHARS-INSENSITIVE-IN-TERMSET-P-WHEN-SUBSETP-EQUAL))
 (446 446 (:REWRITE ABNF::ALTERNATION-IN-TERMSET-P-WHEN-SUBSETP-EQUAL))
 (364 364 (:REWRITE ABNF::CONCATENATION-IN-TERMSET-P-WHEN-SUBSETP-EQUAL))
 (294 294 (:REWRITE ABNF::CHAR-INSENSITIVE-IN-TERMSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-INSENSITIVE-IN-TERMSET-P))
 (34 34 (:REWRITE SET::LIST-IN-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE ABNF::RULELIST-IN-TERMSET-P-WHEN-SUBSETP-EQUAL))
 )
(JAVA::ABNF-TREE-WITH-ROOT-P)
(JAVA::BOOLEANP-OF-ABNF-TREE-WITH-ROOT-P)
(JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P)
(JAVA::NOT-ABNF-TREE-WITH-ROOT-P-OF-NIL)
(JAVA::IN-OF-INTEGERS-FROM-0-TO-FFFF-REWRITE-TO-UNICODEP
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE INTEGERS-FROM-TO-NIL-WHEN-MIN>MAX))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 )
(JAVA::LIST-OF-INTEGERS-FROM-0-TO-FFFF-REWRITE-TO-UNICODE-LISTP
 (279 33 (:REWRITE JAVA::ISO8851-LISTP-WHEN-ASCII-LISTP))
 (210 33 (:REWRITE JAVA::UNICODE-LISTP-WHEN-ISO8851-LISTP))
 (160 10 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (146 146 (:REWRITE JAVA::ISO8851-LISTP-WHEN-SUBSETP-EQUAL))
 (107 73 (:REWRITE JAVA::ISO8851-LISTP-WHEN-NOT-CONSP))
 (88 6 (:REWRITE JAVA::UNICODE-LISTP-OF-CDR-WHEN-UNICODE-LISTP))
 (75 25 (:REWRITE INTEGERS-FROM-TO-NIL-WHEN-MIN>MAX))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (70 70 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (56 30 (:REWRITE JAVA::UNICODE-LISTP-WHEN-NOT-CONSP))
 (50 50 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (50 5 (:DEFINITION MEMBER-EQUAL))
 (49 14 (:REWRITE JAVA::ISO8851-LISTP-OF-CDR-WHEN-ISO8851-LISTP))
 (48 6 (:REWRITE JAVA::UNICODEP-WHEN-MEMBER-EQUAL-OF-UNICODE-LISTP))
 (38 2 (:REWRITE SUBSETP-OF-CONS))
 (30 5 (:REWRITE SET::LIST-IN-OF-CDR-WHEN-LIST-IN))
 (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (27 9 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (26 3 (:REWRITE JAVA::UNICODEP-WHEN-ISO8851P))
 (26 2 (:REWRITE JAVA::ISO8851-LISTP-OF-CONS))
 (24 24 (:REWRITE DEFAULT-CDR))
 (20 20 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (20 10 (:REWRITE ABNF::SETP-WHEN-TREE-SETP))
 (20 10 (:REWRITE ABNF::SETP-WHEN-RULENAME-SETP))
 (20 10 (:REWRITE SET::SETP-WHEN-NAT-SETP))
 (20 10 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (20 10 (:REWRITE SET::SETP-WHEN-INTEGER-SETP))
 (20 10 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (17 5 (:REWRITE JAVA::ISO8851P-WHEN-ASCIIP))
 (15 15 (:REWRITE SUBSETP-TRANS2))
 (15 15 (:REWRITE SUBSETP-TRANS))
 (10 10 (:TYPE-PRESCRIPTION ABNF::TREE-SETP))
 (10 10 (:TYPE-PRESCRIPTION ABNF::RULENAME-SETP))
 (10 10 (:TYPE-PRESCRIPTION SET::NAT-SETP))
 (10 10 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (10 10 (:TYPE-PRESCRIPTION SET::INTEGER-SETP))
 (10 10 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (10 10 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (10 10 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (10 10 (:REWRITE SUBSETP-MEMBER . 2))
 (10 10 (:REWRITE SUBSETP-MEMBER . 1))
 (10 10 (:REWRITE JAVA::ISO8851P-WHEN-MEMBER-EQUAL-OF-ISO8851-LISTP))
 (10 10 (:REWRITE SET::IN-SET))
 (9 9 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:TYPE-PRESCRIPTION JAVA::ISO8851P))
 (6 6 (:TYPE-PRESCRIPTION JAVA::ASCIIP))
 (6 6 (:REWRITE JAVA::ASCIIP-WHEN-MEMBER-EQUAL-OF-ASCII-LISTP))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(JAVA::ABNF-STRING-PARSABLEP-WHEN-TREE-WITH-ROOT-P
 (33 1 (:REWRITE ABNF::PARSE-TREEP-WHEN-STRING-UNAMBIGUOUSP))
 (19 3 (:REWRITE ABNF::STRING-UNAMBIGUOUSP-WHEN-PARSE-ONE))
 (14 3 (:REWRITE ABNF::STRING-UNAMBIGUOUSP-WHEN-STRING-HAS-FINITE-PARSE-TREES-P-ONE))
 (10 10 (:TYPE-PRESCRIPTION ABNF::STRING-UNAMBIGUOUSP))
 (9 2 (:REWRITE SET::INSERT-IDENTITY))
 (8 2 (:REWRITE ABNF::PARSE-WHEN-STRING-UNAMBIGUOUSP))
 (8 2 (:REWRITE ABNF::PARSE-IS-PARSE!-WHEN-STRING-UNAMBIGUOUSP))
 (4 4 (:TYPE-PRESCRIPTION SET::INSERT))
 (3 3 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (3 3 (:REWRITE ABNF::STRING-UNAMBIGUOUSP-WHEN-PARSE-TREES-OF-STRING-P-OF-ONE))
 (2 2 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (2 2 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (2 2 (:REWRITE SET::INSERT-WHEN-EMPTY))
 (2 2 (:REWRITE SET::IN-WHEN-MEMBER-EQUAL-OF-LIST-IN))
 (2 1 (:REWRITE ABNF::STRING-HAS-FINITE-PARSE-TREES-P-WITNESS-WHEN-STRING-UNAMBIGUOUSP))
 (2 1 (:REWRITE ABNF::STRING-HAS-FINITE-PARSE-TREES-P-WHEN-STRING-UNAMBIGUOUSP))
 (2 1 (:REWRITE SET::IN-TAIL))
 (1 1 (:TYPE-PRESCRIPTION ABNF::STRING-HAS-FINITE-PARSE-TREES-P))
 (1 1 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (1 1 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (1 1 (:REWRITE ABNF::STRING-HAS-FINITE-PARSE-TREES-P-WITNESS-WHEN-NOT-STRING-PARSABLEP))
 (1 1 (:REWRITE ABNF::STRING-HAS-FINITE-PARSE-TREES-P-WHEN-NOT-STRING-PARSABLEP))
 (1 1 (:REWRITE ABNF::PARSE-TREES-OF-STRING-P-NECC))
 (1 1 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 )
(JAVA::ABNF-TERMINAL-STRING-FOR-RULES-P-WHEN-TREE-WITH-ROOT-P
 (3 1 (:REWRITE ABNF::NAT-LISTP-OF-TREE->STRING-WHEN-MATCH-ELEMENT-NUM/CHAR-VAL))
 (2 2 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (2 2 (:REWRITE ABNF::TREE-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-TERMINATEDP))
 (2 2 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (1 1 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (1 1 (:REWRITE ABNF::RETURN-TYPE-OF-ELEMENT-RULENAME))
 (1 1 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 )
(JAVA::UNICODE-LISTP-OF-STRING-OF-ABNF-TREE-WITH-ROOT
 (10 1 (:REWRITE JAVA::ISO8851-LISTP-WHEN-ASCII-LISTP))
 (7 1 (:REWRITE JAVA::UNICODE-LISTP-WHEN-ISO8851-LISTP))
 (5 2 (:REWRITE JAVA::ISO8851-LISTP-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::ISO8851-LISTP))
 (4 4 (:REWRITE JAVA::ISO8851-LISTP-WHEN-SUBSETP-EQUAL))
 (4 1 (:REWRITE JAVA::UNICODE-LISTP-WHEN-NOT-CONSP))
 (3 1 (:REWRITE INTEGERS-FROM-TO-NIL-WHEN-MIN>MAX))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (2 2 (:REWRITE JAVA::UNICODE-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(JAVA::ABNF-TREE-WITH-ROOT-P-OF-STR-FIX-RULENAME
 (26 4 (:REWRITE ABNF::TREEP-WHEN-TREE-OPTIONP))
 (20 2 (:REWRITE ABNF::TREE-OPTIONP-WHEN-TREEP))
 (8 8 (:REWRITE ABNF::TREEP-WHEN-MEMBER-EQUAL-OF-TREE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION ABNF::TREE-OPTIONP))
 (4 4 (:TYPE-PRESCRIPTION ABNF::TREEP))
 (4 4 (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
 (4 4 (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X))
 (4 4 (:REWRITE ABNF::TREE-TERMINATEDP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-TERMINATEDP))
 (4 4 (:REWRITE ABNF::TREE-MATCH-ELEMENT-P-WHEN-MEMBER-EQUAL-OF-TREE-LIST-MATCH-ELEMENT-P))
 (4 4 (:REWRITE JAVA::ABNF-TREEP-WHEN-ABNF-TREE-WITH-ROOT-P))
 (2 2 (:REWRITE-QUOTED-CONSTANT ABNF::RULELIST-FIX-UNDER-RULELIST-EQUIV))
 (1 1 (:REWRITE STR-FIX-WHEN-STRINGP))
 (1 1 (:REWRITE STR-FIX-DEFAULT))
 )
(JAVA::ABNF-TREE-WITH-ROOT-P-STREQV-CONGRUENCE-ON-RULENAME)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-CONS)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-CDR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-WHEN-NOT-CONSP)
(JAVA::ABNF-TREE-WITH-ROOT-P-OF-CAR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::TRUE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-LIST-FIX)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-SFIX)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-INSERT)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-DELETE)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-MERGESORT)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-UNION)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-INTERSECT-1)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-INTERSECT-2)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-DIFFERENCE)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-DUPLICATED-MEMBERS)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-REV)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-APPEND)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-RCONS)
(JAVA::ABNF-TREE-WITH-ROOT-P-WHEN-MEMBER-EQUAL-OF-ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-WHEN-SUBSETP-EQUAL)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-SET-DIFFERENCE-EQUAL)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-INTERSECTION-EQUAL-1)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-INTERSECTION-EQUAL-2)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-UNION-EQUAL)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-TAKE)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-REPEAT)
(JAVA::ABNF-TREE-WITH-ROOT-P-OF-NTH-WHEN-ABNF-TREE-LIST-WITH-ROOT-P)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-UPDATE-NTH)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-BUTLAST)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-NTHCDR)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-LAST)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-REMOVE)
(JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-REVAPPEND)
(JAVA::ABNF-TREE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P
 (191 19 (:REWRITE JAVA::ABNF-TREE-WITH-ROOT-P-OF-CAR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (185 19 (:REWRITE JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-CDR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (126 88 (:REWRITE JAVA::ABNF-TREE-LIST-WITH-ROOT-P-WHEN-SUBSETP-EQUAL))
 (58 4 (:DEFINITION MEMBER-EQUAL))
 (44 44 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (44 44 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (29 11 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (28 28 (:REWRITE ABNF::TREE-LISTP-WHEN-MEMBER-EQUAL-OF-TREE-LIST-LISTP))
 (25 13 (:REWRITE ABNF::TREE-LISTP-WHEN-NOT-CONSP))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (21 3 (:REWRITE ABNF::TREE-LISTP-OF-CDR-WHEN-TREE-LISTP))
 (19 19 (:REWRITE SUBSETP-TRANS2))
 (19 19 (:REWRITE SUBSETP-TRANS))
 (19 1 (:REWRITE SUBSETP-OF-CONS))
 (18 2 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (11 11 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:DEFINITION NULL))
 )
(JAVA::UNICODE-LISTP-OF-STRING-OF-ABNF-TREE-LIST-WITH-ROOT
 (193 19 (:REWRITE JAVA::ABNF-TREE-WITH-ROOT-P-OF-CAR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (187 19 (:REWRITE JAVA::ABNF-TREE-LIST-WITH-ROOT-P-OF-CDR-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 (182 11 (:REWRITE JAVA::ISO8851-LISTP-WHEN-ASCII-LISTP))
 (132 11 (:REWRITE JAVA::UNICODE-LISTP-WHEN-ISO8851-LISTP))
 (128 88 (:REWRITE JAVA::ABNF-TREE-LIST-WITH-ROOT-P-WHEN-SUBSETP-EQUAL))
 (82 24 (:REWRITE JAVA::ISO8851-LISTP-WHEN-NOT-CONSP))
 (80 52 (:REWRITE JAVA::ISO8851-LISTP-WHEN-SUBSETP-EQUAL))
 (79 79 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (79 79 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (71 2 (:REWRITE JAVA::ISO8851-LISTP-OF-APPEND))
 (57 16 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (54 9 (:REWRITE JAVA::UNICODE-LISTP-WHEN-NOT-CONSP))
 (48 16 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (48 3 (:DEFINITION MEMBER-EQUAL))
 (40 1 (:REWRITE SUBSETP-APPEND1))
 (37 23 (:REWRITE SUBSETP-TRANS2))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (24 10 (:REWRITE ABNF::TREE-LIST->STRING-WHEN-ATOM))
 (23 23 (:REWRITE SUBSETP-TRANS))
 (18 2 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (10 1 (:DEFINITION BINARY-APPEND))
 (9 2 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (7 7 (:DEFINITION NULL))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE JAVA::TRUE-LISTP-WHEN-ABNF-TREE-LIST-WITH-ROOT-P))
 )
