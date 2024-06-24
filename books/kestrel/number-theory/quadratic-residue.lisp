; Number Theory Library
; Quadratic Residue
;
; Copyright (C) 2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric McCarthy (mccarthy@kestrel.edu)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "PRIMES")

(include-book "arithmetic-3/floor-mod/mod-expt-fast" :dir :system)

(local (include-book "divides"))
(local (include-book "primes"))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))

(include-book "euler2-support")
(include-book "std/util/define" :dir :system)
(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; This means "p is an odd prime and there is a number z such that z*z = a mod p"
(define has-square-root? ((a natp) (p natp))
  :returns (y/n booleanp)
  :parents (acl2::number-theory)
  :short "Modular square root"
  :long
  (xdoc::topstring
   (xdoc::p
    "Checks if @('a') has a modular square root in the field
     @($\\mathbb{F}_p$), using Euler's criterion.")
   (xdoc::p
    "@('p') must be an odd prime.<br/>
     @('0') is considered to have a square root."))
  (declare (xargs :guard (and (natp a)
                              (rtl::primep p)
                              (not (equal p 2))
                              (< a p))))
  (and (rtl::primep p)
       (or (= a 0)
           (equal (acl2::mod-expt-fast a (/ (- p 1) 2) p)
                  1))))

;; rtl::residue considers 0 not to be a quadratic residue,
;; but 0*0 = 0 so we consider it a square root.
;; This theorem helps prove things with case splits.
;;
(defthm has-square-root-of-0?
  (implies (rtl::primep p)
           (has-square-root? 0 p))
  :hints (("Goal" :in-theory (enable has-square-root?))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Show that if (has-square-root? x) is NIL,
;; there is no y such that (mul y y p) equals x.

;; ----------------
;; 1. note that
;; (acl2::mod-expt-fast m (/ (- p 1) 2) p)
;; = (mod (expt m (/ (1- p) 2)) p)
;; in :logic mode.
;; (Note: this is no longer used here, but someone might want it.)

(defthmd mod-expt-fast-instance-meaning
  (implies (and (rtl::primep p)
                (natp m) (< m p))
           (equal (acl2::mod-expt-fast m (/ (- p 1) 2) p)
                  (mod (expt m (/ (1- p) 2)) p)))
  :hints (("Goal" :in-theory (enable acl2::mod-expt-fast))))


;; ----------------
;; 2. prove that (not (has-square-root? m p)) implies (not (rtl::residue m p))
;; See rtl::euler-criterion

(defthmd residue-meaning
  (implies (and (rtl::primep p)
                (not (equal p 2))
                (natp m) (< m p)
                (not (equal 0 m)) ; This is needed because rtl::residue
                                  ; returns false for m=0.
                )
           (equal (rtl::residue m p)
                  (has-square-root? m p)))
  :hints (("Goal" :in-theory (enable has-square-root? acl2::mod-expt-fast rtl::residue)
                  :use ((:instance rtl::euler-criterion-2a (acl2::p p) (acl2::m m))
                        (:instance rtl::euler-criterion-2b (acl2::p p) (acl2::m m))))))

(defthmd residue-meaning-backwards
  (implies (and (rtl::primep p)
                (not (equal p 2))
                (natp m) (< m p)
                (not (equal 0 m)))
           (equal (has-square-root? m p)
                  (rtl::residue m p)))
  :hints (("Goal" :in-theory (enable residue-meaning))))

(theory-invariant (incompatible (:rewrite residue-meaning) (:rewrite residue-meaning-backwards)))



;; 3. Prove if some x doesn't have a square root
;;    (more precisely, a modular square root in F_p),
;;    it means y*y is never equal to x (mod p).
;; See also rtl::not-res-no-root

(defthm no-square-root-forall
  (implies (and (not (has-square-root? x p))
                (not (equal p 2))
                (natp y) (< y p)
                (rtl::primep p))
           (not (equal x (mod (* y y) p)))
           )
  :hints (("Goal" :in-theory (e/d (residue-meaning-backwards)
                                  (residue-meaning has-square-root?))
                  :cases ((equal x 0))
                  :use ((:instance rtl::not-res-no-root
                                   (acl2::p p) (acl2::m x) (acl2::j y)))))
  )

;; If there is some y whose square (mod p) is x, then x has a square root (mod p).
(defthm has-square-root?-suff
  (implies (and (equal x (mod (* y y) p))
                (integerp y)
                (rtl::primep p)
                (not (equal p 2)))
           (has-square-root? x p))
  :hints (("Goal" :use (:instance no-square-root-forall (y (mod y p))))))
