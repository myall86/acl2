(SETP-OF-INTEGERS-FROM-TO
 (1385 305 (:REWRITE <<-IMPLIES-LEXORDER))
 (1159 305 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (1037 183 (:REWRITE SYMBOL-<-ASYMMETRIC))
 (773 773 (:TYPE-PRESCRIPTION SYMBOL-<))
 (737 737 (:REWRITE DEFAULT-<-2))
 (631 61 (:DEFINITION STRING<=))
 (585 427 (:REWRITE DEFAULT-CAR))
 (529 61 (:DEFINITION LENGTH))
 (422 361 (:REWRITE DEFAULT-+-2))
 (384 384 (:TYPE-PRESCRIPTION LEXORDER))
 (368 349 (:REWRITE DEFAULT-CDR))
 (361 361 (:REWRITE DEFAULT-+-1))
 (346 61 (:DEFINITION LEN))
 (305 305 (:REWRITE SYMBOL-<-TRANSITIVE))
 (281 281 (:REWRITE <<-TRANSITIVE))
 (241 241 (:REWRITE LEXORDER-TRANSITIVE))
 (232 232 (:REWRITE DEFAULT-REALPART))
 (222 74 (:REWRITE SET::SETP-WHEN-NAT-SETP))
 (222 74 (:REWRITE SET::SETP-WHEN-INTEGER-SETP))
 (222 74 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (204 204 (:REWRITE DEFAULT-CHAR-CODE))
 (164 82 (:LINEAR CHAR-CODE-LINEAR))
 (163 163 (:TYPE-PRESCRIPTION STRING<))
 (148 148 (:TYPE-PRESCRIPTION SET::NAT-SETP))
 (148 148 (:TYPE-PRESCRIPTION SET::INTEGER-SETP))
 (148 148 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (142 142 (:TYPE-PRESCRIPTION LEN))
 (122 122 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (116 116 (:REWRITE DEFAULT-IMAGPART))
 (88 88 (:REWRITE ALPHORDER-TRANSITIVE))
 (74 74 (:REWRITE SET::IN-SET))
 (61 61 (:REWRITE DEFAULT-COERCE-2))
 (61 61 (:REWRITE DEFAULT-COERCE-1))
 (61 61 (:REWRITE BAD-ATOM<=-TRANSITIVE))
 (41 41 (:TYPE-PRESCRIPTION BOOLEANP-BAD-ATOM<=))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(IN-OF-INTEGERS-FROM-TO
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (7 1 (:REWRITE INTEGERS-FROM-TO-NIL-WHEN-MIN>MAX))
 (4 1 (:REWRITE MEMBER-WHEN-ATOM))
 (1 1 (:REWRITE SUBSETP-MEMBER . 4))
 (1 1 (:REWRITE SUBSETP-MEMBER . 3))
 (1 1 (:REWRITE SUBSETP-MEMBER . 2))
 (1 1 (:REWRITE SUBSETP-MEMBER . 1))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(INTEGERS-FROM-TO-LIST-IN-INTEGERS-FROM-TO
 (128 128 (:REWRITE DEFAULT-<-2))
 (128 128 (:REWRITE DEFAULT-<-1))
 (34 34 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-+-1))
 (33 33 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-INTEGERS-FROM-TO))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (8 1 (:REWRITE SUBSETP-OF-CONS))
 (5 1 (:REWRITE MEMBER-OF-INTEGERS-FROM-TO))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE SUBSETP-MEMBER . 2))
 (1 1 (:REWRITE SUBSETP-MEMBER . 1))
 )
