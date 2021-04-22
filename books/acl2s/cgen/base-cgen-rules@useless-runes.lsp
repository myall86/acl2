(TLP-FXR)
(TLP-FXR-TYPE)
(TLP-FXR-TYPE2
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(TLP-FXR-TYPE3
 (14 7 (:REWRITE DEFAULT-+-2))
 (10 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION TLP-FXR-TYPE2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE TLP-FXR-TYPE2))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(MEMBER-FIXER1
 (86 7 (:DEFINITION MEMBER-EQUAL))
 (61 1 (:DEFINITION ACL2-COUNT))
 (27 14 (:REWRITE DEFAULT-+-2))
 (26 14 (:REWRITE DEFAULT-CDR))
 (23 9 (:REWRITE DEFAULT-CAR))
 (17 14 (:REWRITE DEFAULT-+-1))
 (10 5 (:TYPE-PRESCRIPTION DEFDATA::NAT-LISTP--NTH--INTEGERP))
 (8 4 (:REWRITE O-INFP->NEQ-0))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 2 (:DEFINITION INTEGER-ABS))
 (8 1 (:DEFINITION LENGTH))
 (6 1 (:REWRITE O-P-O-INFP-CAR))
 (5 5 (:TYPE-PRESCRIPTION NAT-LISTP))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 1 (:REWRITE O-P-DEF-O-FINP-1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE TLP-FXR-TYPE2))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(MEMBER-FIXER2
 (7 7 (:TYPE-PRESCRIPTION TLP-FXR-TYPE2))
 )
(LEN-FIXER/REPEAT
 (70 36 (:REWRITE DEFAULT-+-2))
 (48 6 (:REWRITE O<=-O-FINP-DEF))
 (47 25 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-+-1))
 (25 25 (:REWRITE DEFAULT-<-2))
 (25 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 4 (:REWRITE O-FIRST-EXPT-<))
 (12 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (10 6 (:REWRITE O-INFP-O-FINP-O<=))
 (10 6 (:REWRITE AC-<))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE |a < b & b < c  =>  a < c|))
 (4 4 (:REWRITE O-FIRST-COEFF-<))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(APPEND-FIXER1
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(APPEND-FIXER2
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(INTERSECTP-FIX1)
(_MAX-LST1)
(_MAX-LST)
(_MAKE-NUMLIST)
(NOT-INTERSECTP-FIX2
 (11 11 (:TYPE-PRESCRIPTION TLP-FXR-TYPE2))
 )
(NO-DUPS-FIX
 (4 4 (:TYPE-PRESCRIPTION TLP-FXR-TYPE2))
 )
(REM-EQL-FIXER2)
(REMOVE1-EQUAL-FIXER2)
(SUBSETP-FIXER1)
(CONSP-FIXER/FOR-ALIST-FIXER)
(ALIST-FIXER)
(ALIST-FIXER-TYPE
 (24 6 (:REWRITE O-P-O-INFP-CAR))
 (14 8 (:REWRITE ACL2S::DEF=>ALIST))
 (8 7 (:REWRITE DEFAULT-CAR))
 (7 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE O-P-DEF-O-FINP-1))
 )
(ALIST-FIXER-TYPE2
 (16 4 (:REWRITE O-P-O-INFP-CAR))
 (8 8 (:TYPE-PRESCRIPTION O-P))
 (4 4 (:REWRITE O-P-DEF-O-FINP-1))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(ALIST-FIXER-TYPE3
 (14 7 (:REWRITE DEFAULT-+-2))
 (12 3 (:REWRITE O-P-O-INFP-CAR))
 (10 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION ALIST-FIXER-TYPE2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE O-P-DEF-O-FINP-1))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE ALIST-FIXER-TYPE2))
 )
(ASSOC-FXR3
 (6 6 (:TYPE-PRESCRIPTION ALIST-FIXER-TYPE2))
 )
