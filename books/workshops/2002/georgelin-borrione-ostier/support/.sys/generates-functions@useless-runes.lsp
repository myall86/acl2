(MAKE-NAMEP)
(CHANGE-TO-CONST)
(MAKE-LIST-PREDICATE)
(MAKE-STATE-P)
(MAKE-NEXT)
(MAKE-LIST_OF_COMPONENT)
(MAKE-GETST-PUTST)
(MAKE-ELMTS-OF-GET-NTH)
(MAKE-GET-NTH)
(MAKE-STATE-KEY-ARG)
(MAKE-STATE-KEY-ARG2)
(MAKE-STATE-BODY-FOR-COMPONENTS)
(MAKE-MAKE-STATE)
(MAKE-UPDATE-STATE)
(MAKE_NAME_VAR_SIG)
(SLICE-REC2
 (41 41 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (19 13 (:REWRITE DEFAULT-+-2))
 (16 9 (:REWRITE DEFAULT-<-1))
 (14 13 (:REWRITE DEFAULT-+-1))
 (13 9 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 1 (:REWRITE >_NOT_EQUAL))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (2 2 (:TYPE-PRESCRIPTION MAKE_NAME_VAR_SIG))
 (2 2 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(SLICE-REC1
 (135 70 (:REWRITE DEFAULT-+-2))
 (94 94 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (75 70 (:REWRITE DEFAULT-+-1))
 (38 15 (:REWRITE DEFAULT-<-1))
 (29 15 (:REWRITE DEFAULT-<-2))
 (26 19 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 2 (:REWRITE >_NOT_EQUAL))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (3 3 (:TYPE-PRESCRIPTION MAKE_NAME_VAR_SIG))
 (2 2 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 )
(SLICE-REC3
 (41 41 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (19 13 (:REWRITE DEFAULT-+-2))
 (16 9 (:REWRITE DEFAULT-<-1))
 (14 13 (:REWRITE DEFAULT-+-1))
 (13 9 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 1 (:REWRITE >_NOT_EQUAL))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (2 2 (:TYPE-PRESCRIPTION MAKE_NAME_VAR_SIG))
 (2 2 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(SLICE-REC4
 (35 35 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (19 13 (:REWRITE DEFAULT-+-2))
 (16 9 (:REWRITE DEFAULT-<-1))
 (14 13 (:REWRITE DEFAULT-+-1))
 (13 9 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 1 (:REWRITE >_NOT_EQUAL))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (2 2 (:TYPE-PRESCRIPTION MAKE_NAME_VAR_SIG))
 (2 2 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(TYPE_OF)
(TRUE_FUNC)
(EXPAND-EXP)
(CALL_OR_SINGLE_ELEMENT)
(ASSIGNMENT
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(IF-STATEMENT
 (803 341 (:REWRITE DEFAULT-+-2))
 (476 341 (:REWRITE DEFAULT-+-1))
 (248 62 (:REWRITE COMMUTATIVITY-OF-+))
 (248 62 (:DEFINITION INTEGER-ABS))
 (248 31 (:DEFINITION LENGTH))
 (155 31 (:DEFINITION LEN))
 (104 75 (:REWRITE DEFAULT-<-2))
 (83 75 (:REWRITE DEFAULT-<-1))
 (62 62 (:REWRITE DEFAULT-UNARY-MINUS))
 (31 31 (:TYPE-PRESCRIPTION LEN))
 (31 31 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (31 31 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (31 31 (:REWRITE DEFAULT-REALPART))
 (31 31 (:REWRITE DEFAULT-NUMERATOR))
 (31 31 (:REWRITE DEFAULT-IMAGPART))
 (31 31 (:REWRITE DEFAULT-DENOMINATOR))
 (31 31 (:REWRITE DEFAULT-COERCE-2))
 (31 31 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(UPDATE-ST-FOR-FUNCTION)
(MAKE-FUNCTIONS)
(MAKE-FOR-LOOP)
(PROCESS-FUNCTIONS)
(MAKE-REC-COMB-PROCESS)
(LET-UPDATE-SIGNALS)
(COMP-UPDT_SIG-REC_IN)
(COMP-UPDT_SIG-REC_OUT)
(FIND_LINKS_INPUT)
(FIND_LINKS_OUTPUT)
(SEARCH_INPUT_COMP
 (25 5 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (14 5 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(SEARCH_OUTPUT_COMP)
(COMPONENTS-UPDATE-SIGNALS
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(MAKE-UPDATE-OF-COMPONENTS)
(MAKE-UPDATE-SIGNALS)
(NAME_OF_PROCESS)
(NAME_OF_CONC_STATEM)
(MAKE-CYCLE-OF-COMPONENTS)
(MAKE-REC-CONCURRENT-STAT)
(FORM-REC-CONCURRENT-STAT-NAME)
(NUMBER_OF_SIGNAL_ASS)
(MAKE-CALL-OF-COMP)
(MAKE-CYCLE)
(MAKE-SIMUL)
