; The boolean constraint R1CS gadget
;
; Copyright (C) 2020-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/r1cs" :dir :system)
(local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))
(local (include-book "kestrel/crypto/r1cs/sparse/rules" :dir :system))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))

;; Make an R1CS constraint (in sparse form) that asserts that a var is a
;; boolean (that is, either 0 or 1).  The constraint is of the form: (b)(b - 1)
;; = 0.  We sometimes call this a "bit constraint".
(defund make-boolean-constraint (var-name)
  (declare (xargs :guard (symbolp var-name)))
  (r1cs-constraint
   (list `(1 ,var-name))         ;; a vector
   (list `(1 ,var-name) '(-1 1)) ;; b vector
   '()                           ;; c vector (just zero)
   ))

(defthm r1cs-constraintp-of-make-boolean-constraint
  (implies (symbolp var-name)
           (r1cs::r1cs-constraintp (make-boolean-constraint var-name)))
  :hints (("Goal" :in-theory (enable make-boolean-constraint))))

;; Prove that, if we make a boolean constraint for a var, then the constraint
;; holds over a valuation (that binds the var) iff the value of the var is
;; either 0 or 1.
(defthm make-boolean-constraint-correct
  (implies (and (r1cs-valuationp valuation p)
                (valuation-bindsp valuation var-name)
                (rtl::primep p))
           (equal (r1cs-constraint-holdsp (make-boolean-constraint var-name) valuation p)
                  (bitp (lookup-eq var-name valuation))))
  :hints (("Goal" :in-theory (enable make-boolean-constraint
                                     r1cs-constraint-holdsp
                                     integerp-of-lookup-equal
                                     acl2-numberp-of-lookup-equal))))
