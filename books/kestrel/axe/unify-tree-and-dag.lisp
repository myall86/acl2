; This book deals with matching axe-trees against (parts of) dag-arrays.
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; TODO: Add support for failing fast if the skeleton is wrong.

(include-book "dag-arrays")
(include-book "axe-tree-vars")
(include-book "kestrel/utilities/forms" :dir :system)
(include-book "tools/flag" :dir :system)
(local (include-book "kestrel/alists-light/symbol-alistp" :dir :system))
(local (include-book "kestrel/lists-light/subsetp-equal" :dir :system))
(local (include-book "kestrel/lists-light/union-equal" :dir :system))
(local (include-book "kestrel/lists-light/len" :dir :system))
(local (include-book "kestrel/lists-light/memberp" :dir :system))
(local (include-book "kestrel/lists-light/no-duplicatesp-equal" :dir :system))
(local (include-book "kestrel/alists-light/strip-cdrs" :dir :system))

;; (local (in-theory (enable member-equal-becomes-memberp)))

(local (in-theory (disable symbol-alistp strip-cdrs)))

;move
(defthm dargp-of-lookup-equal-when-all-dargp-of-strip-cdrs
  (implies (all-dargp (strip-cdrs alist))
           (iff (dargp (lookup-equal var alist))
                (assoc-equal var alist)))
  :hints (("Goal" :induct t
           :in-theory (e/d (all-dargp lookup-equal strip-cdrs)
                           (myquotep)))))

;doesn't support lambdas
;fixme could use a single RV if we used :fail (which is not an alist) to signal failure?
(mutual-recursion
 ;; tree (e.g., a hyp with some free vars to be bound) has leaves that are quoteps, nodenums (from vars already bound), and free vars
 ;; Returns :fail (meaning failure to match), or an extension of alist with (compatible) bindings for the free vars.
 ;; if successp is nil, the alist returned is irrelevant
 ;; the alist returned (and alist) map variables to nodenums or quoteps
 ;; The guard would be simpler if we could pass in dag-len, but we don't want to pass that around.
 ;; TODO: Should tree be lambda-free (should free var hyps be lambda-free?)?
 (defund unify-tree-with-dag-node (tree nodenum-or-quotep dag-array alist)
   (declare (xargs :guard (and (axe-treep tree)
                               (dargp nodenum-or-quotep)
                               (if (natp nodenum-or-quotep)
                                   (pseudo-dag-arrayp 'dag-array dag-array (+ 1 nodenum-or-quotep))
                                 t)
                               (symbol-alistp alist))
                   :verify-guards nil ;done below
                   ))
   (if (consp tree)
       (let ((fn (ffn-symb tree)))
         (if (eq fn 'quote)
             ;; Tree is a quoted constant, so it only matches the same constant.
             ;; Note that we do not check whether nodenum-or-quotep is the nodenum of a constant (we expect constants to be inlined).
             (if (equal tree nodenum-or-quotep)
                 alist ; no bindings to add
               :fail)
           ;; Tree is a call of fn:
           (if (consp nodenum-or-quotep) ; checks for quotep
               ;; a function call doesn't match with a quotep:
               :fail
             ;;NODENUM-OR-QUOTEP must be a nodenum:
             (let ((expr (aref1 'dag-array dag-array nodenum-or-quotep)))
               (if (call-of fn expr) ;doesn't support lambdas
                   (unify-trees-with-dag-nodes (fargs tree) (dargs expr) dag-array alist)
                 :fail)))))
     (if (symbolp tree)
         ;; TREE is variable:
         (let ((binding (assoc-eq tree alist)))
           (if binding
               ;;bindings must match:
               (if (equal (cdr binding) nodenum-or-quotep)
                   alist
                 :fail)
             ;;make a new binding:
             (acons-fast tree nodenum-or-quotep alist)))
       ;; Tree is a nodenum, so nodenum-or-quotep must be the same nodenum (and not a quoted constant):
       (if (eql tree nodenum-or-quotep)
           alist
         :fail))))

 ;; Returns :fail (meaning failure to match), or an extension of alist with (compatible) bindings for the free vars.
 ;; The guard would be simpler if we could pass in dag-len, but we don't want to pass that around.
 (defund unify-trees-with-dag-nodes (tree-lst nodenum-or-quotep-lst dag-array alist)
   (declare (xargs :guard (and (axe-tree-listp tree-lst)
                               (all-dargp nodenum-or-quotep-lst)
                               (true-listp nodenum-or-quotep-lst)
                               (pseudo-dag-arrayp 'dag-array dag-array (+ 1 (largest-non-quotep nodenum-or-quotep-lst)))
                               (symbol-alistp alist))))
   (if (endp tree-lst)
       alist ; everything matched
     (if (not (consp nodenum-or-quotep-lst)) ;todo: could remove this if we knew all arities were right
         (prog2$ (er hard? 'unify-trees-with-dag-nodes "Arity mismatch.")
                 :fail)
       (let ((alist (unify-tree-with-dag-node (first tree-lst) (first nodenum-or-quotep-lst) dag-array alist)))
         (if (eq :fail alist)
             :fail
           (unify-trees-with-dag-nodes (rest tree-lst) (rest nodenum-or-quotep-lst) dag-array alist)))))))

(make-flag unify-tree-with-dag-node)

(defthm-flag-unify-tree-with-dag-node
  (defthm symbol-alistp-of-unify-tree-with-dag-node
    (implies (and (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
                  (symbol-alistp alist))
             (symbol-alistp (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
    :flag unify-tree-with-dag-node)
  (defthm symbol-alistp-of-unify-trees-with-dag-nodes
    (implies (and (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
                  (symbol-alistp alist))
             (symbol-alistp (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-tree-with-dag-node
                                     unify-trees-with-dag-nodes))))

;simple consequence of symbol-alistp
(defthm symbol-listp-of-strip-cars-of-unify-tree-with-dag-node
  (implies (and (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
                (symbol-alistp alist))
           (symbol-listp (strip-cars (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))))

;simple consequence of symbol-alistp
(defthm symbol-listp-of-strip-cars-of-unify-trees-with-dag-nodes
  (implies (and (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
                (symbol-alistp alist))
           (symbol-listp (strip-cars (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))))

(verify-guards unify-tree-with-dag-node)

(defthm-flag-unify-tree-with-dag-node
  (defthm alistp-of-unify-tree-with-dag-node
    (implies (and (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
                  (alistp alist))
             (alistp (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
    :flag unify-tree-with-dag-node)
  (defthm alistp-of-for-unify-trees-with-dag-nodes
    (implies (and (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
                  (alistp alist))
             (alistp (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes unify-tree-with-dag-node))))

(defthm-flag-unify-tree-with-dag-node
  (defthm unify-tree-with-dag-node-mono
    (implies (and ;; (axe-treep tree)
              (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
              ;; (natp dag-len)
              ;; (dargp-less-than nodenum-or-quotep dag-len)
              ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
              ;; (symbol-alistp alist)
              (member-equal x (strip-cars alist))
              ;;(symbolp x)
              )
             (member-equal x (strip-cars (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
    :flag unify-tree-with-dag-node)
  (defthm unify-trees-with-dag-nodes-mono
    (implies (and ;; (axe-tree-listp tree-lst)
              ;; (natp dag-len)
              ;; (bounded-darg-listp nodenum-or-quotep-lst dag-len)
              ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
              ;; (symbol-alistp alist)
              ;; (equal (len tree-lst)
              ;;        (len nodenum-or-quotep-lst))
              (member-equal x (strip-cars alist))
              (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
              ;;(symbolp x)
              )
             (member-equal x (strip-cars (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes unify-tree-with-dag-node))))

(defthm-flag-unify-tree-with-dag-node
  (defthm unify-tree-with-dag-node-mono2
    (implies (and ;; (axe-treep tree)
              ;; (natp dag-len)
              ;; (dargp-less-than nodenum-or-quotep dag-len)
              ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
              ;; (symbol-alistp alist)
              (subsetp-equal x (strip-cars alist))
              (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
              ;(symbolp x)
              )
             (subsetp-equal x (strip-cars (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
    :flag unify-tree-with-dag-node)
  (defthm unify-trees-with-dag-nodes-mono2
    (implies (and ;; (axe-tree-listp tree-lst)
              ;; (natp dag-len)
              ;; (bounded-darg-listp nodenum-or-quotep-lst dag-len)
              ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
              ;; (symbol-alistp alist)
              ;; (equal (len tree-lst)
              ;;        (len nodenum-or-quotep-lst))
              (subsetp-equal x (strip-cars alist))

              (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
;(symbolp x)
              )
             (subsetp-equal x
                            (strip-cars (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes unify-tree-with-dag-node))))

;; The alist returned binds all of the free vars.
(defthm-flag-unify-tree-with-dag-node
  (defthm unify-tree-with-dag-node-binds-all-vars
    (implies (and (axe-treep tree)
                  ;; (natp dag-len)
                  ;; (dargp-less-than nodenum-or-quotep dag-len)
                  ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
                  (symbol-alistp alist)
                  (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
             (subsetp-equal (axe-tree-vars tree)
                            (strip-cars (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
    :flag unify-tree-with-dag-node)
  (defthm unify-trees-with-dag-nodes-binds-all-vars
    (implies (and (axe-tree-listp tree-lst)
                  ;; (natp dag-len)
                  ;; (bounded-darg-listp nodenum-or-quotep-lst dag-len)
                  ;; (pseudo-dag-arrayp 'dag-array dag-array dag-len)
                  (symbol-alistp alist)
                  (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
             (subsetp-equal (axe-tree-vars-lst tree-lst)
                            (strip-cars (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes
                                     unify-tree-with-dag-node
                                     axe-tree-vars
                                     axe-tree-vars-lst))))

(local
 (defthm assoc-equal-iff
  (implies (alistp alist)
           (iff (assoc-equal key alist)
                (memberp key (strip-cars alist))))
  :hints (("Goal" :in-theory (enable memberp strip-cars assoc-equal)))))

;; ;; The alist returned binds exactly the free vars.
(defthm-flag-unify-tree-with-dag-node
  (defthm strip-cars-of-unify-tree-with-dag-node-perm
    (implies (and (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist)))
                  (axe-treep tree)
                  ;; (natp dag-len)
                  ;(dargp nodenum-or-quotep)
                  (pseudo-dag-arrayp 'dag-array dag-array dag-len)
                  (dargp-less-than nodenum-or-quotep dag-len)
                  (symbol-alistp alist))
             (perm (strip-cars (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))
                   (union-equal (axe-tree-vars tree)
                                (strip-cars alist))))
    :flag unify-tree-with-dag-node)
  (defthm strip-cars-of-unify-trees-with-dag-nodes-perm
    (implies (and (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist)))
                  (axe-tree-listp tree-lst)
                  ;; (natp dag-len)
                  ;(all-dargp nodenum-or-quotep-lst)
                  (pseudo-dag-arrayp 'dag-array dag-array dag-len)
                  (bounded-darg-listp nodenum-or-quotep-lst dag-len)
                  (symbol-alistp alist)
                  )
             (perm (strip-cars (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))
                   (union-equal (axe-tree-vars-lst tree-lst)
                                (strip-cars alist))))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes
                                     unify-tree-with-dag-node
                                     axe-tree-vars
                                     axe-tree-vars-lst))))

(defthm-flag-unify-tree-with-dag-node
  (defthm all-dargp-of-strip-cdrs-of-unify-tree-with-dag-node
    (implies (and (axe-treep tree)
                  (dargp nodenum-or-quotep)
                  (if (natp nodenum-or-quotep)
                      (pseudo-dag-arrayp 'dag-array dag-array (+ 1 nodenum-or-quotep))
                    t)
                  (all-dargp (strip-cdrs alist))
                  (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
             (all-dargp (strip-cdrs (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
    :flag unify-tree-with-dag-node)
  (defthm all-dargp-of-strip-cdrs-of-unify-trees-with-dag-nodes
    (implies (and (axe-tree-listp tree-lst)
                  (all-dargp nodenum-or-quotep-lst)
                  (pseudo-dag-arrayp 'dag-array dag-array (+ 1 (largest-non-quotep nodenum-or-quotep-lst)))
                  (all-dargp (strip-cdrs alist))
                  (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
             (all-dargp (strip-cdrs (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes unify-tree-with-dag-node))))

(defthm-flag-unify-tree-with-dag-node
  (defthm bounded-darg-listp-of-strip-cdrs-of-unify-tree-with-dag-node
    (implies (and (axe-treep tree)
                  (if (natp nodenum-or-quotep)
                      (pseudo-dag-arrayp 'dag-array dag-array (+ 1 nodenum-or-quotep))
                    t)
                  (integerp dag-len)
                  (dargp-less-than nodenum-or-quotep dag-len)
                  (bounded-darg-listp (strip-cdrs alist) dag-len)
                  (not (equal :fail (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))))
             (bounded-darg-listp (strip-cdrs (unify-tree-with-dag-node tree nodenum-or-quotep dag-array alist))
                                             dag-len))
    :flag unify-tree-with-dag-node)
  (defthm bounded-darg-listp-of-strip-cdrs-of-unify-trees-with-dag-nodes
    (implies (and (axe-tree-listp tree-lst)
                  (bounded-darg-listp nodenum-or-quotep-lst dag-len)
                  (pseudo-dag-arrayp 'dag-array dag-array (+ 1 (largest-non-quotep nodenum-or-quotep-lst)))
                  (integerp dag-len)
                  (bounded-darg-listp (strip-cdrs alist) dag-len)
                  (not (equal :fail (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))))
             (bounded-darg-listp (strip-cdrs (unify-trees-with-dag-nodes tree-lst nodenum-or-quotep-lst dag-array alist))
                                             dag-len))
    :flag unify-trees-with-dag-nodes)
  :hints (("Goal" :in-theory (enable unify-trees-with-dag-nodes unify-tree-with-dag-node))))
