(YUL::STATEMENT-NOFUNP
 (54 2 (:DEFINITION YUL::STATEMENT-NOFUNP))
 (45 15 (:REWRITE DEFAULT-<-2))
 (45 15 (:REWRITE DEFAULT-<-1))
 (13 2 (:REWRITE YUL::STATEMENTP-WHEN-STATEMENT-OPTIONP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (11 1 (:REWRITE YUL::STATEMENT-OPTIONP-WHEN-STATEMENTP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (2 2 (:TYPE-PRESCRIPTION YUL::STATEMENT-OPTIONP))
 (2 2 (:DEFINITION YUL::SWCASE-NOFUNP))
 (1 1 (:REWRITE YUL::SWCASE-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE YUL::STATEMENT-LISTP-WHEN-NOT-CONSP))
 )
(YUL::STATEMENTS/BLOCKS/CASES/FUNDEFS-NOFUNP-FLAG
 (45 15 (:REWRITE DEFAULT-<-2))
 (45 15 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(YUL::STATEMENTS/BLOCKS/CASES/FUNDEFS-NOFUNP-FLAG-EQUIVALENCES)
(YUL::FLAG-LEMMA-FOR-RETURN-TYPE-OF-STATEMENT-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-STATEMENT-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-STATEMENT-LIST-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-BLOCK-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-BLOCK-OPTION-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-SWCASE-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-SWCASE-LIST-NOFUNP.YES/NO)
(YUL::RETURN-TYPE-OF-FUNDEF-NOFUNP.YES/NO)
(YUL::FLAG-LEMMA-FOR-STATEMENT-NOFUNP-OF-STATEMENT-FIX-STMT
 (760 67 (:REWRITE YUL::STATEMENT-FIX-WHEN-STATEMENTP))
 (335 67 (:REWRITE YUL::STATEMENTP-WHEN-STATEMENT-OPTIONP))
 (201 201 (:TYPE-PRESCRIPTION YUL::STATEMENTP))
 (185 19 (:REWRITE YUL::SWCASE-FIX-WHEN-SWCASEP))
 (140 86 (:REWRITE DEFAULT-CAR))
 (134 134 (:TYPE-PRESCRIPTION YUL::STATEMENT-OPTIONP))
 (134 134 (:REWRITE YUL::STATEMENTP-WHEN-MEMBER-EQUAL-OF-STATEMENT-LISTP))
 (134 67 (:REWRITE YUL::STATEMENT-OPTIONP-WHEN-STATEMENTP))
 (112 112 (:REWRITE YUL::SWCASE-LISTP-WHEN-SUBSETP-EQUAL))
 (112 112 (:REWRITE YUL::STATEMENT-LISTP-WHEN-SUBSETP-EQUAL))
 (92 56 (:REWRITE DEFAULT-CDR))
 (90 15 (:REWRITE YUL::SWCASEP-OF-CAR-WHEN-SWCASE-LISTP))
 (90 15 (:REWRITE YUL::STATEMENTP-OF-CAR-WHEN-STATEMENT-LISTP))
 (88 69 (:REWRITE YUL::STATEMENT-FIX-WHEN-CONTINUE))
 (60 56 (:REWRITE YUL::SWCASE-LISTP-WHEN-NOT-CONSP))
 (60 56 (:REWRITE YUL::STATEMENT-LISTP-WHEN-NOT-CONSP))
 (54 9 (:REWRITE YUL::SWCASE-LISTP-OF-CDR-WHEN-SWCASE-LISTP))
 (54 9 (:REWRITE YUL::STATEMENT-LISTP-OF-CDR-WHEN-STATEMENT-LISTP))
 (38 38 (:TYPE-PRESCRIPTION YUL::SWCASEP))
 (38 38 (:REWRITE YUL::SWCASEP-WHEN-MEMBER-EQUAL-OF-SWCASE-LISTP))
 (28 8 (:REWRITE YUL::BLOCKP-WHEN-BLOCK-OPTIONP))
 (28 8 (:REWRITE YUL::BLOCK-OPTIONP-WHEN-BLOCKP))
 (20 4 (:REWRITE YUL::FUNDEF-FIX-WHEN-FUNDEFP))
 (8 8 (:TYPE-PRESCRIPTION YUL::FUNDEFP))
 (8 8 (:REWRITE YUL::FUNDEFP-WHEN-MEMBER-EQUAL-OF-FUNDEF-LISTP))
 (6 5 (:REWRITE YUL::BLOCK-OPTION-FIX-WHEN-NONE))
 (1 1 (:TYPE-PRESCRIPTION YUL::STATEMENT-SWITCH->DEFAULT$INLINE))
 )
(YUL::STATEMENT-NOFUNP-OF-STATEMENT-FIX-STMT)
(YUL::STATEMENT-LIST-NOFUNP-OF-STATEMENT-LIST-FIX-STMTS)
(YUL::BLOCK-NOFUNP-OF-BLOCK-FIX-BLOCK)
(YUL::BLOCK-OPTION-NOFUNP-OF-BLOCK-OPTION-FIX-BLOCK?)
(YUL::SWCASE-NOFUNP-OF-SWCASE-FIX-CASE)
(YUL::SWCASE-LIST-NOFUNP-OF-SWCASE-LIST-FIX-CASES)
(YUL::FUNDEF-NOFUNP-OF-FUNDEF-FIX-FUNDEF)
(YUL::STATEMENT-NOFUNP-STATEMENT-EQUIV-CONGRUENCE-ON-STMT)
(YUL::STATEMENT-LIST-NOFUNP-STATEMENT-LIST-EQUIV-CONGRUENCE-ON-STMTS)
(YUL::BLOCK-NOFUNP-BLOCK-EQUIV-CONGRUENCE-ON-BLOCK)
(YUL::BLOCK-OPTION-NOFUNP-BLOCK-OPTION-EQUIV-CONGRUENCE-ON-BLOCK?)
(YUL::SWCASE-NOFUNP-SWCASE-EQUIV-CONGRUENCE-ON-CASE)
(YUL::SWCASE-LIST-NOFUNP-SWCASE-LIST-EQUIV-CONGRUENCE-ON-CASES)
(YUL::FUNDEF-NOFUNP-FUNDEF-EQUIV-CONGRUENCE-ON-FUNDEF)
(YUL::BLOCK-OPTION-NOFUNP-WHEN-BLOCKP
 (8 2 (:REWRITE YUL::BLOCKP-WHEN-BLOCK-OPTIONP))
 (5 1 (:REWRITE YUL::BLOCK-OPTIONP-WHEN-BLOCKP))
 (3 3 (:TYPE-PRESCRIPTION YUL::BLOCK-OPTIONP))
 (2 2 (:DEFINITION YUL::BLOCK-NOFUNP))
 )
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(YUL::FUNDEF-LIST-NOFUNP
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE YUL::FUNDEF-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(YUL::FUNDEF-LIST-NOFUNP-OF-CONS)
(YUL::FUNDEF-LIST-NOFUNP-OF-CDR-WHEN-FUNDEF-LIST-NOFUNP)
(YUL::FUNDEF-LIST-NOFUNP-WHEN-NOT-CONSP)
(YUL::FUNDEF-NOFUNP-OF-CAR-WHEN-FUNDEF-LIST-NOFUNP)
(YUL::FUNDEF-LIST-NOFUNP-OF-APPEND)
(YUL::FUNDEF-LIST-NOFUNP-OF-LIST-FIX)
(YUL::FUNDEF-LIST-NOFUNP-OF-SFIX)
(YUL::FUNDEF-LIST-NOFUNP-OF-INSERT)
(YUL::FUNDEF-LIST-NOFUNP-OF-DELETE)
(YUL::FUNDEF-LIST-NOFUNP-OF-MERGESORT)
(YUL::FUNDEF-LIST-NOFUNP-OF-UNION)
(YUL::FUNDEF-LIST-NOFUNP-OF-INTERSECT-1)
(YUL::FUNDEF-LIST-NOFUNP-OF-INTERSECT-2)
(YUL::FUNDEF-LIST-NOFUNP-OF-DIFFERENCE)
(YUL::FUNDEF-LIST-NOFUNP-OF-DUPLICATED-MEMBERS)
(YUL::FUNDEF-LIST-NOFUNP-OF-REV)
(YUL::FUNDEF-LIST-NOFUNP-OF-RCONS)
(YUL::FUNDEF-NOFUNP-WHEN-MEMBER-EQUAL-OF-FUNDEF-LIST-NOFUNP)
(YUL::FUNDEF-LIST-NOFUNP-WHEN-SUBSETP-EQUAL)
(YUL::FUNDEF-LIST-NOFUNP-SET-EQUIV-CONGRUENCE)
(YUL::FUNDEF-LIST-NOFUNP-OF-SET-DIFFERENCE-EQUAL)
(YUL::FUNDEF-LIST-NOFUNP-OF-INTERSECTION-EQUAL-1)
(YUL::FUNDEF-LIST-NOFUNP-OF-INTERSECTION-EQUAL-2)
(YUL::FUNDEF-LIST-NOFUNP-OF-UNION-EQUAL)
(YUL::FUNDEF-LIST-NOFUNP-OF-TAKE)
(YUL::FUNDEF-LIST-NOFUNP-OF-REPEAT)
(YUL::FUNDEF-NOFUNP-OF-NTH-WHEN-FUNDEF-LIST-NOFUNP)
(YUL::FUNDEF-LIST-NOFUNP-OF-UPDATE-NTH)
(YUL::FUNDEF-LIST-NOFUNP-OF-BUTLAST)
(YUL::FUNDEF-LIST-NOFUNP-OF-NTHCDR)
(YUL::FUNDEF-LIST-NOFUNP-OF-LAST)
(YUL::FUNDEF-LIST-NOFUNP-OF-REMOVE)
(YUL::FUNDEF-LIST-NOFUNP-OF-REVAPPEND)
(YUL::FUNDEF-LIST-NOFUNP-OF-FUNDEF-LIST-FIX-X
 (3881 356 (:REWRITE YUL::FUNDEF-LIST-NOFUNP-OF-CDR-WHEN-FUNDEF-LIST-NOFUNP))
 (1217 474 (:REWRITE YUL::FUNDEF-NOFUNP-WHEN-MEMBER-EQUAL-OF-FUNDEF-LIST-NOFUNP))
 (511 73 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (457 37 (:REWRITE SUBSETP-CAR-MEMBER))
 (424 92 (:REWRITE YUL::FUNDEF-LIST-FIX-WHEN-FUNDEF-LISTP))
 (421 352 (:REWRITE DEFAULT-CDR))
 (410 21 (:DEFINITION MEMBER-EQUAL))
 (249 249 (:REWRITE DEFAULT-CAR))
 (137 137 (:REWRITE SUBSETP-TRANS2))
 (137 137 (:REWRITE SUBSETP-TRANS))
 (128 128 (:REWRITE YUL::FUNDEF-LISTP-WHEN-SUBSETP-EQUAL))
 (115 112 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (85 85 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (68 64 (:REWRITE YUL::FUNDEF-LISTP-WHEN-NOT-CONSP))
 (66 11 (:REWRITE YUL::FUNDEF-LISTP-OF-CDR-WHEN-FUNDEF-LISTP))
 (37 37 (:REWRITE SUBSETP-MEMBER . 2))
 (37 37 (:REWRITE SUBSETP-MEMBER . 1))
 (19 7 (:DEFINITION ATOM))
 )
(YUL::FUNDEF-LIST-NOFUNP-FUNDEF-LIST-EQUIV-CONGRUENCE-ON-X)
(YUL::STATEMENTS-TO-FUNDEFS-WHEN-NOFUNP
 (24 24 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-CDR))
 (13 1 (:REWRITE YUL::BLOCK-OPTION-NOFUNP-WHEN-BLOCKP))
 (7 1 (:REWRITE YUL::BLOCKP-WHEN-BLOCK-OPTIONP))
 (6 6 (:TYPE-PRESCRIPTION YUL::STATEMENT-SWITCH->DEFAULT$INLINE))
 (2 2 (:TYPE-PRESCRIPTION YUL::BLOCKP))
 (2 2 (:TYPE-PRESCRIPTION YUL::BLOCK-NOFUNP))
 (1 1 (:TYPE-PRESCRIPTION YUL::SWCASE-LIST-NOFUNP))
 (1 1 (:TYPE-PRESCRIPTION YUL::BLOCK-OPTIONP))
 (1 1 (:REWRITE YUL::BLOCK-OPTIONP-OF-STATEMENT-SWITCH->DEFAULT))
 )
