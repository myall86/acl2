(ALPHA/USCORE/DOLLAR-CHAR-P)
(BOOLEANP-OF-ALPHA/USCORE/DOLLAR-CHAR-P)
(CHARACTERP-WHEN-ALPHA/USCORE/DOLLAR-CHAR-P)
(MAKE-ALPHA/USCORE/DOLLAR-CHARS)
(ALPHA/USCORE/DOLLAR-CHARS$INLINE)
(CHARSET-P-OF-ALPHA/USCORE/DOLLAR-CHARS)
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
(CHAR-IN-CHARSET-P-OF-ALPHA/USCORE/DOLLAR-CHARS
 (34 4 (:REWRITE STR::DEFAULT-CODE-CHAR))
 (22 4 (:REWRITE DEFAULT-CODE-CHAR))
 (16 2 (:REWRITE ZP-OPEN))
 (15 15 (:REWRITE DEFAULT-CHAR-CODE))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE STR::CHAR-IN-CHARSET-P-WHEN-MEMBER-EQUAL-OF-CHARS-IN-CHARSET-P))
 )
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(ALPHA/USCORE/DOLLAR-CHARLIST-P)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-CONS)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-CDR-WHEN-ALPHA/USCORE/DOLLAR-CHARLIST-P)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-WHEN-NOT-CONSP)
(ALPHA/USCORE/DOLLAR-CHAR-P-OF-CAR-WHEN-ALPHA/USCORE/DOLLAR-CHARLIST-P)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-APPEND)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-LIST-FIX)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-SFIX)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-INSERT)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-DELETE)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-MERGESORT)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-UNION)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-INTERSECT-1)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-INTERSECT-2)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-DIFFERENCE)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-DUPLICATED-MEMBERS)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-REV)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-RCONS)
(ALPHA/USCORE/DOLLAR-CHAR-P-WHEN-MEMBER-EQUAL-OF-ALPHA/USCORE/DOLLAR-CHARLIST-P)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-WHEN-SUBSETP-EQUAL)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-SET-EQUIV-CONGRUENCE)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-SET-DIFFERENCE-EQUAL)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-INTERSECTION-EQUAL-1)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-INTERSECTION-EQUAL-2)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-UNION-EQUAL)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-TAKE)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-REPEAT)
(ALPHA/USCORE/DOLLAR-CHAR-P-OF-NTH-WHEN-ALPHA/USCORE/DOLLAR-CHARLIST-P)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-UPDATE-NTH)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-BUTLAST)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-NTHCDR)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-LAST)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-REMOVE)
(ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-REVAPPEND)
(CHARS-IN-CHARSET-P-OF-ALPHA/USCORE/DOLLAR-CHARS
 (543 69 (:REWRITE ALPHA/USCORE/DOLLAR-CHARLIST-P-OF-CDR-WHEN-ALPHA/USCORE/DOLLAR-CHARLIST-P))
 (461 45 (:REWRITE ALPHA/USCORE/DOLLAR-CHAR-P-OF-CAR-WHEN-ALPHA/USCORE/DOLLAR-CHARLIST-P))
 (284 233 (:REWRITE ALPHA/USCORE/DOLLAR-CHARLIST-P-WHEN-SUBSETP-EQUAL))
 (172 94 (:REWRITE ALPHA/USCORE/DOLLAR-CHAR-P-WHEN-MEMBER-EQUAL-OF-ALPHA/USCORE/DOLLAR-CHARLIST-P))
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
