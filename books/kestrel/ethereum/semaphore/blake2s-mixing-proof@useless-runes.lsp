(ZKSEMAPHORE::PACK-BLAKE-WORD
 (1120 32 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
 (384 32 (:REWRITE DEFAULT-<-1))
 (192 32 (:REWRITE INTEGERP-IMPLIES-ACL2-NUMBERP))
 (96 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (64 64 (:TYPE-PRESCRIPTION ALL-NATP))
 (64 32 (:REWRITE ALL-NATP-IMPLIES-ALL-INTEGERP-CHEAP))
 (64 32 (:REWRITE ALL-INTEGERP-WHEN-ALL-NATP-CHEAP))
 (32 32 (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
 (32 32 (:TYPE-PRESCRIPTION <=-OF-0-AND-EXPT))
 (32 32 (:TYPE-PRESCRIPTION <-OF-0-AND-EXPT))
 (32 32 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (32 32 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (32 32 (:REWRITE USE-ALL-RATIONALP-2))
 (32 32 (:REWRITE USE-ALL-RATIONALP))
 (32 32 (:REWRITE USE-ALL-<-2))
 (32 32 (:REWRITE USE-ALL-<))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-WHEN-ZP-CHEAP))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-WHEN-TOP-BIT-0))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-TIGHTEN-WHEN-SLICE-IS-0))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND-<=-VERSION))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-1-WHEN-NOT-1))
 (32 32 (:REWRITE UNSIGNED-BYTE-P-1-WHEN-NOT-0))
 (32 32 (:REWRITE UBP-LONGER-BETTER))
 (32 32 (:REWRITE REWRITE-UNSIGNED-BYTE-P-WHEN-TERM-SIZE-IS-LARGER))
 (32 32 (:REWRITE MY-NON-INTEGERP-<-INTEGERP))
 (32 32 (:REWRITE MY-INTEGERP-<-NON-INTEGERP))
 (32 32 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (32 32 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-FREE))
 (32 32 (:REWRITE INTEGERP-WHEN-SIGNED-BYTE-P))
 (32 32 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (32 32 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (32 32 (:REWRITE DROP-LINEAR-HYPS2))
 (32 32 (:REWRITE DROP->-HYPS))
 (32 32 (:REWRITE DROP-<-HYPS))
 (32 32 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE BOUND-WHEN-USB2))
 (32 32 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (32 32 (:REWRITE ALL-SIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (32 32 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (32 32 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (32 32 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (32 32 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (32 32 (:REWRITE <-WHEN-BVLT))
 (32 32 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
 (32 32 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (32 32 (:REWRITE <-TRANS))
 (32 32 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (32 32 (:REWRITE <-OF-NON-INTEGERP-AND-INTEGERP))
 (32 32 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (32 32 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-NON-DAG))
 (32 32 (:REWRITE <-FROM-<=-FREE))
 )
(ZKSEMAPHORE::BLAKE2S-MIXING-0-4-8-12)
(PRIMALITY-THEOREM-FOR-MAKE-R1CS-EVENT)
(BLAKE2S-MIXINGG-0-VARS)
(VAR-LISTP-OF-BLAKE2S-MIXINGG-0-VARS)
(BLAKE2S-MIXINGG-0-CONSTRAINTS)
(R1CS-CONSTRAINT-LISTP-OF-BLAKE2S-MIXINGG-0-CONSTRAINTS)
(GOOD-R1CS-CONSTRAINT-LISTP-OF-BLAKE2S-MIXINGG-0-CONSTRAINTS)
(BLAKE2S-MIXINGG-0-MAKE-R1CS)
