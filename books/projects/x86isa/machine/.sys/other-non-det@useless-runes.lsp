(X86ISA::HW_RND_GEN-LOGIC
 (54 54 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 )
(X86ISA::X86P-OF-MV-NTH-2-HW_RND_GEN-LOGIC
 (65 2 (:REWRITE LOGHEAD-IDENTITY))
 (51 2 (:DEFINITION UNSIGNED-BYTE-P))
 (29 2 (:DEFINITION INTEGER-RANGE-P))
 (17 17 (:TYPE-PRESCRIPTION X86ISA::NATP-CREATE-UNDEF))
 (11 1 (:REWRITE BITOPS::ASH-<-0))
 (8 1 (:REWRITE FTY::UNSIGNED-BYTE-P-1-WHEN-BITP))
 (7 7 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 (7 4 (:REWRITE DEFAULT-<-2))
 (7 2 (:REWRITE NFIX-WHEN-NOT-NATP))
 (6 4 (:REWRITE DEFAULT-<-1))
 (6 3 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (6 3 (:REWRITE DEFAULT-+-2))
 (6 1 (:REWRITE IFIX-NEGATIVE-TO-NEGP))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 2 (:REWRITE NATP-WHEN-GTE-0))
 (4 1 (:REWRITE ASH-0))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:TYPE-PRESCRIPTION IFIX))
 (3 3 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (3 3 (:TYPE-PRESCRIPTION ASH))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (3 1 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (2 2 (:TYPE-PRESCRIPTION ZIP))
 (2 2 (:TYPE-PRESCRIPTION BITP))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE NATP-WHEN-INTEGERP))
 (2 2 (:REWRITE X86ISA::LOGHEAD-ZERO-SMALLER))
 (2 1 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (2 1 (:REWRITE FTY::BITP-WHEN-UNSIGNED-BYTE-P-1))
 (1 1 (:TYPE-PRESCRIPTION NEGP))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE ZIP-OPEN))
 (1 1 (:REWRITE X86ISA::XR-OF-XW-INTER-FIELD))
 (1 1 (:REWRITE NEGP-WHEN-INTEGERP))
 (1 1 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (1 1 (:REWRITE IFIX-WHEN-INTEGERP))
 )
(X86ISA::HW_RND_GEN$NOTINLINE)
(X86ISA::X86P-OF-MV-NTH-2-HW_RND_GEN)
