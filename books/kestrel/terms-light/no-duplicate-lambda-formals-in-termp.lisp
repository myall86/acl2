; A simple utility to check that lambdas never have duplicate formals
;
; Copyright (C) 2021-2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "free-vars-in-term")

;; Checks that each list of lambda-formals is duplicate-free.
(mutual-recursion
 (defund no-duplicate-lambda-formals-in-termp (term)
   (declare (xargs :guard (pseudo-termp term)))
   (if (variablep term)
       t
     (let ((fn (ffn-symb term)))
       (if (eq 'quote fn)
           t
         (and (no-duplicate-lambda-formals-in-termsp (fargs term))
              (if (consp fn) ; fn is (lambda (...formals...) body)
                  (and (no-duplicatesp-eq (lambda-formals fn))
                       (no-duplicate-lambda-formals-in-termp (lambda-body fn)))
                t))))))
 (defund no-duplicate-lambda-formals-in-termsp (terms)
   (declare (xargs :guard (pseudo-term-listp terms)))
   (if (endp terms)
       t
     (and (no-duplicate-lambda-formals-in-termp (first terms))
          (no-duplicate-lambda-formals-in-termsp (rest terms))))))

(defthm no-duplicate-lambda-formals-in-termsp-of-cdr
  (implies (no-duplicate-lambda-formals-in-termsp terms)
           (no-duplicate-lambda-formals-in-termsp (cdr terms)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termsp-of-take
  (implies (no-duplicate-lambda-formals-in-termsp terms)
           (no-duplicate-lambda-formals-in-termsp (take n terms)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termp-of-car
  (implies (no-duplicate-lambda-formals-in-termsp terms)
           (no-duplicate-lambda-formals-in-termp (car terms)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termp-of-append
  (equal (no-duplicate-lambda-formals-in-termsp (append terms1 terms2))
         (and (no-duplicate-lambda-formals-in-termsp terms1)
              (no-duplicate-lambda-formals-in-termsp terms2)))
  :hints (("Goal" :in-theory (enable append no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termp-when-symbolp
  (implies (symbolp term)
           (no-duplicate-lambda-formals-in-termp term))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termp))))

(defthm no-duplicate-lambda-formals-in-termsp-when-symbol-listp
  (implies (symbol-listp terms)
           (no-duplicate-lambda-formals-in-termsp terms))
  :hints (("Goal" :in-theory (enable symbol-listp
                                     no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termsp-of-when-no-duplicate-lambda-formals-in-termp
   (implies (and (no-duplicate-lambda-formals-in-termp term)
                 (not (equal 'quote (car term))))
           (no-duplicate-lambda-formals-in-termsp (cdr term)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termp))))

(defthm no-duplicate-lambda-formals-in-termsp-of-lambda-body-of-car
  (implies (and (no-duplicate-lambda-formals-in-termp term)
                (not (equal 'quote (car term))))
           (no-duplicate-lambda-formals-in-termp (lambda-body (car term))))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termp))))

(defthm no-duplicatesp-equal-of-lambda-formals-when-no-duplicate-lambda-formals-in-termp
  (implies (and (no-duplicate-lambda-formals-in-termp term)
                (consp (car term)))
           (no-duplicatesp-equal (lambda-formals (car term))))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termp))))

(defthm no-duplicate-lambda-formals-in-termsp-of-cons
  (equal (no-duplicate-lambda-formals-in-termsp (cons term terms))
         (and (no-duplicate-lambda-formals-in-termp term)
              (no-duplicate-lambda-formals-in-termsp terms)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termsp))))

(defthm no-duplicate-lambda-formals-in-termsp-of-set-difference-equal
  (implies (no-duplicate-lambda-formals-in-termsp terms1)
           (no-duplicate-lambda-formals-in-termsp (set-difference-equal terms1 terms2)))
  :hints (("Goal" :in-theory (enable set-difference-equal))))

(defthm no-duplicate-lambda-formals-in-termsp-of-intersection-equal
  (implies (or (no-duplicate-lambda-formals-in-termsp terms1)
               (no-duplicate-lambda-formals-in-termsp terms2))
           (no-duplicate-lambda-formals-in-termsp (intersection-equal terms1 terms2)))
  :hints (("Goal" :in-theory (enable intersection-equal))))

(defthm no-duplicate-lambda-formals-in-termsp-of-union-equal
  (equal (no-duplicate-lambda-formals-in-termsp (union-equal terms1 terms2))
         (and (no-duplicate-lambda-formals-in-termsp terms1)
              (no-duplicate-lambda-formals-in-termsp terms2)))
  :hints (("Goal" :in-theory (enable no-duplicate-lambda-formals-in-termsp
                                     union-equal))))
