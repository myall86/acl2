(MIN-GEQ-10.ELEMENTP)
(MIN-GEQ-10.ELEMENTP)
(MIN-GEQ-10.LBOUNDP)
(MIN-GEQ-10.LBOUNDP-NECC)
(MIN-GEQ-10.LBOUNDP)
(BOOLEANP-OFMIN-GEQ-10.LBOUNDP)
(MIN-GEQ-10.EXISTSP)
(MIN-GEQ-10.EXISTSP-SUFF)
(MIN-GEQ-10.EXISTSP)
(BOOLEANP-OFMIN-GEQ-10.EXISTSP)
(MIN-GEQ-10)
(MIN-GEQ-10)
(MAYBE-INTEGERP-OF-MIN-GEQ-10)
(INTEGERP-OF-MIN-GEQ-10-EQUAL-MIN-GEQ-10.EXISTSP)
(INTEGERP-OF-MIN-GEQ-10-WHEN-MIN-GEQ-10.EXISTSP)
(MIN-GEQ-10-IFF-MIN-GEQ-10.EXISTSP
 (14 7 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-10-WHEN-MIN-GEQ-10.EXISTSP))
 )
(NOT-MIN-GEQ-10-WHEN-NOT-MIN-GEQ-10.EXISTSP
 (3 3 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-10-WHEN-MIN-GEQ-10.EXISTSP))
 )
(MIN-GEQ-10.ELEMENTP-OF-MIN-GEQ-10-WHEN-MIN-GEQ-10.EXISTSP)
(MIN-GEQ-10.LBOUNDP-OF-MIN-GEQ-10-WHEN-EXISTSP)
(MIN-GEQ-10-LEQ-WHEN-MIN-GEQ-10.EXISTSP-LINEAR
 (40 38 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-10-WHEN-NOT-MIN-GEQ-10.EXISTSP))
 (3 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10-LEQ-WHEN-MIN-GEQ-10.EXISTSP-REWRITE)
(MIN-GEQ-10-GEQ-WHEN-MIN-GEQ-10.EXISTSP-LINEAR
 (52 49 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-10-WHEN-NOT-MIN-GEQ-10.EXISTSP))
 (3 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(MIN-GEQ-10-GEQ-WHEN-MIN-GEQ-10.EXISTSP-REWRITE)
(MIN-GEQ-10.LBOUND-LEQ-MEMBER
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10.LBOUND-NONMEMBER-GT-MEMBER)
(MIN-GEQ-10.FIND-MIN
 (17 11 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 10 (:REWRITE DEFAULT-<-2))
 (11 10 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MIN-GEQ-10.FIND-MIN-LBOUNDP-PRESERVATION
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MIN-GEQ-10.ELEMENTP-OF-FIND-MIN
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10.LBOUNDP-OF-FIND-MIN
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10.EXISTSP-WHEN-NONEMPTY-AND-BOUNDED
 (12 3 (:DEFINITION MIN-GEQ-10.FIND-MIN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(MIN-GEQ-10.EQUAL-WHEN-MEMBER-AND-LBOUND
 (152 133 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-10-WHEN-NOT-MIN-GEQ-10.EXISTSP))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10.ELEMENTP-OF-100)
(MIN-GEQ-10.LBOUNDP-OF-0
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10.EXISTSP-VIA-100-AND-0)
(MIN-GEQ-10.LBOUNDP-OF-10
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-10-IS-10
 (10 10 (:TYPE-PRESCRIPTION MIN-GEQ-10.EXISTSP))
 (10 5 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-10-WHEN-NOT-MIN-GEQ-10.EXISTSP))
 (10 5 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-10-WHEN-MIN-GEQ-10.EXISTSP))
 )
(MIN-GEQ-X.ELEMENTP)
(MIN-GEQ-X.ELEMENTP)
(MIN-GEQ-X.LBOUNDP)
(MIN-GEQ-X.LBOUNDP-NECC)
(MIN-GEQ-X.LBOUNDP)
(BOOLEANP-OFMIN-GEQ-X.LBOUNDP)
(MIN-GEQ-X.EXISTSP)
(MIN-GEQ-X.EXISTSP-SUFF)
(MIN-GEQ-X.EXISTSP)
(BOOLEANP-OFMIN-GEQ-X.EXISTSP)
(MIN-GEQ-X)
(MIN-GEQ-X)
(MAYBE-INTEGERP-OF-MIN-GEQ-X)
(INTEGERP-OF-MIN-GEQ-X-EQUAL-MIN-GEQ-X.EXISTSP)
(INTEGERP-OF-MIN-GEQ-X-WHEN-MIN-GEQ-X.EXISTSP)
(MIN-GEQ-X-IFF-MIN-GEQ-X.EXISTSP
 (14 7 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-X-WHEN-MIN-GEQ-X.EXISTSP))
 )
(NOT-MIN-GEQ-X-WHEN-NOT-MIN-GEQ-X.EXISTSP
 (3 3 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-X-WHEN-MIN-GEQ-X.EXISTSP))
 )
(MIN-GEQ-X.ELEMENTP-OF-MIN-GEQ-X-WHEN-MIN-GEQ-X.EXISTSP)
(MIN-GEQ-X.LBOUNDP-OF-MIN-GEQ-X-WHEN-EXISTSP)
(MIN-GEQ-X-LEQ-WHEN-MIN-GEQ-X.EXISTSP-LINEAR
 (45 42 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-X-WHEN-NOT-MIN-GEQ-X.EXISTSP))
 (3 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X-LEQ-WHEN-MIN-GEQ-X.EXISTSP-REWRITE)
(MIN-GEQ-X-GEQ-WHEN-MIN-GEQ-X.EXISTSP-LINEAR
 (57 53 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-X-WHEN-NOT-MIN-GEQ-X.EXISTSP))
 (3 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:LINEAR MIN-GEQ-X-LEQ-WHEN-MIN-GEQ-X.EXISTSP-LINEAR))
 )
(MIN-GEQ-X-GEQ-WHEN-MIN-GEQ-X.EXISTSP-REWRITE)
(MIN-GEQ-X.LBOUND-LEQ-MEMBER
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.LBOUND-NONMEMBER-GT-MEMBER
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.FIND-MIN
 (17 11 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 10 (:REWRITE DEFAULT-<-2))
 (11 10 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MIN-GEQ-X.FIND-MIN-LBOUNDP-PRESERVATION
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MIN-GEQ-X.ELEMENTP-OF-FIND-MIN
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.LBOUNDP-OF-FIND-MIN
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.EXISTSP-WHEN-NONEMPTY-AND-BOUNDED
 (12 3 (:DEFINITION MIN-GEQ-X.FIND-MIN))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(MIN-GEQ-X.EQUAL-WHEN-MEMBER-AND-LBOUND
 (157 138 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-X-WHEN-NOT-MIN-GEQ-X.EXISTSP))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.ELEMENTP-OF-X)
(MIN-GEQ-X.LBOUNDP-OF-X
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(MIN-GEQ-X.EXISTSP-VIA-X-AND-X)
(MIN-GEQ-X-IS-X
 (46 46 (:TYPE-PRESCRIPTION MIN-GEQ-X.EXISTSP))
 (46 23 (:TYPE-PRESCRIPTION NOT-MIN-GEQ-X-WHEN-NOT-MIN-GEQ-X.EXISTSP))
 (46 23 (:TYPE-PRESCRIPTION INTEGERP-OF-MIN-GEQ-X-WHEN-MIN-GEQ-X.EXISTSP))
 )
