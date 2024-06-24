(UNSIGNED-BYTE-LIST-FIX
 (255 17 (:DEFINITION EXPT))
 (136 85 (:REWRITE DEFAULT-<-2))
 (85 85 (:REWRITE DEFAULT-<-1))
 (85 17 (:REWRITE DEFAULT-*-2))
 (51 17 (:REWRITE COMMUTATIVITY-OF-+))
 (34 34 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-+-1))
 (34 28 (:REWRITE DEFAULT-CDR))
 (32 26 (:REWRITE DEFAULT-CAR))
 (21 7 (:LINEAR EXPT->-1))
 (17 17 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (17 17 (:REWRITE ZIP-OPEN))
 (17 17 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (17 17 (:REWRITE DEFAULT-*-1))
 (14 14 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (10 10 (:REWRITE NATP-RW))
 (9 9 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (1 1 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-FIX))
 )
(RETURN-TYPE-OF-UNSIGNED-BYTE-LIST-FIX
 (48 1 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (45 3 (:DEFINITION EXPT))
 (42 15 (:REWRITE DEFAULT-<-1))
 (27 15 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE DEFAULT-*-2))
 (13 13 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (9 3 (:REWRITE COMMUTATIVITY-OF-+))
 (7 7 (:REWRITE NATP-RW))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (3 3 (:REWRITE ZIP-OPEN))
 (3 3 (:REWRITE DEFAULT-*-1))
 (3 1 (:LINEAR EXPT->-1))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (1 1 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(INTEGER-LISTP-OF-UNSIGNED-BYTE-LIST-FIX
 (48 1 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (30 2 (:DEFINITION EXPT))
 (16 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 9 (:REWRITE DEFAULT-CDR))
 (10 9 (:REWRITE DEFAULT-CAR))
 (10 2 (:REWRITE DEFAULT-*-2))
 (6 2 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:LINEAR EXPT->-1))
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (1 1 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (1 1 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (1 1 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 )
(UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP
 (120 6 (:DEFINITION UNSIGNED-BYTE-FIX))
 (72 60 (:REWRITE DEFAULT-<-2))
 (62 60 (:REWRITE DEFAULT-<-1))
 (60 4 (:DEFINITION EXPT))
 (54 45 (:REWRITE DEFAULT-CDR))
 (54 45 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (22 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (21 21 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (20 4 (:REWRITE DEFAULT-*-2))
 (18 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
 (18 18 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:REWRITE ZIP-OPEN))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(UNSIGNED-BYTE-LIST-FIX-OF-NIL
 (1 1 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(UNSIGNED-BYTE-LIST-FIX-OF-CONS
 (139 3 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (135 9 (:DEFINITION EXPT))
 (97 6 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (76 49 (:REWRITE DEFAULT-<-2))
 (51 1 (:REWRITE UNSIGNED-BYTE-LISTP-OF-CONS))
 (49 49 (:REWRITE DEFAULT-<-1))
 (45 9 (:REWRITE DEFAULT-*-2))
 (27 9 (:REWRITE COMMUTATIVITY-OF-+))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (16 16 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (12 4 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (12 4 (:LINEAR EXPT->-1))
 (9 9 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (9 9 (:REWRITE ZIP-OPEN))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (9 9 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (8 8 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(UNSIGNED-BYTE-LIST-FIX-OF-APPEND
 (797 14 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (405 27 (:DEFINITION EXPT))
 (349 26 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (312 8 (:REWRITE UNSIGNED-BYTE-LISTP-OF-APPEND))
 (241 160 (:REWRITE DEFAULT-<-2))
 (227 27 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (160 160 (:REWRITE DEFAULT-<-1))
 (135 27 (:REWRITE DEFAULT-*-2))
 (107 107 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (96 8 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (81 27 (:REWRITE COMMUTATIVITY-OF-+))
 (80 8 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (79 54 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (70 62 (:REWRITE DEFAULT-+-2))
 (62 62 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (62 62 (:REWRITE DEFAULT-+-1))
 (56 56 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (56 56 (:TYPE-PRESCRIPTION LEN))
 (48 8 (:DEFINITION TRUE-LISTP))
 (40 8 (:REWRITE UNSIGNED-BYTE-LISTP-OF-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (40 8 (:DEFINITION LEN))
 (39 13 (:LINEAR EXPT->-1))
 (35 34 (:REWRITE DEFAULT-CDR))
 (27 27 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (27 27 (:REWRITE ZIP-OPEN))
 (27 27 (:REWRITE DEFAULT-*-1))
 (26 26 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (21 20 (:REWRITE DEFAULT-CAR))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (16 16 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (14 14 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (13 13 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (8 8 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (8 8 (:REWRITE CONSP-OF-LIST-FIX))
 )
(LEN-OF-UNSIGNED-BYTE-LIST-FIX
 (144 3 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (90 6 (:DEFINITION EXPT))
 (54 36 (:REWRITE DEFAULT-<-2))
 (48 6 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (36 36 (:REWRITE DEFAULT-<-1))
 (30 6 (:REWRITE DEFAULT-*-2))
 (26 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (17 17 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (10 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (9 8 (:REWRITE DEFAULT-CDR))
 (9 3 (:LINEAR EXPT->-1))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 6 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(CONSP-OF-UNSIGNED-BYTE-LIST-FIX
 (144 3 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (90 6 (:DEFINITION EXPT))
 (54 36 (:REWRITE DEFAULT-<-2))
 (48 6 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (36 36 (:REWRITE DEFAULT-<-1))
 (30 6 (:REWRITE DEFAULT-*-2))
 (18 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (17 17 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (9 3 (:LINEAR EXPT->-1))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 6 (:REWRITE ZIP-OPEN))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(CAR-OF-UNSIGNED-BYTE-LIST-FIX
 (1342 25 (:DEFINITION UNSIGNED-BYTE-LIST-FIX))
 (570 38 (:DEFINITION EXPT))
 (376 50 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (315 246 (:REWRITE DEFAULT-<-2))
 (264 246 (:REWRITE DEFAULT-<-1))
 (190 38 (:REWRITE DEFAULT-*-2))
 (144 144 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (132 73 (:REWRITE DEFAULT-CAR))
 (129 41 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (114 38 (:REWRITE COMMUTATIVITY-OF-+))
 (76 76 (:REWRITE DEFAULT-+-2))
 (76 76 (:REWRITE DEFAULT-+-1))
 (72 72 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (72 72 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (38 38 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (38 38 (:REWRITE ZIP-OPEN))
 (38 38 (:REWRITE DEFAULT-*-1))
 (33 33 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (27 9 (:LINEAR EXPT->-1))
 (25 25 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (17 17 (:REWRITE CONSP-OF-UNSIGNED-BYTE-LIST-FIX))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-FIX))
 )
(CDR-OF-UNSIGNED-BYTE-LIST-FIX
 (144 3 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (105 7 (:DEFINITION EXPT))
 (61 40 (:REWRITE DEFAULT-<-2))
 (48 6 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (40 40 (:REWRITE DEFAULT-<-1))
 (35 7 (:REWRITE DEFAULT-*-2))
 (21 7 (:REWRITE COMMUTATIVITY-OF-+))
 (18 18 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (18 6 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (9 9 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (9 3 (:LINEAR EXPT->-1))
 (7 7 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (7 7 (:REWRITE ZIP-OPEN))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-*-1))
 (7 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (3 3 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 )
(REV-OF-UNSIGNED-BYTE-LIST-FIX
 (916 16 (:REWRITE UNSIGNED-BYTE-FIX-WHEN-UNSIGNED-BYTE-P))
 (480 32 (:DEFINITION EXPT))
 (440 4 (:REWRITE CDR-OF-UNSIGNED-BYTE-LIST-FIX))
 (364 4 (:REWRITE CAR-OF-UNSIGNED-BYTE-LIST-FIX))
 (316 22 (:REWRITE UNSIGNED-BYTE-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (280 8 (:REWRITE UNSIGNED-BYTE-LISTP-OF-REV))
 (278 182 (:REWRITE DEFAULT-<-2))
 (224 32 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-UNSIGNED-BYTE-LISTP))
 (182 182 (:REWRITE DEFAULT-<-1))
 (160 32 (:REWRITE DEFAULT-*-2))
 (136 9 (:DEFINITION BINARY-APPEND))
 (96 32 (:REWRITE COMMUTATIVITY-OF-+))
 (96 8 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (92 41 (:REWRITE DEFAULT-CDR))
 (91 91 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-LISTP))
 (83 46 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-NOT-CONSP))
 (80 72 (:REWRITE DEFAULT-+-2))
 (80 8 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (78 27 (:REWRITE DEFAULT-CAR))
 (72 72 (:REWRITE DEFAULT-+-1))
 (56 56 (:TYPE-PRESCRIPTION LEN))
 (48 16 (:LINEAR EXPT->-1))
 (48 8 (:DEFINITION TRUE-LISTP))
 (46 46 (:REWRITE UNSIGNED-BYTE-LISTP-WHEN-TAKE-AND-NTHCDR))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (40 8 (:REWRITE UNSIGNED-BYTE-LISTP-OF-LIST-FIX-WHEN-UNSIGNED-BYTE-LISTP))
 (40 8 (:DEFINITION LEN))
 (32 32 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (32 32 (:REWRITE ZIP-OPEN))
 (32 32 (:REWRITE DEFAULT-*-1))
 (32 32 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (30 30 (:REWRITE CONSP-OF-UNSIGNED-BYTE-LIST-FIX))
 (16 16 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (16 16 (:REWRITE UNSIGNED-BYTE-FIX-OF-NFIX-BITS-NORMALIZE-CONST))
 (16 16 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (8 8 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (8 8 (:REWRITE CONSP-OF-LIST-FIX))
 (2 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
