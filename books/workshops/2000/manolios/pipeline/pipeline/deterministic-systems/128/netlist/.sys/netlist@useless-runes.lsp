(ADDER-NET)
(VALS)
(GATE-VAL)
(NET-VAL)
(HINT)
(APPEND-RIGHT-ID
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(TRUE-LISTP-ADDER-NET)
(INPUT-VALS-NOT-CHANGED
 (41 41 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE DEFAULT-CDR))
 )
(EQUAL-LEN-0
 (9 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(ADDER-NET-IS-SERIAL-ADDER
 (4854 4144 (:REWRITE DEFAULT-CAR))
 (3529 2849 (:REWRITE DEFAULT-CDR))
 (2448 2421 (:REWRITE DEFAULT-+-2))
 (2421 2421 (:REWRITE DEFAULT-+-1))
 (1848 616 (:REWRITE FOLD-CONSTS-IN-+))
 (274 274 (:TYPE-PRESCRIPTION B--XOR))
 (106 106 (:TYPE-PRESCRIPTION B--MAJ))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(SERIAL-ADDER-ADDER-128)
(BIND)
(MEMBER-BIND
 (1270 1134 (:REWRITE DEFAULT-CAR))
 (872 802 (:REWRITE DEFAULT-CDR))
 (74 74 (:REWRITE INPUT-VALS-NOT-CHANGED))
 )
(VALS-BIND-THM
 (82 82 (:REWRITE DEFAULT-CDR))
 (81 75 (:REWRITE DEFAULT-CAR))
 (32 16 (:REWRITE DEFAULT-+-2))
 (30 10 (:DEFINITION MEMBER-EQUAL))
 (16 16 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE INPUT-VALS-NOT-CHANGED))
 )
(SUBSET)
(MEM-BIND
 (213 147 (:REWRITE DEFAULT-CAR))
 (84 68 (:REWRITE DEFAULT-CDR))
 (32 32 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(SUBSET-BIND
 (81 9 (:DEFINITION BIND))
 (65 65 (:REWRITE DEFAULT-CAR))
 (55 55 (:REWRITE DEFAULT-CDR))
 (54 6 (:DEFINITION ASSOC-EQUAL))
 (24 6 (:DEFINITION MEMBER-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION BIND))
 (20 4 (:DEFINITION BINARY-APPEND))
 (18 18 (:DEFINITION ACONS))
 (12 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(SUBSET-CONS
 (43 43 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE DEFAULT-CDR))
 )
(SUBSET-REFLEXIVE
 (22 22 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-CDR))
 )
(DISJOINT)
(NOT-MEM-BIND
 (84 74 (:REWRITE DEFAULT-CAR))
 (58 48 (:REWRITE DEFAULT-CDR))
 (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(DISJOINT-BIND
 (61 61 (:REWRITE DEFAULT-CAR))
 (54 11 (:DEFINITION MEMBER-EQUAL))
 (50 50 (:REWRITE DEFAULT-CDR))
 (46 6 (:DEFINITION ASSOC-EQUAL))
 (45 5 (:DEFINITION BIND))
 (20 4 (:DEFINITION BINARY-APPEND))
 (18 2 (:REWRITE MEM-BIND))
 (12 12 (:TYPE-PRESCRIPTION BIND))
 (12 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (10 10 (:DEFINITION ACONS))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(DISJOINT-COMM
 (430 430 (:REWRITE DEFAULT-CAR))
 (257 257 (:REWRITE DEFAULT-CDR))
 )
(MEM-VAL-BIND
 (46 44 (:REWRITE DEFAULT-CAR))
 (30 28 (:REWRITE DEFAULT-CDR))
 )
(ADD)
(ADDER-NET-IS-SERIAL-ADDER-2
 (167 1 (:DEFINITION NET-VAL))
 (126 1 (:DEFINITION GATE-VAL))
 (83 67 (:REWRITE DEFAULT-CAR))
 (81 9 (:DEFINITION BIND))
 (80 14 (:DEFINITION MEMBER-EQUAL))
 (73 65 (:REWRITE DEFAULT-CDR))
 (54 6 (:REWRITE MEM-BIND))
 (29 29 (:TYPE-PRESCRIPTION ADDER-NET))
 (27 1 (:DEFINITION ADDER-NET))
 (20 4 (:DEFINITION BINARY-APPEND))
 (18 18 (:DEFINITION ACONS))
 (12 10 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (10 10 (:REWRITE DEFAULT-+-1))
 )
(ADD-IS-SERIAL-ADDER)
(NET-ALU)
(LEN-ADD-FIX
 (43 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (28 24 (:REWRITE DEFAULT-CDR))
 (21 9 (:REWRITE ZP-OPEN))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 )
(NET-ALU-ALU-OUTPUT
 (156 6 (:DEFINITION SERIAL-ADDER))
 (102 10 (:DEFINITION FULL-ADDER))
 (58 8 (:DEFINITION ADD-FIX))
 (56 10 (:DEFINITION B--MAJ))
 (50 34 (:REWRITE DEFAULT-CDR))
 (38 24 (:REWRITE DEFAULT-CAR))
 (36 18 (:DEFINITION B--XOR))
 (34 24 (:DEFINITION B--AND))
 (24 2 (:DEFINITION MULTIPLIER))
 (16 16 (:TYPE-PRESCRIPTION MULTIPLIER))
 (12 4 (:DEFINITION B--OR))
 (10 10 (:TYPE-PRESCRIPTION SERIAL-ADDER))
 )
(NET-EXCP)
(NET-EXCP-SERIAL-EXCP
 (214 10 (:DEFINITION SERIAL-ADDER))
 (186 14 (:DEFINITION N))
 (140 16 (:DEFINITION FULL-ADDER))
 (110 44 (:REWRITE DEFAULT-+-2))
 (96 2 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (90 74 (:REWRITE DEFAULT-CDR))
 (90 42 (:REWRITE DEFAULT-*-2))
 (78 16 (:DEFINITION B--MAJ))
 (70 44 (:REWRITE DEFAULT-+-1))
 (62 48 (:REWRITE DEFAULT-CAR))
 (58 42 (:REWRITE DEFAULT-*-1))
 (58 8 (:DEFINITION ADD-FIX))
 (48 38 (:DEFINITION B--AND))
 (48 4 (:DEFINITION MULTIPLIER))
 (46 28 (:DEFINITION B--XOR))
 (18 6 (:REWRITE DEFAULT-<-1))
 (18 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 2 (:DEFINITION NFIX))
 (16 16 (:TYPE-PRESCRIPTION MULTIPLIER))
 (14 6 (:DEFINITION B--OR))
 (10 10 (:TYPE-PRESCRIPTION SERIAL-ADDER))
 (10 6 (:REWRITE DEFAULT-<-2))
 (6 2 (:REWRITE DEFAULT-NUMERATOR))
 (6 2 (:REWRITE DEFAULT-DENOMINATOR))
 (6 2 (:DEFINITION IFIX))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
