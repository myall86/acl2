(STR::UCLETTER/DIGIT-CHAR-P)
(STR::BOOLEANP-OF-UCLETTER/DIGIT-CHAR-P)
(STR::CHARACTERP-WHEN-UCLETTER/DIGIT-CHAR-P)
(STR::MAKE-UCLETTER/DIGIT-CHARS)
(STR::UCLETTER/DIGIT-CHARS$INLINE)
(STR::CHARSET-P-OF-UCLETTER/DIGIT-CHARS)
(STR::DEFCHARSET-TESTER)
(STR::DEFCHARSET-LEMMA1
 (55 14 (:REWRITE STR::DEFAULT-CODE-CHAR))
 (46 14 (:REWRITE DEFAULT-CODE-CHAR))
 (38 38 (:REWRITE DEFAULT-<-2))
 (38 38 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE STR::CHAR-IN-CHARSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-IN-CHARSET-P))
 (14 7 (:REWRITE STR::CHAR-IN-CHARSET-P-WHEN-NOT-CHARACTER))
 (4 4 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(STR::DEFCHARSET-LEMMA2)
(STR::CHAR-IN-CHARSET-P-OF-UCLETTER/DIGIT-CHARS
 (34 4 (:REWRITE STR::DEFAULT-CODE-CHAR))
 (22 4 (:REWRITE DEFAULT-CODE-CHAR))
 (16 2 (:REWRITE ZP-OPEN))
 (15 15 (:REWRITE DEFAULT-CHAR-CODE))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE STR::CHAR-IN-CHARSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-IN-CHARSET-P))
 )
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STR::UCLETTER/DIGIT-CHARLIST-P)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-CONS)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-CDR-WHEN-UCLETTER/DIGIT-CHARLIST-P)
(STR::UCLETTER/DIGIT-CHARLIST-P-WHEN-NOT-CONSP)
(STR::UCLETTER/DIGIT-CHAR-P-OF-CAR-WHEN-UCLETTER/DIGIT-CHARLIST-P)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-APPEND)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-LIST-FIX)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-SFIX)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-INSERT)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-DELETE)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-MERGESORT)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-UNION)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-INTERSECT-1)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-INTERSECT-2)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-DIFFERENCE)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-DUPLICATED-MEMBERS)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-REV)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-RCONS)
(STR::UCLETTER/DIGIT-CHAR-P-WHEN-MEMBER-EQUAL-OF-UCLETTER/DIGIT-CHARLIST-P)
(STR::UCLETTER/DIGIT-CHARLIST-P-WHEN-SUBSETP-EQUAL)
(STR::UCLETTER/DIGIT-CHARLIST-P-SET-EQUIV-CONGRUENCE)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-SET-DIFFERENCE-EQUAL)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-INTERSECTION-EQUAL-1)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-INTERSECTION-EQUAL-2)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-UNION-EQUAL)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-TAKE)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-REPEAT)
(STR::UCLETTER/DIGIT-CHAR-P-OF-NTH-WHEN-UCLETTER/DIGIT-CHARLIST-P)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-UPDATE-NTH)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-BUTLAST)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-NTHCDR)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-LAST)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-REMOVE)
(STR::UCLETTER/DIGIT-CHARLIST-P-OF-REVAPPEND)
(STR::CHARS-IN-CHARSET-P-OF-UCLETTER/DIGIT-CHARS
 (543 69 (:REWRITE STR::UCLETTER/DIGIT-CHARLIST-P-OF-CDR-WHEN-UCLETTER/DIGIT-CHARLIST-P))
 (461 45 (:REWRITE STR::UCLETTER/DIGIT-CHAR-P-OF-CAR-WHEN-UCLETTER/DIGIT-CHARLIST-P))
 (284 233 (:REWRITE STR::UCLETTER/DIGIT-CHARLIST-P-WHEN-SUBSETP-EQUAL))
 (172 94 (:REWRITE STR::UCLETTER/DIGIT-CHAR-P-WHEN-MEMBER-EQUAL-OF-UCLETTER/DIGIT-CHARLIST-P))
 (63 63 (:REWRITE DEFAULT-CDR))
 (45 45 (:REWRITE DEFAULT-CAR))
 (45 3 (:DEFINITION MEMBER-EQUAL))
 (42 6 (:REWRITE SUBSETP-CAR-MEMBER))
 (21 3 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (18 3 (:REWRITE STR::CHARS-IN-CHARSET-P-OF-CDR-WHEN-CHARS-IN-CHARSET-P))
 (15 15 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (15 15 (:REWRITE SUBSETP-TRANS2))
 (15 15 (:REWRITE SUBSETP-TRANS))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE SUBSETP-REFL))
 )
