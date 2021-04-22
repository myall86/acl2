(ACL2S::ELP)
(ACL2S::DEF=>EL)
(ACL2S::EL=>DEF)
(ACL2S::NTH-EL-BUILTIN)
(ACL2S::NTH-EL/ACC-BUILTIN)
(ACL2S::NTH-EL)
(ACL2S::NTH-EL/ACC)
(ACL2S::STACKP)
(ACL2S::STACKP-IMPLIES-TLP
 (480 4 (:DEFINITION TRUE-LISTP))
 (220 10 (:REWRITE ACL2S::TRUE-LIST-LISTP-IMPLIES-TLP))
 (204 4 (:DEFINITION TRUE-LIST-LISTP))
 (108 10 (:REWRITE ACL2S::PROPER-SYMBOL-LISTP-IMPLIES-TLP))
 (80 8 (:DEFINITION NAT-LISTP))
 (80 4 (:DEFINITION ACL2S::PROPER-SYMBOL-LISTP))
 (76 10 (:REWRITE ACL2S::BOOLEAN-LISTP-IMPLIES-TLP))
 (72 10 (:REWRITE ACL2S::SYMBOL-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE ACL2S::POS-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE ACL2S::NAT-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE DEFDATA::NAT-LISTP--TRUE-LISTP))
 (64 10 (:REWRITE ACL2S::ATOM-LISTP-IMPLIES-TLP))
 (62 62 (:REWRITE DEFAULT-CDR))
 (60 10 (:REWRITE ACL2S::ACL2-NUMBER-LISTP-IMPLIES-TLP))
 (57 57 (:REWRITE DEFAULT-CAR))
 (56 10 (:REWRITE ACL2S::STRING-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::RATIONAL-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::INTEGER-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::COMPLEX-RATIONAL-LISTP-IMPLIES-TLP))
 (52 52 (:TYPE-PRESCRIPTION NAT-LISTP))
 (48 4 (:DEFINITION BOOLEAN-LISTP))
 (44 4 (:DEFINITION ACL2S::PROPER-SYMBOLP))
 (40 4 (:DEFINITION ACL2S::POS-LISTP))
 (36 4 (:DEFINITION SYMBOL-LISTP))
 (36 4 (:DEFINITION ATOM-LISTP))
 (34 34 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (32 4 (:DEFINITION ACL2-NUMBER-LISTP))
 (28 4 (:DEFINITION STRING-LISTP))
 (28 4 (:DEFINITION RATIONAL-LISTP))
 (28 4 (:DEFINITION INTEGER-LISTP))
 (28 4 (:DEFINITION ACL2S::COMPLEX-RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (26 26 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION STRING-LISTP))
 (26 26 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::PROPER-SYMBOL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::POS-LISTP))
 (26 26 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::COMPLEX-RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2-NUMBER-LISTP))
 (24 24 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (24 8 (:DEFINITION NATP))
 (24 4 (:DEFINITION KEYWORDP))
 (16 16 (:REWRITE ACL2S::DEF=>NAT-LIST))
 (16 8 (:REWRITE DEFDATA::PROPER-SYMBOL-LISTP-IS-SYMBOL-LIST))
 (12 12 (:TYPE-PRESCRIPTION LEGAL-CONSTANTP))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE ACL2S::DEF=>BOOLEAN-LIST))
 (12 6 (:REWRITE O-P-O-INFP-CAR))
 (12 4 (:DEFINITION POSP))
 (8 8 (:TYPE-PRESCRIPTION DEFDATA::PROPER-SYMBOL-LISTP))
 (8 8 (:REWRITE ACL2S::DEF=>TRUE-LIST-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>SYMBOL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>STRING-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>RATIONAL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>PROPER-SYMBOL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>POS-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>INTEGER-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>COMPLEX-RATIONAL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>ATOM-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>ACL2-NUMBER-LIST))
 (6 6 (:TYPE-PRESCRIPTION O-P))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 )
(ACL2S::DEF=>STACK
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(ACL2S::STACK=>DEF
 (2 2 (:REWRITE ACL2S::DEF=>STACK))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ACL2S::NTH-STACK-BUILTIN)
(ACL2S::NTH-STACK/ACC-BUILTIN)
(ACL2S::NTH-STACK)
(ACL2S::NTH-STACK/ACC)
(ACL2S::INSTP)
(ACL2S::DEF=>INST)
(ACL2S::NTH-INST-BUILTIN)
(ACL2S::NTH-INST/ACC-BUILTIN)
(ACL2S::NTH-INST)
(ACL2S::NTH-INST/ACC)
(ACL2S::INST-MEMP)
(ACL2S::INST-MEMP-IMPLIES-TLP
 (508 4 (:DEFINITION TRUE-LISTP))
 (232 10 (:REWRITE ACL2S::TRUE-LIST-LISTP-IMPLIES-TLP))
 (216 4 (:DEFINITION TRUE-LIST-LISTP))
 (108 10 (:REWRITE ACL2S::PROPER-SYMBOL-LISTP-IMPLIES-TLP))
 (80 8 (:DEFINITION NAT-LISTP))
 (80 4 (:DEFINITION ACL2S::PROPER-SYMBOL-LISTP))
 (76 10 (:REWRITE ACL2S::BOOLEAN-LISTP-IMPLIES-TLP))
 (72 10 (:REWRITE ACL2S::SYMBOL-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE ACL2S::POS-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE ACL2S::NAT-LISTP-IMPLIES-TLP))
 (68 10 (:REWRITE DEFDATA::NAT-LISTP--TRUE-LISTP))
 (66 66 (:REWRITE DEFAULT-CDR))
 (64 10 (:REWRITE ACL2S::ATOM-LISTP-IMPLIES-TLP))
 (62 62 (:REWRITE DEFAULT-CAR))
 (60 10 (:REWRITE ACL2S::ACL2-NUMBER-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::STRING-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::RATIONAL-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::INTEGER-LISTP-IMPLIES-TLP))
 (56 10 (:REWRITE ACL2S::COMPLEX-RATIONAL-LISTP-IMPLIES-TLP))
 (52 52 (:TYPE-PRESCRIPTION NAT-LISTP))
 (52 10 (:REWRITE ACL2S::STACKP-IMPLIES-TLP))
 (48 4 (:DEFINITION BOOLEAN-LISTP))
 (44 4 (:DEFINITION ACL2S::PROPER-SYMBOLP))
 (40 4 (:DEFINITION ACL2S::POS-LISTP))
 (36 4 (:DEFINITION SYMBOL-LISTP))
 (36 4 (:DEFINITION ATOM-LISTP))
 (34 34 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (32 4 (:DEFINITION ACL2-NUMBER-LISTP))
 (28 4 (:DEFINITION STRING-LISTP))
 (28 4 (:DEFINITION RATIONAL-LISTP))
 (28 4 (:DEFINITION INTEGER-LISTP))
 (28 4 (:DEFINITION ACL2S::COMPLEX-RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (26 26 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION STRING-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::STACKP))
 (26 26 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::PROPER-SYMBOL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::POS-LISTP))
 (26 26 (:TYPE-PRESCRIPTION INTEGER-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2S::COMPLEX-RATIONAL-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (26 26 (:TYPE-PRESCRIPTION ACL2-NUMBER-LISTP))
 (24 24 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (24 8 (:DEFINITION NATP))
 (24 4 (:DEFINITION ACL2S::STACKP))
 (24 4 (:DEFINITION KEYWORDP))
 (16 16 (:REWRITE ACL2S::DEF=>NAT-LIST))
 (16 8 (:REWRITE DEFDATA::PROPER-SYMBOL-LISTP-IS-SYMBOL-LIST))
 (12 12 (:TYPE-PRESCRIPTION LEGAL-CONSTANTP))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE ACL2S::DEF=>BOOLEAN-LIST))
 (12 6 (:REWRITE O-P-O-INFP-CAR))
 (12 4 (:DEFINITION POSP))
 (8 8 (:TYPE-PRESCRIPTION DEFDATA::PROPER-SYMBOL-LISTP))
 (8 8 (:REWRITE ACL2S::DEF=>TRUE-LIST-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>SYMBOL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>STRING-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>STACK))
 (8 8 (:REWRITE ACL2S::DEF=>RATIONAL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>PROPER-SYMBOL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>POS-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>INTEGER-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>COMPLEX-RATIONAL-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>ATOM-LIST))
 (8 8 (:REWRITE ACL2S::DEF=>ACL2-NUMBER-LIST))
 (6 6 (:TYPE-PRESCRIPTION O-P))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 )
(ACL2S::DEF=>INST-MEM
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(ACL2S::INST-MEM=>DEF
 (3 3 (:REWRITE ACL2S::DEF=>INST-MEM))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ACL2S::NTH-INST-MEM-BUILTIN)
(ACL2S::NTH-INST-MEM/ACC-BUILTIN)
(ACL2S::NTH-INST-MEM)
(ACL2S::NTH-INST-MEM/ACC)
(ACL2S::SSTATEP)
(ACL2S::SSTATE)
(ACL2S::SSTATE-IMEM)
(ACL2S::SSTATE-PC)
(ACL2S::SSTATE-STK)
(ACL2S::SET-SSTATE-IMEM)
(ACL2S::SET-SSTATE-PC)
(ACL2S::SET-SSTATE-STK)
(ACL2S::SSTATEP-TAG-BRIDGE-LEMMA1)
(ACL2S::SSTATEP-TAG-BRIDGE-LEMMA2)
(ACL2S::SSTATEP-TAG-IS-NON-EMPTY)
(ACL2S::SSTATEP-DEF-CRUX)
(ACL2S::SSTATEP-UNIQUE-TAG)
(ACL2S::SSTATEP-IMPLIES-CONSP)
(ACL2S::SSTATEP-IMPLIES-GOOD-MAP)
(ACL2S::SSTATEP-EXCLUDES-ATOM-LIST
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ACL2S::SSTATEP-IMEM-SELECTOR)
(ACL2S::SSTATEP-PC-SELECTOR)
(ACL2S::SSTATEP-STK-SELECTOR)
(ACL2S::SSTATEP-IMEM-MODIFIER)
(ACL2S::SSTATEP-PC-MODIFIER)
(ACL2S::SSTATEP-STK-MODIFIER
 (3 1 (:REWRITE ACL2S::SSTATEP-PC-MODIFIER))
 )
(ACL2S::SSTATEP-IMEM-INVERSE-DEF)
(ACL2S::SSTATEP-PC-INVERSE-DEF)
(ACL2S::SSTATEP-STK-INVERSE-DEF)
(ACL2S::SSTATE-CONSTRUCTOR-PRED)
(ACL2S::SSTATE-CONSTRUCTOR-DESTRUCTORS)
(ACL2S::SSTATE-ELIM-RULE)
(ACL2S::SSTATE-CONSTRUCTOR-DESTRUCTORS-PROPER)
(ACL2S::DEF=>SSTATE)
(ACL2S::SSTATE=>DEF
 (5 2 (:REWRITE ACL2S::SSTATEP-STK-SELECTOR))
 (5 2 (:REWRITE ACL2S::SSTATEP-IMEM-SELECTOR))
 (1 1 (:REWRITE ACL2S::SSTATEP-PC-SELECTOR))
 )
(ACL2S::NTH-SSTATE-BUILTIN)
(ACL2S::NTH-SSTATE/ACC-BUILTIN)
(ACL2S::NTH-SSTATE)
(ACL2S::NTH-SSTATE/ACC)
(ACL2S::MPUSH)
(ACL2S::MPUSH-CONTRACT)
(ACL2S::MPOP)
(ACL2S::MPOP-CONTRACT
 (2 2 (:REWRITE ACL2S::DEF=>STACK))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ACL2S::MTOP
 (1 1 (:TYPE-PRESCRIPTION ACL2S::MTOP))
 )
(ACL2S::MTOP-CONTRACT)
(ACL2S::MNOP
 (1 1 (:TYPE-PRESCRIPTION ACL2S::MNOP))
 )
(ACL2S::MNOP-CONTRACT)
(ACL2S::STK-STEP-INST)
(ACL2S::STK-STEP-INST-CONTRACT
 (17 17 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 )
(ACL2S::PUSH-POP-UNCHANGED)
(ACL2S::MNOP-UNCHANGED
 (3 3 (:TYPE-PRESCRIPTION ACL2S::MNOP))
 )
(ACL2S::MTOP-UNCHANGED
 (3 3 (:TYPE-PRESCRIPTION ACL2S::MTOP))
 )
(ACL2S::SPEC-STEP
 (12 6 (:TYPE-PRESCRIPTION DEFDATA::NAT-LISTP--NTH--INTEGERP))
 (6 6 (:TYPE-PRESCRIPTION NAT-LISTP))
 )
(ACL2S::IBUF-CAPACITY)
(ACL2S::INST-BUFFP)
(ACL2S::NTH-INST-BUFF-ENUM)
(ACL2S::INST-BUFFP)
(ACL2S::NTH-INST-BUFF)
(ACL2S::NTH-INST-BUFF/ACC-BUILTIN)
(ACL2S::NTH-INST-BUFF/ACC)
(ACL2S::ISTATEP)
(ACL2S::ISTATE)
(ACL2S::ISTATE-IMEM)
(ACL2S::ISTATE-PC)
(ACL2S::ISTATE-STK)
(ACL2S::ISTATE-IBUF)
(ACL2S::SET-ISTATE-IMEM)
(ACL2S::SET-ISTATE-PC)
(ACL2S::SET-ISTATE-STK)
(ACL2S::SET-ISTATE-IBUF)
(ACL2S::ISTATEP-TAG-BRIDGE-LEMMA1)
(ACL2S::ISTATEP-TAG-BRIDGE-LEMMA2
 (32 16 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-TAG-IS-NON-EMPTY
 (288 144 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-DEF-CRUX
 (10 5 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-UNIQUE-TAG
 (402 201 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-IMPLIES-CONSP)
(ACL2S::ISTATEP-IMPLIES-GOOD-MAP)
(ACL2S::ISTATEP-EXCLUDES-ATOM-LIST
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ACL2S::ISTATEP-IMEM-SELECTOR)
(ACL2S::ISTATEP-PC-SELECTOR)
(ACL2S::ISTATEP-STK-SELECTOR)
(ACL2S::ISTATEP-IBUF-SELECTOR)
(ACL2S::ISTATEP-IMEM-MODIFIER
 (316 158 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-PC-MODIFIER
 (336 168 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 )
(ACL2S::ISTATEP-STK-MODIFIER
 (316 158 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 (3 1 (:REWRITE ACL2S::ISTATEP-PC-MODIFIER))
 )
(ACL2S::ISTATEP-IBUF-MODIFIER
 (316 158 (:TYPE-PRESCRIPTION ACL2S::SSTATEP-UNIQUE-TAG))
 (6 1 (:REWRITE ACL2S::ISTATEP-PC-MODIFIER))
 (3 1 (:REWRITE ACL2S::ISTATEP-STK-MODIFIER))
 )
(ACL2S::ISTATEP-IMEM-INVERSE-DEF)
(ACL2S::ISTATEP-PC-INVERSE-DEF)
(ACL2S::ISTATEP-STK-INVERSE-DEF)
(ACL2S::ISTATEP-IBUF-INVERSE-DEF)
(ACL2S::ISTATE-CONSTRUCTOR-PRED)
(ACL2S::ISTATE-CONSTRUCTOR-DESTRUCTORS)
(ACL2S::ISTATE-ELIM-RULE)
(ACL2S::ISTATE-CONSTRUCTOR-DESTRUCTORS-PROPER)
(ACL2S::DEF=>ISTATE)
(ACL2S::ISTATE=>DEF
 (5 2 (:REWRITE ACL2S::ISTATEP-STK-SELECTOR))
 (5 2 (:REWRITE ACL2S::ISTATEP-IMEM-SELECTOR))
 (5 2 (:REWRITE ACL2S::ISTATEP-IBUF-SELECTOR))
 (1 1 (:REWRITE ACL2S::ISTATEP-PC-SELECTOR))
 )
(ACL2S::NTH-ISTATE-BUILTIN)
(ACL2S::NTH-ISTATE/ACC-BUILTIN)
(ACL2S::NTH-ISTATE)
(ACL2S::NTH-ISTATE/ACC)
(ACL2S::ENQUE)
(ACL2S::IMPL-INTERNAL-IBUF-STEP)
(ACL2S::IMPL-OBSERVABLE-STK-STEP)
(ACL2S::IMPL-OBSERVABLE-IBUF-STEP)
(ACL2S::STUTTERP)
(ACL2S::IMPL-STEP
 (12 6 (:TYPE-PRESCRIPTION DEFDATA::NAT-LISTP--NTH--INTEGERP))
 (6 6 (:TYPE-PRESCRIPTION NAT-LISTP))
 )
(ACL2S::MSET-IBUF-NIL)
(ACL2S::COMMITED-STATE)
(ACL2S::GOOD-STATEP)
(ACL2S::GOOD-STATEP-IMPLIES-ISTATEP)
(ACL2S::COMMITED-STATE-GOOD-STATE
 (244 2 (:REWRITE ACL2S::ISTATEP-PC-MODIFIER))
 (112 2 (:REWRITE ACL2S::ISTATEP-STK-MODIFIER))
 (70 70 (:REWRITE DEFAULT-CDR))
 (70 19 (:REWRITE ACL2S::GOOD-STATEP-IMPLIES-ISTATEP))
 (56 7 (:REWRITE ACL2S::ISTATEP-IMEM-SELECTOR))
 (40 40 (:TYPE-PRESCRIPTION ACL2S::ISTATEP))
 (40 40 (:REWRITE DEFAULT-CAR))
 (32 8 (:REWRITE O-P-O-INFP-CAR))
 (25 5 (:DEFINITION LEN))
 (22 22 (:TYPE-PRESCRIPTION ACL2S::SSTATEP))
 (21 7 (:REWRITE ACL2S::SSTATEP-IMEM-SELECTOR))
 (18 10 (:REWRITE DEFAULT-+-2))
 (18 3 (:REWRITE ACL2S::ISTATEP-STK-SELECTOR))
 (16 16 (:TYPE-PRESCRIPTION O-P))
 (16 16 (:REWRITE ACL2S::DEF=>INST-MEM))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 8 (:REWRITE DEFAULT-<-2))
 (9 8 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE ACL2S::SSTATEP-STK-SELECTOR))
 (8 8 (:TYPE-PRESCRIPTION ACL2S::INST-MEMP))
 (8 8 (:REWRITE O-P-DEF-O-FINP-1))
 (8 1 (:REWRITE ACL2S::ISTATEP-PC-SELECTOR))
 (8 1 (:REWRITE ACL2S::ISTATEP-IBUF-SELECTOR))
 (6 6 (:REWRITE ACL2S::DEF=>STACK))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 1 (:REWRITE ACL2S::SSTATEP-PC-SELECTOR))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ACL2S::GOOD-STATE-INDUCTIVE
 (303713 1866 (:REWRITE ACL2S::GOOD-STATEP-IMPLIES-ISTATEP))
 (197542 11476 (:REWRITE NTH-WITH-LARGE-INDEX))
 (190144 3114 (:REWRITE ACL2S::ISTATEP-IMEM-SELECTOR))
 (186189 3015 (:REWRITE ACL2S::ISTATEP-STK-SELECTOR))
 (149515 5738 (:DEFINITION NTH))
 (60398 60349 (:REWRITE DEFAULT-CDR))
 (48532 30774 (:REWRITE DEFAULT-+-2))
 (45985 18350 (:REWRITE DEFAULT-CAR))
 (39431 28358 (:REWRITE DEFAULT-<-2))
 (30774 30774 (:REWRITE DEFAULT-+-1))
 (28425 28358 (:REWRITE DEFAULT-<-1))
 (16480 4120 (:REWRITE ZP-OPEN))
 (11130 11130 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (7778 3114 (:REWRITE ACL2S::SSTATEP-IMEM-SELECTOR))
 (7481 3015 (:REWRITE ACL2S::SSTATEP-STK-SELECTOR))
 (6578 6578 (:REWRITE ACL2S::DEF=>STACK))
 (3829 37 (:REWRITE ACL2S::ISTATEP-PC-MODIFIER))
 (3212 1603 (:REWRITE ACL2S::ISTATEP-IBUF-SELECTOR))
 (1771 37 (:REWRITE ACL2S::ISTATEP-STK-MODIFIER))
 (124 62 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 12 (:REWRITE O-INFP->NEQ-0))
 (8 1 (:REWRITE ACL2S::ISTATEP-PC-SELECTOR))
 (3 1 (:REWRITE ACL2S::SSTATEP-PC-SELECTOR))
 )
(ACL2S::REF-MAP)
(ACL2S::RANK)
(ACL2S::SPEC-STEP-SKIP-REL)
