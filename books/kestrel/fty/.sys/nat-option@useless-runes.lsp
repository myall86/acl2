(TMP-DEFTYPES-NATP-OF-NFIX)
(TMP-DEFTYPES-NFIX-WHEN-NATP
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(NAT-OPTIONP)
(CONSP-WHEN-NAT-OPTIONP)
(NAT-OPTIONP-WHEN-NATP)
(NATP-WHEN-NAT-OPTIONP)
(NAT-OPTION-FIX$INLINE)
(NAT-OPTIONP-OF-NAT-OPTION-FIX
 (16 3 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (16 2 (:REWRITE TMP-DEFTYPES-NFIX-WHEN-NATP))
 (9 9 (:TYPE-PRESCRIPTION NATP))
 )
(NAT-OPTION-FIX-WHEN-NAT-OPTIONP
 (16 4 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (16 3 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 )
(NAT-OPTION-FIX$INLINE
 (16 4 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (16 3 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (5 1 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 1 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 )
(NAT-OPTION-EQUIV$INLINE)
(NAT-OPTION-EQUIV-IS-AN-EQUIVALENCE)
(NAT-OPTION-EQUIV-IMPLIES-EQUAL-NAT-OPTION-FIX-1)
(NAT-OPTION-FIX-UNDER-NAT-OPTION-EQUIV)
(EQUAL-OF-NAT-OPTION-FIX-1-FORWARD-TO-NAT-OPTION-EQUIV)
(EQUAL-OF-NAT-OPTION-FIX-2-FORWARD-TO-NAT-OPTION-EQUIV)
(NAT-OPTION-EQUIV-OF-NAT-OPTION-FIX-1-FORWARD)
(NAT-OPTION-EQUIV-OF-NAT-OPTION-FIX-2-FORWARD)
(DEFOPTION-LEMMA-NFIX-NONNIL)
(NAT-OPTION-FIX-UNDER-IFF
 (8 1 (:REWRITE TMP-DEFTYPES-NFIX-WHEN-NATP))
 (8 1 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 (7 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (7 2 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 )
(NAT-OPTION-EQUIV-REFINES-NAT-EQUIV
 (48 6 (:REWRITE TMP-DEFTYPES-NFIX-WHEN-NATP))
 (34 8 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (22 22 (:TYPE-PRESCRIPTION NATP))
 (22 8 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (18 18 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (16 2 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 )
(NAT-OPTION-NONE)
(RETURN-TYPE-OF-NAT-OPTION-NONE)
(NAT-OPTION-FIX-WHEN-NONE)
(EQUAL-OF-NAT-OPTION-NONE
 (5 3 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (3 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (3 1 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 )
(NAT-OPTION-SOME->VAL$INLINE
 (11 2 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (9 3 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 )
(NATP-OF-NAT-OPTION-SOME->VAL)
(NAT-OPTION-SOME->VAL$INLINE-OF-NAT-OPTION-FIX-X
 (45 10 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (25 8 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (24 3 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 (23 23 (:TYPE-PRESCRIPTION NATP))
 (21 21 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (10 10 (:TYPE-PRESCRIPTION NAT-OPTION-FIX$INLINE))
 (5 5 (:REWRITE NAT-OPTION-FIX-WHEN-NONE))
 (2 2 (:REWRITE NAT-OPTIONP-OF-NAT-OPTION-FIX))
 (2 2 (:REWRITE NAT-OPTION-FIX-UNDER-IFF))
 )
(NAT-OPTION-SOME->VAL$INLINE-NAT-OPTION-EQUIV-CONGRUENCE-ON-X)
(NAT-OPTION-SOME->VAL-WHEN-WRONG-KIND)
(NAT-OPTION-SOME
 (8 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (5 1 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (3 3 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 )
(RETURN-TYPE-OF-NAT-OPTION-SOME)
(NAT-OPTION-SOME->VAL-OF-NAT-OPTION-SOME
 (15 3 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (9 9 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (6 3 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 )
(NAT-OPTION-SOME-OF-FIELDS
 (7 1 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 (6 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (6 2 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (5 5 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (1 1 (:REWRITE NAT-OPTION-FIX-WHEN-NONE))
 )
(NAT-OPTION-FIX-WHEN-SOME
 (8 1 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 (6 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (6 2 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (5 5 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE NAT-OPTION-FIX-WHEN-NONE))
 )
(EQUAL-OF-NAT-OPTION-SOME
 (23 15 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (15 8 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (4 4 (:REWRITE NAT-OPTION-FIX-WHEN-NONE))
 )
(NAT-OPTION-SOME-OF-NFIX-VAL
 (5 1 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (2 1 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 )
(NAT-OPTION-SOME-NAT-EQUIV-CONGRUENCE-ON-VAL)
(NAT-OPTION-FIX-REDEF
 (16 2 (:REWRITE NAT-OPTION-FIX-WHEN-NAT-OPTIONP))
 (10 2 (:REWRITE NAT-OPTIONP-WHEN-NATP))
 (6 6 (:TYPE-PRESCRIPTION NAT-OPTIONP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 2 (:REWRITE NATP-WHEN-NAT-OPTIONP))
 (2 2 (:REWRITE NAT-OPTION-FIX-WHEN-NONE))
 )
