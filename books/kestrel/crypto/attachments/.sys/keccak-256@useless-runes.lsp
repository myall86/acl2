(CRYPTO::KECCAK-256-BYTES-WRAPPER
 (16 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (12 1 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-LISTP-CHEAP))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE BYTE-LISTP-WHEN-BYTE-LIST32P-REWRITE))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:TYPE-PRESCRIPTION BYTE-LIST32P))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE SET::IN-SET))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 )
(CRYPTO::BYTE-LISTP-OF-KECCAK-256-BYTES-WRAPPER)
(CRYPTO::LEN-OF-KECCAK-256-BYTES-WRAPPER)
(CRYPTO::KECCAK-256-BYTES-WRAPPER-OF-BYTE-LIST-FIX-BYTES)
(CRYPTO::KECCAK-256-BYTES-WRAPPER-BYTE-LIST-EQUIV-CONGRUENCE-ON-BYTES)
