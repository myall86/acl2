; A way to efficiently deal with symbolic symbol-alists during rewriting
;
; Copyright (C) 2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; This book introduces a way to represent symbol-alists during rewriting using
;; tree-shaped terms instead of deep nests of calls to ACONS.  Logically
;; speaking, symbol-alists are linear structures.  Symbolically, they are
;; usually represented as nests of calls to ACONS.  But resolving a lookup in
;; such a symbolic alist during rewriting can require a number of rewrite steps
;; that is linear in the number of ACONS calls.  Instead, we can represent a
;; symbol-alist as a tree of calls of FILTER-AND-COMBINE-SYMBOL-ALISTS.  The
;; depth of such a tree can be logarithmic in the number of ACONS terms that
;; would appear in the standard representation.  So, resolving a lookup using
;; the rule LOOKUP-EQUAL-OF-FILTER-AND-COMBINE-SYMBOL-ALISTS-SAFE should be
;; logarithmic instead of linear in the depth of the alist.

;; To be useful, this machinery requires that keys of the alist are a known set
;; of constant symbols.

(include-book "kestrel/alists-light/assoc-equal" :dir :system)
(include-book "kestrel/alists-light/lookup-equal" :dir :system)
(local (include-book "kestrel/alists-light/alistp" :dir :system))
(local (include-book "kestrel/typed-lists-light/symbol-listp" :dir :system))

(local
 (defthm symbol-listp-of-take
   (implies (symbol-listp l)
            (symbol-listp (take n l)))
   :hints (("Goal" :in-theory (enable take)))))

(local
 (defthm symbol-listp-of-nthcdr
   (implies (symbol-listp l)
            (symbol-listp (nthcdr n l)))
   :hints (("Goal" :in-theory (enable nthcdr)))))

;;from axioms.lisp:
(defthm equal-coerce
    (implies (and (stringp x)
                  (stringp y))
             (equal (equal (coerce x 'list)
                           (coerce y 'list))
                    (equal x y)))
    :hints (("Goal" :use
             ((:instance coerce-inverse-2 (x x))
              (:instance coerce-inverse-2 (x y)))
             :in-theory (disable coerce-inverse-2))))

(defthm symbol<-antisymmetric-cheap
  (implies (symbol< x y)
           (not (symbol< y x)))
  :rule-classes ((:rewrite :backchain-limit-lst (0)))
  :hints (("Goal" :in-theory (enable symbol< STRING<))))

;;see also SYMBOL<-TRICHOTOMY
(defthm symbol<-when-not-symbol<-and-not-equal-cheap
  (implies (and (not (symbol< y x))
                (not (equal x y))
                (symbolp x)
                (symbolp y))
           (symbol< x y))
  :rule-classes ((:rewrite :backchain-limit-lst (0 0 nil nil)))
  :hints (("Goal" :in-theory (enable symbol< string<))))

;;; end of library stuff

(defun filter-keys-symbol< (key alist)
  (declare (xargs :guard (and (symbolp key)
                              (symbol-alistp alist))))
  (if (endp alist)
      nil
    (let* ((entry (first alist))
           (entry-key (car entry)))
      (if (symbol< entry-key key)
          (acons entry-key
                 (cdr entry)
                 (filter-keys-symbol< key (rest alist)))
        (filter-keys-symbol< key (rest alist))))))

(defthm true-listp-of-filter-keys-symbol<
  (true-listp (filter-keys-symbol< key alist))
  :rule-classes :type-prescription)

(defthm alistp-of-filter-keys-symbol<
  (alistp (filter-keys-symbol< key alist))
  :rule-classes :type-prescription)

(defthm lookup-equal-of-filter-keys-symbol<-when-symbol<
  (implies (symbol< key1 key2)
           (equal (lookup-equal key1 (filter-keys-symbol< key2 alist))
                  (lookup-equal key1 alist))))

(defthm lookup-equal-of-filter-keys-symbol<-when-symbol->
  (implies (symbol< key2 key1)
           (equal (lookup-equal key1 (filter-keys-symbol< key2 alist))
                  nil)))

(defthm assoc-equal-of-filter-keys-symbol<-when-symbol<
  (implies (and (symbol< key1 key2)
                (alistp alist))
           (equal (assoc-equal key1 (filter-keys-symbol< key2 alist))
                  (assoc-equal key1 alist))))

(defthm cdr-of-assoc-equal-of-filter-keys-symbol<-when-symbol<
  (implies (symbol< key1 key2)
           (equal (cdr (assoc-equal key1 (filter-keys-symbol< key2 alist)))
                  (cdr (assoc-equal key1 alist)))))

(defthm assoc-equal-of-filter-keys-symbol<-when-symbol>=
  (implies (not (symbol< key1 key2))
           (equal (assoc-equal key1 (filter-keys-symbol< key2 alist))
                  nil)))

(defun filter-keys-symbol>= (key alist)
  (declare (xargs :guard (and (symbolp key)
                              (symbol-alistp alist))))
  (if (endp alist)
      nil
    (let* ((entry (first alist))
           (entry-key (car entry)))
      (if (not (symbol< entry-key key))
          (acons entry-key
                 (cdr entry)
                 (filter-keys-symbol>= key (rest alist)))
        (filter-keys-symbol>= key (rest alist))))))

(defthm true-listp-of-filter-keys-symbol>=
  (true-listp (filter-keys-symbol>= key alist))
  :rule-classes :type-prescription)

(defthm alistp-of-filter-keys-symbol>=
  (alistp (filter-keys-symbol>= key alist))
  :rule-classes :type-prescription)

(defthm assoc-equal-of-filter-keys-symbol>=-when-symbol<
  (implies (symbol< key1 key2)
           (equal (assoc-equal key1 (filter-keys-symbol>= key2 alist))
                  nil)))

(defthm cdr-of-assoc-equal-of-filter-keys-symbol>=-when-symbol>=
  (implies (not (symbol< key1 key2))
           (equal (cdr (assoc-equal key1 (filter-keys-symbol>= key2 alist)))
                  (cdr (assoc-equal key1 alist)))))

;; Drop pairs from alist-before-key and alist-after-key that violate the constraints
(defun filter-and-combine-symbol-alists (key alist-before-key alist-after-key)
  (declare (xargs :guard (and (symbolp key)
                              (symbol-alistp alist-before-key)
                              (symbol-alistp alist-after-key)
                              ;; (all-symbol< (strip-cars alist-before-key key))
                              ;; (all-symbol>= (strip-cars alist-after-key key))
                              )))
  (append (filter-keys-symbol< key alist-before-key)
          (filter-keys-symbol>= key alist-after-key)))

(defthm alistp-of-filter-and-combine-symbol-alists
  (alistp (filter-and-combine-symbol-alists key alist-before-key alist-after-key)))

(defthm symbol-alistp-of-filter-and-combine-symbol-alists
  (implies (and (symbol-alistp alist-before-key)
                (symbol-alistp alist-after-key))
           (symbol-alistp (filter-and-combine-symbol-alists key alist-before-key alist-after-key))))

;; The key rule
(defthm lookup-equal-of-filter-and-combine-symbol-alists
  (implies (and (symbolp desired-key)
                (symbolp key))
           (equal (lookup-equal desired-key (filter-and-combine-symbol-alists key alist-before-key alist-after-key))
                  (if (symbol< desired-key key)
                      (lookup-equal desired-key alist-before-key)
                    (lookup-equal desired-key alist-after-key))))
  :hints (("Goal" :in-theory (enable lookup-equal))))

;; Since desired-key and key are required to be constants, this does not introduce
;; IFs.  Furthermore, the resulting lookup-equal term should be about half the
;; size of the LHS, provided alist-before-key and alist-after-key are roughly the same
;; size.
(defthm lookup-equal-of-filter-and-combine-symbol-alists-safe
  (implies (and (syntaxp (and (quotep desired-key)
                              (quotep key)))
                (symbolp desired-key)
                (symbolp key))
           (equal (lookup-equal desired-key (filter-and-combine-symbol-alists key alist-before-key alist-after-key))
                  (if (symbol< desired-key key)
                      (lookup-equal desired-key alist-before-key)
                    (lookup-equal desired-key alist-after-key))))
  :hints (("Goal" :in-theory (enable lookup-equal))))
