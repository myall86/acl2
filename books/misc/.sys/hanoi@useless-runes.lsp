(HANOI::MEM)
(HANOI::APP)
(HANOI::DEL)
(HANOI::PERM)
(HANOI::PERM-OPENER
 (66 66 (:REWRITE DEFAULT-<-2))
 (66 66 (:REWRITE DEFAULT-<-1))
 (31 31 (:REWRITE DEFAULT-CAR))
 (28 28 (:REWRITE DEFAULT-CDR))
 )
(HANOI::APP-ASSOC
 (248 248 (:TYPE-PRESCRIPTION HANOI::APP))
 (21 20 (:REWRITE DEFAULT-CAR))
 (17 16 (:REWRITE DEFAULT-CDR))
 )
(HANOI::APP-RIGHT-ID
 (5 5 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(HANOI::GET)
(HANOI::PUT)
(HANOI::GET-PUT
 (86 41 (:REWRITE ZP-OPEN))
 (81 68 (:REWRITE DEFAULT-CDR))
 (74 74 (:REWRITE DEFAULT-+-2))
 (74 74 (:REWRITE DEFAULT-+-1))
 (48 39 (:REWRITE DEFAULT-CAR))
 (45 15 (:REWRITE FOLD-CONSTS-IN-+))
 (37 37 (:REWRITE DEFAULT-<-2))
 (37 37 (:REWRITE DEFAULT-<-1))
 )
(HANOI::PUT-GET
 (21 14 (:REWRITE DEFAULT-+-2))
 (19 12 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-CAR))
 )
(HANOI::PUT-PUT-1
 (1042 86 (:REWRITE HANOI::PUT-GET))
 (944 87 (:DEFINITION HANOI::GET))
 (346 106 (:REWRITE ZP-OPEN))
 (270 197 (:REWRITE DEFAULT-CDR))
 (240 80 (:REWRITE FOLD-CONSTS-IN-+))
 (224 224 (:REWRITE DEFAULT-+-2))
 (224 224 (:REWRITE DEFAULT-+-1))
 (204 143 (:REWRITE DEFAULT-CAR))
 (133 13 (:REWRITE HANOI::GET-PUT))
 (93 93 (:REWRITE DEFAULT-<-2))
 (93 93 (:REWRITE DEFAULT-<-1))
 )
(HANOI::PUT-PUT-2
 (208 19 (:REWRITE HANOI::PUT-GET))
 (178 20 (:DEFINITION HANOI::GET))
 (61 41 (:REWRITE DEFAULT-CDR))
 (49 32 (:REWRITE DEFAULT-CAR))
 (46 22 (:REWRITE ZP-OPEN))
 (35 35 (:REWRITE DEFAULT-+-2))
 (35 35 (:REWRITE DEFAULT-+-1))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 (12 4 (:REWRITE HANOI::GET-PUT))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION NATP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 )
(HANOI::TRUE-LISTP-PUT
 (63 6 (:REWRITE HANOI::PUT-GET))
 (57 7 (:DEFINITION HANOI::GET))
 (25 21 (:REWRITE DEFAULT-CDR))
 (25 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (19 13 (:REWRITE DEFAULT-<-2))
 (18 9 (:REWRITE ZP-OPEN))
 (13 13 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(HANOI::LEN-PUT
 (63 6 (:REWRITE HANOI::PUT-GET))
 (57 7 (:DEFINITION HANOI::GET))
 (45 29 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE DEFAULT-+-1))
 (25 21 (:REWRITE DEFAULT-CDR))
 (19 13 (:REWRITE DEFAULT-<-2))
 (18 9 (:REWRITE ZP-OPEN))
 (13 13 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(HANOI::PUSH)
(HANOI::POP)
(HANOI::TOP)
(HANOI::H)
(HANOI::HANOI)
(HANOI::A)
(HANOI::B)
(HANOI::LEGAL-SYNTAXP)
(HANOI::LEGAL-MOVEP)
(HANOI::DO-MOVE)
(HANOI::PLAY)
(HANOI::TOWER)
(HANOI::EXAMPLES)
(HANOI::TRUE-LISTP-TOWER
 (36 29 (:REWRITE DEFAULT-CDR))
 (29 17 (:REWRITE ZP-OPEN))
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE DEFAULT-CAR))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(HANOI::PLAY-APP
 (8157 5125 (:REWRITE DEFAULT-CDR))
 (7685 560 (:REWRITE HANOI::PUT-GET))
 (5406 1353 (:REWRITE ZP-OPEN))
 (1889 1730 (:REWRITE DEFAULT-+-2))
 (1764 1624 (:REWRITE DEFAULT-<-2))
 (1764 1624 (:REWRITE DEFAULT-<-1))
 (1730 1730 (:REWRITE DEFAULT-+-1))
 (727 155 (:REWRITE HANOI::GET-PUT))
 (654 218 (:REWRITE FOLD-CONSTS-IN-+))
 (399 133 (:DEFINITION NATP))
 (280 280 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (276 138 (:DEFINITION TRUE-LISTP))
 (133 133 (:TYPE-PRESCRIPTION NATP))
 (92 92 (:TYPE-PRESCRIPTION HANOI::APP))
 )
(HANOI::BIG-TOPS)
(HANOI::INDUCTION-HINT)
(HANOI::H-LEMMA
 (10157 359 (:DEFINITION HANOI::PUT))
 (9465 2985 (:REWRITE ZP-OPEN))
 (8436 6245 (:REWRITE DEFAULT-CDR))
 (7971 7743 (:REWRITE DEFAULT-+-2))
 (7743 7743 (:REWRITE DEFAULT-+-1))
 (7197 2399 (:REWRITE FOLD-CONSTS-IN-+))
 (6969 5009 (:REWRITE DEFAULT-CAR))
 (3073 2924 (:REWRITE DEFAULT-<-2))
 (3005 2924 (:REWRITE DEFAULT-<-1))
 (901 901 (:TYPE-PRESCRIPTION HANOI::APP))
 (568 568 (:TYPE-PRESCRIPTION HANOI::TOWER))
 (511 511 (:TYPE-PRESCRIPTION NATP))
 (230 230 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (168 84 (:DEFINITION TRUE-LISTP))
 )
(HANOI::HANOI-CORRECT
 (395 1 (:DEFINITION HANOI::PLAY))
 (263 1 (:DEFINITION HANOI::LEGAL-MOVEP))
 (199 1 (:DEFINITION HANOI::LEGAL-SYNTAXP))
 (176 8 (:DEFINITION HANOI::MEM))
 (164 34 (:DEFINITION HANOI::GET))
 (125 1 (:DEFINITION HANOI::DO-MOVE))
 (85 17 (:DEFINITION HANOI::APP))
 (77 10 (:REWRITE HANOI::PUT-GET))
 (65 29 (:REWRITE ZP-OPEN))
 (64 58 (:REWRITE DEFAULT-CDR))
 (51 46 (:REWRITE DEFAULT-CAR))
 (46 45 (:REWRITE DEFAULT-+-2))
 (45 45 (:REWRITE DEFAULT-+-1))
 (28 28 (:TYPE-PRESCRIPTION HANOI::H))
 (18 6 (:DEFINITION HANOI::B))
 (18 6 (:DEFINITION HANOI::A))
 (16 15 (:REWRITE DEFAULT-<-2))
 (16 15 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE CDR-CONS))
 (8 8 (:REWRITE CAR-CONS))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE HANOI::GET-PUT))
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:DEFINITION TRUE-LISTP))
 (2 1 (:DEFINITION HANOI::TOP))
 (2 1 (:DEFINITION HANOI::POP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:DEFINITION HANOI::PUSH))
 )
