(REV)
(COORDINATEP)
(2D-MESH-NODESETP)
(X-DIM-GEN)
(ALL-COORDINATEP-X-DIM-GEN
 (21 20 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 (13 12 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE ZP-OPEN))
 )
(COORD-GENERATOR-1)
(VALID-COORDINATES-COORD-GEN-1
 (340 310 (:REWRITE DEFAULT-CDR))
 (263 233 (:REWRITE DEFAULT-CAR))
 (161 161 (:REWRITE DEFAULT-<-2))
 (161 161 (:REWRITE DEFAULT-<-1))
 (144 24 (:DEFINITION X-DIM-GEN))
 (71 71 (:REWRITE DEFAULT-+-2))
 (71 71 (:REWRITE DEFAULT-+-1))
 (67 55 (:REWRITE ZP-OPEN))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COORD-GEN)
(VALID-COORDINATES-COORD-GEN
 (1597 1559 (:REWRITE DEFAULT-<-1))
 (1559 1559 (:REWRITE DEFAULT-<-2))
 (293 269 (:REWRITE ZP-OPEN))
 (109 109 (:REWRITE DEFAULT-+-2))
 (109 109 (:REWRITE DEFAULT-+-1))
 (48 16 (:REWRITE FOLD-CONSTS-IN-+))
 (38 38 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MESH-HYPS)
(MESH-NODESET-GEN)
(SUBSETS-ARE-VALID-MESH-NODESETP
 (356 324 (:REWRITE DEFAULT-<-1))
 (324 324 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CHECK-2D-MESH-NODESET
 (17 1 (:DEFINITION 2D-MESH-NODESETP))
 (13 13 (:REWRITE DEFAULT-CDR))
 (13 1 (:DEFINITION COORDINATEP))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 1 (:DEFINITION SUBSETP-EQUAL))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION MEMBER-EQUAL))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
