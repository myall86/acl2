(IN)
(REMOVE-EL)
(REMOVE-EL-RETURN-TYPE
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 )
(PERM)
(REMOVE-EL-IN
 (35 35 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE DEFAULT-CDR))
 )
(REMOVE-EL-SWAP
 (79 79 (:REWRITE DEFAULT-CAR))
 (68 68 (:REWRITE DEFAULT-CDR))
 )
(PERM-REFLEXIVE
 (16 16 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(PERM-REMOVE
 (79 79 (:REWRITE DEFAULT-CAR))
 (61 61 (:REWRITE DEFAULT-CDR))
 )
(CAR-PERM
 (181 181 (:REWRITE DEFAULT-CAR))
 (106 106 (:REWRITE DEFAULT-CDR))
 (22 2 (:REWRITE REMOVE-EL-SWAP))
 (3 3 (:REWRITE REMOVE-EL-IN))
 )
(PERM-SYMMETRIC
 (42 42 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE DEFAULT-CDR))
 )
(PERM-IN
 (154 21 (:REWRITE PERM-SYMMETRIC))
 (56 56 (:REWRITE DEFAULT-CAR))
 (40 8 (:DEFINITION REMOVE-EL))
 (39 39 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE CAR-PERM))
 )
(PERM-TRANSITIVE
 (135 135 (:REWRITE DEFAULT-CAR))
 (115 23 (:DEFINITION REMOVE-EL))
 (99 99 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE CAR-PERM))
 )
(PERM-IS-AN-EQUIVALENCE
 (135 6 (:DEFINITION PERM))
 (30 30 (:REWRITE DEFAULT-CAR))
 (30 6 (:DEFINITION REMOVE-EL))
 (27 6 (:DEFINITION IN))
 (24 24 (:REWRITE DEFAULT-CDR))
 (18 18 (:TYPE-PRESCRIPTION IN))
 (6 6 (:REWRITE CAR-PERM))
 )
(PERM-REMOVE-EL-APP
 (219 219 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (65 53 (:REWRITE DEFAULT-CAR))
 (61 49 (:REWRITE DEFAULT-CDR))
 )
(PERM-IMPLIES-PERM-REMOVE-EL-2
 (45 2 (:DEFINITION PERM))
 (20 4 (:DEFINITION REMOVE-EL))
 (14 14 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (9 2 (:DEFINITION IN))
 (7 7 (:REWRITE PERM-TRANSITIVE))
 (6 6 (:TYPE-PRESCRIPTION IN))
 (2 2 (:REWRITE CAR-PERM))
 )
(PERM-IMPLIES-PERM-APPEND-1
 (914 457 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (708 71 (:DEFINITION REMOVE-EL))
 (552 474 (:REWRITE DEFAULT-CAR))
 (457 457 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (457 457 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (425 365 (:REWRITE DEFAULT-CDR))
 (204 51 (:REWRITE CAR-PERM))
 (73 5 (:REWRITE REMOVE-EL-SWAP))
 (36 12 (:REWRITE REMOVE-EL-IN))
 )
(PERM-IMPLIES-PERM-CONS-2
 (14 14 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 (6 6 (:TYPE-PRESCRIPTION IN))
 (2 2 (:REWRITE CAR-PERM))
 )
(PERM-APP-CONS
 (485 191 (:REWRITE DEFAULT-CAR))
 (354 138 (:REWRITE DEFAULT-CDR))
 (238 7 (:REWRITE CAR-PERM))
 (189 16 (:REWRITE PERM-REMOVE-EL-APP))
 (177 177 (:TYPE-PRESCRIPTION IN))
 (164 4 (:REWRITE REMOVE-EL-SWAP))
 (16 4 (:REWRITE REMOVE-EL-IN))
 )
