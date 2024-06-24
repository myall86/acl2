; Gathering free variables from axe-trees
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

(include-book "axe-trees")
(include-book "kestrel/terms-light/all-quotep" :dir :system)
(local (include-book "kestrel/lists-light/no-duplicatesp-equal" :dir :system))

;; see all-vars1 but that one has an accumulator.  also, this works on axe-trees!
(mutual-recursion
 (defund axe-tree-vars (tree)
   (declare (xargs :guard (axe-treep tree)
                   :verify-guards nil ; done below
                   ))
   (if (atom tree)
       (if (symbolp tree)
           (list tree)
         ;; tree is a nodenum:
         nil)
     (if (fquotep tree)
         nil
       (axe-tree-vars-lst (fargs tree)))))
 (defund axe-tree-vars-lst (trees)
   (declare (xargs :guard (axe-tree-listp trees)))
   (if (atom trees)
       nil
     (union-eq (axe-tree-vars (first trees))
               (axe-tree-vars-lst (rest trees))))))

(make-flag axe-tree-vars)

(defthm-flag-axe-tree-vars
  (defthm symbol-listp-of-axe-tree-vars
    (implies (axe-treep tree)
             (symbol-listp (axe-tree-vars tree)))
    :flag axe-tree-vars)
  (defthm symbol-listp-of-axe-tree-vars-lst
    (implies (axe-tree-listp trees)
             (symbol-listp (axe-tree-vars-lst trees)))
    :flag axe-tree-vars-lst)
  :hints (("Goal" :in-theory (enable axe-tree-vars
                                     axe-tree-vars-lst))))

(verify-guards axe-tree-vars)

(defthm-flag-axe-tree-vars
  (defthm no-duplicatesp-of-axe-tree-vars
    (implies (axe-treep tree)
             (no-duplicatesp (axe-tree-vars tree)))
    :flag axe-tree-vars)
  (defthm no-duplicatesp-of-axe-tree-vars-lst
    (implies (axe-tree-listp trees)
             (no-duplicatesp (axe-tree-vars-lst trees)))
    :flag axe-tree-vars-lst)
  :hints (("Goal" :in-theory (enable axe-tree-vars
                                     axe-tree-vars-lst))))

(defthm axe-tree-vars-lst-of-cons
  (equal (axe-tree-vars-lst (cons tree trees))
         (union-equal (axe-tree-vars tree)
                      (axe-tree-vars-lst trees)))
  :hints (("Goal" :in-theory (enable axe-tree-vars-lst))))

(defthm-flag-axe-tree-vars
  (defthm axe-tree-vars-when-all-quotep
    (implies (quotep tree)
             (equal (axe-tree-vars tree)
                    nil))
    :flag axe-tree-vars)
  (defthm axe-tree-vars-lst-when-all-quotep
    (implies (all-quotep trees)
             (equal (axe-tree-vars-lst trees)
                    nil))
    :flag axe-tree-vars-lst)
  :hints (("Goal" :in-theory (enable axe-tree-vars
                                     axe-tree-vars-lst
                                     all-quotep))))

(defthm axe-tree-vars-when-dargp
  (implies (dargp tree)
           (equal (axe-tree-vars tree)
                  nil))
  :hints (("Goal" :in-theory (enable axe-tree-vars))))

(defthm axe-tree-vars-when-symbolp
  (implies (symbolp tree)
           (equal (axe-tree-vars tree)
                  (list tree)))
  :hints (("Goal" :in-theory (enable axe-tree-vars))))
