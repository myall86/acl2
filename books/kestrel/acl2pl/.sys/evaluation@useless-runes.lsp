(ACL2PL::STEP-FROM-INIT
 (6 2 (:REWRITE ACL2PL::VALUE-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-SYMBOL-VALUE-SETP-BINDS-FREE-X))
 (3 3 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-BINDINGP-BINDS-FREE-X))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (1 1 (:REWRITE-QUOTED-CONSTANT ACL2PL::BINDING-FIX-UNDER-BINDING-EQUIV))
 (1 1 (:REWRITE ACL2PL::STACKP-WHEN-NOT-CONSP))
 )
(ACL2PL::EVAL-STATE-P-OF-STEP-FROM-INIT)
(ACL2PL::STEP-FROM-INIT-OF-SYMBOL-VALUE-FIX-FUNCTION)
(ACL2PL::STEP-FROM-INIT-SYMBOL-VALUE-EQUIV-CONGRUENCE-ON-FUNCTION)
(ACL2PL::STEP-FROM-INIT-OF-VALUE-LIST-FIX-ARGUMENTS)
(ACL2PL::STEP-FROM-INIT-VALUE-LIST-EQUIV-CONGRUENCE-ON-ARGUMENTS)
(ACL2PL::GET-LEFTMOST-NONCONST
 (14 4 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (10 2 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (7 3 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (5 5 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::TTERMP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ACL2PL::MAYBE-TTERMP-OF-GET-LEFTMOST-NONCONST
 (70 12 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (12 1 (:REWRITE ACL2PL::TTERM-FIX-WHEN-TTERMP))
 (9 9 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (9 9 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (8 8 (:REWRITE DEFAULT-CAR))
 (4 1 (:REWRITE ACL2PL::TTERMP-OF-CAR-WHEN-TTERM-LISTP))
 (1 1 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ACL2PL::TTERM-CASE-CONSTANT-LISTP-WHEN-NOT-GET-LEFTMOST-NONCONST
 (23 10 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (22 22 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (22 22 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (18 18 (:REWRITE DEFAULT-CAR))
 (17 9 (:REWRITE ACL2PL::TTERM-CASE-CONSTANT-LISTP-WHEN-NOT-CONSP))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 2 (:REWRITE ACL2PL::TTERM-CASE-OF-CAR-WHEN-TTERM-CASE-CONSTANT-LISTP))
 (10 2 (:REWRITE ACL2PL::TTERM-CASE-CONSTANT-LISTP-OF-CDR-WHEN-TTERM-CASE-CONSTANT-LISTP))
 )
(ACL2PL::GET-LEFTMOST-NONCONST-OF-TTERM-LIST-FIX-TERMS
 (321 57 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (265 105 (:REWRITE DEFAULT-CDR))
 (229 44 (:REWRITE ACL2PL::TTERM-LIST-FIX-WHEN-TTERM-LISTP))
 (227 43 (:REWRITE ACL2PL::TTERM-LISTP-OF-CDR-WHEN-TTERM-LISTP))
 (218 83 (:REWRITE DEFAULT-CAR))
 (169 169 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (169 169 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (150 57 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (118 106 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (114 114 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 )
(ACL2PL::GET-LEFTMOST-NONCONST-TTERM-LIST-EQUIV-CONGRUENCE-ON-TERMS)
(ACL2PL::PUT-LEFTMOST-NONCONST
 (27 1 (:DEFINITION ACL2PL::PUT-LEFTMOST-NONCONST))
 (19 5 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (13 1 (:REWRITE ACL2PL::TTERM-FIX-WHEN-TTERMP))
 (12 8 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (12 3 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (6 6 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (6 1 (:REWRITE ACL2PL::TTERM-LIST-FIX-WHEN-TTERM-LISTP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(ACL2PL::BOOLEANP-OF-PUT-LEFTMOST-NONCONST.FOUNDP
 (14 14 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (14 14 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 1 (:REWRITE ACL2PL::TTERM-FIX-WHEN-TTERMP))
 (9 4 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::TTERM-LISTP))
 (4 1 (:REWRITE ACL2PL::TTERMP-OF-CAR-WHEN-TTERM-LISTP))
 (4 1 (:REWRITE ACL2PL::TTERM-LIST-FIX-WHEN-TTERM-LISTP))
 (3 3 (:TYPE-PRESCRIPTION ACL2PL::TTERMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::TTERM-LIST-FIX$INLINE))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (2 2 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (2 1 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (1 1 (:REWRITE ACL2PL::CONSP-OF-TTERM-LIST-FIX))
 )
(ACL2PL::TTERM-LISTP-OF-PUT-LEFTMOST-NONCONST.NEW-TERMS
 (56 20 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (29 29 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (29 29 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (12 12 (:REWRITE DEFAULT-CAR))
 (12 1 (:REWRITE ACL2PL::TTERM-FIX-WHEN-TTERMP))
 (10 5 (:REWRITE DEFAULT-CDR))
 (5 2 (:REWRITE ACL2PL::TTERM-LIST-FIX-WHEN-TTERM-LISTP))
 (4 1 (:REWRITE ACL2PL::TTERMP-OF-CAR-WHEN-TTERM-LISTP))
 (1 1 (:REWRITE ACL2PL::CONSP-OF-TTERM-LIST-FIX))
 )
(ACL2PL::PUT-LEFTMOST-NONCONST-OF-TTERM-LIST-FIX-TERMS
 (1117 354 (:REWRITE DEFAULT-CDR))
 (710 135 (:REWRITE ACL2PL::TTERM-LISTP-OF-CDR-WHEN-TTERM-LISTP))
 (610 111 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (474 211 (:REWRITE DEFAULT-CAR))
 (400 400 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (400 400 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (380 327 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (277 111 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (222 222 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 )
(ACL2PL::PUT-LEFTMOST-NONCONST-TTERM-LIST-EQUIV-CONGRUENCE-ON-TERMS)
(ACL2PL::PUT-LEFTMOST-NONCONST-OF-VALUE-FIX-VALUE
 (56 4 (:REWRITE ACL2PL::TTERM-FIX-WHEN-TTERMP))
 (48 6 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 (38 14 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE ACL2PL::VALUEP-WHEN-MAYBE-VALUEP))
 (24 4 (:REWRITE ACL2PL::TTERMP-OF-CAR-WHEN-TTERM-LISTP))
 (24 4 (:REWRITE ACL2PL::TTERM-LIST-FIX-WHEN-TTERM-LISTP))
 (20 4 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (19 15 (:REWRITE DEFAULT-CAR))
 (18 18 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 (16 4 (:REWRITE ACL2PL::TTERM-LISTP-OF-CDR-WHEN-TTERM-LISTP))
 (12 12 (:TYPE-PRESCRIPTION ACL2PL::TTERMP))
 (12 12 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-VALUEP))
 (12 12 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (12 6 (:REWRITE ACL2PL::MAYBE-VALUEP-WHEN-VALUEP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (8 8 (:TYPE-PRESCRIPTION ACL2PL::TTERM-LIST-FIX$INLINE))
 (8 8 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (8 4 (:REWRITE ACL2PL::MAYBE-TTERMP-WHEN-TTERMP))
 (4 4 (:REWRITE ACL2PL::CONSP-OF-TTERM-LIST-FIX))
 )
(ACL2PL::PUT-LEFTMOST-NONCONST-VALUE-EQUIV-CONGRUENCE-ON-VALUE)
(ACL2PL::CALL-PRIMITIVE-FUNCTION
 (1210 605 (:REWRITE DEFAULT-+-2))
 (992 920 (:REWRITE DEFAULT-CDR))
 (839 839 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (839 839 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (605 605 (:REWRITE DEFAULT-+-1))
 (535 86 (:REWRITE ACL2PL::VALUEP-WHEN-MAYBE-VALUEP))
 (406 43 (:REWRITE ACL2PL::MAYBE-VALUEP-WHEN-VALUEP))
 (161 75 (:REWRITE DEFAULT-CAR))
 (129 129 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-VALUEP))
 (96 48 (:REWRITE ACL2PL::VALUE-LISTP-WHEN-NOT-CONSP))
 (43 43 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 )
(ACL2PL::MAYBE-VALUEP-OF-CALL-PRIMITIVE-FUNCTION)
(ACL2PL::CALL-PRIMITIVE-FUNCTION-OF-VALUE-LIST-FIX-ARGUMENTS
 (631 64 (:REWRITE ACL2PL::SYMBOL-VALUE-FIX-WHEN-SYMBOL-VALUEP))
 (448 64 (:DEFINITION LEN))
 (386 150 (:REWRITE DEFAULT-CAR))
 (315 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-MAYBE-SYMBOL-VALUEP))
 (260 152 (:REWRITE DEFAULT-CDR))
 (189 189 (:TYPE-PRESCRIPTION ACL2PL::SYMBOL-VALUEP))
 (173 173 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (173 173 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (128 64 (:REWRITE DEFAULT-+-2))
 (126 126 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-SYMBOL-VALUEP))
 (126 63 (:REWRITE ACL2PL::MAYBE-SYMBOL-VALUEP-WHEN-SYMBOL-VALUEP))
 (64 64 (:REWRITE DEFAULT-+-1))
 (63 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-SYMBOL-VALUE-SETP-BINDS-FREE-X))
 (63 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-BINDINGP-BINDS-FREE-X))
 (6 1 (:REWRITE ACL2PL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (3 1 (:REWRITE ACL2PL::VALUE-LISTP-WHEN-NOT-CONSP))
 )
(ACL2PL::CALL-PRIMITIVE-FUNCTION-VALUE-LIST-EQUIV-CONGRUENCE-ON-ARGUMENTS)
(ACL2PL::CALL-PRIMITIVE-FUNCTION-OF-PROGRAM-FIX-PROGRAM
 (631 64 (:REWRITE ACL2PL::SYMBOL-VALUE-FIX-WHEN-SYMBOL-VALUEP))
 (448 64 (:DEFINITION LEN))
 (386 150 (:REWRITE DEFAULT-CAR))
 (315 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-MAYBE-SYMBOL-VALUEP))
 (260 152 (:REWRITE DEFAULT-CDR))
 (189 189 (:TYPE-PRESCRIPTION ACL2PL::SYMBOL-VALUEP))
 (172 172 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (172 172 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (128 64 (:REWRITE DEFAULT-+-2))
 (126 126 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-SYMBOL-VALUEP))
 (126 63 (:REWRITE ACL2PL::MAYBE-SYMBOL-VALUEP-WHEN-SYMBOL-VALUEP))
 (64 64 (:REWRITE DEFAULT-+-1))
 (63 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-SYMBOL-VALUE-SETP-BINDS-FREE-X))
 (63 63 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-BINDINGP-BINDS-FREE-X))
 (3 1 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 )
(ACL2PL::CALL-PRIMITIVE-FUNCTION-PROGRAM-EQUIV-CONGRUENCE-ON-PROGRAM)
(ACL2PL::STEP-FROM-TRANS
 (106 82 (:REWRITE DEFAULT-CDR))
 (102 71 (:REWRITE DEFAULT-CAR))
 (80 80 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (80 80 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (70 35 (:REWRITE DEFAULT-+-2))
 (41 31 (:REWRITE ACL2PL::STACKP-WHEN-NOT-CONSP))
 (35 35 (:REWRITE DEFAULT-+-1))
 (19 4 (:REWRITE ACL2PL::TTERM-CONSTANT-LIST->VALUE-LIST-WHEN-NOT-CONSP))
 (11 3 (:REWRITE ACL2PL::VALUEP-WHEN-MAYBE-VALUEP))
 (10 6 (:REWRITE ACL2PL::TTERM-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE ACL2PL::SYMBOL-VALUEP-WHEN-IN-BINDINGP-BINDS-FREE-X))
 (3 1 (:REWRITE OMAP::UPDATE*-WHEN-RIGHT-EMPTY))
 (3 1 (:REWRITE OMAP::UPDATE*-WHEN-LEFT-EMPTY))
 (3 1 (:REWRITE OMAP::IN-WHEN-EMPTY))
 (1 1 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-VALUEP))
 (1 1 (:REWRITE ACL2PL::MAYBE-VALUEP-OF-CALL-PRIMITIVE-FUNCTION))
 (1 1 (:REWRITE ACL2PL::MAYBE-TTERMP-OF-GET-LEFTMOST-NONCONST))
 (1 1 (:REWRITE ACL2PL::FUNCTIONP-WHEN-IN-FUNCTION-SETP-BINDS-FREE-X))
 )
(ACL2PL::EVAL-STATE-P-OF-STEP-FROM-TRANS)
(ACL2PL::STEP-FROM-TRANS-OF-STACK-FIX-STACK
 (303 110 (:REWRITE DEFAULT-CDR))
 (108 108 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (108 108 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (90 10 (:DEFINITION LEN))
 (78 19 (:REWRITE ACL2PL::STACK-FIX-WHEN-STACKP))
 (43 8 (:REWRITE ACL2PL::TTERM-CONSTANT-LIST->VALUE-LIST-WHEN-NOT-CONSP))
 (25 2 (:REWRITE ACL2PL::VALUEP-WHEN-MAYBE-VALUEP))
 (21 19 (:REWRITE ACL2PL::STACKP-WHEN-NOT-CONSP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (15 2 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (9 2 (:REWRITE ACL2PL::FUNCTIONP-WHEN-MAYBE-FUNCTIONP))
 (6 2 (:REWRITE OMAP::UPDATE*-WHEN-RIGHT-EMPTY))
 (6 2 (:REWRITE OMAP::UPDATE*-WHEN-LEFT-EMPTY))
 (6 2 (:REWRITE OMAP::IN-WHEN-EMPTY))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-VALUEP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-FUNCTIONP))
 (2 2 (:REWRITE ACL2PL::MAYBE-VALUEP-OF-CALL-PRIMITIVE-FUNCTION))
 (2 2 (:REWRITE ACL2PL::MAYBE-TTERMP-OF-GET-LEFTMOST-NONCONST))
 (2 2 (:REWRITE ACL2PL::MAYBE-FUNCTIONP-OF-FUNCTION-LOOKUP))
 (2 2 (:REWRITE ACL2PL::FUNCTIONP-WHEN-IN-FUNCTION-SETP-BINDS-FREE-X))
 )
(ACL2PL::STEP-FROM-TRANS-STACK-EQUIV-CONGRUENCE-ON-STACK)
(ACL2PL::STEP-FROM-TRANS-OF-PROGRAM-FIX-PROGRAM
 (90 10 (:DEFINITION LEN))
 (66 32 (:REWRITE DEFAULT-CDR))
 (56 22 (:REWRITE DEFAULT-CAR))
 (38 8 (:REWRITE ACL2PL::TTERM-CONSTANT-LIST->VALUE-LIST-WHEN-NOT-CONSP))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (20 10 (:REWRITE DEFAULT-+-2))
 (18 2 (:REWRITE ACL2PL::VALUEP-WHEN-MAYBE-VALUEP))
 (14 2 (:REWRITE ACL2PL::TTERMP-WHEN-MAYBE-TTERMP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE ACL2PL::FUNCTIONP-WHEN-MAYBE-FUNCTIONP))
 (6 2 (:REWRITE OMAP::UPDATE*-WHEN-RIGHT-EMPTY))
 (6 2 (:REWRITE OMAP::UPDATE*-WHEN-LEFT-EMPTY))
 (6 2 (:REWRITE OMAP::IN-WHEN-EMPTY))
 (3 1 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-VALUEP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-TTERMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::MAYBE-FUNCTIONP))
 (2 2 (:REWRITE ACL2PL::MAYBE-VALUEP-OF-CALL-PRIMITIVE-FUNCTION))
 (2 2 (:REWRITE ACL2PL::MAYBE-TTERMP-OF-GET-LEFTMOST-NONCONST))
 (2 2 (:REWRITE ACL2PL::MAYBE-FUNCTIONP-OF-FUNCTION-LOOKUP))
 (2 2 (:REWRITE ACL2PL::FUNCTIONP-WHEN-IN-FUNCTION-SETP-BINDS-FREE-X))
 )
(ACL2PL::STEP-FROM-TRANS-PROGRAM-EQUIV-CONGRUENCE-ON-PROGRAM)
(ACL2PL::STEP
 (3 3 (:REWRITE SUBSETP-MEMBER . 4))
 (3 3 (:REWRITE SUBSETP-MEMBER . 3))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 3))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(ACL2PL::EVAL-STATE-P-OF-STEP)
(ACL2PL::STEP-OF-EVAL-STATE-FIX-ESTATE
 (6 3 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-ERROR))
 )
(ACL2PL::STEP-EVAL-STATE-EQUIV-CONGRUENCE-ON-ESTATE)
(ACL2PL::STEP-OF-PROGRAM-FIX-PROGRAM
 (6 2 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::EVAL-STATE-P))
 (4 2 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-ERROR))
 (3 1 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 )
(ACL2PL::STEP-PROGRAM-EQUIV-CONGRUENCE-ON-PROGRAM)
(ACL2PL::STEPN
 (21 21 (:REWRITE SUBSETP-MEMBER . 4))
 (21 21 (:REWRITE SUBSETP-MEMBER . 3))
 (21 21 (:REWRITE SUBSETP-MEMBER . 2))
 (21 21 (:REWRITE SUBSETP-MEMBER . 1))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 3))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 2))
 (9 9 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(ACL2PL::EVAL-STATE-P-OF-STEPN
 (14 14 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE SUBSETP-MEMBER . 4))
 (9 9 (:REWRITE SUBSETP-MEMBER . 3))
 (9 9 (:REWRITE SUBSETP-MEMBER . 2))
 (9 9 (:REWRITE SUBSETP-MEMBER . 1))
 (9 9 (:REWRITE INTERSECTP-MEMBER . 3))
 (9 9 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 2 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(ACL2PL::STEPN-OF-EVAL-STATE-FIX-ESTATE
 (15 15 (:REWRITE SUBSETP-MEMBER . 4))
 (15 15 (:REWRITE SUBSETP-MEMBER . 3))
 (15 15 (:REWRITE SUBSETP-MEMBER . 2))
 (15 15 (:REWRITE SUBSETP-MEMBER . 1))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 3))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 2))
 (7 4 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ACL2PL::STEPN-EVAL-STATE-EQUIV-CONGRUENCE-ON-ESTATE)
(ACL2PL::STEPN-OF-NFIX-N
 (22 6 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (15 15 (:REWRITE SUBSETP-MEMBER . 4))
 (15 15 (:REWRITE SUBSETP-MEMBER . 3))
 (15 15 (:REWRITE SUBSETP-MEMBER . 2))
 (15 15 (:REWRITE SUBSETP-MEMBER . 1))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 3))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 2))
 (10 10 (:TYPE-PRESCRIPTION ACL2PL::EVAL-STATE-P))
 (7 4 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::STEP))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE ACL2PL::EVAL-STATE-P-OF-STEP))
 )
(ACL2PL::STEPN-NAT-EQUIV-CONGRUENCE-ON-N)
(ACL2PL::STEPN-OF-PROGRAM-FIX-PROGRAM
 (22 6 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (15 15 (:REWRITE SUBSETP-MEMBER . 4))
 (15 15 (:REWRITE SUBSETP-MEMBER . 3))
 (15 15 (:REWRITE SUBSETP-MEMBER . 2))
 (15 15 (:REWRITE SUBSETP-MEMBER . 1))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 3))
 (15 15 (:REWRITE INTERSECTP-MEMBER . 2))
 (15 5 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (10 10 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 (10 10 (:TYPE-PRESCRIPTION ACL2PL::EVAL-STATE-P))
 (7 4 (:REWRITE ZP-OPEN))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::STEP))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE ACL2PL::EVAL-STATE-P-OF-STEP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ACL2PL::STEPN-PROGRAM-EQUIV-CONGRUENCE-ON-PROGRAM)
(ACL2PL::TERMINATINGP)
(ACL2PL::TERMINATINGP-SUFF)
(ACL2PL::BOOLEANP-OF-TERMINATINGP)
(ACL2PL::TERMINATINGP)
(ACL2PL::TERMINATINGP-OF-EVAL-STATE-FIX-ESTATE
 (138 46 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (129 129 (:REWRITE SUBSETP-MEMBER . 4))
 (129 129 (:REWRITE SUBSETP-MEMBER . 3))
 (129 129 (:REWRITE SUBSETP-MEMBER . 2))
 (129 129 (:REWRITE SUBSETP-MEMBER . 1))
 (129 129 (:REWRITE INTERSECTP-MEMBER . 3))
 (129 129 (:REWRITE INTERSECTP-MEMBER . 2))
 (92 92 (:TYPE-PRESCRIPTION ACL2PL::EVAL-STATE-P))
 (92 46 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-ERROR))
 (90 30 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (60 60 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 (47 47 (:REWRITE DEFAULT-<-2))
 (47 47 (:REWRITE DEFAULT-<-1))
 )
(ACL2PL::TERMINATINGP-EVAL-STATE-EQUIV-CONGRUENCE-ON-ESTATE)
(ACL2PL::TERMINATINGP-OF-PROGRAM-FIX-PROGRAM
 (276 92 (:REWRITE ACL2PL::PROGRAM-FIX-WHEN-PROGRAMP))
 (184 184 (:TYPE-PRESCRIPTION ACL2PL::PROGRAMP))
 (132 132 (:REWRITE SUBSETP-MEMBER . 4))
 (132 132 (:REWRITE SUBSETP-MEMBER . 3))
 (132 132 (:REWRITE SUBSETP-MEMBER . 2))
 (132 132 (:REWRITE SUBSETP-MEMBER . 1))
 (132 132 (:REWRITE INTERSECTP-MEMBER . 3))
 (132 132 (:REWRITE INTERSECTP-MEMBER . 2))
 (56 56 (:REWRITE DEFAULT-<-2))
 (56 56 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-EVAL-STATE-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::EVAL-STATE-P))
 (4 2 (:REWRITE ACL2PL::EVAL-STATE-FIX-WHEN-ERROR))
 )
(ACL2PL::TERMINATINGP-PROGRAM-EQUIV-CONGRUENCE-ON-PROGRAM)
(ACL2PL::NATP-OF-TERMINATINGP-WITNESS-WHEN-TERMINATINGP
 (1 1 (:REWRITE ACL2PL::TERMINATINGP-SUFF))
 )
(ACL2PL::TERMINATING-STATE-IS-FINAL-OR-ERROR
 (8 4 (:TYPE-PRESCRIPTION ACL2PL::NATP-OF-TERMINATINGP-WITNESS-WHEN-TERMINATINGP))
 (1 1 (:REWRITE ACL2PL::TERMINATINGP-SUFF))
 (1 1 (:REWRITE SUBSETP-MEMBER . 4))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 2))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ACL2PL::EXEC-OUTCOME-P)
(ACL2PL::CONSP-WHEN-EXEC-OUTCOME-P)
(ACL2PL::EXEC-OUTCOME-KIND$INLINE)
(ACL2PL::EXEC-OUTCOME-KIND-POSSIBILITIES)
(ACL2PL::EXEC-OUTCOME-FIX$INLINE)
(ACL2PL::EXEC-OUTCOME-P-OF-EXEC-OUTCOME-FIX
 (12 4 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 (8 8 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 )
(ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P)
(ACL2PL::EXEC-OUTCOME-FIX$INLINE)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(ACL2PL::EXEC-OUTCOME-EQUIV$INLINE)
(ACL2PL::EXEC-OUTCOME-EQUIV-IS-AN-EQUIVALENCE)
(ACL2PL::EXEC-OUTCOME-EQUIV-IMPLIES-EQUAL-EXEC-OUTCOME-FIX-1)
(ACL2PL::EXEC-OUTCOME-FIX-UNDER-EXEC-OUTCOME-EQUIV)
(ACL2PL::EQUAL-OF-EXEC-OUTCOME-FIX-1-FORWARD-TO-EXEC-OUTCOME-EQUIV)
(ACL2PL::EQUAL-OF-EXEC-OUTCOME-FIX-2-FORWARD-TO-EXEC-OUTCOME-EQUIV)
(ACL2PL::EXEC-OUTCOME-EQUIV-OF-EXEC-OUTCOME-FIX-1-FORWARD)
(ACL2PL::EXEC-OUTCOME-EQUIV-OF-EXEC-OUTCOME-FIX-2-FORWARD)
(ACL2PL::EXEC-OUTCOME-KIND$INLINE-OF-EXEC-OUTCOME-FIX-X
 (13 9 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 (1 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 )
(ACL2PL::EXEC-OUTCOME-KIND$INLINE-EXEC-OUTCOME-EQUIV-CONGRUENCE-ON-X)
(ACL2PL::CONSP-OF-EXEC-OUTCOME-FIX)
(ACL2PL::TAG-WHEN-EXEC-OUTCOME-P-FORWARD)
(ACL2PL::TAG-OF-EXEC-OUTCOME-FIX)
(ACL2PL::EXEC-OUTCOME-TERMINATING->RESULT$INLINE)
(ACL2PL::VALUEP-OF-EXEC-OUTCOME-TERMINATING->RESULT
 (3 1 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 )
(ACL2PL::EXEC-OUTCOME-TERMINATING->RESULT$INLINE-OF-EXEC-OUTCOME-FIX-X
 (13 5 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (8 8 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 )
(ACL2PL::EXEC-OUTCOME-TERMINATING->RESULT$INLINE-EXEC-OUTCOME-EQUIV-CONGRUENCE-ON-X)
(ACL2PL::EXEC-OUTCOME-TERMINATING->RESULT-WHEN-WRONG-KIND
 (6 2 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 )
(ACL2PL::EXEC-OUTCOME-TERMINATING)
(ACL2PL::RETURN-TYPE-OF-EXEC-OUTCOME-TERMINATING
 (3 1 (:REWRITE ACL2PL::VALUE-FIX-WHEN-VALUEP))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::VALUEP))
 )
(ACL2PL::EXEC-OUTCOME-TERMINATING->RESULT-OF-EXEC-OUTCOME-TERMINATING)
(ACL2PL::EXEC-OUTCOME-TERMINATING-OF-FIELDS
 (3 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 )
(ACL2PL::EXEC-OUTCOME-FIX-WHEN-TERMINATING
 (3 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 )
(ACL2PL::EQUAL-OF-EXEC-OUTCOME-TERMINATING)
(ACL2PL::EXEC-OUTCOME-TERMINATING-OF-VALUE-FIX-RESULT)
(ACL2PL::EXEC-OUTCOME-TERMINATING-VALUE-EQUIV-CONGRUENCE-ON-RESULT)
(ACL2PL::EXEC-OUTCOME-ERROR)
(ACL2PL::RETURN-TYPE-OF-EXEC-OUTCOME-ERROR)
(ACL2PL::EXEC-OUTCOME-FIX-WHEN-ERROR
 (3 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 )
(ACL2PL::EQUAL-OF-EXEC-OUTCOME-ERROR)
(ACL2PL::EXEC-OUTCOME-NONTERMINATING)
(ACL2PL::RETURN-TYPE-OF-EXEC-OUTCOME-NONTERMINATING)
(ACL2PL::EXEC-OUTCOME-FIX-WHEN-NONTERMINATING
 (3 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 (1 1 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-ERROR))
 )
(ACL2PL::EQUAL-OF-EXEC-OUTCOME-NONTERMINATING
 (2 2 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-ERROR))
 )
(ACL2PL::EXEC-OUTCOME-FIX-REDEF
 (6 2 (:REWRITE ACL2PL::EXEC-OUTCOME-FIX-WHEN-EXEC-OUTCOME-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2PL::EXEC-OUTCOME-P))
 )
(ACL2PL::STEP*
 (3 3 (:REWRITE SUBSETP-MEMBER . 4))
 (3 3 (:REWRITE SUBSETP-MEMBER . 3))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 3))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(ACL2PL::EXEC-OUTCOME-P-OF-STEP*)
(ACL2PL::EXEC-CALL)
(ACL2PL::EXEC-OUTCOME-P-OF-EXEC-CALL)
