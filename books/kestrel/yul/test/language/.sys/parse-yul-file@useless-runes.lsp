(YUL::PARSE-YUL-FILE)
(YUL::PARSE-YUL-FILEX)
(YUL::BLOCK-RESULTP-OF-PARSE-YUL-FILEX.YUL-PROG
 (13 3 (:REWRITE FTY::RESULTERRP-WHEN-RESULTERR-OPTIONP))
 (8 1 (:REWRITE YUL::BLOCK-RESULTP-WHEN-RESULTERRP))
 (8 1 (:REWRITE YUL::BLOCK-RESULTP-WHEN-BLOCKP))
 (7 2 (:REWRITE FTY::RESULTERR-OPTIONP-WHEN-RESULTERRP))
 (5 5 (:TYPE-PRESCRIPTION FTY::RESULTERRP))
 (5 5 (:TYPE-PRESCRIPTION FTY::RESULTERR-OPTIONP))
 (5 5 (:REWRITE-QUOTED-CONSTANT SYMBOL-LIST-FIX-UNDER-SYMBOL-LIST-EQUIV))
 (5 1 (:REWRITE YUL::BLOCKP-WHEN-BLOCK-OPTIONP))
 (3 3 (:TYPE-PRESCRIPTION YUL::BLOCKP))
 (2 2 (:TYPE-PRESCRIPTION YUL::BLOCK-OPTIONP))
 (2 1 (:REWRITE YUL::BLOCK-OPTIONP-WHEN-BLOCKP))
 (1 1 (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (1 1 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 1))
 (1 1 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 1))
 )
(YUL::PARSE-YUL-FILES
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(YUL::REMOVE-EMPTY-STRINGS
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (3 3 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (3 3 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 2))
 (3 3 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 1))
 (3 3 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 2))
 (3 3 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 1))
 )
(YUL::STRING-LISTP-OF-REMOVE-EMPTY-STRINGS
 (58 57 (:REWRITE DEFAULT-CAR))
 (53 52 (:REWRITE DEFAULT-CDR))
 (52 52 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (52 52 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (52 52 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 2))
 (52 52 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-REPETITION-SYMBOL-ALISTP . 1))
 (52 52 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 2))
 (52 52 (:REWRITE ABNF::CONSP-WHEN-MEMBER-EQUAL-OF-ALTERNATION-SYMBOL-ALISTP . 1))
 )
(YUL::PARSE-YUL-FILES-FROM-LIST)
(YUL::PARSE-YUL-OPTIMIZER-PAIR)
(YUL::BLOCK-RESULTP-OF-PARSE-YUL-OPTIMIZER-PAIR.IN-PROG)
(YUL::BLOCK-RESULTP-OF-PARSE-YUL-OPTIMIZER-PAIR.OUT-PROG)
