(<-TYPE-OF-COMPARE<)
(<-TYPE-OF-COMPARABLEP)
(<-COMPARE<-TRANSITIVE)
(<-COMPARE<-NEGATION-TRANSITIVE)
(<-COMPARE<-STRICT)
(<-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(<-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE <-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE <-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE <-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-MERGESORT-FIXNUM
 (2 2 (:REWRITE <-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-MERGESORT-INTEGERS
 (2 2 (:REWRITE <-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST1-OK
 (12 12 (:REWRITE <-COMPARE<-TRANSITIVE))
 (12 12 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 (12 3 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(<-MERGESORT-FIXNUM)
(<-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE <-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-SORT)
(<-SORT-PRESERVES-DUPLICITY)
(<-SORT-CREATES-COMPARABLE-LISTP)
(<-SORT-SORTS)
(<-SORT-NO-DUPLICATESP-EQUAL)
(<-SORT-TRUE-LISTP)
(<-SORT-LEN)
(<-SORT-CONSP)
(<-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(<-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (3 3 (:REWRITE <-COMPARE<-TRANSITIVE))
 (3 3 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE <-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE <-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <-COMPARE<-NEGATION-TRANSITIVE))
 )
(<-INSERTSORT)
(<-MERGESORT-EQUALS-INSERTSORT
 (2 2 (:REWRITE <-COMPARE<-TRANSITIVE))
 )
(<-INSERTSORT-PRESERVES-DUPLICITY)
(<-INSERTSORT-CREATES-COMPARABLE-LISTP)
(<-INSERTSORT-SORTS)
(<-INSERTSORT-NO-DUPLICATESP-EQUAL)
(<-INSERTSORT-TRUE-LISTP)
(<-INSERTSORT-LEN)
(<-INSERTSORT-CONSP)
(GREATER-P)
(>-TYPE-OF-COMPARE<)
(>-TYPE-OF-COMPARABLEP)
(>-COMPARE<-TRANSITIVE)
(>-COMPARE<-NEGATION-TRANSITIVE)
(>-COMPARE<-STRICT)
(>-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(>-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE >-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 )
(>-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE >-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 )
(>-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE >-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 )
(>-MERGESORT-FIXNUM)
(>-MERGESORT-INTEGERS)
(>-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 12 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 (12 3 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(>-MERGESORT-FIXNUM)
(>-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(>-SORT)
(>-SORT-PRESERVES-DUPLICITY)
(>-SORT-CREATES-COMPARABLE-LISTP)
(>-SORT-SORTS)
(>-SORT-NO-DUPLICATESP-EQUAL)
(>-SORT-TRUE-LISTP)
(>-SORT-LEN)
(>-SORT-CONSP)
(>-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(>-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE >-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 )
(>-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE >-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE >-COMPARE<-NEGATION-TRANSITIVE))
 )
(>-INSERTSORT)
(>-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE >-COMPARE<-TRANSITIVE))
 )
(>-INSERTSORT-PRESERVES-DUPLICITY)
(>-INSERTSORT-CREATES-COMPARABLE-LISTP)
(>-INSERTSORT-SORTS)
(>-INSERTSORT-NO-DUPLICATESP-EQUAL)
(>-INSERTSORT-TRUE-LISTP)
(>-INSERTSORT-LEN)
(>-INSERTSORT-CONSP)
(BIGGER-TYPE-OF-COMPARE<)
(BIGGER-TYPE-OF-COMPARABLEP)
(BIGGER-COMPARE<-TRANSITIVE)
(BIGGER-COMPARE<-NEGATION-TRANSITIVE)
(BIGGER-COMPARE<-STRICT)
(DEFSORT-COMPARABLEP-SUFFICIENT)
(BIGGER-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(BIGGER-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (7 7 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (7 7 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-MERGESORT-FIXNUM
 (2 2 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-MERGESORT-INTEGERS
 (2 2 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST1-OK
 (23 5 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (21 10 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (12 12 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (12 12 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(BIGGER-MERGESORT-FIXNUM)
(BIGGER-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-SORT)
(BIGGER-SORT-PRESERVES-DUPLICITY)
(BIGGER-SORT-CREATES-COMPARABLE-LISTP)
(BIGGER-SORT-SORTS)
(BIGGER-SORT-NO-DUPLICATESP-EQUAL)
(BIGGER-SORT-TRUE-LISTP)
(BIGGER-SORT-LEN)
(BIGGER-SORT-CONSP)
(BIGGER-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(BIGGER-INSERT
 (16 8 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (3 3 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (3 3 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-INSERTSORT)
(BIGGER-MERGESORT-EQUALS-INSERTSORT
 (6 6 (:REWRITE BIGGER-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE BIGGER-COMPARE<-NEGATION-TRANSITIVE))
 )
(BIGGER-INSERTSORT-PRESERVES-DUPLICITY)
(BIGGER-INSERTSORT-CREATES-COMPARABLE-LISTP)
(BIGGER-INSERTSORT-SORTS)
(BIGGER-INSERTSORT-NO-DUPLICATESP-EQUAL)
(BIGGER-INSERTSORT-TRUE-LISTP)
(BIGGER-INSERTSORT-LEN)
(BIGGER-INSERTSORT-CONSP)
(LITTLER-SORT-TYPE-OF-COMPARE<)
(LITTLER-SORT-TYPE-OF-COMPARABLEP)
(LITTLER-SORT-COMPARE<-TRANSITIVE)
(LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE)
(LITTLER-SORT-COMPARE<-STRICT)
(DEFSORT-COMPARABLEP-SUFFICIENT)
(LITTLER-SORT-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(LITTLER-SORT-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (7 7 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (7 7 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-MERGESORT-FIXNUM
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-MERGESORT-INTEGERS
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST1-OK
 (23 5 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (21 10 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (12 12 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (12 12 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(LITTLER-SORT-MERGESORT-FIXNUM)
(LITTLER-SORT-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT)
(LITTLER-SORT-SORT-PRESERVES-DUPLICITY)
(LITTLER-SORT-SORT-CREATES-COMPARABLE-LISTP)
(LITTLER-SORT-SORT-SORTS)
(LITTLER-SORT-SORT-NO-DUPLICATESP-EQUAL)
(LITTLER-SORT-SORT-TRUE-LISTP)
(LITTLER-SORT-SORT-LEN)
(LITTLER-SORT-SORT-CONSP)
(LITTLER-SORT-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(LITTLER-SORT-INSERT
 (16 8 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (3 3 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (3 3 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-INSERTSORT)
(LITTLER-SORT-MERGESORT-EQUALS-INSERTSORT
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-TRANSITIVE))
 (6 6 (:REWRITE LITTLER-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(LITTLER-SORT-INSERTSORT-PRESERVES-DUPLICITY)
(LITTLER-SORT-INSERTSORT-CREATES-COMPARABLE-LISTP)
(LITTLER-SORT-INSERTSORT-SORTS)
(LITTLER-SORT-INSERTSORT-NO-DUPLICATESP-EQUAL)
(LITTLER-SORT-INSERTSORT-TRUE-LISTP)
(LITTLER-SORT-INSERTSORT-LEN)
(LITTLER-SORT-INSERTSORT-CONSP)
(<<W-TYPE-OF-COMPARE<)
(<<W-COMPARE<-TRANSITIVE
 (57 16 (:REWRITE <<-TRICHOTOMY))
 (49 9 (:REWRITE <<-ASYMMETRIC))
 )
(<<W-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<W-COMPARE<-TRANSITIVE))
 )
(<<W-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<W-COMPARE<-TRANSITIVE))
 )
(<<W-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<W-COMPARE<-TRANSITIVE))
 )
(<<W-MERGESORT-FIXNUM)
(<<W-MERGESORT-INTEGERS)
(<<W-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(<<W-MERGESORT-FIXNUM)
(<<W-MERGESORT-INTEGERS)
(<<W-SORT)
(<<W-SORT-PRESERVES-DUPLICITY)
(<<W-SORT-SORTS)
(<<W-SORT-NO-DUPLICATESP-EQUAL)
(<<W-SORT-TRUE-LISTP)
(<<W-SORT-LEN)
(<<W-SORT-CONSP)
(<<W-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(<<-NEGATION-TRANSITIVE)
(<<-TYPE-OF-COMPARE<)
(<<-COMPARE<-TRANSITIVE
 (1 1 (:REWRITE <<-TRICHOTOMY))
 )
(<<-COMPARE<-NEGATION-TRANSITIVE
 (48 11 (:REWRITE <<-TRICHOTOMY))
 (41 6 (:REWRITE <<-ASYMMETRIC))
 (17 13 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (14 10 (:REWRITE <<-TRANSITIVE))
 )
(<<-COMPARE<-STRICT)
(<<-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 )
(<<-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 )
(<<-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 )
(<<-MERGESORT-FIXNUM)
(<<-MERGESORT-INTEGERS)
(<<-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (8 8 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (8 8 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(<<-MERGESORT-FIXNUM)
(<<-MERGESORT-INTEGERS)
(<<-SORT)
(<<-SORT-PRESERVES-DUPLICITY)
(<<-SORT-SORTS)
(<<-SORT-NO-DUPLICATESP-EQUAL)
(<<-SORT-TRUE-LISTP)
(<<-SORT-LEN)
(<<-SORT-CONSP)
(<<-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(<<-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 )
(<<-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE <<-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE <<-COMPARE<-NEGATION-TRANSITIVE))
 )
(<<-INSERTSORT)
(<<-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE <<-COMPARE<-TRANSITIVE))
 )
(<<-INSERTSORT-PRESERVES-DUPLICITY)
(<<-INSERTSORT-SORTS)
(<<-INSERTSORT-NO-DUPLICATESP-EQUAL)
(<<-INSERTSORT-TRUE-LISTP)
(<<-INSERTSORT-LEN)
(<<-INSERTSORT-CONSP)
(COMMON-<<-SORT-FOR-PERMS
 (18 3 (:REWRITE <<-ASYMMETRIC))
 (5 5 (:REWRITE <<-TRANSITIVE))
 (5 5 (:REWRITE <<-NEGATION-TRANSITIVE))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(INTVAL-ALISTP)
(ALISTP-WHEN-INTVAL-ALISTP
 (21 21 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 )
(ASSOC-IN-INTVAL-ALISTP
 (40 40 (:REWRITE DEFAULT-CDR))
 )
(INTVAL-ALIST-<
 (44 44 (:REWRITE DEFAULT-CAR))
 (24 22 (:REWRITE DEFAULT-CDR))
 (20 4 (:DEFINITION INTVAL-ALISTP))
 )
(INTVAL-ALIST-SORT-TYPE-OF-COMPARE<)
(INTVAL-ALIST-SORT-TYPE-OF-COMPARABLEP)
(INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE
 (54 18 (:REWRITE DEFAULT-CDR))
 (54 12 (:DEFINITION ASSOC-EQUAL))
 (36 12 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (30 30 (:REWRITE DEFAULT-CAR))
 (12 12 (:TYPE-PRESCRIPTION INTVAL-ALIST-SORT-TYPE-OF-COMPARABLEP))
 (12 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 3 (:REWRITE DEFAULT-<-2))
 (9 3 (:REWRITE DEFAULT-<-1))
 )
(INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE
 (72 24 (:REWRITE DEFAULT-CDR))
 (72 16 (:DEFINITION ASSOC-EQUAL))
 (48 16 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (40 40 (:REWRITE DEFAULT-CAR))
 (38 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (16 16 (:TYPE-PRESCRIPTION INTVAL-ALIST-SORT-TYPE-OF-COMPARABLEP))
 (16 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 4 (:REWRITE DEFAULT-<-2))
 (12 4 (:REWRITE DEFAULT-<-1))
 )
(INTVAL-ALIST-SORT-COMPARE<-STRICT
 (14 3 (:DEFINITION ASSOC-EQUAL))
 (11 5 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (3 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 1 (:REWRITE DEFAULT-<-2))
 (2 2 (:TYPE-PRESCRIPTION INTVAL-ALIST-SORT-TYPE-OF-COMPARABLEP))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-COMPARABLEP-SUFFICIENT)
(DEFSORT-EXTRA-ARGS-GUARD-SUFFICIENT)
(INTVAL-ALIST-SORT-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(DEFSORT-COMPARABLEP-OF-CADR)
(INTVAL-ALIST-SORT-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-MERGESORT-FIXNUM)
(INTVAL-ALIST-SORT-MERGESORT-INTEGERS)
(INTVAL-ALIST-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 12 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 (12 3 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(INTVAL-ALIST-SORT-MERGESORT-FIXNUM)
(INTVAL-ALIST-SORT-MERGESORT-INTEGERS
 (56 56 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT
 (27 27 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT-SORT-PRESERVES-DUPLICITY)
(INTVAL-ALIST-SORT-SORT-CREATES-COMPARABLE-LISTP)
(INTVAL-ALIST-SORT-SORT-SORTS)
(INTVAL-ALIST-SORT-SORT-NO-DUPLICATESP-EQUAL)
(INTVAL-ALIST-SORT-SORT-TRUE-LISTP)
(INTVAL-ALIST-SORT-SORT-LEN)
(INTVAL-ALIST-SORT-SORT-CONSP)
(INTVAL-ALIST-SORT-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(INTVAL-ALIST-SORT-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-INSERTSORT)
(INTVAL-ALIST-SORT-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE INTVAL-ALIST-SORT-COMPARE<-TRANSITIVE))
 )
(INTVAL-ALIST-SORT-INSERTSORT-PRESERVES-DUPLICITY)
(INTVAL-ALIST-SORT-INSERTSORT-CREATES-COMPARABLE-LISTP)
(INTVAL-ALIST-SORT-INSERTSORT-SORTS)
(INTVAL-ALIST-SORT-INSERTSORT-NO-DUPLICATESP-EQUAL)
(INTVAL-ALIST-SORT-INSERTSORT-TRUE-LISTP)
(INTVAL-ALIST-SORT-INSERTSORT-LEN)
(INTVAL-ALIST-SORT-INSERTSORT-CONSP)
(ALISTP-WHEN-INTVAL-ALISTP
 (21 21 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 )
(ASSOC-IN-INTVAL-ALISTP
 (18 18 (:REWRITE DEFAULT-CDR))
 )
(INTVAL-ALIST-<2
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION INTVAL-ALISTP))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(INTVAL-ALIST-SORT2-TYPE-OF-COMPARE<)
(INTVAL-ALIST-SORT2-TYPE-OF-COMPARABLEP)
(INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE
 (144 32 (:DEFINITION ASSOC-EQUAL))
 (112 48 (:REWRITE DEFAULT-CDR))
 (80 80 (:REWRITE DEFAULT-CAR))
 (80 16 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 )
(INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE
 (288 64 (:DEFINITION ASSOC-EQUAL))
 (224 96 (:REWRITE DEFAULT-CDR))
 (160 160 (:REWRITE DEFAULT-CAR))
 (160 32 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (44 16 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 )
(INTVAL-ALIST-SORT2-COMPARE<-STRICT
 (14 3 (:DEFINITION ASSOC-EQUAL))
 (9 5 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 1 (:REWRITE ASSOC-IN-INTVAL-ALISTP))
 (1 1 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (1 1 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(DEFSORT-COMPARABLEP-SUFFICIENT)
(INTVAL-ALIST-SORT2-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(DEFSORT-COMPARABLEP-OF-CADR)
(INTVAL-ALIST-SORT2-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 (4 4 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT2-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 (4 4 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT2-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 (4 4 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT2-MERGESORT-FIXNUM)
(INTVAL-ALIST-SORT2-MERGESORT-INTEGERS)
(INTVAL-ALIST-SORT2
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 12 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 (9 3 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (2 2 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 )
(INTVAL-ALIST-SORT2-MERGESORT-FIXNUM)
(INTVAL-ALIST-SORT2-MERGESORT-INTEGERS
 (56 56 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT2
 (27 27 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 )
(INTVAL-ALIST-SORT2-SORT-PRESERVES-DUPLICITY)
(INTVAL-ALIST-SORT2-SORT-CREATES-COMPARABLE-LISTP)
(INTVAL-ALIST-SORT2-SORT-SORTS)
(INTVAL-ALIST-SORT2-SORT-NO-DUPLICATESP-EQUAL)
(INTVAL-ALIST-SORT2-SORT-TRUE-LISTP)
(INTVAL-ALIST-SORT2-SORT-LEN)
(INTVAL-ALIST-SORT2-SORT-CONSP)
(INTVAL-ALIST-SORT2-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(INTVAL-ALIST-SORT2-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE DEFSORT-COMPARABLEP-SUFFICIENT))
 (2 2 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT2-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-NEGATION-TRANSITIVE))
 )
(INTVAL-ALIST-SORT2-INSERTSORT)
(INTVAL-ALIST-SORT2-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE INTVAL-ALIST-SORT2-COMPARE<-TRANSITIVE))
 )
(INTVAL-ALIST-SORT2-INSERTSORT-PRESERVES-DUPLICITY)
(INTVAL-ALIST-SORT2-INSERTSORT-CREATES-COMPARABLE-LISTP)
(INTVAL-ALIST-SORT2-INSERTSORT-SORTS)
(INTVAL-ALIST-SORT2-INSERTSORT-NO-DUPLICATESP-EQUAL)
(INTVAL-ALIST-SORT2-INSERTSORT-TRUE-LISTP)
(INTVAL-ALIST-SORT2-INSERTSORT-LEN)
(INTVAL-ALIST-SORT2-INSERTSORT-CONSP)
(STRING-LESS-P)
(LEMMA
 (484 49 (:REWRITE STRING<-L-ASYMMETRIC))
 (352 54 (:DEFINITION EQLABLE-LISTP))
 (282 282 (:REWRITE DEFAULT-CAR))
 (83 83 (:REWRITE DEFAULT-CDR))
 (74 74 (:REWRITE DEFAULT-CHAR-CODE))
 (49 49 (:REWRITE STRING<-L-TRICHOTOMY))
 (49 49 (:REWRITE STRING<-L-TRANSITIVE))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (18 12 (:REWRITE DEFAULT-+-2))
 (18 12 (:REWRITE DEFAULT-+-1))
 (17 17 (:TYPE-PRESCRIPTION EQLABLEP))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TRANSITIVITY-OF-STRING-LESS-P
 (44 2 (:REWRITE STRING<-L-ASYMMETRIC))
 (16 14 (:REWRITE STRING<-L-TRICHOTOMY))
 (12 12 (:REWRITE STRING<-L-TRANSITIVE))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(STRING-TYPE-OF-COMPARE<)
(STRING-TYPE-OF-COMPARABLEP)
(STRING-COMPARE<-TRANSITIVE)
(STRING-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(STRING-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING-COMPARE<-TRANSITIVE))
 )
(STRING-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING-COMPARE<-TRANSITIVE))
 )
(STRING-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING-COMPARE<-TRANSITIVE))
 )
(STRING-MERGESORT-FIXNUM)
(STRING-MERGESORT-INTEGERS)
(STRING-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (12 3 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (11 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(STRING-MERGESORT-FIXNUM)
(STRING-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(STRING-SORT)
(STRING-SORT-PRESERVES-DUPLICITY)
(STRING-SORT-CREATES-COMPARABLE-LISTP)
(STRING-SORT-SORTS)
(STRING-SORT-NO-DUPLICATESP-EQUAL)
(STRING-SORT-TRUE-LISTP)
(STRING-SORT-LEN)
(STRING-SORT-CONSP)
(STRING-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(STRING2-TYPE-OF-COMPARE<)
(STRING2-TYPE-OF-COMPARABLEP)
(STRING2-COMPARE<-TRANSITIVE)
(DEFSORT-COMPARABLE-LIST-CHECK)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(STRING2-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING2-COMPARE<-TRANSITIVE))
 )
(STRING2-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING2-COMPARE<-TRANSITIVE))
 )
(STRING2-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE STRING2-COMPARE<-TRANSITIVE))
 )
(STRING2-MERGESORT-FIXNUM)
(STRING2-MERGESORT-INTEGERS)
(STRING2-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (8 8 (:REWRITE STRING2-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(STRING2-MERGESORT-FIXNUM)
(STRING2-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(STRING2-SORT)
(STRING2-SORT-PRESERVES-DUPLICITY)
(STRING2-SORT-CREATES-COMPARABLE-LISTP)
(STRING2-SORT-SORTS)
(STRING2-SORT-NO-DUPLICATESP-EQUAL)
(STRING2-SORT-TRUE-LISTP)
(STRING2-SORT-LEN)
(STRING2-SORT-CONSP)
(STRING2-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(ENTRY-P)
(ENTRY-KEY<)
(ENTRY-VAL<)
(ENTRY-KEY-TYPE-OF-COMPARE<)
(ENTRY-KEY-TYPE-OF-COMPARABLEP)
(ENTRY-KEY-COMPARE<-TRANSITIVE)
(ENTRY-KEY-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(ENTRY-KEY-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-KEY-COMPARE<-TRANSITIVE))
 )
(ENTRY-KEY-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-KEY-COMPARE<-TRANSITIVE))
 )
(ENTRY-KEY-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-KEY-COMPARE<-TRANSITIVE))
 )
(ENTRY-KEY-MERGESORT-FIXNUM)
(ENTRY-KEY-MERGESORT-INTEGERS)
(ENTRY-KEY-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 4 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (14 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(ENTRY-KEY-MERGESORT-FIXNUM)
(ENTRY-KEY-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(ENTRY-KEY-SORT)
(ENTRY-KEY-SORT-PRESERVES-DUPLICITY)
(ENTRY-KEY-SORT-CREATES-COMPARABLE-LISTP)
(ENTRY-KEY-SORT-SORTS)
(ENTRY-KEY-SORT-NO-DUPLICATESP-EQUAL)
(ENTRY-KEY-SORT-TRUE-LISTP)
(ENTRY-KEY-SORT-LEN)
(ENTRY-KEY-SORT-CONSP)
(ENTRY-KEY-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(ENTRY-VAL-TYPE-OF-COMPARE<)
(ENTRY-VAL-TYPE-OF-COMPARABLEP)
(ENTRY-VAL-COMPARE<-TRANSITIVE
 (6 6 (:REWRITE DEFAULT-CDR))
 )
(ENTRY-VAL-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(ENTRY-VAL-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-VAL-COMPARE<-TRANSITIVE))
 )
(ENTRY-VAL-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-VAL-COMPARE<-TRANSITIVE))
 )
(ENTRY-VAL-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ENTRY-VAL-COMPARE<-TRANSITIVE))
 )
(ENTRY-VAL-MERGESORT-FIXNUM)
(ENTRY-VAL-MERGESORT-INTEGERS)
(ENTRY-VAL-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 4 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (14 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(ENTRY-VAL-MERGESORT-FIXNUM)
(ENTRY-VAL-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(ENTRY-VAL-SORT)
(ENTRY-VAL-SORT-PRESERVES-DUPLICITY)
(ENTRY-VAL-SORT-CREATES-COMPARABLE-LISTP)
(ENTRY-VAL-SORT-SORTS)
(ENTRY-VAL-SORT-NO-DUPLICATESP-EQUAL)
(ENTRY-VAL-SORT-TRUE-LISTP)
(ENTRY-VAL-SORT-LEN)
(ENTRY-VAL-SORT-CONSP)
(ENTRY-VAL-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(SORTELT-P)
(TYPE-OF-SORTELT-P)
(SORTCMP)
(TYPE-OF-SORTCMP)
(SORTCMP-TRANSITIVE)
(GENSORT-TYPE-OF-COMPARE<)
(GENSORT-TYPE-OF-COMPARABLEP)
(GENSORT-COMPARE<-TRANSITIVE)
(GENSORT-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(GENSORT-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS)
(GENSORT-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 4 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (14 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-SORT)
(GENSORT-SORT-PRESERVES-DUPLICITY)
(GENSORT-SORT-CREATES-COMPARABLE-LISTP)
(GENSORT-SORT-SORTS)
(GENSORT-SORT-NO-DUPLICATESP-EQUAL)
(GENSORT-SORT-TRUE-LISTP)
(GENSORT-SORT-LEN)
(GENSORT-SORT-CONSP)
(GENSORT-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(SORTELTLIST-P)
(GENSORT-TYPE-OF-COMPARE<)
(GENSORT-TYPE-OF-COMPARABLEP)
(GENSORT-COMPARE<-TRANSITIVE)
(GENSORT-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GENSORT-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS)
(GENSORT-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 4 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (14 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-SORT)
(GENSORT-SORT-PRESERVES-DUPLICITY)
(GENSORT-SORT-CREATES-COMPARABLE-LISTP)
(GENSORT-SORT-SORTS)
(GENSORT-SORT-NO-DUPLICATESP-EQUAL)
(GENSORT-SORT-TRUE-LISTP)
(GENSORT-SORT-LEN)
(GENSORT-SORT-CONSP)
(GENSORT-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(SORTELTLIST-P)
(GENSORT-TYPE-OF-COMPARE<)
(GENSORT-TYPE-OF-COMPARABLEP)
(GENSORT-COMPARE<-TRANSITIVE)
(GENSORT-LIST-P)
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR)
(GENSORT-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GENSORT-COMPARE<-TRANSITIVE))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS)
(GENSORT-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (15 4 (:REWRITE DEFSORT-COMPARABLEP-OF-CAR))
 (14 4 (:REWRITE DEFSORT-COMPARABLE-LISTP-OF-CDR))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-MERGESORT-FIXNUM)
(GENSORT-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GENSORT-SORT)
(GENSORT-SORT-PRESERVES-DUPLICITY)
(GENSORT-SORT-CREATES-COMPARABLE-LISTP)
(GENSORT-SORT-SORTS)
(GENSORT-SORT-NO-DUPLICATESP-EQUAL)
(GENSORT-SORT-TRUE-LISTP)
(GENSORT-SORT-LEN)
(GENSORT-SORT-CONSP)
(GENSORT-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
