(DEFPUN-TEST)
(DEFPUN-BASE)
(DEFPUN-ST)
(DEFPUN-STN)
(DEFPUN-FN
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPUN-F)
(DEFPUN-TEST-FCH
 (4 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(DEFPUN-TEST-DEFPUN-F-DEF
 (7 1 (:DEFINITION DEFPUN-STN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(OPEN-DEFPUN-STN
 (8 2 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(|+1-1|
 (4 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(DEFPUN-ST-DEFPUN-STN-FCH
 (16 4 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFPUN-TEST-FCH))
 )
(DEFPUN-TEST-NIL-FCH
 (14 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 8 (:REWRITE OPEN-DEFPUN-STN))
 (7 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE DEFPUN-TEST-FCH))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(DEFPUN-FN-DEFPUN-ST
 (28 28 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 )
(GENERIC-TAIL-RECURSIVE-DEFPUN-F
 (31 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFPUN-TEST-DEFPUN-F-DEF))
 )
(ARITY-1-TAIL-RECURSIVE-ENCAP)
(PROBABLY-TAIL-RECURSIVEP)
(DESTRUCTURE-TAIL-RECURSION-AUX)
(DESTRUCTURE-TAIL-RECURSION)
(ARBITRARY-TAIL-RECURSIVE-ENCAP)
(REMOVE-XARGS-DOMAIN-AND-MEASURE)
(SUBST-DEFPUN-FN-INTO-PSEUDO-TERM)
(DEFAULT-DEFPUN-RULE-CLASSES
 (1 1 (:TYPE-PRESCRIPTION DEFAULT-DEFPUN-RULE-CLASSES))
 )
(DESTRUCTURE-DCL-BODY-KEYPAIRS
 (2 2 (:TYPE-PRESCRIPTION DEFAULT-DEFPUN-RULE-CLASSES))
 )
(DEFPUN-SYNTAX-ER-FN)
(DEFPUN-SYNTAX-ER)
