(BNEXT
 (26 13 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE LEXORDER-TRANSITIVE))
 (1 1 (:TYPE-PRESCRIPTION BNEXT))
 )
(HOW-MANY-SMALLER)
(BNEXT-SIZE)
(HOW-MANY-SMALLER-BNEXT
 (285 258 (:REWRITE DEFAULT-CDR))
 (217 199 (:REWRITE DEFAULT-CAR))
 (94 47 (:REWRITE DEFAULT-+-2))
 (47 47 (:REWRITE DEFAULT-+-1))
 )
(HOW-MANY-BAD-PAIRS-BNEXT
 (377 354 (:REWRITE DEFAULT-CDR))
 (269 253 (:REWRITE DEFAULT-CAR))
 (237 113 (:REWRITE DEFAULT-+-2))
 (185 113 (:REWRITE DEFAULT-+-1))
 (29 10 (:REWRITE DEFAULT-<-2))
 (28 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 )
(BSORT
 (124 5 (:DEFINITION BNEXT-SIZE))
 (55 5 (:DEFINITION HOW-MANY-SMALLER))
 (45 45 (:TYPE-PRESCRIPTION BNEXT))
 (43 43 (:REWRITE DEFAULT-CDR))
 (42 3 (:DEFINITION BNEXT))
 (30 30 (:REWRITE DEFAULT-CAR))
 (30 15 (:REWRITE DEFAULT-+-2))
 (25 15 (:REWRITE DEFAULT-+-1))
 (25 5 (:REWRITE COMMUTATIVITY-OF-+))
 (15 15 (:TYPE-PRESCRIPTION HOW-MANY-SMALLER))
 (8 8 (:TYPE-PRESCRIPTION LEXORDER))
 (8 8 (:REWRITE LEXORDER-TRANSITIVE))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 )
(ORDEREDP-WHEN-BNEXT-CONSTANT
 (329 306 (:REWRITE DEFAULT-CDR))
 )
(ORDEREDP-BSORT
 (120 116 (:REWRITE DEFAULT-CDR))
 (100 96 (:REWRITE DEFAULT-CAR))
 (90 90 (:TYPE-PRESCRIPTION BNEXT))
 (20 20 (:REWRITE LEXORDER-TRANSITIVE))
 )
(TRUE-LISTP-BNEXT
 (31 29 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 )
(TRUE-LISTP-BSORT
 (55 55 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (14 7 (:DEFINITION TRUE-LISTP))
 (8 8 (:REWRITE LEXORDER-TRANSITIVE))
 )
(HOW-MANY-BNEXT
 (284 257 (:REWRITE DEFAULT-CDR))
 (226 206 (:REWRITE DEFAULT-CAR))
 (64 32 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE DEFAULT-+-1))
 )
(HOW-MANY-BSORT
 (262 30 (:REWRITE NOT-MEMB-IMPLIES-HOW-MANY-IS-0))
 (174 29 (:DEFINITION MEMB))
 (97 97 (:REWRITE DEFAULT-CDR))
 (79 79 (:REWRITE DEFAULT-CAR))
 (48 48 (:TYPE-PRESCRIPTION BNEXT))
 (20 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE LEXORDER-TRANSITIVE))
 )
