(in-package "PFIELD")

(include-book "prime-fields")
(local (include-book "prime-fields-rules"))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))

;; This book collects idioms for using prime field operations to express the
;; fact that a value is a bit.  These are useful for verifying R1CSes, etc.

;; The basic patterns for expressing (bitp x) are:
; 0 = x*(x-1)
; 0 = x*(1-x)
;; where * and - are of course modulo the prime.  This takes advantage of the
;; fact that a product is 0 iff one (or both) of the factors is 0.

;; Note that our normal form expands SUB to ADD and NEG, so SUB doesn't appear
;; much in these rules.

;; Recognizes 0 = x*(-1 + x)
(defthm bitp-idiom-1
  (implies (and (syntaxp (and (quotep p-1)
                              (quotep p)))
                (equal p-1 (+ -1 p))
                (fep x p)
                (rtl::primep p))
           (equal (equal 0 (mul x (add p-1 x p) p))
                  (bitp x)))
  :hints (("Goal" :in-theory (e/d (unsigned-byte-p)
                                  (mul-of-add-arg2)))))

;; Just commutes the MUL in the LHS
(defthm bitp-idiom-1-alt
  (implies (and (syntaxp (and (quotep p-1)
                              (quotep p)))
                (equal p-1 (+ -1 p))
                (fep x p)
                (rtl::primep p))
           (equal (equal 0 (mul (add p-1 x p) x p))
                  (bitp x)))
  :hints (("Goal" :use bitp-idiom-1
           :in-theory '(mul-commutative))))

;; Recognizes 0 = x*(1 + -x)
(defthm bitp-idiom-2
  (implies (and (fep x p)
                (rtl::primep p))
           (equal (equal 0 (mul x (add 1 (neg x p) p) p))
                  (bitp x)))
  :hints (("Goal" :in-theory (e/d (unsigned-byte-p)
                                  (mul-of-add-arg2)))))

;; Just commutes the MUL in the lhs
(defthm bitp-idiom-2-alt
  (implies (and (fep x p)
                (rtl::primep p))
           (equal (equal 0 (mul (add 1 (neg x p) p) x p))
                  (bitp x)))
  :hints (("Goal" :use bitp-idiom-2
           :in-theory '(mul-commutative))))

;; In this variant, the value being constrained to be a bit is of the form (add
;; <constant> <something>) and the <constant> has been combined with the p-1
;; constant from the normal rule.
(defthm bitp-idiom-1-with-added-constant
  (implies (and (syntaxp (and (quotep k1)
                              (quotep k2)))
                (equal k2 (sub k1 1 p))
                (rtl::primep p))
           (equal (equal 0 (mul (add k1 x p) (add k2 x p) p))
                  (bitp (add k1 x p))))
  :hints (("Goal" :use (:instance bitp-idiom-1
                                  (p-1 (+ -1 p))
                                  (x (add k1 x p)))
           :in-theory (e/d (add-of-+-arg2)
                           (bitp-idiom-1
                            mul-of-add-arg2
                            mul-of-add-arg1
                            ;; prevent loops:
                            ;;acl2::+-of-minus
                            acl2::mod-of-minus-arg1)))))

;; Just commutes the MUL in the lhs.
(defthm bitp-idiom-1-with-added-constant-alt
  (implies (and (syntaxp (and (quotep k1)
                              (quotep k2)))
                (equal k2 (sub k1 1 p))
                (rtl::primep p))
           (equal (equal 0 (mul (add k2 x p) (add k1 x p) p))
                  (bitp (add k1 x p))))
  :hints (("Goal" :use (:instance bitp-idiom-1-with-added-constant)
           :in-theory '(mul-commutative))))

;; Or pull the neg out of the mul, or TODO drop the neg: 0=x*-y iif 0=x*y
(defthm bitp-idiom
  (implies (and (rtl::primep p)
                (fep x p))
           (equal (equal 0 (mul (add 1 (neg x p) p)
                                (neg x p)
                                p))
                  (bitp x)))
  :hints (("Goal" :in-theory (e/d (bitp) (mul-of-add-arg1
                                          mul-of-add-arg2)))))
