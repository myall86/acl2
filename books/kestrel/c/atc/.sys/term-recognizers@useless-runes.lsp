(C::ATC-BOOLEAN-FROM-TYPE-FNS-GEN)
(C::ATC-TYPE-BASE-CONST-FNS-GEN-AUX)
(C::ATC-TYPE-BASE-CONST-FNS-GEN)
(C::ATC-OP-TYPE-FNS-GEN-AUX)
(C::ATC-OP-TYPE-FNS-GEN)
(C::ATC-OP-TYPE1-TYPE2-FNS-GEN-AUX-AUX)
(C::ATC-OP-TYPE1-TYPE2-FNS-GEN-AUX)
(C::ATC-OP-TYPE1-TYPE2-FNS-GEN)
(C::ATC-TYPE1-FROM-TYPE2-FNS-GEN-AUX)
(C::ATC-TYPE1-FROM-TYPE2-FNS-GEN)
(C::ATC-BOOLEAN-TERMP)
(C::BOOLEANP-OF-ATC-BOOLEAN-TERMP)
(C::ATC-PURE-C-VALUED-TERMP)
(C::BOOLEANP-OF-ATC-PURE-C-VALUED-TERMP)
(C::ATC-C-VALUED-TERMP)
(C::BOOLEANP-OF-ATC-C-VALUED-TERMP)
(C::ATC-STMT-NONCVAL-TERMP
 (364 26 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (227 26 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (220 13 (:DEFINITION TRUE-LISTP))
 (216 18 (:DEFINITION SYMBOL-LISTP))
 (196 8 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (180 4 (:DEFINITION TRUE-LIST-LISTP))
 (119 119 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (103 103 (:REWRITE DEFAULT-CAR))
 (97 97 (:REWRITE DEFAULT-CDR))
 (96 21 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (60 12 (:DEFINITION LEN))
 (52 52 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (52 26 (:REWRITE C::SETP-WHEN-TYPE-SETP))
 (52 26 (:REWRITE C::SETP-WHEN-TYPE-OPTION-SETP))
 (52 26 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (52 26 (:REWRITE C::SETP-WHEN-IDENT-SETP))
 (52 26 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (44 44 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (28 28 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (26 26 (:TYPE-PRESCRIPTION C::TYPE-SETP))
 (26 26 (:TYPE-PRESCRIPTION C::TYPE-OPTION-SETP))
 (26 26 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (26 26 (:TYPE-PRESCRIPTION C::IDENT-SETP))
 (26 26 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (26 26 (:REWRITE SET::IN-SET))
 (24 12 (:REWRITE DEFAULT-+-2))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 8 (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (8 4 (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (5 5 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(C::BOOLEANP-OF-ATC-STMT-NONCVAL-TERMP)
