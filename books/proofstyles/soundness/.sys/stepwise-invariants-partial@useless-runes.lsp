(STEP-FN
 (1 1 (:TYPE-PRESCRIPTION STEP-FN))
 )
(PRE)
(EXITPOINT)
(POST)
(INV)
(|pre satisfies inv|)
(|inv persists|)
(|inv at exit implies post|)
(RUN-FN)
(N-IS-FIRST)
(N-IS-FIRST-NECC)
(NO-EXIT
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(NO-EXIT-TO-EXITPOINT
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(NO-EXIT-TO-NO-EXIT
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(INV-AND-NO-EXIT
 (11 11 (:REWRITE |pre satisfies inv|))
 (9 9 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE NO-EXIT-TO-NO-EXIT))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(N-IS-FIRST-TO-N-IS-FIRST
 (64 64 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (28 28 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE DEFAULT-+-1))
 (20 4 (:REWRITE ZP-OPEN))
 (7 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE NO-EXIT-TO-EXITPOINT))
 (2 2 (:REWRITE NATP-RW))
 )
(INDUCTION-HINT
 (11 11 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(N-IS-FIRST-TO-NO-EXIT
 (58 58 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (13 6 (:REWRITE NO-EXIT-TO-NO-EXIT))
 (11 4 (:REWRITE ZP-OPEN))
 (8 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE NATP-RW))
 (4 1 (:REWRITE <-0-+-NEGATIVE-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(|partial correctness of stepwise invariants|
 (8 2 (:DEFINITION RUN-FN))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE NO-EXIT-TO-EXITPOINT))
 (1 1 (:REWRITE NATP-RW))
 )
