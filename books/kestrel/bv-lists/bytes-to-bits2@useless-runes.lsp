(BYTES-TO-BITS-OF-BVCHOP-LIST
  (2850 1425 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
  (1916 1915 (:REWRITE DEFAULT-CDR))
  (1517 1517 (:REWRITE DEFAULT-CAR))
  (1425 1425
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
  (1425 1425
        (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
  (1425 1425
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
  (1355 118 (:REWRITE BVCHOP-LIST-DOES-NOTHING))
  (1144 290 (:REWRITE GETBIT-IDENTITY))
  (1074 218
        (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR))
  (711 711
       (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
  (640 72
       (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
  (518 356
       (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
  (375 65 (:REWRITE BVCHOP-IDENTITY))
  (356 356
       (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
  (290 290 (:REWRITE GETBIT-IDENTITY-FREE))
  (258 129
       (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
  (258 129
       (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
  (131 131
       (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
  (131 131 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
  (129 129 (:TYPE-PRESCRIPTION POWER-OF-2P))
  (129 129 (:TYPE-PRESCRIPTION ALL-INTEGERP))
  (89 65
      (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
  (65 65
      (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
  (65 65 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
  (65 65
      (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
  (65 65
      (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
  (65 65
      (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
  (65 65 (:REWRITE BVCHOP-SUBST-CONSTANT))
  (60 60
      (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NOT-AN-INTEGER))
  (60 60
      (:REWRITE BVCHOP-LIST-WHEN-ARG1-IS-NEGATIVE))
  (7 1 (:REWRITE CAR-OF-BYTE-TO-BITS))
  (6 6
     (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
  (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
  (1 1 (:DEFINITION TRUE-LISTP)))
(BYTES-TO-BITS$NOT-NORMALIZED)
(BYTES-TO-BITS-BASE)
(BYTES-TO-BITS-UNROLL)
