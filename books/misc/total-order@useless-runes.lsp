(FAST-ALPHORDER
 (38 10 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (34 6 (:REWRITE SYMBOL-<-ASYMMETRIC))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE SYMBOL-<-TRANSITIVE))
 (10 10 (:REWRITE DEFAULT-REALPART))
 (10 2 (:DEFINITION LEN))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-CHAR-CODE))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE BAD-ATOM<=-TRANSITIVE))
 (1 1 (:REWRITE ALPHORDER-TRANSITIVE))
 )
(FAST-LEXORDER)
(FAST-LEXORDER-IS-LEXORDER
 (114 30 (:REWRITE SYMBOL-<-TRICHOTOMY))
 (102 18 (:REWRITE SYMBOL-<-ASYMMETRIC))
 (46 46 (:REWRITE DEFAULT-REALPART))
 (43 43 (:REWRITE DEFAULT-<-2))
 (43 43 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE LEXORDER-TRANSITIVE))
 (35 7 (:DEFINITION LEN))
 (30 30 (:REWRITE SYMBOL-<-TRANSITIVE))
 (28 28 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE ALPHORDER-TRANSITIVE))
 (15 15 (:REWRITE DEFAULT-CDR))
 (14 7 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-IMAGPART))
 (12 12 (:REWRITE DEFAULT-CHAR-CODE))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE BAD-ATOM<=-TRANSITIVE))
 )
(FAST-<<)
(<<)
(<<-IRREFLEXIVE)
(<<-TRANSITIVE)
(<<-ASYMMETRIC)
(<<-TRICHOTOMY
 (7 2 (:REWRITE <<-ASYMMETRIC))
 (5 5 (:REWRITE LEXORDER-TRANSITIVE))
 (3 3 (:REWRITE <<-TRANSITIVE))
 )
(<<-IMPLIES-LEXORDER)
(L0
 (6 6 (:REWRITE DEFAULT-CHAR-CODE))
 )
(FAST-<<-IS-<<
 (1669 272 (:REWRITE <<-IMPLIES-LEXORDER))
 (262 262 (:REWRITE DEFAULT-<-2))
 (262 262 (:REWRITE DEFAULT-<-1))
 (236 236 (:REWRITE DEFAULT-REALPART))
 (236 236 (:REWRITE DEFAULT-CAR))
 (224 224 (:REWRITE <<-TRANSITIVE))
 (212 212 (:REWRITE SYMBOL-<-TRANSITIVE))
 (150 150 (:REWRITE DEFAULT-CHAR-CODE))
 (141 141 (:REWRITE DEFAULT-CDR))
 (121 121 (:REWRITE DEFAULT-IMAGPART))
 (107 19 (:DEFINITION LEN))
 (94 94 (:REWRITE ALPHORDER-TRANSITIVE))
 (65 59 (:REWRITE BAD-ATOM<=-TRANSITIVE))
 (38 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-COERCE-2))
 (19 19 (:REWRITE DEFAULT-COERCE-1))
 (19 19 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-COMPLEX-2))
 (5 5 (:REWRITE DEFAULT-COMPLEX-1))
 )
(<<
 (23 6 (:REWRITE <<-IMPLIES-LEXORDER))
 (22 5 (:REWRITE <<-TRICHOTOMY))
 (22 3 (:REWRITE <<-ASYMMETRIC))
 (5 5 (:REWRITE LEXORDER-TRANSITIVE))
 (5 5 (:REWRITE <<-TRANSITIVE))
 )
