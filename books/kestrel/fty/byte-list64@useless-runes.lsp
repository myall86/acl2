(BYTE-LIST64P)
(BOOLEANP-OF-BYTE-LIST64P)
(BYTE-LISTP-WHEN-BYTE-LIST64P-REWRITE)
(BYTE-LISTP-WHEN-BYTE-LIST64P-FORWARD)
(LEN-WHEN-BYTE-LIST64P-TAU)
(BYTE-LIST64-FIX
 (1 1 (:TYPE-PRESCRIPTION BYTE-LIST64-FIX))
 )
(BYTE-LIST64P-OF-BYTE-LIST64-FIX
 (151 16 (:REWRITE BYTE-LISTP-WHEN-BYTE-LIST64P-REWRITE))
 (146 2 (:REWRITE BYTE-LIST-FIX-WHEN-BYTE-LISTP))
 (72 6 (:REWRITE BYTE-LISTP-OF-TAKE))
 (64 12 (:DEFINITION LEN))
 (40 16 (:REWRITE BYTE-LISTP-WHEN-NOT-CONSP))
 (32 32 (:REWRITE BYTE-LISTP-WHEN-SUBSETP-EQUAL))
 (28 2 (:REWRITE TAKE-OF-TOO-MANY))
 (28 2 (:REWRITE BYTE-LIST-FIX-OF-TAKE))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (24 12 (:REWRITE DEFAULT-+-2))
 (24 2 (:REWRITE TAKE-OF-LEN-FREE))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-+-1))
 (11 11 (:TYPE-PRESCRIPTION BYTE-LIST64-FIX))
 (6 4 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:REWRITE CONSP-OF-TAKE))
 (2 2 (:REWRITE TAKE-WHEN-ATOM))
 )
(BYTE-LIST64-FIX-WHEN-BYTE-LIST64P)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (33 33 (:TYPE-PRESCRIPTION BYTE-LIST64-FIX))
 )
(BYTE-LIST64-EQUIV$INLINE
 (4 4 (:TYPE-PRESCRIPTION BYTE-LIST64-FIX))
 )
(BYTE-LIST64-EQUIV-IS-AN-EQUIVALENCE)
(BYTE-LIST64-EQUIV-IMPLIES-EQUAL-BYTE-LIST64-FIX-1)
(BYTE-LIST64-FIX-UNDER-BYTE-LIST64-EQUIV)
(EQUAL-OF-BYTE-LIST64-FIX-1-FORWARD-TO-BYTE-LIST64-EQUIV)
(EQUAL-OF-BYTE-LIST64-FIX-2-FORWARD-TO-BYTE-LIST64-EQUIV)
(BYTE-LIST64-EQUIV-OF-BYTE-LIST64-FIX-1-FORWARD)
(BYTE-LIST64-EQUIV-OF-BYTE-LIST64-FIX-2-FORWARD)
