(STD::DISABLED-RULE)
(ALL-INTEGERP)
(ALL-INTEGERP-NECC)
(BOOLEANP-OF-ALL-INTEGERP)
(SOME-INTEGERP)
(SOME-INTEGERP-SUFF)
(BOOLEANP-OF-SOME-INTEGERP)
(INTERSECTION-FULLY-NATURALP)
(INTERSECTION-FULLY-NATURALP-NECC)
(BOOLEANP-OF-INTERSECTION-FULLY-NATURALP)
(GOOFY-BAD-REWRITE-RULE-P)
(GOOFY-BAD-REWRITE-RULE-P-NECC)
(BOOLEANP-OF-GOOFY-BAD-REWRITE-RULE-P)
(INTEGERP-WHEN-MEMBER-OF-INTEGER-LISTP
 (10 10 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(REAL/RATIONALP-WHEN-INTEGERP)
(EQLABLE-LISTP-WHEN-INTEGER-LISTP
 (11 11 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE INTEGERP-WHEN-MEMBER-OF-INTEGER-LISTP))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(POSITIVE-INTERSECTION-P-FN)
(POSITIVE-INTERSECTION-P-NECC)
(BOOLEANP-OF-POSITIVE-INTERSECTION-P)
(POSITIVE-INTERSECTION-P-FN
 (24 2 (:DEFINITION INTEGER-LISTP))
 (21 5 (:DEFINITION MEMBER-EQUAL))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 )
(POSITIVE-INTERSECTION-P-WHEN-ATOM)
(CROCK
 (15 15 (:REWRITE DEFAULT-CAR))
 (12 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CROCK2)
(CROCK3)
(EQLABLE-LISTP-WHEN-NAT-LISTP
 (15 15 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(ALL-GREATER-P-FOR-DEFUN-SK)
(ALL-GREATER-P-FOR-DEFUN-SK-NECC)
(ALL-GREATER-P-FOR-DEFUN-SK
 (16 2 (:REWRITE CROCK2))
 (12 3 (:DEFINITION MEMBER-EQUAL))
 (8 1 (:DEFINITION NAT-LISTP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 )
(ALL-GREATER-P)
(ALL-GREATER-P-NECC)
(BOOLEANP-OF-ALL-GREATER-P)
(ALL-GREATER-P
 (17 2 (:REWRITE CROCK2))
 (12 3 (:DEFINITION MEMBER-EQUAL))
 (9 1 (:DEFINITION NAT-LISTP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE ALL-GREATER-P-NECC))
 (2 2 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 )
(WEIRD-QUANTIFIER)
(WEIRD-QUANTIFIER-NECC)
(WEIRDER-QUANTIFIER)
(WEIRDER-QUANTIFIER-NECC)
(WEIRD-QUANTIFIER-RETURNSPEC)
(WEIRD-QUANTIFIER-RETURNSPEC-NECC)
(RETURN-TYPE-OF-WEIRD-QUANTIFIER-RETURNSPEC)
(WEIRD-QUANTIFIER-RETURNSPEC)
(WEIRD-QUANTIFIER-2-RETURNSPEC)
(WEIRD-QUANTIFIER-2-RETURNSPEC-NECC)
(WEIRD-QUANTIFIER-2-RETURNSPEC)
(WEIRD-QUANTIFIER-3-RETURNSPEC)
(WEIRD-QUANTIFIER-3-RETURNSPEC-NECC)
(NATP-OF-WEIRD-QUANTIFIER-3-RETURNSPEC.FOO
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(NATP-OF-WEIRD-QUANTIFIER-3-RETURNSPEC.BAR
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(WEIRD-QUANTIFIER-3-RETURNSPEC)
(FOO-NON-INFINITE-P)
(FOO-NON-INFINITE-P-SUFF)
(BOOLEANP-OF-FOO-NON-INFINITE-P)
(FOO-NON-INFINITE-P
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(BAR-NON-INFINITE-P)
(BAR-NON-INFINITE-P-SUFF)
(BOOLEANP-OF-BAR-NON-INFINITE-P)
(BAR-NON-INFINITE-P
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE INTERSECTION-FULLY-NATURALP-NECC))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(WEIRD-STOBJ-MODIFYING-QUANTIFIER)
(WEIRD-STOBJ-MODIFYING-QUANTIFIER-NECC)
(WEIRD-STOBJ-MODIFYING-QUANTIFIER)
(WEIRD-STOBJ-MODIFYING-QUANTIFIER3)
(WEIRD-STOBJ-MODIFYING-QUANTIFIER3-NECC)
(WEIRD-STOBJ-MODIFYING-QUANTIFIER3)
(QFMISC1)
(QFMISC1-SPECIAL-NAME)
(BOOLEANP-OF-QFMISC1)
(QFMISC1)
(QFMISC2)
(QFMISC2-NECC)
(BOOLEANP-OF-QFMISC2)
(QFMISC2)
(FORALL
 (1 1 (:TYPE-PRESCRIPTION FORALL))
 )
(QUANT-OK-TEST)
(QUANT-OK-TEST-NECC)
(BOOLEANP-OF-QUANT-OK-TEST)
(QUANT-OK-TEST)
(QFMISC3-WITNESS-STRENGTHEN)
(QFMISC3)
(QFMISC3-NECC)
(BOOLEANP-OF-QFMISC3)
(QFMISC3)
