; Zcash Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ZCASH")

(include-book "bit-byte-integer-conversions")

(include-book "kestrel/crypto/ecurve/twisted-edwards" :dir :system)
(include-book "kestrel/crypto/primes/bls12-381-prime" :dir :system)
(acl2::merge-io-pairs
 rtl::primep
 (include-book "kestrel/crypto/primes/jubjub-subgroup-prime" :dir :system))
(include-book "std/util/defval" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ jubjub
  :parents (zcash)
  :short "The Jubjub complete twisted Edwards elliptic curve [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We define the Jubjub curve,
     as a constant value of the fixtype @(tsee ecurve::twisted-edwards-curve)
     of twisted Edwards elliptic curves.
     We show that the curve is complete.")
   (xdoc::p
    "The prime and coefficient of Jubjub are formalized as nullary functions.
     We keep disabled also their executable counterparts because
     we generally want to treat them as algebraic quantities in proofs;
     in particular, we want to avoid their combination into new constants
     by the prime field normalizing rules.")
   (xdoc::p
    "We also define various notions related to Jubjub,
     such as recognizers of points in the curve's group and subgroup."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-q ()
  :returns (q rtl::primep)
  :short "The Jubjub prime @($q_\\mathbb{J}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "This defines the prime field over which Jubjub is defined.")
   (xdoc::p
    "It is the same as @($r_\\mathbb{S}$) [ZPS:5.4.9.2],
     which is defined in our cryptograhic library."))
  (primes::bls12-381-scalar-field-prime)
  ///

  (defrule jubjub-q-not-two
    (not (equal (jubjub-q) 2)))

  (in-theory (disable (:e jubjub-q))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-a ()
  :returns (a (fep a (jubjub-q))
              :hints (("Goal" :in-theory (enable fep jubjub-q))))
  :short "The Jubjub coefficient @($a_\\mathbb{J}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We show that this coefficient is a square
     by exhibiting a square root of it."))
  (neg 1 (jubjub-q))
  ///

  (defrule jubjub-a-not-zero
    (not (equal (jubjub-a) 0)))

  (defrule pfield-squarep-of-jubjub-a
    (ecurve::pfield-squarep (jubjub-a) (jubjub-q))
    :use (:instance ecurve::pfield-squarep-suff
          (x (jubjub-a))
          (r 3465144826073652318776269530687742778270252468765361963008)
          (p (jubjub-q)))
    :enable jubjub-q)

  (in-theory (disable (:e jubjub-a))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-d ()
  :returns (d (fep d (jubjub-q))
              :hints (("Goal" :in-theory (enable fep jubjub-q))))
  :short "The Jubjub coefficient @($d_\\mathbb{J}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We show that this coefficient is not a square
     using Euler's criterion.
     We use the fast modular exponentiation operation
     from the @('arithmetic-3') library
     to calculate the modular exponentiation of the coefficient,
     which must be different from 1
     in order for the criterion to apply."))
  (neg (div 10240 10241 (jubjub-q)) (jubjub-q))
  :guard-hints (("Goal" :in-theory (enable fep jubjub-q)))
  ///

  (defrule jubjub-d-not-zero
    (not (equal (jubjub-d) 0)))

  (defrule jubjub-d-not-equal-to-a
    (not (equal (jubjub-d) (jubjub-a)))
    :enable (jubjub-a jubjub-q))

  (local (include-book "arithmetic-3/top" :dir :system))

  (defruledl mod-expt-fast-lemma
    (not (equal (acl2::mod-expt-fast (jubjub-d)
                                     (/ (1- (jubjub-q)) 2)
                                     (jubjub-q))
                1))
    :enable jubjub-q)

  (defruledl mod-expt-lemma
    (not (equal (mod (expt (jubjub-d)
                           (/ (1- (jubjub-q)) 2))
                     (jubjub-q))
                1))
    :use (mod-expt-fast-lemma
          (:instance acl2::mod-expt-fast
           (a (jubjub-d))
           (i (/ (1- (jubjub-q)) 2))
           (n (jubjub-q))))
    :enable jubjub-q
    :disable ((:e expt)))

  (local (include-book "kestrel/crypto/ecurve/prime-field-squares-euler-criterion" :dir :system))

  (defrule not-pfield-squarep-of-jubjub-d
    (not (ecurve::pfield-squarep (jubjub-d) (jubjub-q)))
    :enable (ecurve::weak-euler-criterion-contrapositive jubjub-q)
    :use mod-expt-lemma
    :disable ((:e expt)))

  (in-theory (disable (:e jubjub-d))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-curve ()
  :returns (curve ecurve::twisted-edwards-curvep)
  :short "The Jubjub curve [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We show that it is complete."))
  (ecurve::make-twisted-edwards-curve :p (jubjub-q)
                                      :a (jubjub-a)
                                      :d (jubjub-d))
  ///

  (defrule twisted-edwards-curve-completep-of-jubjub-curve
    (ecurve::twisted-edwards-curve-completep (jubjub-curve))
    :enable (ecurve::twisted-edwards-curve-completep jubjub-a jubjub-d jubjub-q)
    :disable (pfield-squarep-of-jubjub-a
              not-pfield-squarep-of-jubjub-d)
    :use (pfield-squarep-of-jubjub-a
          not-pfield-squarep-of-jubjub-d))

  (in-theory (disable (:e jubjub-curve))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define point-on-jubjub-p ((point ecurve::pointp))
  :returns (yes/no booleanp)
  :short "Check if a point is on the Jubjub curve [ZPS:5.4.9.3]."
  (ecurve::point-on-twisted-edwards-p point (jubjub-curve))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-pointp (x)
  :returns (yes/no booleanp)
  :short "Recognize elements of @($\\mathbb{J}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are the points on the Jubjub curve.")
   (xdoc::p
    "These are all finite points."))
  (and (ecurve::pointp x)
       (point-on-jubjub-p x))
  ///

  (defruled point-finite-when-jubjub-pointp
    (implies (jubjub-pointp x)
             (equal (ecurve::point-kind x) :finite))
    :enable point-on-jubjub-p))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define maybe-jubjub-pointp (x)
  :returns (yes/no booleanp)
  :short "Recognize Jubjub points and @('nil')."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are optional Jubjub points.
     Useful, for instance, as results of functions that may return
     either Jubjub points or an error value."))
  (or (jubjub-pointp x)
      (eq x nil))
  ///

  (defrule maybe-jubjub-pointp-when-jubjub-pointp
    (implies (jubjub-pointp x)
             (maybe-jubjub-pointp x))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-point->u ((point jubjub-pointp))
  :returns (u natp :rule-classes :type-prescription)
  :short "The function @($\\mathcal{U}$) in [ZPS:5.4.9.4]."
  :long
  (xdoc::topstring
   (xdoc::p
    "[ZPS] defines this function on any finite point (in fact, on any pair),
     but it is only used on Jubjub points.")
   (xdoc::p
    "This is always below the Jubjub field prime."))
  (ecurve::point-finite->x point)
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p)))
  ///

  (defret jubjub-point->u-upper-bound
    (< u (jubjub-q))
    :hyp (jubjub-pointp point)
    :rule-classes :linear
    :hints (("Goal" :in-theory (enable jubjub-pointp
                                       point-on-jubjub-p
                                       ecurve::point-on-twisted-edwards-p
                                       jubjub-curve))))

  (defret fep-of-jubjub-point->u
    (fep u (jubjub-q))
    :hyp (jubjub-pointp point)
    :hints (("Goal" :in-theory (e/d (fep) (jubjub-point->u))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-point->v ((point jubjub-pointp))
  :returns (v natp :rule-classes :type-prescription)
  :short "The function @($\\mathcal{V}$) in [ZPS:5.4.9.4]."
  :long
  (xdoc::topstring
   (xdoc::p
    "[ZPS] defines this function on any finite point (in fact, on any pair),
     but it is only used on Jubjub points.")
   (xdoc::p
    "This is always below the Jubjub field prime."))
  (ecurve::point-finite->y point)
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p)))
  ///

  (defret jubjub-point->v-upper-bound
    (< v (jubjub-q))
    :hyp (jubjub-pointp point)
    :rule-classes :linear
    :hints (("Goal" :in-theory (enable jubjub-pointp
                                       point-on-jubjub-p
                                       ecurve::point-on-twisted-edwards-p
                                       jubjub-curve))))

  (defret fep-of-jubjub-point->v
    (fep v (jubjub-q))
    :hyp (jubjub-pointp point)
    :hints (("Goal" :in-theory (e/d (fep) (jubjub-point->v))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defruled jubjub-point-satisfies-curve-equation
  :short "A Jubjub point satisfies the curve equation."
  (implies (jubjub-pointp uv)
           (b* ((u (jubjub-point->u uv))
                (v (jubjub-point->v uv))
                (u^2 (mul u u (jubjub-q)))
                (v^2 (mul v v (jubjub-q)))
                (u^2.v^2 (mul u^2 v^2 (jubjub-q)))
                (a.u^2 (mul (jubjub-a) u^2 (jubjub-q)))
                (d.u^2.v^2 (mul (jubjub-d) u^2.v^2 (jubjub-q))))
             (equal (add a.u^2 v^2 (jubjub-q))
                    (add 1 d.u^2.v^2 (jubjub-q)))))
  :enable (jubjub-pointp
           point-on-jubjub-p
           jubjub-point->u
           jubjub-point->v
           jubjub-curve
           ecurve::point-on-twisted-edwards-p))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defruled jubjub-point-abscissa-is-not-1
  :short "A Jubjub point cannot have abscissa 1."
  :long
  (xdoc::topstring
   (xdoc::p
    "The reason is that, if we set @($u = 1$) in the curve equation,
     we obtain that @($v^2$) is equal to the non-square @($(1-a)/(1-d)$),
     an impossibility (the fact that @($(1-a)/(1-d)$), which has a known value,
     is not a square, can be seen using Euler's criterion.
     A more detailed proof is in Theorem 5.4.5 in [ZPS:5.4.8.2]."))
  (implies (jubjub-pointp point)
           (not (equal (jubjub-point->u point) 1)))
  :use lemma
  :prep-lemmas
  ((defisar lemma
     (implies (and (jubjub-pointp point)
                   (equal (jubjub-point->u point) 1))
              nil)
     :proof
     ((:assume (:point (jubjub-pointp point)))
      (:assume (:u-is-1 (equal (jubjub-point->u point) 1)))
      (:let (u (jubjub-point->u point)))
      (:let (v (jubjub-point->v point)))
      (:let (a (jubjub-a)))
      (:let (d (jubjub-d)))
      (:let (q (jubjub-q)))
      (:derive (:equation (equal (add (mul a (mul u u q) q)
                                      (mul v v q)
                                      q)
                                 (add 1
                                      (mul d
                                           (mul (mul u u q)
                                                (mul v v q)
                                                q)
                                           q)
                                      q)))
       :from (:point)
       :use (:instance jubjub-point-satisfies-curve-equation (uv point)))
      (:derive (:equation-simp (equal (add a
                                           (mul v v q)
                                           q)
                                      (add 1
                                           (mul d
                                                (mul v v q)
                                                q)
                                           q)))
       :from (:equation :u-is-1)
       :enable jubjub-q)
      (:derive (:factor (equal (sub 1 a q)
                               (mul (sub 1 d q)
                                    (mul v v q)
                                    q)))
       :from (:equation-simp)
       :prep-books
       ((include-book "kestrel/prime-fields/bind-free-rules" :dir :system)))
      (:derive (:square-is-nonsquare (equal (mul v v q)
                                            (div (sub 1 a q)
                                                 (sub 1 d q)
                                                 q)))
       :from (:factor)
       :enable (jubjub-a jubjub-d jubjub-q)
       :use (:instance pfield::equal-of-div
             (x (mul (jubjub-point->v point)
                     (jubjub-point->v point)
                     (jubjub-q)))
             (y (sub 1 (jubjub-a) (jubjub-q)))
             (z (sub 1 (jubjub-d) (jubjub-q))))
       :prep-books
       ((include-book "kestrel/prime-fields/prime-fields-rules" :dir :system)))
      (:derive (:square (ecurve::pfield-squarep (mul v v q) q))
       :from (:point)
       :enable fep
       :use (:instance ecurve::pfield-squarep-suff
             (r (jubjub-point->v point))
             (p (jubjub-q))
             (x (mul (jubjub-point->v point)
                     (jubjub-point->v point)
                     (jubjub-q)))))
      (:let (nsq (div (sub 1 a q)
                      (sub 1 d q)
                      q)))
      (:derive (:mod-expt-of-nsq (not (equal (mod (expt nsq
                                                        (/ (1- q) 2))
                                                  q)
                                             1)))
       :use (lemma
             (:instance acl2::mod-expt-fast
              (a (div (sub 1 (jubjub-a) (jubjub-q))
                      (sub 1 (jubjub-d) (jubjub-q))
                      (jubjub-q)))
              (i (/ (1- (jubjub-q)) 2))
              (n (jubjub-q))))
       :prep-books ((include-book "arithmetic-3/top" :dir :system))
       :prep-lemmas
       ((defruled lemma
          (not (equal (acl2::mod-expt-fast (div (sub 1 (jubjub-a) (jubjub-q))
                                                (sub 1 (jubjub-d) (jubjub-q))
                                                (jubjub-q))
                                           (/ (1- (jubjub-q)) 2)
                                           (jubjub-q))
                      1))
          :enable (jubjub-a jubjub-d jubjub-q))))
      (:derive (:nonsquare (not (ecurve::pfield-squarep nsq q)))
       :from (:mod-expt-of-nsq)
       :enable (ecurve::weak-euler-criterion-contrapositive
                jubjub-a
                jubjub-d
                jubjub-q)
       :disable ((:e expt))
       :prep-books
       ((include-book "kestrel/crypto/ecurve/prime-field-squares-euler-criterion" :dir :system)))
      (:derive (:impossible nil)
       :from (:square-is-nonsquare :square :nonsquare))
      (:qed))
     :rule-classes nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-mul ((scalar integerp) (point jubjub-pointp))
  :returns (point1 jubjub-pointp
                   :hyp (jubjub-pointp point)
                   :hints (("Goal" :in-theory (enable jubjub-pointp
                                                      point-on-jubjub-p))))
  :short "Scalar multiplication [ZPS:4.1.8], on Jubjub."
  (ecurve::twisted-edwards-mul scalar point (jubjub-curve))
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-add ((point1 jubjub-pointp) (point2 jubjub-pointp))
  :returns (point jubjub-pointp
                  :hyp (and (jubjub-pointp point1) (jubjub-pointp point2))
                  :hints (("Goal" :in-theory (enable jubjub-pointp
                                                      point-on-jubjub-p))))
  :short "Group addition [ZPS:4.1.8], on Jubjub."
  (ecurve::twisted-edwards-add point1 point2 (jubjub-curve))
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-neg ((point jubjub-pointp))
  :returns (-point jubjub-pointp
                   :hyp (jubjub-pointp point)
                   :hints (("Goal" :in-theory (enable jubjub-pointp
                                                      point-on-jubjub-p))))
  :short "Group negation, on Jubjub."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is the inverse with respect to @(tsee jubjub-add)."))
  (ecurve::twisted-edwards-neg point (jubjub-curve))
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defruled jubjub-mul-of-2
  :short "Doubling a point is like adding the point to itself."
  (implies (jubjub-pointp point)
           (equal (jubjub-mul 2 point)
                  (jubjub-add point point)))
  :enable (jubjub-mul
           jubjub-add
           jubjub-pointp
           point-on-jubjub-p
           ecurve::twisted-edwards-mul
           ecurve::twisted-edwards-mul-nonneg))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *jubjub-l*
  :short "The constant @($\\ell_\\mathbb{J}$) [ZPS:5.4.9.3]."
  256)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-abst ((bits bit-listp))
  :guard (= (len bits) *jubjub-l*)
  :returns (point? maybe-jubjub-pointp
                   :hints (("Goal"
                            :in-theory (enable returns-lemma
                                               ecurve::pfield-squarep))))
  :short "The function @($\\mathsf{abst}_\\mathbb{J}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "The definition in [ZPS] takes a square root @($u$) at some point,
     which may or may not exist; if it does, it is not exactly specified.
     So we use @(tsee ecurve::pfield-squarep) and @('pfield-square->root').
     It should be the case that the definition
     does not depend on the exact square root chosen;
     we should prove that eventually.")
   (xdoc::p
    "Note that, when @($u = 0$) and @($\\tilde{u} = 1$)
     (which happens, for instance, when the input bit sequence is
     @('(1 0 ... 0 1)'), i.e. 254 zeros surrounded by ones),
     the prescribed result is @($(q_\\mathbb{J}, 1)$) in [ZPS].
     However, we need to reduce that modulo @($q_\\mathbb{J}$),
     in order for it to be a field element in our model.
     For simplicity, we do the reduction in all cases,
     which always coerces an integer to the corresponding field element;
     we do that via the field negation operation, to ease proofs.")
   (xdoc::p
    "To prove that this returns an optional Jubjub point,
     we locally prove a key lemma, @('returns-lemma').
     It says that, when the square of @($u$) is
     the argument of the square root as used in the definition,
     @($(u,v)$) is on the curve:
     this is easily proved by simple algebraic manipulations,
     which turn the equality of the square into the curve equation."))
  (b* ((q (jubjub-q))
       (a (jubjub-a))
       (d (jubjub-d))
       (v* (butlast bits 1))
       (u~ (car (last bits)))
       (v (lebs2ip v*))
       ((when (>= v q)) nil)
       (a-d.v^2 (sub a (mul d (mul v v q) q) q))
       ((when (equal a-d.v^2 0)) nil)
       (u^2 (div (sub 1 (mul v v q) q)
                 a-d.v^2
                 q))
       ((unless (ecurve::pfield-squarep u^2 q)) nil)
       (u (ecurve::pfield-square->root u^2 q)))
    (if (= (mod u 2) u~)
        (ecurve::point-finite u v)
      (ecurve::point-finite (neg u q) v)))

  :prepwork

  ((local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))

   (defruledl returns-lemma
     (b* ((q (jubjub-q))
          (a (jubjub-a))
          (d (jubjub-d)))
       (implies (and (fep u q)
                     (fep v q)
                     (not (equal (sub a (mul d (mul v v q) q) q) 0))
                     (equal (mul u u q)
                            (div (sub 1 (mul v v q) q)
                                 (sub a (mul d (mul v v q) q) q)
                                 q)))
                (jubjub-pointp (ecurve::point-finite u v))))
     :use (step1 step2)

     :prep-lemmas

     ((defrule step1
        (b* ((q (jubjub-q))
             (a (jubjub-a))
             (d (jubjub-d)))
          (implies (and (fep u q)
                        (fep v q)
                        (not (equal (sub a (mul d (mul v v q) q) q) 0))
                        (equal (mul u u q)
                               (div (sub 1 (mul v v q) q)
                                    (sub a (mul d (mul v v q) q) q)
                                    q)))
                   (equal (mul (mul u u q)
                               (sub a (mul d (mul v v q) q) q)
                               q)
                          (sub 1 (mul v v q) q))))
        :enable (div point-on-jubjub-p)
        :disable ((:rewrite pfield::mul-of-add-arg1)
                  (:rewrite pfield::mul-of-add-arg2)
                  (:rewrite pfield::mul-associative)))

      (defrule step2
        (b* ((q (jubjub-q))
             (a (jubjub-a))
             (d (jubjub-d)))
          (implies (and (fep u q)
                        (fep v q)
                        (equal (mul (mul u u q)
                                    (sub a (mul d (mul v v q) q) q)
                                    q)
                               (sub 1 (mul v v q) q)))
                   (jubjub-pointp (ecurve::point-finite u v))))
        :enable (jubjub-pointp
                 point-on-jubjub-p
                 ecurve::point-on-twisted-edwards-p
                 jubjub-curve)
        :prep-books
        ((include-book "kestrel/prime-fields/bind-free-rules" :dir :system))))))

  :verify-guards nil ; done below

  ///

  (local (include-book "std/lists/len" :dir :system))
  (local (include-book "std/lists/last" :dir :system))
  (local (include-book "kestrel/prime-fields/bind-free-rules" :dir :system))

  (defrulel verify-guards-lemma
    (implies (bitp x)
             (acl2-numberp x)))

  (verify-guards jubjub-abst
    :hints (("Goal" :in-theory (e/d (ecurve::pfield-squarep)
                                    (bitp))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-h ()
  :returns (h natp)
  :short "The constant @($h_\\mathbb{J}$) in [ZPS:5.4.9.3]."
  8
  ///
  (in-theory (disable (:e jubjub-h))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-r ()
  :returns (r natp)
  :short "The constant @($r_\\mathbb{J}$) in [ZPS:5.4.9.3]."
  (primes::jubjub-subgroup-prime)

  ///

  (defrule primep-of-jubjub-r
    (rtl::primep (jubjub-r)))

  (in-theory (disable (:e jubjub-r))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-r-pointp (x)
  :returns (yes/no booleanp)
  :short "Recognize elements of @($\\mathbb{J}^{(r)}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are the points of order @($r_\\mathbb{J}$)
     plus @($\\mathcal{O}_\\mathbb{J}$)."))
  (or (equal x (ecurve::twisted-edwards-zero))
      (and (jubjub-pointp x)
           (ecurve::twisted-edwards-point-orderp x (jubjub-r) (jubjub-curve))))
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p)))
  ///

  (defrule jubjub-pointp-when-jubjub-r-pointp
    (implies (jubjub-r-pointp x)
             (jubjub-pointp x))
    :enable ecurve::twisted-edwards-zero)

  (defruled jubjub-point-of-neg
    (implies (and (ecurve::twisted-edwards-add-associativity)
                  (jubjub-r-pointp point))
             (jubjub-r-pointp (jubjub-neg point)))
    :enable (jubjub-r-pointp
             jubjub-neg
             jubjub-pointp
             point-on-jubjub-p
             ecurve::twisted-edwards-point-orderp-of-neg)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define jubjub-rstar-pointp (x)
  :returns (yes/no booleanp)
  :short "Recognize elements of @($\\mathbb{J}^{(r)*}$) [ZPS:5.4.9.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are the points order @($r_\\mathbb{J}$).
     That is, the points in @($\\mathbb{J}^{(r)}$)
     minus @($\\mathcal{O}_\\mathbb{J}$)."))
  (and (jubjub-pointp x)
       (ecurve::twisted-edwards-point-orderp x (jubjub-r) (jubjub-curve)))
  :guard-hints (("Goal" :in-theory (enable jubjub-pointp point-on-jubjub-p)))
  ///

  (defrule jubjub-r-pointp-when-jubjub-rstar-pointp
    (implies (jubjub-rstar-pointp x)
             (jubjub-r-pointp x))
    :enable jubjub-r-pointp))
