(JAVA::ATJ-CHECK-SINGLE-RETURN-WITH-EXPR
 (48 2 (:DEFINITION MEMBER-EQUAL))
 (18 2 (:REWRITE JAVA::JBLOCKP-WHEN-SUBSETP-EQUAL))
 (15 3 (:DEFINITION LEN))
 (12 4 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (10 10 (:TYPE-PRESCRIPTION JAVA::JBLOCK-CONTINUE))
 (10 10 (:TYPE-PRESCRIPTION JAVA::JBLOCK-BREAK))
 (7 5 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE SUBSETP-TRANS2))
 (6 6 (:REWRITE SUBSETP-TRANS))
 (6 3 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE SUBSETP-MEMBER . 2))
 (5 5 (:REWRITE SUBSETP-MEMBER . 1))
 (5 3 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE JAVA::JBLOCKP-WHEN-MEMBER-EQUAL-OF-JBLOCK-LISTP))
 (2 2 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-CONTINUE))
 (2 2 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-BREAK))
 (1 1 (:REWRITE MEMBER-OF-CAR))
 (1 1 (:REWRITE JAVA::JBLOCKP-WHEN-NOT-CONSP))
 )
(JAVA::BOOLEANP-OF-ATJ-CHECK-SINGLE-RETURN-WITH-EXPR.YES/NO
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(JAVA::JEXPRP-OF-ATJ-CHECK-SINGLE-RETURN-WITH-EXPR.EXPR
 (10 2 (:DEFINITION LEN))
 (7 1 (:REWRITE JAVA::MAYBE-JEXPRP-WHEN-JEXPRP))
 (4 4 (:REWRITE JAVA::JEXPRP-WHEN-MEMBER-EQUAL-OF-JEXPR-LISTP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(JAVA::ATJ-CHECK-LIFTABLE-LOOP-TEST
 (252 11 (:DEFINITION MEMBER-EQUAL))
 (58 24 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (41 41 (:TYPE-PRESCRIPTION JAVA::JBLOCK-CONTINUE))
 (41 41 (:TYPE-PRESCRIPTION JAVA::JBLOCK-BREAK))
 (41 7 (:DEFINITION LEN))
 (36 24 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (36 4 (:REWRITE JAVA::JBLOCKP-WHEN-SUBSETP-EQUAL))
 (35 20 (:REWRITE DEFAULT-CAR))
 (34 22 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE SUBSETP-TRANS2))
 (27 27 (:REWRITE SUBSETP-TRANS))
 (23 23 (:REWRITE SUBSETP-MEMBER . 2))
 (23 23 (:REWRITE SUBSETP-MEMBER . 1))
 (16 16 (:REWRITE JAVA::JBLOCKP-WHEN-MEMBER-EQUAL-OF-JBLOCK-LISTP))
 (14 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-CONTINUE))
 (7 7 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-BREAK))
 (7 7 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE JAVA::JBLOCKP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE MEMBER-OF-CAR))
 )
(JAVA::BOOLEANP-OF-ATJ-CHECK-LIFTABLE-LOOP-TEST.YES/NO
 (12 2 (:DEFINITION LEN))
 (7 3 (:REWRITE DEFAULT-CAR))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JSTATEM-WHILE->BODY$INLINE))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(JAVA::JEXPRP-OF-ATJ-CHECK-LIFTABLE-LOOP-TEST.TEST
 (12 2 (:DEFINITION LEN))
 (10 2 (:REWRITE JAVA::JEXPRP-WHEN-MAYBE-JEXPRP))
 (7 3 (:REWRITE DEFAULT-CAR))
 (7 1 (:REWRITE JAVA::MAYBE-JEXPRP-WHEN-JEXPRP))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JSTATEM-WHILE->BODY$INLINE))
 (4 4 (:REWRITE JAVA::JEXPRP-WHEN-MEMBER-EQUAL-OF-JEXPR-LISTP))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:TYPE-PRESCRIPTION JAVA::MAYBE-JEXPRP))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(JAVA::JEXPRP-OF-ATJ-CHECK-LIFTABLE-LOOP-TEST.RETURN
 (12 2 (:DEFINITION LEN))
 (10 2 (:REWRITE JAVA::JEXPRP-WHEN-MAYBE-JEXPRP))
 (7 3 (:REWRITE DEFAULT-CAR))
 (7 1 (:REWRITE JAVA::MAYBE-JEXPRP-WHEN-JEXPRP))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JSTATEM-WHILE->BODY$INLINE))
 (4 4 (:REWRITE JAVA::JEXPRP-WHEN-MEMBER-EQUAL-OF-JEXPR-LISTP))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:TYPE-PRESCRIPTION JAVA::MAYBE-JEXPRP))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(JAVA::JBLOCKP-OF-ATJ-CHECK-LIFTABLE-LOOP-TEST.BODY
 (18 2 (:REWRITE JAVA::JBLOCKP-WHEN-SUBSETP-EQUAL))
 (12 2 (:DEFINITION LEN))
 (7 3 (:REWRITE DEFAULT-CAR))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JSTATEM-WHILE->BODY$INLINE))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 3 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE JAVA::JBLOCKP-WHEN-MEMBER-EQUAL-OF-JBLOCK-LISTP))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:TYPE-PRESCRIPTION JAVA::JBLOCK-CONTINUE))
 (1 1 (:TYPE-PRESCRIPTION JAVA::JBLOCK-BREAK))
 (1 1 (:REWRITE JAVA::JBLOCKP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-CONTINUE))
 (1 1 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-BREAK))
 )
(JAVA::ATJ-LIFT-LOOP-TEST
 (1 1 (:TYPE-PRESCRIPTION JAVA::ATJ-LIFT-LOOP-TEST))
 )
(JAVA::JBLOCKP-OF-ATJ-LIFT-LOOP-TEST
 (149 8 (:REWRITE JAVA::JBLOCKP-WHEN-SUBSETP-EQUAL))
 (70 3 (:REWRITE SUBSETP-APPEND1))
 (37 16 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (37 16 (:REWRITE SUBSETP-TRANS2))
 (32 32 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (29 16 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (20 2 (:DEFINITION BINARY-APPEND))
 (16 16 (:REWRITE SUBSETP-TRANS))
 (15 3 (:REWRITE JAVA::JBLOCKP-WHEN-NOT-CONSP))
 (12 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (8 8 (:REWRITE JAVA::JBLOCKP-WHEN-MEMBER-EQUAL-OF-JBLOCK-LISTP))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JBLOCK-CONTINUE))
 (5 5 (:TYPE-PRESCRIPTION JAVA::JBLOCK-BREAK))
 (4 4 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-CONTINUE))
 (4 4 (:REWRITE JAVA::JBLOCKP-OF-JBLOCK-BREAK))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 )
