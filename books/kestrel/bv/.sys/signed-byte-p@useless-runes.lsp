(SIGNED-BYTE-P-CASES
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(SIGNED-BYTE-WHEN-NOT-INTEGERP-CHEAP)
(SIGNED-BYTE-WHEN-<=-OF-0-CHEAP)
(SIGNED-BYTE-P-OF-+-OF-1
 (28 9 (:REWRITE DEFAULT-<-2))
 (12 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE SIGNED-BYTE-WHEN-NOT-INTEGERP-CHEAP))
 (1 1 (:REWRITE SIGNED-BYTE-WHEN-<=-OF-0-CHEAP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SIGNED-BYTE-P-WHEN-SIGNED-BYTE-P
 (32 20 (:REWRITE DEFAULT-+-2))
 (32 20 (:REWRITE DEFAULT-+-1))
 (20 8 (:REWRITE DEFAULT-<-2))
 (16 4 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
 (4 4 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE SIGNED-BYTE-WHEN-NOT-INTEGERP-CHEAP))
 (1 1 (:REWRITE SIGNED-BYTE-WHEN-<=-OF-0-CHEAP))
 )
