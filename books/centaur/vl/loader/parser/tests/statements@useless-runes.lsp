(VL::RETURN-TYPE-OF-VL-PARSE-STATEMENT-TOP.RESULT
 (1 1 (:REWRITE VL::VL-PARSE-STATEMENT-VAL-WHEN-ERROR-VL-PARSE-STATEMENT))
 )
(VL::STMTTEST-P
 (4 4 (:TYPE-PRESCRIPTION CONSP-ASSOC-EQUAL))
 )
(VL::STMTTEST)
(VL::HONSED-STMTTEST)
(VL::STMTTEST->INPUT$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(VL::STMTTEST->SUCCESSP$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(VL::STMTTEST->EXPECT$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(VL::STMTTEST->REMAINDER$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(VL::CONSP-OF-STMTTEST)
(VL::BOOLEANP-OF-STMTTEST-P)
(VL::STMTTEST-P-OF-STMTTEST)
(VL::TAG-OF-STMTTEST)
(VL::TAG-WHEN-STMTTEST-P)
(VL::STMTTEST-P-WHEN-WRONG-TAG)
(VL::CONSP-WHEN-STMTTEST-P)
(VL::STMTTEST->INPUT-OF-STMTTEST)
(VL::STMTTEST->SUCCESSP-OF-STMTTEST)
(VL::STMTTEST->EXPECT-OF-STMTTEST)
(VL::STMTTEST->REMAINDER-OF-STMTTEST)
(VL::RETURN-TYPE-OF-STMTTEST->INPUT)
(VL::RETURN-TYPE-OF-STMTTEST->SUCCESSP)
(VL::RETURN-TYPE-OF-STMTTEST->REMAINDER)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(VL::STMTTESTLIST-P)
(VL::STMTTESTLIST-P-OF-CONS)
(VL::STMTTESTLIST-P-OF-CDR-WHEN-STMTTESTLIST-P)
(VL::STMTTESTLIST-P-WHEN-NOT-CONSP)
(VL::STMTTEST-P-OF-CAR-WHEN-STMTTESTLIST-P)
(VL::STMTTESTLIST-P-OF-APPEND)
(VL::STMTTESTLIST-P-OF-LIST-FIX)
(VL::STMTTESTLIST-P-OF-SFIX)
(VL::STMTTESTLIST-P-OF-INSERT)
(VL::STMTTESTLIST-P-OF-DELETE)
(VL::STMTTESTLIST-P-OF-MERGESORT)
(VL::STMTTESTLIST-P-OF-UNION)
(VL::STMTTESTLIST-P-OF-INTERSECT-1)
(VL::STMTTESTLIST-P-OF-INTERSECT-2)
(VL::STMTTESTLIST-P-OF-DIFFERENCE)
(VL::STMTTESTLIST-P-OF-DUPLICATED-MEMBERS)
(VL::STMTTESTLIST-P-OF-REV)
(VL::STMTTESTLIST-P-OF-RCONS)
(VL::STMTTEST-P-WHEN-MEMBER-EQUAL-OF-STMTTESTLIST-P)
(VL::STMTTESTLIST-P-WHEN-SUBSETP-EQUAL)
(VL::STMTTESTLIST-P-SET-EQUIV-CONGRUENCE)
(VL::STMTTESTLIST-P-OF-SET-DIFFERENCE-EQUAL)
(VL::STMTTESTLIST-P-OF-INTERSECTION-EQUAL-1)
(VL::STMTTESTLIST-P-OF-INTERSECTION-EQUAL-2)
(VL::STMTTESTLIST-P-OF-UNION-EQUAL)
(VL::STMTTESTLIST-P-OF-TAKE)
(VL::STMTTESTLIST-P-OF-REPEAT)
(VL::STMTTEST-P-OF-NTH-WHEN-STMTTESTLIST-P)
(VL::STMTTESTLIST-P-OF-UPDATE-NTH)
(VL::STMTTESTLIST-P-OF-BUTLAST)
(VL::STMTTESTLIST-P-OF-NTHCDR)
(VL::STMTTESTLIST-P-OF-LAST)
(VL::STMTTESTLIST-P-OF-REMOVE)
(VL::STMTTESTLIST-P-OF-REVAPPEND)
(VL::MAKE-STMTTEST-FAIL)
(VL::MAKE-STMTTESTS-FAIL-EXEC)
(VL::MAKE-STMTTESTS-FAIL-NREV)
(VL::MAKE-STMTTESTS-FAIL)
(VL::MAKE-STMTTESTS-FAIL-NIL-PRESERVINGP-LEMMA)
(VL::MAKE-STMTTESTS-FAIL-NREV-REMOVAL
 (112 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (96 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (75 3 (:DEFINITION TRUE-LISTP))
 (51 3 (:DEFINITION LEN))
 (39 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (36 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:LINEAR VL::LEN-WHEN-VL-MATCHES-STRING-P-FC))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 )
(VL::MAKE-STMTTESTS-FAIL-EXEC-REMOVAL
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 )
(VL::MAKE-STMTTESTS-FAIL-OF-TAKE)
(VL::SET-EQUIV-CONGRUENCE-OVER-MAKE-STMTTESTS-FAIL)
(VL::SUBSETP-OF-MAKE-STMTTESTS-FAIL-WHEN-SUBSETP)
(VL::MEMBER-OF-MAKE-STMTTEST-FAIL-IN-MAKE-STMTTESTS-FAIL)
(VL::MAKE-STMTTESTS-FAIL-OF-REV)
(VL::MAKE-STMTTESTS-FAIL-OF-LIST-FIX)
(VL::MAKE-STMTTESTS-FAIL-OF-APPEND)
(VL::CDR-OF-MAKE-STMTTESTS-FAIL)
(VL::CAR-OF-MAKE-STMTTESTS-FAIL)
(VL::MAKE-STMTTESTS-FAIL-UNDER-IFF)
(VL::CONSP-OF-MAKE-STMTTESTS-FAIL)
(VL::LEN-OF-MAKE-STMTTESTS-FAIL)
(VL::TRUE-LISTP-OF-MAKE-STMTTESTS-FAIL)
(VL::MAKE-STMTTESTS-FAIL-WHEN-NOT-CONSP)
(VL::MAKE-STMTTESTS-FAIL-OF-CONS)
(VL::MAKE-STMTTESTS-FAIL-NREV
 (44 2 (:DEFINITION TRUE-LISTP))
 (24 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE VL::STMTTESTLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::MAKE-STMTTESTS-FAIL)
(VL::MAKE-STMTTESTS-FAIL-EXEC
 (2 2 (:REWRITE VL::STMTTESTLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::RUN-STMTTEST-FN
 (23 5 (:REWRITE VL::STMTTEST-P-WHEN-WRONG-TAG))
 (10 10 (:REWRITE VL::STMTTEST-P-WHEN-MEMBER-EQUAL-OF-STMTTESTLIST-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-TIMETOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-SYSIDTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-STRINGTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-REALTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-INTTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-IDTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-EXTINTTOKEN-P))
 (2 1 (:REWRITE VL::TAG-WHEN-VL-ERANGE-P))
 (2 1 (:REWRITE VL::TAG-WHEN-STMTTEST-P))
 (2 1 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-TIMETOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-SYSIDTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-STRINGTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-REALTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-INTTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-IDTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-EXTINTTOKEN-P))
 (1 1 (:TYPE-PRESCRIPTION VL::BOOLEANP-OF-VL-ERANGE-P))
 (1 1 (:REWRITE-QUOTED-CONSTANT POS-FIX-UNDER-POS-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL::MAYBE-STRING-FIX-UNDER-MAYBE-STRING-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 )
(VL::RUN-STMTTESTS-FN
 (13 1 (:REWRITE VL::STMTTESTLIST-P-WHEN-NOT-CONSP))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
