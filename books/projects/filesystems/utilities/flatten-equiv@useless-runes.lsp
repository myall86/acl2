(TRUE-LIST-LIST-FIX-OF-TRUE-LIST-FIX
 (2678 48 (:DEFINITION TRUE-LIST-LISTP))
 (2344 14
       (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
 (1670 213
       (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
 (1505 107 (:DEFINITION TRUE-LISTP))
 (1173 25 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (1095 183 (:DEFINITION STRING-LISTP))
 (908 908 (:TYPE-PRESCRIPTION STRING-LISTP))
 (754 70
      (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (747 16
      (:REWRITE TRUE-LIST-LISTP-OF-LIST-FIX))
 (681 79
      (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (469 469 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (462 24
      (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (391 391 (:REWRITE DEFAULT-CDR))
 (247 247 (:REWRITE DEFAULT-CAR))
 (186 137
      (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (52 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (23 23 (:LINEAR POSITION-WHEN-MEMBER))
 (23 23
     (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (11 11
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (6
  6
  (:REWRITE
    CDR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-TRUE-LIST-LIST-EQUIV)))
(SET-EQUIV-IMPLIES-EQUAL-NOT-INTERSECTP-LIST-2
     (144 12
          (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
     (88 11 (:DEFINITION MEMBER-EQUAL))
     (55 55 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (22 22 (:REWRITE SUBSETP-MEMBER . 2))
     (22 22 (:REWRITE SUBSETP-MEMBER . 1))
     (11 11 (:REWRITE DEFAULT-CDR))
     (11 11 (:REWRITE DEFAULT-CAR))
     (5 5
        (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
     (5 5
        (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
     (5 5
        (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
                  . 1))
     (5 5
        (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
     (5 5
        (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP)))
(FLATTEN-EQUIV)
(FLATTEN-EQUIV-IS-AN-EQUIVALENCE-LEMMA-1
  (1617 87 (:DEFINITION MEMBER-EQUAL))
  (1139 121 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
  (937 37 (:DEFINITION NO-DUPLICATESP-EQUAL))
  (605 5 (:DEFINITION INTERSECTP-EQUAL))
  (240 238 (:REWRITE DEFAULT-CDR))
  (216 214 (:REWRITE DEFAULT-CAR))
  (198 28
       (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
  (191 15
       (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
  (189 189
       (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
  (189 189 (:REWRITE SUBSETP-MEMBER . 2))
  (189 189 (:REWRITE SUBSETP-MEMBER . 1))
  (127 22 (:DEFINITION STRING-LISTP))
  (123 123 (:REWRITE INTERSECTP-MEMBER . 3))
  (123 123 (:REWRITE INTERSECTP-MEMBER . 2))
  (111 111 (:REWRITE SUBSETP-MEMBER . 4))
  (111 111 (:REWRITE SUBSETP-MEMBER . 3))
  (106 106 (:TYPE-PRESCRIPTION STRING-LISTP))
  (105 10 (:REWRITE INTERSECTP-WHEN-SUBSETP))
  (93 93 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
  (93 93 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
  (93 93 (:REWRITE SUBSETP-TRANS2))
  (93 93 (:REWRITE SUBSETP-TRANS))
  (35 5
      (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
  (35 1 (:REWRITE MEMBER-OF-CONS))
  (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
  (15 3
      (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
  (10 10
      (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
  (10 10
      (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
  (10 10
      (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
                . 1))
  (10 10
      (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
  (10 10
      (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
  (10 10 (:REWRITE INTERSECTP-MEMBER . 1))
  (10 10
      (:REWRITE INTERSECT-WITH-SUBSET . 12))
  (10 10
      (:REWRITE INTERSECT-WITH-SUBSET . 11))
  (10 10
      (:REWRITE INTERSECT-WITH-SUBSET . 10))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 9))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 8))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 7))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 6))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 5))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 4))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 3))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 2))
  (10 10 (:REWRITE INTERSECT-WITH-SUBSET . 1))
  (10 10
      (:REWRITE FLATTEN-SUBSET-NO-DUPLICATESP-LEMMA-2))
  (9 9
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (1 1
     (:REWRITE CAR-OF-BOOLEAN-LIST-FIX-X-NORMALIZE-CONST-UNDER-IFF)))
(FLATTEN-EQUIV-IS-AN-EQUIVALENCE)
(FLATTEN-EQUIV-IMPLIES-EQUAL-NOT-INTERSECTP-LIST-2-LEMMA-1
 (2657 139 (:DEFINITION MEMBER-EQUAL))
 (2641 70 (:DEFINITION TRUE-LIST-LISTP))
 (2163 20 (:DEFINITION INTERSECTP-EQUAL))
 (1751 15 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (1702 218
       (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
 (1507 45 (:REWRITE REMOVE-WHEN-ABSENT))
 (1491 19
       (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
 (1487 112 (:DEFINITION TRUE-LISTP))
 (1466 112
       (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (1322 113
       (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (1125 154 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
 (1110 190 (:DEFINITION STRING-LISTP))
 (926 926 (:TYPE-PRESCRIPTION STRING-LISTP))
 (884 34 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (773 692 (:REWRITE DEFAULT-CDR))
 (691 541 (:REWRITE DEFAULT-CAR))
 (561 31
      (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
 (513 4 (:REWRITE SUBSETP-OF-REMOVE1))
 (450 450 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (384 154 (:REWRITE SUBSETP-MEMBER . 4))
 (367 293 (:REWRITE SUBSETP-MEMBER . 2))
 (363 12 (:REWRITE MEMBER-OF-REMOVE))
 (337 5 (:REWRITE MEMBER-OF-CONS))
 (293 293 (:REWRITE SUBSETP-MEMBER . 1))
 (285 15
      (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (271 157 (:REWRITE MEMBER-WHEN-ATOM))
 (220 179 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (210 15 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (189 189
      (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
 (164 164 (:REWRITE SUBSETP-TRANS2))
 (164 164 (:REWRITE SUBSETP-TRANS))
 (159 159 (:REWRITE INTERSECTP-MEMBER . 3))
 (159 159 (:REWRITE INTERSECTP-MEMBER . 2))
 (156 155
      (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (154 154 (:REWRITE SUBSETP-MEMBER . 3))
 (148 148
      (:REWRITE CONSP-OF-TRUE-LIST-LIST-FIX))
 (135 1 (:REWRITE SUBSETP-CONS-2))
 (128 20
      (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (75 15 (:DEFINITION LEN))
 (46 46 (:REWRITE INTERSECTP-MEMBER . 1))
 (46 46
     (:REWRITE FLATTEN-SUBSET-NO-DUPLICATESP-LEMMA-2))
 (46 46
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (43 43
     (:REWRITE INTERSECT-WITH-SUBSET . 11))
 (43 43
     (:REWRITE INTERSECT-WITH-SUBSET . 10))
 (43 43 (:REWRITE INTERSECT-WITH-SUBSET . 9))
 (43 43 (:REWRITE INTERSECT-WITH-SUBSET . 8))
 (43 43 (:REWRITE INTERSECT-WITH-SUBSET . 7))
 (43 43 (:REWRITE INTERSECT-WITH-SUBSET . 6))
 (41 41 (:REWRITE INTERSECT-WITH-SUBSET . 4))
 (41 41 (:REWRITE INTERSECT-WITH-SUBSET . 3))
 (41 41 (:REWRITE INTERSECT-WITH-SUBSET . 2))
 (41 41 (:REWRITE INTERSECT-WITH-SUBSET . 1))
 (35 35
     (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
 (31 31
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 2))
 (31 31
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
 (30 30
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
 (30 30
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
 (30 30
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
 (30 30
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
 (30 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 15 (:LINEAR POSITION-WHEN-MEMBER))
 (15 15
     (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (14
  14
  (:REWRITE
     CDR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-TRUE-LIST-LIST-EQUIV))
 (14 1 (:REWRITE EQUAL-OF-LIST-FIX-AND-SELF))
 (8 8
    (:REWRITE CAR-OF-BOOLEAN-LIST-FIX-X-NORMALIZE-CONST-UNDER-IFF))
 (7 7 (:REWRITE CONSP-OF-LIST-FIX))
 (6 2 (:REWRITE CDR-OF-LIST-FIX))
 (4 2 (:REWRITE CAR-OF-LIST-FIX)))
(FLATTEN-EQUIV-IMPLIES-EQUAL-NOT-INTERSECTP-LIST-2
     (97 3 (:REWRITE REMOVE-WHEN-ABSENT))
     (85 5 (:DEFINITION MEMBER-EQUAL))
     (41 2
         (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
     (39 1
         (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
     (35 1 (:DEFINITION TRUE-LIST-LISTP))
     (26 26 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (26 1 (:REWRITE MEMBER-OF-REMOVE))
     (19 10 (:REWRITE DEFAULT-CAR))
     (18 2
         (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
     (17 11 (:REWRITE DEFAULT-CDR))
     (14 1 (:DEFINITION TRUE-LISTP))
     (12 6 (:REWRITE MEMBER-WHEN-ATOM))
     (12 2 (:DEFINITION STRING-LISTP))
     (10 10 (:TYPE-PRESCRIPTION STRING-LISTP))
     (10 10 (:REWRITE SUBSETP-MEMBER . 2))
     (10 10 (:REWRITE SUBSETP-MEMBER . 1))
     (7 7 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
     (7 6 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
     (6 6 (:REWRITE SUBSETP-MEMBER . 4))
     (6 6 (:REWRITE SUBSETP-MEMBER . 3))
     (6 6 (:REWRITE INTERSECTP-MEMBER . 3))
     (6 6 (:REWRITE INTERSECTP-MEMBER . 2))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (2 2
        (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
                  . 2))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
                  . 1))
     (2 2
        (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
     (2 2
        (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
     (2 1
        (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
     (2 1
        (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
     (1 1
        (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL)))
(FLATTEN-EQUIV-IMPLIES-EQUAL-MEMBER-INTERSECTP-EQUAL-1-LEMMA-1
 (3332 165 (:DEFINITION MEMBER-EQUAL))
 (2936 24 (:DEFINITION INTERSECTP-EQUAL))
 (2202 211 (:REWRITE SUBSETP-CAR-MEMBER))
 (2164 50
       (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
 (2025 50 (:DEFINITION TRUE-LIST-LISTP))
 (1529 168 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
 (1435 13 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (1382 174
       (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
 (1313 39 (:REWRITE REMOVE-WHEN-ABSENT))
 (1248 48 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (1218 87 (:DEFINITION TRUE-LISTP))
 (1168 87
       (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (1083 15
       (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
 (906 151 (:DEFINITION STRING-LISTP))
 (872 76
      (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (773 773 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (755 755 (:TYPE-PRESCRIPTION STRING-LISTP))
 (734 676 (:REWRITE DEFAULT-CDR))
 (721 7 (:REWRITE SUBSETP-OF-REMOVE1))
 (668 538 (:REWRITE DEFAULT-CAR))
 (550 52 (:REWRITE INTERSECTP-WHEN-SUBSETP))
 (497 168 (:REWRITE SUBSETP-MEMBER . 4))
 (424 354 (:REWRITE SUBSETP-MEMBER . 2))
 (374 374 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (361 289 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (354 354 (:REWRITE SUBSETP-MEMBER . 1))
 (301 7 (:REWRITE MEMBER-OF-REMOVE))
 (298 289 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (289 289 (:REWRITE SUBSETP-TRANS2))
 (289 289 (:REWRITE SUBSETP-TRANS))
 (285 168 (:REWRITE MEMBER-WHEN-ATOM))
 (257 257
      (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
 (247 13
      (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
 (182 13 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (170 170 (:REWRITE INTERSECTP-MEMBER . 3))
 (170 170 (:REWRITE INTERSECTP-MEMBER . 2))
 (168 168 (:REWRITE SUBSETP-MEMBER . 3))
 (168 24
      (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (147 147 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (133 133
      (:REWRITE CONSP-OF-TRUE-LIST-LIST-FIX))
 (110 109
      (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (106 34
      (:REWRITE MEMBER-INTERSECTP-IS-COMMUTATIVE-LEMMA-2))
 (82 2 (:REWRITE MEMBER-OF-CONS))
 (65 13 (:DEFINITION LEN))
 (64 49
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
 (63 63
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (52 52 (:REWRITE INTERSECTP-MEMBER . 1))
 (52 52
     (:REWRITE INTERSECT-WITH-SUBSET . 12))
 (52 52
     (:REWRITE INTERSECT-WITH-SUBSET . 11))
 (52 52
     (:REWRITE INTERSECT-WITH-SUBSET . 10))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 9))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 8))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 7))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 6))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 5))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 4))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 3))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 2))
 (52 52 (:REWRITE INTERSECT-WITH-SUBSET . 1))
 (52 52
     (:REWRITE FLATTEN-SUBSET-NO-DUPLICATESP-LEMMA-2))
 (49 49
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
 (49 49
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
 (49 49
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
 (49 49
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
 (38 38
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-3))
 (34 34
     (:REWRITE MEMBER-INTERSECTP-WITH-SUBSET))
 (31 31
     (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
 (26 13 (:REWRITE DEFAULT-+-2))
 (17 17 (:REWRITE CONSP-OF-LIST-FIX))
 (13 13 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (13 13 (:REWRITE DEFAULT-+-1))
 (13 13 (:LINEAR POSITION-WHEN-MEMBER))
 (13 13
     (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
 (12 4 (:REWRITE CDR-OF-LIST-FIX))
 (9
  9
  (:REWRITE
     CDR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-TRUE-LIST-LIST-EQUIV))
 (8 4 (:REWRITE CAR-OF-LIST-FIX)))
(SET-EQUIV-IMPLIES-EQUAL-MEMBER-INTERSECTP-EQUAL-1
  (205 5
       (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
  (140 10 (:REWRITE SUBSETP-CAR-MEMBER))
  (110 5 (:DEFINITION MEMBER-EQUAL))
  (80 20 (:REWRITE SUBSETP-TRANS))
  (25 25 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
  (23 23 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
  (23 23 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
  (10 10 (:REWRITE SUBSETP-MEMBER . 2))
  (10 10 (:REWRITE SUBSETP-MEMBER . 1))
  (10 10
      (:REWRITE MEMBER-INTERSECTP-IS-COMMUTATIVE-LEMMA-2))
  (10 10 (:REWRITE DEFAULT-CDR))
  (10 10 (:REWRITE DEFAULT-CAR))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 2))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
  (5 5
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
  (5 5
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
  (5 5
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (3 3 (:REWRITE INTERSECT-WITH-SUBSET . 16))
  (3 3 (:REWRITE INTERSECT-WITH-SUBSET . 15))
  (3 3 (:REWRITE INTERSECT-WITH-SUBSET . 14))
  (3 3
     (:REWRITE INTERSECT-WITH-SUBSET . 13)))
(SET-EQUIV-IMPLIES-EQUAL-MEMBER-INTERSECTP-EQUAL-2
  (369 9
       (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
  (252 18 (:REWRITE SUBSETP-CAR-MEMBER))
  (198 9 (:DEFINITION MEMBER-EQUAL))
  (148 40 (:REWRITE SUBSETP-TRANS))
  (45 45 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
  (43 43 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
  (43 43 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
  (18 18 (:REWRITE SUBSETP-MEMBER . 2))
  (18 18 (:REWRITE SUBSETP-MEMBER . 1))
  (18 18
      (:REWRITE MEMBER-INTERSECTP-IS-COMMUTATIVE-LEMMA-2))
  (18 18 (:REWRITE DEFAULT-CDR))
  (18 18 (:REWRITE DEFAULT-CAR))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 2))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
  (9 9
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
  (9 9
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
  (9 9
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (7 7 (:REWRITE INTERSECT-WITH-SUBSET . 16))
  (7 7 (:REWRITE INTERSECT-WITH-SUBSET . 15))
  (7 7 (:REWRITE INTERSECT-WITH-SUBSET . 14))
  (7 7
     (:REWRITE INTERSECT-WITH-SUBSET . 13)))
(FLATTEN-EQUIV-IMPLIES-EQUAL-MEMBER-INTERSECTP-EQUAL-1
  (354 4
       (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
  (318 18 (:DEFINITION MEMBER-EQUAL))
  (272 10 (:REWRITE SUBSETP-CAR-MEMBER))
  (206 2 (:REWRITE SUBSETP-OF-REMOVE1))
  (194 6 (:REWRITE REMOVE-WHEN-ABSENT))
  (118 24 (:REWRITE SUBSETP-MEMBER . 4))
  (86 2 (:REWRITE MEMBER-OF-REMOVE))
  (82 82 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
  (78 2
      (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
  (70 2 (:DEFINITION TRUE-LIST-LISTP))
  (56 36 (:REWRITE SUBSETP-MEMBER . 2))
  (56 32 (:REWRITE DEFAULT-CAR))
  (46 34 (:REWRITE DEFAULT-CDR))
  (42 24 (:REWRITE MEMBER-WHEN-ATOM))
  (36 36 (:REWRITE SUBSETP-MEMBER . 1))
  (36 4
      (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
  (28 2 (:DEFINITION TRUE-LISTP))
  (26 24 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
  (24 24 (:REWRITE SUBSETP-MEMBER . 3))
  (24 24 (:REWRITE INTERSECTP-MEMBER . 3))
  (24 24 (:REWRITE INTERSECTP-MEMBER . 2))
  (24 4 (:DEFINITION STRING-LISTP))
  (22 22 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
  (22 10 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
  (20 20 (:TYPE-PRESCRIPTION STRING-LISTP))
  (20 8
      (:REWRITE MEMBER-INTERSECTP-IS-COMMUTATIVE-LEMMA-2))
  (14 14 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
  (12 12 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
  (10 10 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
  (10 10 (:REWRITE SUBSETP-TRANS2))
  (10 10 (:REWRITE SUBSETP-TRANS))
  (10 10
      (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-3))
  (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
  (8 8
     (:REWRITE MEMBER-INTERSECTP-WITH-SUBSET))
  (6 6
     (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
  (4 4
     (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 2))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
  (4 4
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
  (4 4
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
  (4 4
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (4 2
     (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
  (4 2
     (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
  (2 2
     (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL)))
(FLATTEN-EQUIV-IMPLIES-EQUAL-MEMBER-INTERSECTP-EQUAL-2
  (462 26 (:DEFINITION MEMBER-EQUAL))
  (408 6
       (:REWRITE MEMBER-INTERSECTP-OF-SET-DIFFERENCE$-LEMMA-2))
  (387 12 (:REWRITE REMOVE-WHEN-ABSENT))
  (300 14 (:REWRITE SUBSETP-CAR-MEMBER))
  (206 2 (:REWRITE SUBSETP-OF-REMOVE1))
  (156 4
       (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
  (140 4 (:DEFINITION TRUE-LIST-LISTP))
  (130 36 (:REWRITE SUBSETP-MEMBER . 4))
  (122 122 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
  (88 52 (:REWRITE DEFAULT-CAR))
  (86 2 (:REWRITE MEMBER-OF-REMOVE))
  (74 56 (:REWRITE DEFAULT-CDR))
  (72 52 (:REWRITE SUBSETP-MEMBER . 2))
  (72 8
      (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
  (66 36 (:REWRITE MEMBER-WHEN-ATOM))
  (56 4 (:DEFINITION TRUE-LISTP))
  (52 52 (:REWRITE SUBSETP-MEMBER . 1))
  (48 8 (:DEFINITION STRING-LISTP))
  (40 40 (:TYPE-PRESCRIPTION STRING-LISTP))
  (39 36 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
  (36 36 (:REWRITE SUBSETP-MEMBER . 3))
  (36 36 (:REWRITE INTERSECTP-MEMBER . 3))
  (36 36 (:REWRITE INTERSECTP-MEMBER . 2))
  (30 30 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
  (28 28 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
  (26 14 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
  (24 12
      (:REWRITE MEMBER-INTERSECTP-IS-COMMUTATIVE-LEMMA-2))
  (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
  (16 16
      (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-3))
  (14 14 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
  (14 14 (:REWRITE SUBSETP-TRANS2))
  (14 14 (:REWRITE SUBSETP-TRANS))
  (12 12 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
  (12 12
      (:REWRITE MEMBER-INTERSECTP-WITH-SUBSET))
  (8 8
     (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
  (8 8
     (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
  (8 4
     (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
  (8 4
     (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-2))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-SUBSETP-1))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-WHEN-ATOM))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 2))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-2
               . 1))
  (6 6
     (:REWRITE NOT-INTERSECTP-LIST-OF-SET-DIFFERENCE$-LEMMA-1))
  (6 6
     (:REWRITE INTERSECTP-MEMBER-WHEN-NOT-MEMBER-INTERSECTP))
  (6 6
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (3 3
     (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL)))
(SET-EQUIV-IMPLIES-EQUAL-TRUE-LIST-LISTP-OF-LIST-FIX-1-LEMMA-1
     (1868 43 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
     (1739 43 (:DEFINITION NO-DUPLICATESP-EQUAL))
     (968 115
          (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
     (648 107 (:DEFINITION STRING-LISTP))
     (526 526 (:TYPE-PRESCRIPTION STRING-LISTP))
     (505 215 (:REWRITE SUBSETP-MEMBER . 2))
     (433 433 (:REWRITE DEFAULT-CDR))
     (401 76
          (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
     (359 359 (:REWRITE DEFAULT-CAR))
     (259 175 (:REWRITE SUBSETP-TRANS2))
     (221 215 (:REWRITE SUBSETP-MEMBER . 1))
     (217 175 (:REWRITE SUBSETP-TRANS))
     (215 215
          (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
     (175 175 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (175 175 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (140 34
          (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
     (71 43 (:REWRITE SUBSETP-MEMBER . 3))
     (43 43 (:REWRITE SUBSETP-MEMBER . 4))
     (43 43 (:REWRITE MEMBER-WHEN-ATOM))
     (43 43 (:REWRITE INTERSECTP-MEMBER . 3))
     (43 43 (:REWRITE INTERSECTP-MEMBER . 2))
     (34 34 (:REWRITE SUBSETP-REFL))
     (18 18
         (:REWRITE INTERSECT-WITH-SUBSET . 16))
     (18 18
         (:REWRITE INTERSECT-WITH-SUBSET . 15))
     (18 18
         (:REWRITE INTERSECT-WITH-SUBSET . 14))
     (18 18
         (:REWRITE INTERSECT-WITH-SUBSET . 13)))
(SET-EQUIV-IMPLIES-EQUAL-TRUE-LIST-LISTP-OF-LIST-FIX-1
     (391 5 (:DEFINITION TRUE-LIST-LISTP))
     (230 30
          (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
     (201 15 (:DEFINITION TRUE-LISTP))
     (183 3 (:REWRITE CDR-OF-LIST-FIX))
     (150 25 (:DEFINITION STRING-LISTP))
     (130 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (125 125 (:TYPE-PRESCRIPTION STRING-LISTP))
     (109 6
          (:REWRITE TRUE-LIST-LISTP-OF-LIST-FIX))
     (90 5
         (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
     (70 5 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (58 58 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (50 50 (:REWRITE DEFAULT-CDR))
     (34 19
         (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
     (30 30 (:REWRITE DEFAULT-CAR))
     (25 5 (:DEFINITION LEN))
     (19 5
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
     (19 5
         (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
     (10 5 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE CONSP-OF-LIST-FIX))
     (6 3 (:REWRITE CAR-OF-LIST-FIX))
     (5 5 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (5 5 (:REWRITE DEFAULT-+-1))
     (5 5 (:LINEAR POSITION-WHEN-MEMBER))
     (5 5
        (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER))
     (1 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (1 1 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (1 1 (:REWRITE INTERSECT-WITH-SUBSET . 16))
     (1 1 (:REWRITE INTERSECT-WITH-SUBSET . 15))
     (1 1 (:REWRITE INTERSECT-WITH-SUBSET . 14))
     (1 1
        (:REWRITE INTERSECT-WITH-SUBSET . 13)))
(COMMUTATIVITY-2-OF-CONS-UNDER-FLATTEN-EQUIV-LEMMA-1
     (6 6 (:REWRITE INTERSECTP-MEMBER . 3))
     (6 6 (:REWRITE INTERSECTP-MEMBER . 2)))
(COMMUTATIVITY-2-OF-CONS-UNDER-FLATTEN-EQUIV
     (1500 42 (:REWRITE REMOVE-WHEN-ABSENT))
     (864 41 (:DEFINITION MEMBER-EQUAL))
     (570 74
          (:REWRITE TRUE-LISTP-WHEN-STRING-LIST))
     (518 37 (:DEFINITION TRUE-LISTP))
     (508 14
          (:REWRITE TRUE-LIST-LIST-FIX-WHEN-TRUE-LIST-LISTP))
     (455 13 (:DEFINITION TRUE-LIST-LISTP))
     (375 10 (:REWRITE MEMBER-OF-CONS))
     (372 62 (:DEFINITION STRING-LISTP))
     (314 14 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (310 310 (:TYPE-PRESCRIPTION STRING-LISTP))
     (255 144 (:REWRITE DEFAULT-CAR))
     (229 193 (:REWRITE DEFAULT-CDR))
     (218 14
          (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
     (205 205 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (181 82 (:REWRITE MEMBER-WHEN-ATOM))
     (172 172 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (170 14 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (107 82 (:REWRITE NO-DUPLICATESP-OF-MEMBER))
     (99 99
         (:REWRITE CONSP-OF-TRUE-LIST-LIST-FIX))
     (92 92 (:REWRITE INTERSECTP-MEMBER . 3))
     (92 92 (:REWRITE INTERSECTP-MEMBER . 2))
     (91 91 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
     (82 82 (:REWRITE SUBSETP-MEMBER . 4))
     (82 82 (:REWRITE SUBSETP-MEMBER . 3))
     (82 82 (:REWRITE SUBSETP-MEMBER . 2))
     (82 82 (:REWRITE SUBSETP-MEMBER . 1))
     (60 12 (:DEFINITION LEN))
     (26 26
         (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
     (26 13
         (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
     (26 13
         (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
     (25 25
         (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
     (25 25
         (:REWRITE TRUE-LIST-LIST-FIX-UNDER-IFF))
     (24 12 (:REWRITE DEFAULT-+-2))
     (14 14 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (12 12 (:REWRITE DEFAULT-+-1))
     (12 12 (:LINEAR POSITION-WHEN-MEMBER))
     (12 12
         (:LINEAR POSITION-EQUAL-AC-WHEN-MEMBER)))
