(INTEGER-LISTP-OF-CDR
 (10 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (5 5 (:TYPE-PRESCRIPTION LEN))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (1 1 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(INTEGER-LISTP-OF-TAKE-2
 (299 36 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (94 34 (:REWRITE DEFAULT-CAR))
 (76 52 (:REWRITE DEFAULT-<-2))
 (71 27 (:REWRITE DEFAULT-CDR))
 (68 17 (:REWRITE INTEGER-LISTP-OF-CDR))
 (64 52 (:REWRITE DEFAULT-<-1))
 (58 49 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (39 24 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (36 36 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (27 27 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (15 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE ZP-OPEN))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-BETTER
 (56 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (23 5 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 2 (:REWRITE INTEGER-LISTP-OF-CDR))
 (6 6 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-CHEAP
 (29 4 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (23 1 (:DEFINITION INTEGER-LISTP))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (11 2 (:REWRITE DEFAULT-CAR))
 (5 3 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE INTEGER-LISTP-OF-CDR))
 (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(INTEGER-LISTP-OF-UPDATE-NTH-BETTER
 (74 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (40 14 (:REWRITE DEFAULT-CDR))
 (40 8 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-BETTER))
 (25 15 (:REWRITE DEFAULT-CAR))
 (20 16 (:REWRITE DEFAULT-<-1))
 (19 16 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (16 8 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-CHEAP))
 (16 6 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (13 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(INTEGERP-OF-NTH-WHEN-INTEGER-LISTP-CHEAP
 (41 8 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-BETTER))
 (21 11 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (17 7 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (16 8 (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP-CHEAP))
 (12 8 (:REWRITE DEFAULT-<-2))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE INTEGER-LISTP-OF-CDR))
 (8 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE ZP-OPEN))
 )
