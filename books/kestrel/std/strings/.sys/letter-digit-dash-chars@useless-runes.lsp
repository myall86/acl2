(STR::LETTER/DIGIT/DASH-CHAR-P)
(STR::BOOLEANP-OF-LETTER/DIGIT/DASH-CHAR-P)
(STR::CHARACTERP-WHEN-LETTER/DIGIT/DASH-CHAR-P)
(STR::MAKE-LETTER/DIGIT/DASH-CHARS)
(STR::LETTER/DIGIT/DASH-CHARS$INLINE)
(STR::CHARSET-P-OF-LETTER/DIGIT/DASH-CHARS)
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
(STR::CHAR-IN-CHARSET-P-OF-LETTER/DIGIT/DASH-CHARS
 (34 4 (:REWRITE STR::DEFAULT-CODE-CHAR))
 (22 4 (:REWRITE DEFAULT-CODE-CHAR))
 (16 2 (:REWRITE ZP-OPEN))
 (15 15 (:REWRITE DEFAULT-CHAR-CODE))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE STR::CHAR-IN-CHARSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-IN-CHARSET-P))
 )
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STR::LETTER/DIGIT/DASH-CHARLIST-P)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-CONS)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-CDR-WHEN-LETTER/DIGIT/DASH-CHARLIST-P)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-WHEN-NOT-CONSP)
(STR::LETTER/DIGIT/DASH-CHAR-P-OF-CAR-WHEN-LETTER/DIGIT/DASH-CHARLIST-P)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-APPEND)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-LIST-FIX)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-SFIX)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-INSERT)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-DELETE)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-MERGESORT)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-UNION)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-INTERSECT-1)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-INTERSECT-2)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-DIFFERENCE)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-DUPLICATED-MEMBERS)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-REV)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-RCONS)
(STR::LETTER/DIGIT/DASH-CHAR-P-WHEN-MEMBER-EQUAL-OF-LETTER/DIGIT/DASH-CHARLIST-P)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-WHEN-SUBSETP-EQUAL)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-SET-EQUIV-CONGRUENCE)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-SET-DIFFERENCE-EQUAL)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-INTERSECTION-EQUAL-1)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-INTERSECTION-EQUAL-2)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-UNION-EQUAL)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-TAKE)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-REPEAT)
(STR::LETTER/DIGIT/DASH-CHAR-P-OF-NTH-WHEN-LETTER/DIGIT/DASH-CHARLIST-P)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-UPDATE-NTH)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-BUTLAST)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-NTHCDR)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-LAST)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-REMOVE)
(STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-REVAPPEND)
(STR::CHARS-IN-CHARSET-P-OF-LETTER/DIGIT/DASH-CHARS
 (543 69 (:REWRITE STR::LETTER/DIGIT/DASH-CHARLIST-P-OF-CDR-WHEN-LETTER/DIGIT/DASH-CHARLIST-P))
 (461 45 (:REWRITE STR::LETTER/DIGIT/DASH-CHAR-P-OF-CAR-WHEN-LETTER/DIGIT/DASH-CHARLIST-P))
 (284 233 (:REWRITE STR::LETTER/DIGIT/DASH-CHARLIST-P-WHEN-SUBSETP-EQUAL))
 (172 94 (:REWRITE STR::LETTER/DIGIT/DASH-CHAR-P-WHEN-MEMBER-EQUAL-OF-LETTER/DIGIT/DASH-CHARLIST-P))
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
