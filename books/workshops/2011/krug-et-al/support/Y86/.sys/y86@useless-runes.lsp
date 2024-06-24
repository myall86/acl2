(Y86-REGISTER-GUARD)
(Y86-FLAGS-GUARD)
(Y86-MEMORY-GUARD)
(Y86-SUPERVISOR-GUARD)
(Y86-MISC-GUARD)
(Y86-P)
(Y86-RAW-P)
(Y86-P-FC)
(|(y86-p (w32 addr val s))|
 (8 8 (:TYPE-PRESCRIPTION PAGING-P))
 (6 1 (:REWRITE |(n32p (va-to-pa addr st))| . 1))
 (4 2 (:REWRITE |(integerp (va-to-pa addr st))| . 2))
 (3 3 (:TYPE-PRESCRIPTION SAFE-ADDRESS-P))
 (3 1 (:REWRITE |(va-to-pa addr st)|))
 (3 1 (:REWRITE |(n32p (va-to-pa addr st))| . 2))
 (3 1 (:REWRITE |(integerp (va-to-pa addr st))| . 1))
 (3 1 (:REWRITE |(good-32-address-p addr st)|))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(RA)
(RB)
(NUMR)
(REGVAL)
(HANDLE-PAGE-FAULT)
(Y86-NOP)
(Y86-HALT
 (1 1 (:TYPE-PRESCRIPTION Y86-HALT))
 )
(Y86-RRMOVL
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-IRMOVL
 (12 12 (:TYPE-PRESCRIPTION MEMORYP))
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 )
(Y86-RMMOVL
 (12 12 (:TYPE-PRESCRIPTION MEMORYP))
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 )
(Y86-MRMOVL
 (24 12 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (18 18 (:TYPE-PRESCRIPTION MEMORYP))
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 )
(CF)
(ZF)
(SF)
(OF)
(SUBL-CF)
(SALL-CF)
(SALL-OF)
(SHRL-CF)
(SHRL-OF)
(UNPACK
 (1 1 (:TYPE-PRESCRIPTION UNPACK))
 )
(|(n01p (cf x y))|)
(|(n01p (zf x))|)
(|(n01p (of x y))|)
(|(n01p (sf x))|)
(|(n01p (subl-cf x y))|)
(|(n01p (sall-cf x y))|)
(|(n01p (sall-of x))|)
(|(n01p (shrl-cf x y))|)
(|(n01p (shrl-of x))|)
(|(unpack (nat-to-boolean (cf x y))))|)
(|(unpack (nat-to-boolean (zf x)))|)
(|(unpack (nat-to-boolean (sf x)))|
 (4 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-<-2))
 )
(|(unpack (nat-to-boolean (of x y)))|)
(|(unpack (nat-to-boolean (subl-cf x y)))|
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 )
(|(unpack (nat-to-boolean (sall-cf shift CrB)))|
 (26 2 (:DEFINITION EXPT))
 (24 8 (:REWRITE DEFAULT-*-2))
 (16 8 (:REWRITE DEFAULT-*-1))
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(|(unpack (nat-to-boolean (sall-of CrB)))|
 (24 16 (:REWRITE DEFAULT-*-2))
 (24 16 (:REWRITE DEFAULT-*-1))
 )
(|(unpack (nat-to-boolean (shrl-cf shift CrB)))|
 (26 2 (:DEFINITION EXPT))
 (24 8 (:REWRITE DEFAULT-*-2))
 (16 8 (:REWRITE DEFAULT-*-1))
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (8 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(|(unpack (nat-to-boolean (shrl-of CrB)))|
 (12 8 (:REWRITE DEFAULT-*-2))
 (12 8 (:REWRITE DEFAULT-*-1))
 )
(OP2)
(Y86-OP
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(JUMP-P)
(Y86-JXX
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-CALL
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-RET
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-PUSHL
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-POPL
 (12 12 (:TYPE-PRESCRIPTION MEMORYP))
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 )
(Y86-IADDL
 (12 12 (:TYPE-PRESCRIPTION MEMORYP))
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 )
(Y86-LEAVE
 (12 6 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86-EX-SVC)
(Y86-EX-FUNCTION)
(Y86-SVC)
(Y86-STEP
 (12 6 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 (6 6 (:TYPE-PRESCRIPTION MEMORYP))
 )
(Y86)
(|(y86-step st)|
 (2352 28 (:DEFINITION BINARY-LOGAND))
 (1456 28 (:DEFINITION FLOOR))
 (896 56 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (884 72 (:REWRITE |(n32+ x y)|))
 (672 420 (:REWRITE DEFAULT-+-2))
 (660 152 (:REWRITE COMMUTATIVITY-OF-+))
 (544 420 (:REWRITE DEFAULT-+-1))
 (348 116 (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (238 106 (:REWRITE |(n32p x)|))
 (212 212 (:TYPE-PRESCRIPTION N32P))
 (180 148 (:REWRITE DEFAULT-<-1))
 (174 72 (:REWRITE N32+-WHEN-WORD-ALIGNED))
 (168 140 (:REWRITE DEFAULT-*-2))
 (168 56 (:REWRITE COMMUTATIVITY-OF-*))
 (168 56 (:DEFINITION NFIX))
 (168 28 (:DEFINITION EVENP))
 (148 148 (:REWRITE DEFAULT-<-2))
 (140 140 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (140 140 (:REWRITE DEFAULT-*-1))
 (140 112 (:REWRITE DEFAULT-UNARY-MINUS))
 (140 28 (:TYPE-PRESCRIPTION N32-TO-I32-TYPE))
 (124 4 (:REWRITE |(n32-to-i32 x) --- 2|))
 (124 4 (:REWRITE |(n32-to-i32 x) --- 1|))
 (116 116 (:TYPE-PRESCRIPTION R32))
 (116 116 (:TYPE-PRESCRIPTION N32+))
 (88 88 (:TYPE-PRESCRIPTION PAGING-P))
 (84 84 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (84 28 (:REWRITE ZIP-OPEN))
 (84 28 (:REWRITE UNICITY-OF-0))
 (78 26 (:REWRITE |(good-32-address-p addr st)|))
 (56 56 (:DEFINITION IFIX))
 (56 28 (:DEFINITION FIX))
 (54 18 (:REWRITE |(good-08-address-p addr st)|))
 (48 16 (:LINEAR |(n32p (r32 addr (g :mem st)))|))
 (40 20 (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (3 3 (:TYPE-PRESCRIPTION Y86-HALT))
 (2 2 (:DEFINITION OP2))
 )
(UPDATE-REGS-FN
 (160 73 (:REWRITE DEFAULT-+-2))
 (102 73 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (28 28 (:REWRITE DEFAULT-CDR))
 (24 18 (:REWRITE DEFAULT-<-2))
 (22 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(UPDATE-MEM-FN
 (160 73 (:REWRITE DEFAULT-+-2))
 (102 73 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (28 28 (:REWRITE DEFAULT-CDR))
 (24 18 (:REWRITE DEFAULT-<-2))
 (22 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(UNTRANS-UPDATE-REGS-1
 (220 95 (:REWRITE DEFAULT-+-2))
 (132 95 (:REWRITE DEFAULT-+-1))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (42 42 (:REWRITE DEFAULT-CDR))
 (40 8 (:DEFINITION LEN))
 (27 27 (:REWRITE DEFAULT-CAR))
 (27 20 (:REWRITE DEFAULT-<-2))
 (24 20 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(UNTRANS-UPDATE-MEM-1
 (220 95 (:REWRITE DEFAULT-+-2))
 (132 95 (:REWRITE DEFAULT-+-1))
 (64 16 (:DEFINITION INTEGER-ABS))
 (64 8 (:DEFINITION LENGTH))
 (42 42 (:REWRITE DEFAULT-CDR))
 (40 8 (:DEFINITION LEN))
 (27 27 (:REWRITE DEFAULT-CAR))
 (27 20 (:REWRITE DEFAULT-<-2))
 (24 20 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 )
(UNTRANS-UPDATE-MEM/REGS)
