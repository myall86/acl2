; SVL - Listener-based Hierachical Symbolic Vector Hardware Analysis Framework
; Copyright (C) 2019 Centaur Technology
; Copyright (C) 2022 Intel Corporation
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Mertcan Temel <mert@utexas.edu>

;; Most of the rules in this file are to serve as lemmas in proofs bits-sbits.lisp.

(in-package "SVL")

(include-book "centaur/sv/svex/4vec" :dir :system)

(include-book "projects/rp-rewriter/top" :dir :system)

(include-book "macros")

(include-book "fnc-defs")

(local
 (rp::fetch-new-events
  (include-book "centaur/bitops/ihs-extensions" :dir :system)
  use-ihs-extensions
  ))

(local
 (rp::fetch-new-events
  (include-book "ihs/logops-lemmas" :dir :system)
  use-ihs-logops-lemmas
  ))

(local
 (rp::fetch-new-events
  (include-book "arithmetic-5/top" :dir :system)
  use-arithmetic-5
  ))

(local
 (rp::fetch-new-events
  (include-book "ihs/quotient-remainder-lemmas" :dir :system)
  use-qr-lemmas
  ))

(encapsulate
  nil
  (local
   (use-arithmetic-5 t))

  (defthmd 4vec-rsh-better-opener
    (implies (natp size)
             (equal (4vec-rsh size x)
                    (4vec-fix (cons (logtail size (sv::4vec->upper x))
                                    (logtail size (sv::4vec->lower x))))))
    :hints (("Goal"
             :in-theory (e/d (4vec-rsh
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              logtail
                              4VEC-FIX
                              4VEC-SHIFT-CORE)
                             ()))))

  (defthmd 4vec-concat-better-opener
    (implies (natp size)
             (equal (4vec-concat size x y)
                    (4vec-fix (cons (logapp size (sv::4vec->upper x) (sv::4vec->upper y))
                                    (logapp size (sv::4vec->lower x) (sv::4vec->lower y))))))
    :hints (("Goal"
             :in-theory (e/d (4vec-rsh
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              logtail
                              4vec-concat
                              4VEC-FIX
                              4VEC-SHIFT-CORE)
                             ()))))

  (local
   (use-arithmetic-5 nil))

  (defthmd 4VEC-PART-SELECT-better-opener
    (implies (and (natp size)
                  (natp start))
             (equal (4vec-part-select start size x)
                    (4vec-fix (cons (loghead size (logtail start (sv::4vec->upper x)))
                                    (loghead size (logtail start (sv::4vec->lower x)))))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              ACL2::|arith (- (- x))|
                              4VEC-CONCAT
                              4VEC-ZERO-EXT
                              ;;logtail loghead
                              4vec
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              ;;logtail
                              ;;4VEC-ZERO-EXT
                              ;;loghead
                              4VEC-FIX
                              4VEC-SHIFT-CORE
                              4VEC-RSH)
                             ()))))

  (defthmd 4vec-res-better-opener
    (equal (sv::4vec-res sv::a sv::b)
           (B* (((4VEC SV::A)) ((4VEC SV::B)))
             (4VEC-fix (cons (LOGIOR SV::A.UPPER SV::B.UPPER)
                             (LOGAND SV::A.LOWER SV::B.LOWER)))))
    :hints (("Goal"
             :in-theory (e/d (sv::4vec-res
                              4VEC-FIX) ())))))

(progn
  ;; lemmas about ifix
  (rp::def-rp-rule
    integerp-ifix
    (integerp (ifix x)))

  (rp::def-rp-rule :disabled-for-acl2 t
    ifix-opener
    (implies (integerp x)
             (equal (ifix x)
                    x)))

  ;; optional but may make it faster::
  (defthm ifix-opener-side-cond
    (implies (integerp x)
             (integerp x))
    :rule-classes nil)

  (rp::rp-attach-sc ifix-opener
                    ifix-opener-side-cond))

(add-rp-rule sv::4vec-fix-of-4vec)

(define 4vec-bitnot$ ((size 4vec-p)
                      (val 4vec-p))
  :returns (res 4vec-p)
  (4vec-part-select 0 size (4vec-bitnot val)))

(defund 4vec-bitor$ (size val1 val2)
  (4vec-part-select 0 size (4vec-bitor val1 val2)))

(defund 4vec-bitand$ (size val1 val2)
  (4vec-part-select 0 size (4vec-bitand val1 val2)))

(defund 4vec-bitxor$ (size val1 val2)
  (4vec-part-select 0 size (sv::4vec-bitxor val1 val2)))

(local
 (in-theory (enable sv::4vec->upper sv::4vec->lower sv::4vec)))

(defthm bitp-of-4vec-part-select
  (implies (and (integerp x)
                (natp start))
           (bitp (sv::4vec-part-select start 1 x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-part-select
                            4VEC-ZERO-EXT
                            4VEC-CONCAT
                            4VEC-RSH
                            4VEC-SHIFT-CORE)
                           ()))))

(def-rp-rule natp-4vec-rsh
  (implies (and (natp start)
                (natp num))
           (natp (4vec-rsh start num)))
  :hints (("goal"
           :in-theory (e/d (4vec-rsh
                            sv::4vec-shift-core) ()))))

(defthm 4vec-rsh-of-bitp
  (implies (and (posp pos)
                (bitp x))
           (equal (4vec-rsh pos x)
                  0))
  :hints (("Goal"
           :in-theory (e/d (4vec-rsh
                            4VEC-SHIFT-CORE)
                           ()))))

(defthm 4vec-rsh-of-0
  (implies t
           (equal (4vec-rsh 0 x)
                  (4vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (4vec-rsh
                            4vec-fix
                            4vec-shift-core)
                           ()))))

(def-rp-rule natp-4vec-zero-ext
  (implies (and (natp size)
                (natp val))
           (natp (4vec-zero-ext size val)))
  :hints (("goal"
           :in-theory (e/d (4vec-zero-ext
                            sv::4vec->upper
                            sv::4vec->lower
                            sv::4vec) ()))))

(def-rp-rule natp-4vec-part-select
  (implies (and (natp num)
                (natp start)
                (natp size))
           (natp (4vec-part-select start size num)))
  :hints (("goal"
           :in-theory (e/d (sv::4vec->upper
                            sv::4vec->lower
                            4vec-part-select)
                           ((:rewrite acl2::default-less-than-1))))))

(defthm 4vec-zero-ext-of-size-1-is-mod-2-when-natp
  (implies (and (natp val))
           (bitp (4vec-zero-ext 1 val)))
  :hints (("goal"
           :in-theory (e/d (4vec-zero-ext
                            sv::4vec->lower
                            sv::4vec->upper
                            sv::4vec) ()))))

(def-rp-rule 4vec-rsh-of-width=0
  (equal (4vec-rsh 0 val)
         (4vec-fix val))
  :hints (("goal"
           :in-theory (e/d (4vec-fix
                            4vec-rsh
                            sv::4vec-shift-core) ()))))
(add-svex-simplify-rule 4vec-rsh-of-width=0)

(def-rp-rule mod-of-4vec-zero-ext
  (implies (and (natp size)
                (natp val))
           (equal (mod (4vec-zero-ext size val)
                       (expt 2 size))
                  (mod val (expt 2 size))))
  :hints (("goal"
           :in-theory (e/d (4vec-zero-ext loghead) ()))))

(local
 (defthm 4vec->lower-opener
   (and (implies (integerp x)
                 (equal (sv::4vec->lower x)
                        x))
        (implies (consp x)
                 (equal (sv::4vec->lower x)
                        (ifix (cdr x))))
        (implies (and (not (consp x))
                      (not (integerp x)))
                 (equal (sv::4vec->lower x)
                        0)))))

(local
 (defthm 4vec->upper-opener
   (and (implies (integerp x)
                 (equal (sv::4vec->upper x)
                        x))
        (implies (consp x)
                 (equal (sv::4vec->upper x)
                        (ifix (car x))))
        (implies (and (not (consp x))
                      (not (integerp x)))
                 (equal (sv::4vec->upper x)
                        -1)))))

(in-theory (disable sv::4VEC->upper
                    sv::4vec->lower))

(local
 (use-arithmetic-5 t))

(local
 (use-qr-lemmas nil))

(defthmd 4vec-concat-insert-4vec-part-select
  (implies (syntaxp (and
                     (not (equal val1 '0))
                     (not (equal val1 ''0))
                     (or (and (consp val1)
                              (not (equal (car val1) '4vec-part-select)))
                         (atom val1))
                     ))
           (equal (4vec-concat size
                               val1
                               val2)
                  (4vec-concat size
                               (4vec-part-select 0 size val1)
                               val2)))
  :hints (("goal"
           :cases ((4vec-p val1))
           :expand ((4vec-p val1))
           :in-theory (e/d* (4vec-concat
                             loghead
                             logapp
                             4vec-zero-ext
                             4vec-part-select)
                            ((:rewrite acl2::mod-x-y-=-x-y . 1)
                             sv::4vec->upper
                             (:type-prescription acl2::mod-zero . 3)
                             (:linear acl2::mod-bounds-1)
                             (:type-prescription acl2::mod-positive . 1)
                             (:type-prescription acl2::mod-nonpositive)
                             (:type-prescription acl2::mod-negative . 1)
                             (:linear acl2::mod-bounds-3)
                             (:rewrite acl2::mod-x-y-=-x-y . 3)
                             (:rewrite acl2::mod-x-y-=-x+y . 3)
                             (:rewrite acl2::|(equal (mod a n) (mod b n))|)
                             (:rewrite acl2::default-plus-2)
                             (:rewrite acl2::mod-x-y-=-x . 2)
                             (:rewrite acl2::default-plus-1)
                             (:rewrite acl2::prefer-positive-addends-equal)
                             (:rewrite acl2::acl2-numberp-x)
                             (:rewrite acl2::default-times-2)
                             (:e tau-system)
                             sv::4vec->lower
                             (:type-prescription acl2::not-integerp-4b)
                             (:definition ifix)
                             (:rewrite acl2::|(equal (if a b c) x)|)
                             (:rewrite acl2::|(equal x (if a b c))|)
                             (:rewrite acl2::mod-x-y-=-x-y . 2)
                             (:rewrite acl2::mod-x-y-=-x+y . 1)
                             (:rewrite acl2::cancel-mod-+)
                             (:type-prescription acl2::mod-zero . 4)
                             (:rewrite acl2::mod-x-y-=-x . 4)
                             (:rewrite acl2::mod-zero . 4)
                             (:type-prescription acl2::mod-zero . 2)
                             (:type-prescription acl2::mod-zero . 1)
                             (:type-prescription acl2::mod-positive . 2)
                             (:type-prescription acl2::mod-negative . 2)
                             (:rewrite acl2::mod-zero . 3)
                             (:type-prescription
                              acl2::expt-type-prescription-nonpositive-base-odd-exponent)
                             (:type-prescription
                              acl2::expt-type-prescription-nonpositive-base-even-exponent)
                             (:type-prescription
                              acl2::expt-type-prescription-negative-base-odd-exponent)
                             (:type-prescription
                              acl2::expt-type-prescription-negative-base-even-exponent)
                             (:type-prescription
                              acl2::expt-type-prescription-integerp-base-b)
                             (:type-prescription
                              acl2::expt-type-prescription-integerp-base-a)
                             (:type-prescription acl2::not-integerp-3b)
                             (:type-prescription acl2::not-integerp-2b)
                             (:type-prescription acl2::not-integerp-1b)
                             (:type-prescription acl2::integerp-/-expt-2)
                             (:type-prescription acl2::integerp-/-expt-1)
                             (:rewrite acl2::default-mod-ratio)
                             (:rewrite acl2::mod-x-y-=-x+y . 2)
                             (:rewrite acl2::mod-x-y-=-x+y . 2)
                             (:rewrite acl2::|(integerp (- x))|)
                             (:rewrite acl2::|(mod (+ x (mod a b)) y)|)
                             (:rewrite acl2::|(mod (+ x (- (mod a b))) y)|))))))

(defthmd 4vec-concat-of-4vec-part-select-same-size
  (implies t
           (equal (4vec-concat size
                               (4vec-part-select 0 size val1)
                               val2)
                  (4vec-concat size
                               val1
                               val2)))
  :hints (("goal"

           :in-theory (e/d* (4vec-concat-insert-4vec-part-select)
                            ()))))

(def-rp-rule 4vec-concat-of-width=0
  (equal (4vec-concat 0 val1 val2 )
         (4vec-fix val2))
  :hints (("goal"
           :in-theory (e/d (4vec-concat
                            4vec-fix
                            sv::4VEC->UPPER
                            sv::4vec->lower) ()))))

(add-svex-simplify-rule 4vec-concat-of-width=0)

(def-rp-rule :disabled t
  4vec-concat-of-width=1-term2=0
  (equal (4vec-concat 1 val1 0)
         (4vec-part-select 0 1 val1))
  :hints (("Goal"
           :in-theory (e/d (4vec-concat
                            4vec-part-select
                            4VEC-ZERO-EXT
                            sv::4VEC->UPPER
                            sv::4vec->lower) ()))))

(add-svex-simplify-rule 4vec-concat-of-width=1-term2=0
                        :disabled t)

(local
 (defthm loghead-of-ash
   (implies (and (natp shift)
                 (>= size shift)
                 (natp size))
            (equal (acl2::loghead size (ash val shift))
                   (* (expt 2 shift)
                      (acl2::loghead (- size shift) val))))
   :hints (("goal"
            :in-theory (e/d (loghead) ())))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
(local
 (defthm lemma1
   (implies (and (natp x))
            (integerp (expt 2 x)))))

(local
 (defthm lemma2
   (implies (and (natp size1)
                 (natp size2)
                 (>= size1 size2))
            (integerp (expt 2 (- size1 size2))))))

(local
 (defthm lemma3
   (implies (and (integerp x)
                 (integerp y))
            (integerp (* x y)))))||#

(encapsulate
  nil

  (defthm logapp-of-logapp
    (implies (and (integerp size1)
                  (<= 0 size1)
                  (integerp term1)
;(<= 0 term1)
                  (integerp term2)
;(<= 0 term2)
                  (integerp term3)
;(<= 0 term3)
                  (acl2-numberp size2)
                  (<= size2 size1)
                  (integerp size2)
                  (<= 0 size2)
                  (acl2-numberp size1))
             (equal (acl2::logapp size1
                                  (acl2::logapp size2 term1 term2)
                                  term3)
                    (acl2::logapp size2 term1
                                  (acl2::logapp
                                   (+ size1 (- size2))
                                   term2 term3))))
    :hints (("goal"
             :in-theory (e/d (4vec-concat
                              loghead)
                             (acl2::logapp)))))

  (defthm equal-logapps
    (implies (and (EQUAL (LOGAPP SIZE TERM1 x)
                         (LOGAPP SIZE TERM2 y))
                  (integerp size)
                  (equal (loghead size term1)
                         (loghead size term2))
                  (integerp x)
                  (integerp y))
             (equal x y))
    :hints (("Goal"
             :in-theory (e/d (loghead ifix nfix logapp) ())))
    :rule-classes :forward-chaining)

  (defthm equal-logapps-2
    (implies (and (EQUAL (LOGAPP SIZE x TERM1)
                         (LOGAPP SIZE y TERM1))
                  (integerp size)
                  (integerp x)
                  (integerp y))
             (equal (loghead size x)
                    (loghead size y)))
    :hints (("Goal"
             :in-theory (e/d (loghead ifix nfix logapp) ())))
    :rule-classes :forward-chaining)

  (defthm logapp-of-logapp-minus-1
    (implies (and (natp size)
                  (natp size2)
                  (integerp val))
             (equal (logapp size -1 (logapp size2 -1 val))
                    (logapp (+ size size2)
                            -1
                            val))))

  (local
   (use-arithmetic-5 nil))

  (defthm 4vec-concat-of-4vec-concat
    (implies
     (and (natp size1)
          ;;(natp term1)
          ;;(natp term2)
;        (4vec-p term1)
;       (4vec-p term2)
          ;; (4vec-p term3)
          ;;(natp term3)
          (>= size1 size2)
          (natp size2))
     (equal
      (4vec-concat size1 (4vec-concat size2 term1 term2) term3)
      (4vec-concat size2 term1
                   (4vec-concat (- size1 size2) term2 term3))))
    :hints (("goal"
             :do-not '(preprocess)
             ;; :cases ((4vec-p term1)
             ;;         (4vec-p term2))
             :expand ((4vec-p term1)
                      (4vec-p term2)
                      (4vec-p term3))
             :in-theory (e/d* (4vec-concat
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              (acl2::logapp
                               (:DEFINITION SV::4VEC->LOWER$INLINE)
                               (:DEFINITION SV::4VEC->UPPER$INLINE)
                               sv::4vec-elim
                               (:DEFINITION 4VEC-P)
                               (:DEFINITION NATP)
                               (:DEFINITION NOT)
                               (:REWRITE ACL2::|(+ x (if a b c))|)
                               (:REWRITE ACL2::|(equal x (if a b c))|)
                               (:REWRITE SV::4VEC-EQUAL)
                               (:REWRITE ACL2::DEFAULT-LESS-THAN-2)
                               (:REWRITE ACL2::DEFAULT-MINUS)
                               (:REWRITE ACL2::DEFAULT-PLUS-1)
                               ifix
                               4vec
                               (:REWRITE ACL2::|(equal (if a b c) x)|)
                               acl2::associativity-of-logapp)))))

  (local (use-arithmetic-5 t))

  (defthm logapp-of-logapp-2
    (IMPLIES (AND (INTEGERP SIZE1)
                  (<= 0 SIZE1)
                  (INTEGERP TERM1)
                  (INTEGERP TERM2)
                  (INTEGERP TERM3)
                  (< SIZE1 SIZE2)
                  (INTEGERP SIZE2)
                  (<= 0 SIZE2))
             (EQUAL (LOGAPP SIZE1 (LOGAPP SIZE2 TERM1 TERM2)
                            TERM3)
                    (LOGAPP SIZE1 TERM1 TERM3)))
    :hints (("Goal"
             :in-theory (e/d (logapp loghead) ()))))

  (LOCAL (USE-ARITHMETIC-5 nil))

  (defthm 4vec-concat-of-4vec-concat-2
    (implies
     (and (natp size1)
; (4vec-p term1)
;(4vec-p term2)
          ;;(4vec-p term3)
          (< size1 size2)
          (natp size2))
     (equal
      (4vec-concat size1 (4vec-concat size2 term1 term2) term3)
      (4vec-concat size1 term1 term3)))
;:otf-flg t
    :hints (("goal"
             :expand ((4vec-p term1)
                      (4vec-p term2)
                      (4vec-p term3))
             ;; :cases ((4vec-p term1)
             ;;         (4vec-p term2)
             ;;         (4vec-p term3))
             :in-theory (e/d* (4vec-concat
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               )
                              (acl2::logapp
                               (:DEFINITION SV::4VEC->LOWER$INLINE)
                               (:DEFINITION SV::4VEC->UPPER$INLINE)
                               sv::4vec-elim
                               (:DEFINITION 4VEC-P)
                               (:DEFINITION NATP)
                               (:DEFINITION NOT)
                               (:REWRITE ACL2::|(+ x (if a b c))|)
                               (:REWRITE ACL2::|(equal x (if a b c))|)
                               (:REWRITE SV::4VEC-EQUAL)
                               (:REWRITE ACL2::DEFAULT-LESS-THAN-2)
                               (:REWRITE ACL2::DEFAULT-MINUS)
                               (:REWRITE ACL2::DEFAULT-PLUS-1)
                               ifix
                               4vec
                               (:REWRITE ACL2::|(equal (if a b c) x)|)
                               acl2::associativity-of-logapp))))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 nil))

  (defthm equal-of-4vec-concat-with-size=1
    (implies (and (4vec-p x)
                  (4vec-p l))
             (equal (equal x
                           (sv::4vec-concat 1 k l))
                    (and (equal (sv::4vec-part-select 0 1 x)
                                (sv::4vec-part-select 0 1 k))
                         (equal (svl::4vec-rsh 1 x)
                                l))))
    :hints (("Goal"
             :in-theory (e/d* (4VEC-RSH
                               bitops::ihsext-recursive-redefs
                               bitops::ihsext-inductions
                               4VEC-PART-SELECT
                               4VEC-CONCAT
                               4VEC-SHIFT-CORE
                               4VEC-ZERO-EXT)
                              (4vec)))))

  (defthmd equal-of-4vec-concat-with-posp-size
    (implies (and (4vec-p x)
                  (4vec-p l)
                  (posp size))
             (and (equal (equal x
                                (4vec-concat size k l))
                         (and (equal (sv::4vec-part-select 0 1 x)
                                     (sv::4vec-part-select 0 1 k))
                              (equal (svl::4vec-rsh 1 x)
                                     (sv::4vec-rsh 1 (4vec-concat size k l)))))
                  (equal (equal (4vec-concat size k l)
                                x)
                         (and (equal (sv::4vec-part-select 0 1 x)
                                     (sv::4vec-part-select 0 1 k))
                              (equal (svl::4vec-rsh 1 x)
                                     (sv::4vec-rsh 1 (4vec-concat size k l)))))))
    :hints (("Goal"
             :in-theory (e/d* (4VEC-RSH
                               bitops::ihsext-recursive-redefs
                               bitops::ihsext-inductions
                               4VEC-PART-SELECT
                               4VEC-CONCAT
                               4VEC-SHIFT-CORE
                               4VEC-ZERO-EXT)
                              (4vec))))))

(local
 (defthm a-plus-minus-a
   (implies (acl2-numberp b)
            (equal (+ a (- a) b)
                   b))))

(local
 (defthm unary-of-unary-
   (implies (acl2-numberp x)
            (equal (- (- x))
                   x))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 nil))

  (local
   (use-ihs-logops-lemmas nil))

  (local
   (use-qr-lemmas nil))

  (defthmd logior-of-loghead-same-size
    (equal (logior (loghead x y)
                   (loghead x z))
           (loghead x (logior y z))))

  (defthmd logior-of-logtail-same-size
    (equal (logior (logtail x y)
                   (logtail x z))
           (logtail x (logior y z))))

  (local
   (defthm lemma1
     (implies (or (equal (logior (car x) (cdr x))
                         (logand (car x) (cdr x)))
                  (equal (logior (logtail a (car x))
                                 (logtail a (cdr x)))
                         (logand (logtail a (car x))
                                 (logtail a (cdr x)))))
              (equal (logior (loghead b (logtail a (car x)))
                             (loghead b (logtail a (cdr x))))
                     (logand (loghead b (logtail a (car x)))
                             (loghead b (logtail a (cdr x))))))
     :hints (("goal"
              :in-theory (e/d (logior-of-loghead-same-size
                               logior-of-logtail-same-size)
                              (bitops::loghead-of-logior
                               bitops::logtail-of-logior))))))

  (defthm 4vec-part-select-of-3vec-fix
    (implies (and (natp a)
                  (natp b))
             (equal (4vec-part-select a b (sv::3vec-fix x))
                    (sv::3vec-fix (4vec-part-select a b x))))
    :otf-flg t
    :hints (("Goal"
             :do-not-induct t
             :in-theory (e/d*
                         (4vec-part-select
                          ;;logior-of-loghead-same-size
                          ;;bitops::ihsext-inductions
                          ;;bitops::ihsext-recursive-redefs
                          SV::4VEC->UPPER
                          SV::4VEC->LOWER
                          4VEC-CONCAT
                          ACL2::NEGP
                          4VEC-RSH
                          4VEC-SHIFT-CORE
                          2vec
                          SV::3VEC-FIX
                          4VEC-ZERO-EXT
                          ;;logior-of-logtail-same-size
                          )
                         (;;BITOPS::LOGHEAD-OF-LOGIOR
                          ;;BITOPS::LOGTAIL-OF-LOGIOR
                          ))))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (local
   (use-ihs-logops-lemmas nil))

  (local
   (use-qr-lemmas nil))

  (defthm 4vec-part-select-of-concat-1
    (implies (and (<= (+ start size) c-size)
                  (natp start)
                  (natp size)
                  (natp c-size))
             (equal (4vec-part-select start size (4vec-concat c-size term1 term2))
                    (4vec-part-select start size term1)))
    :hints (("goal"
             :cases ((4vec-p term1)
                     (4vec-p term2))
             :expand ((4vec-p term1)
                      (4vec-p term2))
             :in-theory (e/d* (4vec-part-select
                               4vec-concat
                               4vec-rsh
                               4vec-zero-ext
                               loghead
                               logtail
                               logapp
                               sv::4vec-shift-core)
                              ((:rewrite acl2::|(equal (if a b c) x)|)
                               (:REWRITE ACL2::|(equal (floor (+ x y) z) x)|)
                               (:TYPE-PRESCRIPTION
                                ACL2::NOT-INTEGERP-1A-EXPT)
                               (:REWRITE ACL2::FLOOR-=-X/Y . 4)
                               (:REWRITE
                                ACL2::SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL)
                               (:TYPE-PRESCRIPTION ACL2::MOD-ZERO . 2)

                               (:REWRITE ACL2::FLOOR-=-X/Y . 2)

                               (:TYPE-PRESCRIPTION ACL2::MOD-ZERO . 1)
                               (:REWRITE ACL2::DEFAULT-MOD-1)
                               (:REWRITE
                                ACL2::MOD-CANCEL-*-REWRITING-GOAL-LITERAL)
                               (:REWRITE
                                ACL2::|(mod x (* y (/ z))) rewriting-goal-literal|)
                               (:REWRITE
                                ACL2::|(mod (* x (/ y)) z) rewriting-goal-literal|)
                               (:LINEAR ACL2::LINEAR-FLOOR-BOUNDS-2)
                               (:REWRITE ACL2::|(floor (+ x r) i)|)
                               (:LINEAR ACL2::MOD-BOUNDS-3)
                               (:REWRITE ACL2::DEFAULT-FLOOR-RATIO)
                               (:REWRITE ACL2::SIMPLIFY-SUMS-EQUAL)
                               (:REWRITE ACL2::MOD-X-Y-=-X-Y . 3)
                               (:REWRITE ACL2::MOD-X-Y-=-X+Y . 3)
                               (:REWRITE ACL2::EXPT-WITH-VIOLATED-GUARDS)
                               (:e tau-system)
                               4vec
                               4vec-p
                               SV::4VEC-ELIM
                               ifix
                               (:rewrite acl2::|(equal x (if a b c))|)
                               (:type-prescription acl2::not-integerp-4b)
                               (:rewrite acl2::prefer-positive-addends-<)
                               (:rewrite acl2::prefer-positive-addends-equal)
                               (:rewrite
                                acl2::simplify-products-gather-exponents-<)
                               (:type-prescription acl2::integerp-/-expt-2)
                               (:REWRITE ACL2::|(floor (+ x y) z) where (< 0 z)|
                                         . 1)
                               (:REWRITE ACL2::|(mod (+ x y) z) where (<= 0 z)|
                                         . 1)
                               (:REWRITE SV::4VEC-EQUAL)
                               (:type-prescription acl2::integerp-/-expt-1)
                               (:type-prescription acl2::not-integerp-3b)
                               (:type-prescription acl2::not-integerp-2b)
                               (:type-prescription acl2::not-integerp-1b)
                               (:type-prescription
                                acl2::expt-type-prescription-nonpositive-base-odd-exponent)
                               (:type-prescription
                                acl2::not-integerp-4a-expt)
                               (:rewrite acl2::mod-x-y-=-x . 4)
                               (:rewrite acl2::|(mod (floor x y) z)| . 1)

                               (:type-prescription
                                acl2::expt-type-prescription-nonpositive-base-even-exponent)
                               (:type-prescription
                                acl2::expt-type-prescription-negative-base-odd-exponent)
                               (:type-prescription
                                acl2::expt-type-prescription-negative-base-even-exponent)
                               (:type-prescription
                                acl2::expt-type-prescription-integerp-base-b)
                               (:type-prescription
                                acl2::expt-type-prescription-integerp-base-a)
                               (:rewrite acl2::default-times-1)
                               (:rewrite acl2::mod-x-y-=-x-y . 2)
                               (:rewrite acl2::default-times-2)
                               (:rewrite acl2::default-plus-2)
                               (:rewrite acl2::mod-zero . 4)
                               (:rewrite acl2::mod-x-y-=-x+y . 2)
                               (:rewrite acl2::mod-x-y-=-x . 3)
                               (:linear acl2::mod-bounds-1)
                               (:type-prescription acl2::mod-zero . 4)
                               (:type-prescription acl2::floor-zero . 4)
                               (:type-prescription
                                acl2::not-integerp-3a-expt)
                               (:rewrite acl2::floor-x-y-=-1 . 2)
                               (:rewrite acl2::floor-zero . 4)
                               (:rewrite acl2::default-plus-1)
                               (:rewrite acl2::mod-zero . 3)
                               (:rewrite acl2::floor-zero . 5)
                               (:rewrite acl2::default-mod-ratio)
                               (:linear acl2::linear-floor-bounds-1)
                               (:rewrite acl2::mod-x-y-=-x-y . 1)
                               (:rewrite acl2::default-minus)
                               (:rewrite acl2::floor-zero . 3)
                               (:rewrite acl2::mod-x-y-=-x+y . 1)
                               (:rewrite acl2::|(mod (+ x (mod a b)) y)|)
                               (:rewrite acl2::|(mod (+ x (- (mod a b))) y)|)
                               (:rewrite acl2::mod-x-y-=-x . 2)
                               (:rewrite acl2::the-floor-above)
                               (:rewrite acl2::default-divide)
                               (:type-prescription acl2::floor-zero . 3)
                               (:type-prescription acl2::floor-zero . 2)
                               (:type-prescription acl2::mod-zero . 3)
                               (:type-prescription acl2::floor-zero . 1)
                               (:type-prescription
                                acl2::not-integerp-2a-expt)))))))

(defthmd 4vec-concat-with-0-to-4vec-part-select
  (implies (natp size)
           (equal (4vec-concat size x 0)
                  (4vec-part-select 0 size x)))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            4VEC-ZERO-EXT) ()))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 nil))

  (local
   (defthm lemma1
     (implies (and (not (zip c-size))
                   (syntaxp (acl2::variablep c-size)))
              (equal (EXPT 2 (+ -1 C-SIZE))
                     (* (EXPT 2 c-size) (/ 2))))))

  (local
   (defthm lemma2
     (implies (EQUAL (* TERM2 1/2 (EXPT 2 C-SIZE))
                     (ASH TERM2 (+ -1 C-SIZE)))
              (equal (* 2 (ASH TERM2 (+ -1 C-SIZE)))
                     (* 2 (* TERM2 1/2 (EXPT 2 C-SIZE)))))
     :rule-classes :forward-chaining))

  (local
   (encapsulate
     nil
     (local
      (use-arithmetic-5 t))

     (defthm lemma3
       (equal (* 2 (* TERM2 1/2 (EXPT 2 C-SIZE)))
              (* TERM2 (EXPT 2 C-SIZE)))
       :hints (("Goal"
                :do-not-induct t
                :in-theory (e/d () (lemma2
                                    not)))))))

  (defthmd term-times-expt2-is-ash
    (implies (and (natp c-size)
                  (integerp term2))
             (EQUAL (* TERM2 (EXPT 2 C-SIZE))
                    (ash term2 c-size)))
    :hints (("goal"
             :use ((:instance lemma2))
             :expand ((ACL2::LOGCONS 0 (ASH TERM2 (+ -1 C-SIZE))))
             :in-theory (e/d* (zip
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              (logapp-of-logapp-2
                               lemma2
                               logapp-of-logapp
                               (:REWRITE BITOPS::|(* 1/2 (expt 2 n))|))))))

  (defthmd term-times-expt2-is-ash-2
    (implies (and (natp c-size)
                  (integerp term2))
             (EQUAL (* (EXPT 2 C-SIZE) TERM2)
                    (ash term2 c-size)))
    :hints (("goal"
             :use ((:instance lemma2))
             :expand ((ACL2::LOGCONS 0 (ASH TERM2 (+ -1 C-SIZE))))
             :in-theory (e/d* (bitops::ihsext-inductions
                               zip
                               term-times-expt2-is-ash
                               bitops::ihsext-recursive-redefs)
                              (logapp-of-logapp-2
                               lemma2
                               logapp-of-logapp
                               (:REWRITE BITOPS::|(* 1/2 (expt 2 n))|)))))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 nil))

  (local
   (use-ihs-logops-lemmas t))

  (local
   (use-qr-lemmas nil))

  (defthm loghead-non-pos-size
    (implies (and (integerp x)
                  (<= x 0))
             (equal (loghead x val)
                    0))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              (logapp-of-logapp-2
                               logapp-of-logapp)))))

  (defthm 4vec-part-select-of-concat-2
    (implies (and (<= c-size start)
                  (natp start)
                  (natp size)
                  (natp c-size))
             (equal (4vec-part-select start size (4vec-concat c-size term1 term2))
                    (4vec-part-select (- start c-size) size term2)))
    :hints (("goal"
             :expand ((4vec-p term1)
                      (4vec-p term2))
             :in-theory (e/d* (4vec-part-select
                               4vec-concat
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               4vec-rsh
                               4vec-zero-ext
                               SV::4VEC->UPPER
                               term-times-expt2-is-ash
                               term-times-expt2-is-ash-2
                               sv::4vec-shift-core)
                              (4vec
                               logapp-of-logapp-2
                               logapp-of-logapp))))))

(defthmd loghead-minus-1-is-logapp
  (implies (natp size)
           (equal (loghead size -1)
                  (logapp size -1 0)))
  :hints (("goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            (logapp-of-logapp-2
                             logapp-of-logapp)))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 nil))

  (local
   (use-ihs-logops-lemmas t))

  (local
   (use-qr-lemmas nil))

  (local
   (defthm l1
     (implies (and (< start c-size)
                   (< c-size (+ size start))
                   (natp start)
                   (integerp size)
                   (integerp c-size)
                   (not (consp term1))
                   (not (integerp term1))
                   (not (consp term2))
                   (not (integerp term2))
                   (<= 0 (+ (- c-size) size start))
                   (<= 0 size)
                   (<= 0 (+ c-size (- start))))
              (equal (logapp (+ c-size (- start))
                             -1
                             (loghead (+ (- c-size) size start) -1))
                     (loghead size -1)))
     :hints (("Goal"
              :in-theory (e/d (loghead-minus-1-is-logapp)
                              (ACL2::LOGAPP-0
                               BITOPS::LOGAPP-OF-J-0))))))

  (defthm 4vec-part-select-of-concat-3
    (implies (and (< start c-size)
                  (< c-size (+ start size))
                  (natp start)
                  (natp size)
                  (natp c-size))
             (equal (4vec-part-select start size
                                      (4vec-concat c-size term1 term2))
                    (4vec-concat (- c-size start)
                                 (4vec-rsh start term1)
                                 (4vec-part-select 0 (- size (- c-size start)) term2))))
    :hints (("goal"
             :expand ((4vec-p term1)
                      (4vec-p term2)
                      (ACL2::LOGCONS 1
                                     (LOGHEAD (+ -1 (- C-SIZE) SIZE START)
                                              -1)))
             :in-theory (e/d* (4vec-part-select
                               4vec-concat
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               4vec-rsh
                               4vec-zero-ext
                               SV::4VEC->UPPER
                               term-times-expt2-is-ash
                               term-times-expt2-is-ash-2
                               sv::4vec-shift-core)
                              (4vec
                               logapp-of-logapp-2
                               logapp-of-logapp))))))

(local
 (defthm fix-opener
   (implies (acl2-numberp x)
            (equal (fix x)
                   x))))

(local
 (defthm ash-is-positive
   (implies (and
             (natp x))
            (natp (ash x shift)))
   :rule-classes :type-prescription))

(local
 (defthm nfix-opener
   (implies (natp x)
            (equal (nfix x)
                   x))))
(local
 (encapsulate
   nil

   (local
    (use-arithmetic-5 t))

   (local
    (use-ihs-logops-lemmas t))

   (local
    (defthm ash-of-logapp-lemma
      (implies (and (natp s1)
                    (natp s2)
                    (integerp x)
                    (< s1 s2)
                    (integerp y))
               (equal (ash (acl2::logapp s2 x y) (- s1))
                      (acl2::logapp (+ (- s1) s2)
                                    (ash x (- s1))
                                    y)))
      :hints (("goal"
               :in-theory (e/d* (logapp
                                 loghead)
                                (unary--
                                 term-times-expt2-is-ash
                                 term-times-expt2-is-ash-2
                                 nfix))))))

   (defthm ash-of-logapp
     (implies (and (natp (- s1))
                   (natp s2)
                   (integerp x)
                   (< (- s1) s2)
                   (integerp y))
              (equal (ash (acl2::logapp s2 x y) s1)
                     (acl2::logapp (+ s1 s2)
                                   (ash x s1)
                                   y)))
     :hints (("goal"
              :use (( :instance ash-of-logapp-lemma
                                (s1 (- s1))))
              :cases ((acl2-numberp s1))
              :in-theory (e/d ()
                              ()))))))

(local
 (encapsulate
   nil

   (local
    (defthm lemma1
      (implies (and (< x (/ z 2))
                    (< y (/ z 2)))
               (< (+ x y)
                  z))))

   (local
    (defthm lemma3
      (implies (and (< a (expt 2 s2))
                    (<= (expt 2 s2) c))
               (< a c))))

   (local
    (use-qr-lemmas nil))

   (local
    (use-arithmetic-5 nil))

   (defthm ash-of-logapp-2
     (implies (and (natp (- s1))
                   (natp s2)
                   (integerp x)
                   (<= s2 (- s1))
                   (integerp y))
              (equal (ash (acl2::logapp s2 x y) s1)
                     (ash y (- s2 (- s1)))))
     :hints (("goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ((:rewrite acl2::|(floor (+ x y) z) where (< 0 z)|
                                          . 1)
                                (:REWRITE ACL2::|(< (if a b c) x)|)
                                (:REWRITE ACL2::|(equal (if a b c) x)|)
                                (:REWRITE ACL2::ASH-TO-FLOOR)
                                (:REWRITE ACL2::DEFAULT-MINUS))
                               ))))))

(local
 (defthm loghead-of-logapp-v1
   (implies (and (natp head-size)
                 (natp app-size)
                 (< app-size head-size)
;(integerp val1)
;(integerp val2)
                 )
            (equal (acl2::loghead head-size
                                  (acl2::logapp app-size val1 val2))
                   (acl2::logapp app-size
                                 val1
                                 (acl2::loghead (- head-size app-size)
                                                val2))))
   :hints (("goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ((:rewrite acl2::|(mod (+ x y) z) where (<= 0 z)|
                                        . 1)))))))

(local
 (defthmd mult-with-expt-2-to-ash
   (implies (and (natp size)
                 (integerp num))
            (equal (* (expt 2 size) num)
                   (ash num size)))
   :hints (("Goal"
            :in-theory (e/d (ash
                             (:REWRITE ACL2::|(* y x)|)
                             (:REWRITE ACL2::|(floor x 1)|)
                             (:REWRITE ACL2::IFIX-WHEN-INTEGERP)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE)
                             (:TYPE-PRESCRIPTION
                              ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
                            ())))))

(local
 (defthm ash-of-ash
   (implies (and (or (<= s2 0)
                     (>= s1 0))
                 ;;(integerp x)
                 (integerp s1)
                 (integerp s2))
            (equal (ash (ash x s1) s2)
                   (ash x (+ s1 s2))))
   :hints (("Goal"
            :cases ((integerp x))
            :in-theory (e/d (ACL2::ASH-TO-FLOOR
                             ACL2::FLOOR-FLOOR-INTEGER
                             ACL2::|(floor x 1)|
                             (:REWRITE ACL2::|(floor 0 y)|)
                             (:REWRITE ACL2::|(floor (+ x y) z) where (< 0 z)|
                                       . 1))
                            ())))))

(defthm 4vec-part-install-of-concat
  (implies (and (posp size)
                (natp start)
                (natp w)
                (>= size w))
           (equal (4vec-part-install start size  old-val (4vec-concat w term1 term2))
                  (4vec-concat start old-val
                               (4vec-concat w term1
                                            (4vec-concat (- size w)
                                                         term2
                                                         (4vec-rsh (+ start size)
                                                                   old-val))))))
  :hints (("goal"
           :expand ((4vec-p term1)
                    (4vec-p term2)
                    (4vec-p old-val))
           :in-theory (e/d* (4vec-part-install
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             4vec-rsh
                             sv::4vec-shift-core
                             4vec-concat)
                            (acl2::logapp
                             sv::4vec-elim
                             acl2::associativity-of-logapp
                             (:e tau-system)
                             4vec
                             (:definition ash)
                             (:definition fix)
                             (:definition floor)
                             (:REWRITE SV::4VEC-EQUAL)
                             acl2::loghead$inline)))))

(defthm 4vec-rsh-of-4vec-concat
  (implies (and (natp s1)
                (natp s2)
                (< s1 s2))
           (equal (4vec-rsh s1 (4vec-concat s2 x y))
                  (4vec-concat (- s2 s1)
                               (4vec-rsh s1 x)
                               y)))
  :otf-flg t
  :hints (("goal"
           :expand ((4vec-p x)
                    (4vec-p y))
           :in-theory (e/d (4vec-rsh
                            4vec-concat
                            sv::4vec-shift-core)
                           (ash
                            4vec
                            acl2::logapp)))))

(defthm 4vec-rsh-of-4vec-concat-2
  (implies (and (natp s1)
                (natp s2)
                (<= s2 s1))
           (equal (4vec-rsh s1 (4vec-concat s2 x y))
                  (4vec-rsh (- s1 s2) y)))
  :otf-flg t
  :hints (("goal"
           :expand ((4vec-p x)
                    (4vec-p y))
           :do-not '(preprocess)
           :in-theory (e/d* (4vec-rsh
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             4vec-concat
                             sv::4vec-shift-core)
                            (ash
                             4vec
                             4vec-p
                             (:REWRITE SV::4VEC-EQUAL)
                             SV::MAYBE-4VEC-P-WHEN-4VEC-P
                             acl2::logapp)))))

(defthm natp-4vec-concat
  (implies (and (natp x)
                (natp y)
                (natp s))
           (natp (4vec-concat s x y)))
  :hints (("goal"
           :cases ((natp s))
           :in-theory (e/d (4vec-concat
                            SV::4VEC->UPPER
                            SV::4VEC->LOWER)
                           (acl2::logapp)))))

(def-rp-rule 4vec-zero-ext-is-4vec-concat
  (equal (4vec-zero-ext size x)
         (4vec-concat size x 0))
  :hints (("goal"
           :in-theory (e/d (4vec-zero-ext
                            4vec-concat
                            )
                           (acl2::loghead
                            acl2::logapp)))))

(add-svex-simplify-rule 4vec-zero-ext-is-4vec-concat)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;       4vec-select of 4vec-part-install lemmas
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(local
 (use-arithmetic-5 nil))

(defthm 4vec-part-select-of-4vec-rsh
  (implies (and (natp r-size)
                (natp start)
                (natp size))
           (equal (4vec-part-select start size (4vec-rsh r-size val))
                  (4vec-part-select (+ start r-size) size val)))
  :hints (("goal"
           :cases ((4vec-p val))
           :expand ((4vec-p val))
           :in-theory (e/d (4vec-concat
                            4vec-part-install
                            4vec-part-select
                            sv::4vec-shift-core
                            4vec-rsh
                            4vec-lsh)
                           (ash
                            (:definition ifix)
                            (:e tau-system)
                            4vec
                            acl2::loghead
                            4vec-part-install-of-concat
                            4vec-concat-insert-4vec-part-select
                            acl2::associativity-of-logapp
                            acl2::logapp)))))

(encapsulate
  nil
  ;;case 1: sbits start later and end before bits'
  (local
   (defthm 4vec-select-of-4vec-part-install-1-lemma
     (implies
      (and (natp start)
           (natp s-start)
           (natp size)
           (natp s-size)
           (< start s-start)
           (< (+ s-start s-size)
              (+ start size)))
      (equal
       (4vec-part-select start size
                         (4vec-part-install
                          s-start s-size old-val val))
       (4vec-concat (- s-start start)
                    (4vec-part-select 0 (- s-start start) (4vec-rsh start old-val))
                    (4vec-concat s-size
                                 (4vec-part-select 0 s-size val)
                                 (4vec-part-select (+ s-start s-size)
                                                   (- (+ start size) (+ s-start s-size))
                                                   old-val)))))
     :hints (("goal"
              :expand ((4vec-part-install s-start s-size old-val val)
                       (4vec-p old-val)
                       (4vec-p val)
                       )
              :cases ((4vec-p val))
              :do-not '(preprocess)
              :in-theory (e/d (4vec-part-select
                               sv::2vec)
                              (4vec-concat-insert-4vec-part-select
                               (:definition ifix)
                               4vec-part-install-of-concat))))))

  (defthm 4vec-select-of-4vec-part-install-1
    (implies
     (and (natp start)
          (natp s-start)
          (natp size)
          (natp s-size)
          (< start s-start)
          (< (+ s-start s-size)
             (+ start size)))
     (equal
      (4vec-part-select start size
                        (4vec-part-install
                         s-start s-size old-val val))
      (4vec-concat (- s-start start)
                   (4vec-part-select start (- s-start start) old-val)
                   (4vec-concat s-size
                                (4vec-part-select 0 s-size val)
                                (4vec-part-select (+ s-start s-size)
                                                  (- (+ start size) (+ s-start s-size))
                                                  old-val)))))
    :hints (("goal"
             :in-theory (e/d ()
                             (4vec-concat-insert-4vec-part-select
                              (:definition ifix)
                              4vec-part-install-of-concat))))))

;; case 2: sbits starts earlier or at the same point but its end comes before bits
(defthm 4vec-select-of-4vec-part-install-2
  (implies (and (natp start)
                (natp size)
                (natp s-start)
                (natp s-size)
                (<= s-start start)
                (< start (+ s-start s-size))
                (< (+ s-start s-size)
                   (+ start size)))
           (equal (4vec-part-select start size
                                    (4vec-part-install
                                     s-start s-size old-val val))
                  (4vec-concat
                   (+ s-size s-start (- start))
                   (4vec-part-select (- start s-start)
                                     (+ s-size s-start (- start))
                                     val)
                   (4vec-part-select (+ s-start s-size)
                                     (+ size start (- (+ s-start s-size)))
                                     old-val))))
  :hints (("goal"
           :expand ((4vec-part-install s-start s-size old-val val)
                    (4vec-p old-val)
                    (4vec-p val))
           :in-theory (e/d (4vec-concat
                            4vec-part-select
                            sv::4vec-shift-core
                            4vec-rsh)
                           (ash
                            4vec
                            (:definition ifix)
                            acl2::loghead
                            4vec-part-install-of-concat
                            4vec-concat-insert-4vec-part-select
                            acl2::associativity-of-logapp
                            acl2::logapp)))))

;;case 3: sbits starts later but its end comes at the same time or later
(defthm 4vec-select-of-4vec-part-install-3
  (implies (and
            (natp start)
            (natp size)
            (natp s-start)
            (natp s-size)
            (< start s-start)
            (< s-start (+ start size))
            (<= (+ start size)
                (+ s-start s-size)))
           (equal (4vec-part-select start size
                                    (4vec-part-install
                                     s-start s-size old-val val))
                  (4vec-concat
                   (- s-start start)
                   (4vec-part-select start (- s-start start) old-val)
                   (4vec-part-select 0 (+ start size (- s-start)) val))))
  :hints (("goal"
           :expand ((4vec-part-install s-start s-size old-val val)
                    (4vec-p old-val)
                    (4vec-p val))
           :in-theory (e/d (4vec-concat
                            4vec-part-select
                            sv::4vec-shift-core
                            4vec-rsh)
                           (ash
                            4vec
                            (:definition ifix)
                            acl2::loghead
                            4vec-part-install-of-concat
                            4vec-concat-insert-4vec-part-select
                            acl2::associativity-of-logapp
                            acl2::logapp)))))

(encapsulate
  nil

  (local
   (defthm 4vec-select-of-4vec-part-install-4-lemma1
     (implies (and (natp start)
                   (natp size)
                   (natp s-start)
                   (natp s-size)
                   (< s-start start)
                   (< (+ start size)
                      (+ s-start s-size)))
              (< (- (+ s-start (- start))) s-size))
     :hints (("goal"
              :in-theory (e/d () ())))))

  ;; case 4: sbits cover the whole range. => bits is subset
  (local
   (defthm 4vec-select-of-4vec-part-install-4-lemma2
     (implies (and  (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (< s-start start)
                    (< (+ start size)
                       (+ s-start s-size)))
              (equal (4vec-part-select start size
                                       (4vec-part-install
                                        s-start s-size old-val val))
                     (4vec-part-select (- start s-start)
                                       size
                                       val)))
     :otf-flg t
     :hints (("goal"
              :expand   ((4vec-p old-val)
                         (4vec-p val))
              :in-theory (e/d (4vec-concat
                               4vec-part-install
                               4vec-part-select
                               sv::4vec-shift-core
                               4vec-rsh)
                              (ash
                               4vec
                               (:definition ifix)
                               (:e tau-system)
                               acl2::loghead
                               4vec-part-install-of-concat
                               4vec-concat-insert-4vec-part-select
                               acl2::associativity-of-logapp
                               acl2::logapp))))))

  (local
   (defthm 4vec-select-of-4vec-part-install-4-lemma3
     (implies (and
               (natp size)
               (natp s-start)
               (natp s-size)
               (< (+ s-start size)
                  (+ s-start s-size)))
              (equal (4vec-part-select s-start size
                                       (4vec-part-install
                                        s-start s-size old-val val))
                     (4vec-part-select (- s-start s-start)
                                       size
                                       val)))
     :otf-flg t
     :hints (("goal"
              :expand   ((4vec-p old-val)
                         (4vec-p val))
              :in-theory (e/d (4vec-concat
                               4vec-part-install
                               4vec-part-select
                               sv::4vec-shift-core
                               4vec-rsh)
                              (ash
                               4vec
                               (:definition ifix)
                               (:e tau-system)
                               acl2::loghead
                               4vec-part-install-of-concat
                               4vec-concat-insert-4vec-part-select
                               acl2::associativity-of-logapp
                               acl2::logapp))))))

  (local
   (encapsulate
     nil
     (local
      (use-arithmetic-5 nil))

     (defthm 4vec-select-of-4vec-part-install-4-lemma4
       (implies (and   (natp size)
                       (natp s-start)
                       (natp s-size)
                       (equal size s-size))
                (equal (4vec-part-select s-start size
                                         (4vec-part-install
                                          s-start s-size old-val val))
                       (4vec-part-select (- s-start s-start)
                                         size
                                         val)))
       :hints (("goal"
                :cases ((equal s-size 0))
                :expand ((4vec-p val)
                         (4vec-p old-val))
                :in-theory (e/d* (4vec-concat
                                  4vec-part-install
                                  4vec-part-select
                                  sv::4vec-shift-core
                                  4vec-rsh)
                                 (ash
                                  4vec
                                  sv::4vec-elim
                                  4vec-p
                                  (:definition ifix)
                                  (:e tau-system)
                                  acl2::loghead
                                  4vec-part-install-of-concat
                                  4vec-concat-insert-4vec-part-select
                                  acl2::associativity-of-logapp
                                  acl2::logapp)))))))

  (local
   (use-arithmetic-5 nil))

  (local
   (use-qr-lemmas nil))

  (local
   (defthm stupid-lemma1
     (implies (and (EQUAL (+ SIZE START)
                          (+ S-SIZE S-START))
                   (acl2-numberp size))
              (equal (+ S-SIZE S-START (- START))
                     size))
     :rule-classes :forward-chaining))

  (local
   (defthm 4vec-select-of-4vec-part-install-4-lemma5
     (implies (and  (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (< s-start start)
                    (= (+ start size)
                       (+ s-start s-size)))
              (equal (4vec-part-select start size
                                       (4vec-part-install
                                        s-start s-size old-val val))
                     (4vec-part-select (- start s-start)
                                       size
                                       val)))
     :hints (("goal"
              :cases ((equal size 0))
              :expand   ((4vec-p old-val)
                         (4vec-p val))
              :in-theory (e/d* (4vec-concat
                                4vec-part-install
                                4vec-part-select
                                sv::4vec-shift-core
                                4vec-rsh)
                               (ash
                                4vec
                                SV::4VEC-ELIM
                                (:definition ifix)
                                (:e tau-system)
                                acl2::loghead
                                4vec-part-install-of-concat
                                4vec-concat-insert-4vec-part-select
                                acl2::associativity-of-logapp
                                acl2::logapp))))))

  (local
   (defthm 4vec-select-of-4vec-part-install-4-lemma6
     (implies (and  (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (or (< s-start start)
                        (= s-start start))
                    (or (= (+ start size)
                           (+ s-start s-size))
                        (< (+ start size)
                           (+ s-start s-size))))
              (equal (4vec-part-select start size
                                       (4vec-part-install
                                        s-start s-size old-val val))
                     (4vec-part-select (- start s-start)
                                       size
                                       val)))))

  (defthm 4vec-select-of-4vec-part-install-4
    (implies (and  (natp start)
                   (natp size)
                   (natp s-start)
                   (natp s-size)
                   (<= s-start start)
                   (<= (+ start size)
                       (+ s-start s-size)))
             (equal (4vec-part-select start size
                                      (4vec-part-install
                                       s-start s-size old-val val))
                    (4vec-part-select (- start s-start)
                                      size
                                      val)))
    :hints (("goal"
             :use ((:instance 4vec-select-of-4vec-part-install-4-lemma6))
             :in-theory (e/d () ())))))

(encapsulate
  nil

  (local
   (defthm 4vec-select-of-4vec-part-install-5-lemma
     (implies
      (and (integerp start)
           (<= 0 start)
           (integerp size)
           (<= 0 size)
           (<= 0 (+ size start))
           (integerp s-size)
           (integerp old-val)
           (integerp val)
           (<= (+ size start) (+ size start)))
      (equal
       (acl2::loghead
        size
        (ash (acl2::logapp (+ size start)
                           old-val
                           (acl2::logapp s-size val
                                         (ash old-val
                                              (+ (- s-size) (- size) (- start)))))
             (- start)))
       (acl2::loghead size (ash old-val (- start)))))
     :hints (("goal"
              :cases ((equal size 0))
              :in-theory (e/d (4vec-concat
                               4vec-part-install
                               4vec-part-select
                               sv::4vec-shift-core
                               4vec-rsh)
                              (ash
                               (:definition ifix)
                               (:e tau-system)
                               acl2::loghead
                               4vec-part-install-of-concat
                               4vec-concat-insert-4vec-part-select
                               acl2::associativity-of-logapp
                               acl2::logapp))))))

  (defthm 4vec-select-of-4vec-part-install-5
    (implies  (and  (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (or (<= (+ start size) s-start)
                        (<= (+ s-start s-size) start)))
              (equal (4vec-part-select start size
                                       (4vec-part-install
                                        s-start s-size old-val val))
                     (4vec-part-select start size
                                       old-val)))
    :otf-flg t
    :hints (("goal"
             :cases ((= (+ start size) s-start)
                     (= (+ s-start s-size) start))
             :in-theory (e/d* (4vec-concat
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               4vec-part-install
                               4vec-part-select
                               sv::4vec-shift-core
                               4vec-rsh)
                              (ash
                               (:definition ifix)
                               (:e tau-system)
                               acl2::loghead
                               4vec
                               sv::4vec-elim
                               (:REWRITE SV::4VEC-EQUAL)
                               4vec-part-install-of-concat
                               4vec-concat-insert-4vec-part-select
                               acl2::associativity-of-logapp
                               acl2::logapp))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end of 4vec part select of 4vec install lemmas
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-rp-rule natp-4vec-lsh
  (implies (and (natp x)
                (natp size))
           (natp (4vec-lsh size x)))
  :rule-classes :type-prescription
  :hints (("goal"
           :in-theory (e/d (4vec-lsh
                            sv::4vec-shift-core) ()))))

(defthm ash-of-0
  (implies (natp val)
           (equal (ash val 0)
                  val))
  :hints (("goal"
           :in-theory (e/d (acl2::integerp==>numerator-=-x) ()))))

(defthm 4vec-part-select-of-4vec-lsh-1
  (implies (and (natp r-size)
                (natp start)
                (natp size)
                (> r-size start)
                (> size (- r-size start)))
           (equal (4vec-part-select start size (4vec-lsh r-size val))
                  (4vec-concat (- r-size start)
                               0
                               (4vec-part-select 0
                                                 (- size (- r-size start))
                                                 val))))
  :hints (("goal"
           :cases ((4vec-p val))
           :expand ((4vec-p val))
           :in-theory (e/d* (4vec-concat
                             4vec-part-install
                             4vec-part-select
                             sv::4vec-shift-core
                             4vec-rsh
                             4vec-lsh)
                            (ash
                             (:definition ifix)
                             (:e tau-system)
                             acl2::loghead
                             4vec
                             4vec-part-install-of-concat
                             4vec-concat-insert-4vec-part-select
                             acl2::associativity-of-logapp
                             acl2::logapp)))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (defthm 4vec-part-select-of-4vec-lsh-2
    (implies (and (natp r-size)
                  (natp start)
                  (natp size)
;(natp val)
                  (>= r-size (+ start size)))
             (equal (4vec-part-select start size (4vec-lsh r-size val))
                    0))
    :hints (("goal"
             :cases ((4vec-p val))
             :expand ((4vec-p val))
             :in-theory (e/d* (4vec-concat
                               4vec-part-install
                               4vec-part-select
                               loghead
                               sv::4vec-shift-core
                               4vec-rsh
                               4vec-lsh)
                              (ash
                               (:definition ifix)
                               (:e tau-system)
                               4vec
                               (:REWRITE SV::4VEC-EQUAL)
                               (:DEFINITION NOT)
                               (:REWRITE ACL2::|(floor (- x) y)| . 1)
                               (:REWRITE ACL2::|(mod (floor x y) z)| . 1)
                               sv::4vec-elim
                               (:LINEAR ACL2::LINEAR-FLOOR-BOUNDS-1)
                               (:REWRITE ACL2::LOGHEAD-IDENTITY)
                               (:DEFINITION UNSIGNED-BYTE-P)
                               (:DEFINITION INTEGER-RANGE-P)
                               (:REWRITE ACL2::DEFAULT-TIMES-1)
                               (:REWRITE ACL2::DEFAULT-TIMES-2)
                               (:REWRITE ACL2::CANCEL-FLOOR-+)
                               (:REWRITE ACL2::THE-FLOOR-ABOVE)
                               (:TYPE-PRESCRIPTION ACL2::FLOOR-ZERO . 4)
                               (:REWRITE
                                ACL2::SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<)
                               (:REWRITE ACL2::MOD-X-Y-=-X-Y . 2)
                               (:REWRITE ACL2::FLOOR-X-Y-=-1 . 2)
                               (:REWRITE ACL2::MOD-X-Y-=-X+Y . 2)
                               (:TYPE-PRESCRIPTION
                                ACL2::EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT)
                               4vec-part-install-of-concat
                               4vec-concat-insert-4vec-part-select
                               acl2::associativity-of-logapp
                               acl2::logapp))))))

(defthm 4vec-part-select-of-4vec-lsh-3
  (implies (and (natp r-size)
                (natp start)
                (natp size)
;(natp val)
                (and (>= start r-size)))
           (equal (4vec-part-select start size (4vec-lsh r-size val))
                  (4vec-part-select (- start r-size) size val)))
  :hints (("goal"
           :cases ((4vec-p val))
           :expand ((4vec-p val))
           :in-theory (e/d (4vec-concat
                            4vec-part-install
                            4vec-part-select
                            sv::4vec-shift-core
                            4vec-rsh
                            4vec-lsh)
                           (ash
                            (:definition ifix)
                            (:e tau-system)
                            acl2::loghead
                            4vec
                            4vec-part-install-of-concat
                            4vec-concat-insert-4vec-part-select
                            acl2::associativity-of-logapp
                            acl2::logapp)))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (defthm 4vec-part-install-w=0
    (implies (natp start)
             (equal (4vec-part-install start 0 old-val new-val)
                    (sv::4vec-fix old-val)))
    :hints (("goal"
             :cases ((sv::4vec-p old-val))
             :expand ((sv::4vec-p old-val))
             :in-theory (e/d (4vec-part-install
                              4vec-concat
                              4vec-rsh
                              logapp
                              loghead
                              sv::2vec
                              4vec-fix
                              sv::4vec-shift-core)
                             ((:definition sv::4vec)
                              (:definition ifix)
                              4vec
                              (:definition not)
                              (:rewrite acl2::|(equal (if a b c) x)|)
                              (:rewrite acl2::|(equal x (if a b c))|)
                              (:rewrite cons-equal)
                              (:rewrite acl2::mod-x-y-=-x . 1)
                              (:type-prescription acl2::not-integerp-4b)
                              (:type-prescription acl2::integerp-/-expt-2)
                              (:type-prescription acl2::integerp-/-expt-1)
                              (:type-prescription acl2::not-integerp-3b)
                              (:type-prescription acl2::not-integerp-2b)
                              (:type-prescription acl2::not-integerp-1b)
                              (:type-prescription
                               acl2::expt-type-prescription-nonpositive-base-odd-exponent)
                              (:type-prescription
                               acl2::expt-type-prescription-nonpositive-base-even-exponent)
                              (:type-prescription
                               acl2::expt-type-prescription-negative-base-odd-exponent)
                              (:type-prescription
                               acl2::expt-type-prescription-negative-base-even-exponent)
                              (:type-prescription
                               acl2::expt-type-prescription-integerp-base-b)
                              (:type-prescription
                               acl2::expt-type-prescription-integerp-base-a)
                              (:rewrite acl2::floor-zero . 3)
                              (:type-prescription acl2::floor-zero . 4)
                              (:type-prescription acl2::floor-positive . 1)
                              (:type-prescription acl2::floor-negative . 1)
                              (:type-prescription
                               acl2::floor-nonnegative . 1)
                              (:type-prescription
                               acl2::floor-nonpositive . 1)
                              (:rewrite
                               acl2::simplify-products-gather-exponents-equal)
                              (:rewrite acl2::floor-x-y-=-1 . 2)
                              (:linear acl2::mod-bounds-1)
                              (:rewrite acl2::default-times-2)
                              (:rewrite acl2::cancel-floor-+)
                              (:rewrite acl2::prefer-positive-addends-equal)
                              (:type-prescription acl2::floor-zero . 3)
                              (:type-prescription acl2::floor-positive . 3)
                              (:type-prescription acl2::floor-positive . 2)
                              (:type-prescription acl2::floor-negative . 2)
                              (:type-prescription acl2::floor-zero . 1)
                              (:type-prescription
                               acl2::floor-nonnegative . 3)
                              (:type-prescription
                               acl2::floor-nonnegative . 2)
                              (:type-prescription
                               acl2::floor-nonpositive . 3)
                              (:rewrite acl2::floor-=-x/y . 4)
                              (:rewrite acl2::acl2-numberp-x)
                              (:rewrite acl2::simplify-sums-equal)
                              (:rewrite acl2::default-divide)
                              (:type-prescription acl2::mod-zero . 4)
                              (:rewrite acl2::floor-=-x/y . 2)
                              (:rewrite acl2::floor-=-x/y . 3)
                              (:rewrite acl2::mod-x-y-=-x-y . 2)
                              (:rewrite acl2::|(integerp (- x))|)
                              (:rewrite acl2::cancel-mod-+)
                              (:rewrite acl2::default-plus-2)
                              (:rewrite acl2::rationalp-x)
                              (:rewrite acl2::floor-zero . 5)
                              (:rewrite acl2::floor-zero . 4)
                              (:type-prescription
                               acl2::not-integerp-4b-expt)
                              (:rewrite acl2::|(* (- x) y)|)
                              (:type-prescription acl2::mod-zero . 2)
                              (:type-prescription acl2::mod-zero . 1)
                              (:type-prescription acl2::mod-positive . 2)
                              (:type-prescription acl2::mod-negative . 2)
                              (:rewrite acl2::mod-x-y-=-x-y . 1)
                              (:rewrite acl2::mod-x-y-=-x+y . 1)
                              (:type-prescription acl2::mod-zero . 3)
                              (:type-prescription
                               acl2::not-integerp-3b-expt)
                              (:definition integer-listp)
                              (:linear acl2::expt-<=-1-two)
                              (:linear acl2::expt->-1-one)
                              (:rewrite acl2::expt-with-violated-guards)
                              (:linear acl2::expt-x->=-x)
                              (:linear acl2::expt-x->-x)
                              (:rewrite acl2::mod-x-y-=-x . 4)
                              (:rewrite acl2::mod-x-y-=-x . 3)
                              (:rewrite acl2::mod-zero . 3)
                              (:linear acl2::linear-floor-bounds-3)
                              (:type-prescription
                               acl2::not-integerp-2b-expt)
                              (:rewrite acl2::default-times-1)
                              (:linear acl2::linear-floor-bounds-2)
                              (:rewrite acl2::floor-x-y-=--1 . 3)
                              (:rewrite acl2::floor-zero . 2)
                              (:rewrite acl2::floor-x-y-=-1 . 3)
                              (:rewrite acl2::default-mod-ratio)
                              (:rewrite acl2::default-expt-2)
                              (:rewrite acl2::default-expt-1)
                              (:rewrite acl2::|(expt 1/c n)|)
                              (:rewrite acl2::|(expt (- x) n)|)
                              (:type-prescription acl2::mod-positive . 1)
                              (:type-prescription acl2::mod-nonpositive)
                              (:type-prescription acl2::mod-negative . 1)
                              (:type-prescription
                               acl2::floor-nonpositive . 2)
                              (:rewrite acl2::floor-zero . 1)))))))

(defthm 4vec-part-install-of-4vec-part-select
  (implies  ;;(and (natp start)
   (natp size)
   (equal (4vec-part-install start size old-val (4vec-part-select 0 size
                                                                  new-val))
          (4vec-part-install start size old-val new-val)))
  :hints (("Goal"
           :cases ((4vec-p size))
           :in-theory (e/d (4vec-part-install
                            4vec-part-select
                            sv::2vec)
                           (4vec-concat-insert-4vec-part-select)))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (def-rp-rule 4vec-rsh-of-4vec-rsh
    (implies (and (natp s1)
                  (natp s2))
             (equal (4vec-rsh s1 (4vec-rsh s2 val))
                    (4vec-rsh (+ s1 s2) val)))
    :hints (("Goal"
             :in-theory (e/d (4vec-rsh
                              sv::4VEC-SHIFT-CORE)
                             (4vec)))))

  (add-svex-simplify-rule 4vec-rsh-of-4vec-rsh))

(def-rp-rule 4vec-rsh-of-bitxor
  (implies (natp amount)
           (equal (sv::4vec-rsh amount (sv::4vec-bitxor x y))
                  (sv::4vec-bitxor (sv::4vec-rsh amount x)
                                   (sv::4vec-rsh amount y))))
  :hints (("goal"
           :in-theory (e/d* (sv::4vec-bitxor
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             sv::4vec-rsh
                             4vec-shift-core)
                            ((:definition unsigned-byte-p)
                             (:definition 4vec)
                             (:rewrite bitops::logcdr-of-logxor)
                             (:definition acl2::logtail**)
                             (:rewrite bitops::logcdr-of-logtail)
                             (:definition bitops::logxor$)
                             (:rewrite bitops::logcdr-of-logior)
                             (:definition bitops::lognot$)
                             (:definition bitops::logand$)
                             (:type-prescription bitops::logcdr-natp)
                             (:rewrite acl2::logtail-identity)
                             (:definition acl2::unsigned-byte-p**)
                             (:definition bitops::logior$)
                             (:rewrite bitops::logcdr-of-lognot)
                             (:definition acl2::bitmaskp**)
                             (:rewrite bitops::logcdr-of-bit)
                             (:rewrite bitops::logcar-of-logtail)
                             (:rewrite bitops::logbit-to-logbitp)
                             (:rewrite bitops::logand-with-bitmask)
                             (:rewrite bitops::logand-with-negated-bitmask)
                             (:type-prescription acl2::logcdr-type)
                             (:definition acl2::logbitp**)
                             (:rewrite acl2::unsigned-byte-p-plus)
                             acl2::logand-logxor
                             (:definition integer-range-p)
                             (:rewrite acl2::zip-open))))))

(add-svex-simplify-rule 4vec-rsh-of-bitxor)

(def-rp-rule 4vec-rsh-of-bitor
  (implies (natp amount)
           (equal (sv::4vec-rsh amount (sv::4vec-bitor x y))
                  (sv::4vec-bitor (sv::4vec-rsh amount x)
                                  (sv::4vec-rsh amount y))))
  :hints (("goal"
           :in-theory (e/d* (sv::4vec-bitor
                             SV::3VEC-BITOR
                             SV::3VEC-FIX
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             sv::4vec-rsh
                             4vec-shift-core)
                            ((:definition 4vec)
                             (:DEFINITION ACL2::LOGTAIL**)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                             (:DEFINITION BITOPS::LOGIOR$)
                             (:REWRITE ACL2::LOGTAIL-IDENTITY)
                             (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                             (:DEFINITION BITOPS::LOGAND$)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGAND)
                             (:rewrite bitops::logcdr-of-lognot)
                             (:definition acl2::bitmaskp**)
                             (:rewrite bitops::logcdr-of-bit)
                             (:rewrite bitops::logcar-of-logtail)
                             (:rewrite bitops::logbit-to-logbitp)
                             (:rewrite bitops::logand-with-bitmask)
                             (:rewrite bitops::logand-with-negated-bitmask)
                             (:type-prescription acl2::logcdr-type)
                             (:definition acl2::logbitp**)
                             (:rewrite acl2::unsigned-byte-p-plus)
                             acl2::logand-logxor
                             (:definition integer-range-p)
                             (:rewrite acl2::zip-open))))))

(add-svex-simplify-rule 4vec-rsh-of-bitor)

(def-rp-rule 4vec-rsh-of-bitand
  (implies (natp amount)
           (equal (sv::4vec-rsh amount (sv::4vec-bitand x y))
                  (sv::4vec-bitand (sv::4vec-rsh amount x)
                                   (sv::4vec-rsh amount y))))
  :hints (("goal"
           :in-theory (e/d* (sv::4vec-bitand
                             sv::3vec-bitand
                             SV::3VEC-FIX
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             sv::4vec-rsh
                             4vec-shift-core)
                            ((:definition 4vec)
                             (:DEFINITION ACL2::LOGTAIL**)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                             (:DEFINITION BITOPS::LOGIOR$)
                             (:REWRITE ACL2::LOGTAIL-IDENTITY)
                             (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                             (:DEFINITION BITOPS::LOGAND$)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGAND)
                             (:rewrite bitops::logcdr-of-lognot)
                             (:definition acl2::bitmaskp**)
                             (:rewrite bitops::logcdr-of-bit)
                             (:rewrite bitops::logcar-of-logtail)
                             (:rewrite bitops::logbit-to-logbitp)
                             (:rewrite bitops::logand-with-bitmask)
                             (:rewrite bitops::logand-with-negated-bitmask)
                             (:type-prescription acl2::logcdr-type)
                             (:definition acl2::logbitp**)
                             (:rewrite acl2::unsigned-byte-p-plus)
                             acl2::logand-logxor
                             (:definition integer-range-p)
                             (:rewrite acl2::zip-open))))))

(add-svex-simplify-rule 4vec-rsh-of-bitand)

(defthm 4vec-rsh-of-4vec-part-select-1
  (implies (and (natp amount)
                (natp start)
                (natp size)
                (< amount size))
           (equal (sv::4vec-rsh amount (sv::4vec-part-select start size x))
                  (sv::4vec-part-select (+ start amount) (- size amount) x)))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-part-select
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             sv::4vec-rsh
                             4VEC-SHIFT-CORE
                             4VEC-CONCAT)
                            (4vec)))))

(defthm 4vec-rsh-of-4vec-part-select-2
  (implies (and (natp amount)
                (natp start)
                (natp size)
                (<= size amount))
           (equal (sv::4vec-rsh amount (sv::4vec-part-select start size x))
                  0))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-part-select
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             sv::4vec-rsh
                             4vec-shift-core
                             4vec-concat)
                            (4vec)))))

(defthm 4vec-part-install-of-4vec-part-install-sizes=1
  (implies (and (natp start1)
                (natp start2)
                (> start1 start2))
           (equal (4vec-part-install start1 1
                                     (4vec-part-install start2 1 old-val val2)
                                     val1)
                  (4vec-part-install start2 1
                                     (4vec-part-install start1 1 old-val val1)
                                     val2)))
  :hints (("Goal"
           :cases ((equal (1+ start2) start1))
           :in-theory (e/d (4vec-part-install
                            sv::2vec
                            4vec-part-select)
                           (4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                            )))))

(defthm 4vec-concat-0-0
  (implies (natp x)
           (equal (4vec-concat x 0 0)
                  0))
  :hints (("Goal"
           :in-theory (e/d (4vec-concat) ()))))

(def-rp-rule 4vec-rsh-0
  (implies (natp x)
           (equal (4vec-rsh x 0)
                  0))
  :hints (("Goal"
           :in-theory (e/d (4vec-rsh
                            sv::4vec-shift-core) ()))))

(defthm 4vec-part-select-of-4vec-part-select-1
  (implies (and (natp start1)
                (natp start2)
                (natp size1)
                (natp size2)
                (< START1 SIZE2))
           (equal (4vec-part-select start1 size1
                                    (4vec-part-select start2 size2 x))
                  (4vec-part-select (+ start1 start2)
                                    (min size1 (- size2 start1))
                                    x)))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select)
                           (4VEC-CONCAT-INSERT-4VEC-PART-SELECT)))))

(defthm 4vec-part-select-of-4vec-part-select-2
  (implies (and (natp start1)
                (natp start2)
                (natp size1)
                (natp size2)
                (<= SIZE2 START1))
           (equal (4vec-part-select start1 size1
                                    (4vec-part-select start2 size2 x))
                  0))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select)
                           (4VEC-CONCAT-INSERT-4VEC-PART-SELECT)))))

(defthm 4vec-concat-of-4vec-fix
  (equal (4vec-concat x (4vec-fix y) z)
         (4vec-concat x y z))
  :hints (("Goal"
           :in-theory '((:CONGRUENCE SV::4VEC-CONCAT-4VEC-EQUIV-CONGRUENCE-ON-LOW)
                        (:DEFINITION SV::2VEC->VAL$INLINE)
                        (:DEFINITION 4VEC-CONCAT)
                        (:DEFINITION ACL2::EXPT2$INLINE)
                        (:DEFINITION ACL2::IMOD$INLINE)
                        (:DEFINITION LOGAPP)
                        (:DEFINITION ACL2::LOGHEAD$INLINE)
                        (:REWRITE SV::4VEC-FIX-UNDER-4VEC-EQUIV)))))

(defthm 4vec-concat-of-4vec-fix-2
  (equal (4vec-concat x y (4vec-fix z))
         (4vec-concat x y z))
  :hints (("Goal"
           :in-theory '((:CONGRUENCE SV::4VEC-CONCAT-4VEC-EQUIV-CONGRUENCE-ON-HIGH)
                        (:DEFINITION SV::2VEC->VAL$INLINE)
                        (:DEFINITION 4VEC-CONCAT)
                        (:DEFINITION ACL2::EXPT2$INLINE)
                        (:DEFINITION ACL2::IMOD$INLINE)
                        (:DEFINITION LOGAPP)
                        (:DEFINITION ACL2::LOGHEAD$INLINE)
                        (:REWRITE SV::4VEC-FIX-UNDER-4VEC-EQUIV)))))

(defthm bitp-implies-4vecp
  (implies (bitp x)
           (4vec-p x)))

(encapsulate
  nil
  (local
   (use-arithmetic-5 t))

  (local
   (defthm lemma1
     (IMPLIES (AND (NATP SIZE)
                   #|(integerp Y)|#)
              (EQUAL (acl2::LOGNOT (acl2::LOGAPP SIZE -1 Y))
                     (* (acl2::LOGNOT Y) (EXPT 2 SIZE))))
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-recursive-redefs
                                bitops::ihsext-inductions
                                ACL2::LOGAPP**
                                acl2::LOGnot**
                                ACL2::LOGHEAD**
                                lognot
                                loghead
                                acl2::logcons
                                logapp)
                               ())))))

  (local
   (defthm lemma2
     (IMPLIES (AND
               (INTEGERP SIZE)
               (<= 0 SIZE)
               (INTEGERP Y))
              (EQUAL (LOGNOT (* Y (EXPT 2 SIZE)))
                     (LOGAPP SIZE -1 (LOGNOT Y))))
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-recursive-redefs
                                bitops::ihsext-inductions
                                ACL2::LOGAPP**
                                acl2::LOGnot**
                                ACL2::LOGHEAD**
                                lognot
                                loghead
                                acl2::logcons
                                logapp)
                               ())))))


  (defthm logcar-when-not-integer
    (implies (not (integerp x))
             (equal (acl2::logcar x) 0))
    :rule-classes :forward-chaining
    :hints (("Goal"
             :in-theory (e/d (acl2::logcar) ()))))

  (defthm logcdr-when-not-integer
    (implies (not (integerp x))
             (equal (acl2::logcdr x) 0))
    :rule-classes :forward-chaining
    :hints (("Goal"
             :in-theory (e/d (acl2::logcdr) ()))))
  
  (defthm lognot-of-logapp
    (implies (and ;;(natp size)
                  ;;(integerp x)
                  ;;(integerp y)
                  )
             (equal (lognot (logapp size x y))
                    (logapp size
                            (lognot x)
                            (lognot y))))
    :otf-flg t
    :hints (("Goal"
             :cases ((natp size))
             :in-theory (e/d* (4vec-bitnot
                               bitops::ihsext-recursive-redefs
                               bitops::ihsext-inductions
                               SV::3VEC-BITNOT
                               SV::4VEC->LOWER
                               SV::4VEC->UPPER
                               SV::3VEC-FIX
                               SV::3VEC-BITNOT
                               4vec-concat)
                              (4vec))))))

(encapsulate
  nil

  (local
   (use-ihs-logops-lemmas t))

  (local
   (use-arithmetic-5 nil))

  (local
   (defthm lemma1
     (IMPLIES (AND (NATP SIZE)
                   ;;(Integerp x))
                   ;;(INTEGERP Y)
                   ;;(INTEGERP Y2)
                   )
              (EQUAL (LOGAND (LOGAPP SIZE -1 Y2)
                             (LOGAPP SIZE X Y))
                     (LOGAPP SIZE X (LOGAND Y Y2))))
     :hints (("Goal"
              :cases ((integerp x)
                      (integerp y))
              :in-theory (e/d* (bitops::ihsext-recursive-redefs
                                ifix
                                bitops::ihsext-inductions)
                               (ACL2::LOGAPP-0
                                (:REWRITE ACL2::|(equal (if a b c) x)|)
                                (:REWRITE ACL2::|(floor x 2)| . 1)
                                (:REWRITE ACL2::|(* 1/2 (floor x y))| . 1)
                                (:REWRITE ACL2::|(* x (if a b c))|)
                                (:REWRITE ACL2::|(+ x (if a b c))|)
                                (:REWRITE ACL2::|(equal x (if a b c))|)
                                (:REWRITE ACL2::|(* 2 (floor x y))| . 1)
                                (:REWRITE ACL2::|(floor (if a b c) x)|)
                                (:REWRITE ACL2::|(integerp (* 1/2 (logand x y)))|
                                          . 1)
                                (:REWRITE ACL2::|(equal (if a b c) x)|)))))))

  (local
   (use-arithmetic-5 nil))

  (local
   (defthmd logapp-def
     (equal (logapp acl2::size acl2::i acl2::j)
            (let ((acl2::j (ifix acl2::j)))
              (+ (loghead acl2::size acl2::i)
                 (* acl2::j (acl2::expt2 acl2::size)))))
     :hints (("goal"
              :in-theory (e/d (logapp) ())))))

  (local
   (defthm lemma2
     (IMPLIES (AND (NATP SIZE)
                   (case-split (INTEGERP Y))
                   )
              (EQUAL (LOGAND (* Y (EXPT 2 SIZE))
                             (LOGAPP SIZE X2 Y2))
                     (* (EXPT 2 SIZE) (LOGAND Y Y2))))
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-recursive-redefs
                                bitops::ihsext-inductions
                                ifix
                                term-times-expt2-is-ash-2
                                term-times-expt2-is-ash
                                logapp-def)
                               ())))))

  (defthm logand-of-logapp
    (implies (and (natp size)
                  ;;(integerp x2)
                  ;;(integerp y)
                  ;;(integerp y2)
                  )
             (equal (logand (logapp size x y)
                            (logapp size x2 y2))
                    (logapp size
                            (logand x x2)
                            (logand y y2))))
    :otf-flg t
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-recursive-redefs
                               bitops::ihsext-inductions)
                              ((:DEFINITION BITOPS::LOGAND$)
                               (:DEFINITION NOT)
                               ACL2::LOGAPP-0
                               ACL2::LOGAND-WITH-MASK
                               (:REWRITE BITOPS::EQUAL-LOGCONS-WEAK)
                               (:REWRITE BITOPS::LOGCONS-EQUAL-CONSTANT)
                               (:REWRITE ACL2::EQUAL-LOGCONS)
                               (:REWRITE ACL2::LOGCAR-LOGAPP)
                               (:REWRITE ACL2::ZIP-OPEN)))))))

(defthm 4vec-bitnot-of-4vec-concat
  (implies (and (natp size)
                (integerp x)
                (integerp y))
           (equal (4vec-bitnot (4vec-concat size x y))
                  (4vec-concat size
                               (4vec-bitnot x)
                               (4vec-bitnot y))))
  :hints (("Goal"
           :cases ((sv::3vec-p x)
                   (sv::3vec-p y))
           :in-theory (e/d* (4vec-bitnot
                             SV::3VEC-BITNOT
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             SV::4VEC->LOWER
                             SV::4VEC->UPPER
                             SV::3VEC-FIX
                             SV::3VEC-BITNOT
                             4vec-concat)
                            (4vec

                             ifix

                             (:REWRITE SV::4VEC-P-WHEN-MAYBE-4VEC-P))))))

(def-rp-rule natp-4vec-?*
  (implies (and (natp a)
                (natp test)
                (natp b))
           (natp (4vec-?* test a b)))
  :hints (("Goal"
           :in-theory (e/d* (4vec-?*
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             SV::3VEC-?*
                             SV::3VEC-FIX
                             SV::4VEC->LOWER
                             4vec
                             4vec-fix
                             SV::4VEC->UPPER) ()))))

(def-rp-rule 4vec-?*-of-4vec-symwildeq-1
  (and (implies (bitp cond)
                (equal (4vec-?* (sv::4vec-symwildeq 1 cond) x y)
                       (4vec-?* cond x y)))
       (implies (bitp cond)
                (equal (4vec-?* (sv::4vec-symwildeq cond 1) x y)
                       (4vec-?* cond x y))))

  :hints (("goal"
           :in-theory (e/d* (bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4vec-?*
                             4vec-fix
                             sv::4vec->upper
; binary-xor
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             sv::4vec-bitxor
                             sv::3vec-?*)
                            ()))))

(add-svex-simplify-rule 4vec-?*-of-4vec-symwildeq-1)

(defthm 4vec-part-select-of-4vec-?
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size (4vec-? test x y))
                  (4vec-? test
                          (4vec-part-select start size x )
                          (4vec-part-select start size y))))
  :hints (("goal"
           :in-theory (e/d* (4vec-?
                             4vec-shift-core
                             acl2::negp
                             4vec-part-select
                             4vec-concat
                             4vec-fix
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             4vec-rsh
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             zip
                             sv::4vec-bitxor
                             sv::3vec-?)
                            ((:rewrite acl2::zip-open)
                             sv::4vec)))))

(def-rp-rule 4vec-rsh-of-4vec-?
  (implies (natp size)
           (equal (4vec-rsh size (4vec-? test then else))
                  (4vec-? test
                          (4vec-rsh size then)
                          (4vec-rsh size else))))
  :hints (("goal"
           :in-theory (e/d* (4vec-?
                             4vec-shift-core
                             acl2::negp
                             4vec-part-select
                             4vec-concat
                             4vec-fix
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             4vec-rsh
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             zip
                             sv::4vec-bitxor
                             sv::3vec-?)
                            ((:rewrite acl2::zip-open)
                             sv::4vec)))))

(add-svex-simplify-rule 4vec-rsh-of-4vec-?)

(def-rp-rule 4vec-rsh-of-4vec-?*
  (implies (natp size)
           (equal (4vec-rsh size (4vec-?* test then else))
                  (4vec-?* test
                           (4vec-rsh size then)
                           (4vec-rsh size else))))
  :hints (("goal"
           :in-theory (e/d* (4vec-?*
                             4vec-shift-core
                             acl2::negp
                             4vec-part-select
                             4vec-concat
                             4vec-fix
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             4vec-rsh
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             zip
                             sv::4vec-bitxor
                             sv::3vec-?*)
                            ((:rewrite acl2::zip-open)
                             sv::4vec)))))

(add-svex-simplify-rule 4vec-rsh-of-4vec-?*)

(def-rp-rule 4vec-rsh-of-4vec-?!
  (implies (natp size)
           (equal (4vec-rsh size (sv::4vec-?! test then else))
                  (sv::4vec-?! test
                               (4vec-rsh size then)
                               (4vec-rsh size else))))
  :hints (("goal"
           :in-theory (e/d* (sv::4vec-?!
                             4vec-shift-core
                             acl2::negp
                             4vec-part-select
                             4vec-concat
                             4vec-fix
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             4vec-rsh
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             zip
                             sv::4vec-bitxor
                             ;;sv::3vec-?!
                             )
                            ((:rewrite acl2::zip-open)
                             sv::4vec)))))

(add-svex-simplify-rule 4vec-rsh-of-4vec-?!)

(encapsulate
  nil

  (local
   (defund lognot$ (x)
     (lognot x)))

  (local
   (defthm loghead-of-lognot
     (equal (loghead size (lognot x))
            (loghead size (lognot$ (loghead size x))))
     :hints (("Goal"
              :in-theory (e/d (lognot$) ())))))

  (defthmd 4vec-part-select-of-4vec-bitnot
    (implies (and (natp start)
                  (natp size))
             (equal (4vec-part-select start size
                                      (4vec-bitnot x))
                    (4vec-part-select 0 size
                                      (4vec-bitnot
                                       (4vec-part-select start size x)))))
    :hints (("Goal"
             :in-theory (e/d* (4vec-part-select
                               4vec-bitnot
                               sv::3vec-bitnot
                               4vec-concat
                               sv::3vec-fix
                               4vec-rsh
                               logior
                               4vec-shift-core)
                              (sv::4vec)))))

  (defthmd 4vec-part-select-of-4vec-bitnot-reverse
    (implies (and (natp start)
                  (natp size))
             (equal (4vec-part-select 0 size
                                      (4vec-bitnot
                                       (4vec-part-select start size x)))
                    (4vec-part-select start size
                                      (4vec-bitnot x))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitnot))
             :in-theory (e/d* ()
                              ())))))

(defthm 4vec-part-select-of-4vec-fix
  (and (equal (4vec-part-select (4vec-fix start) size val)
              (4vec-part-select start size val))
       (equal (4vec-part-select start (4vec-fix size) val)
              (4vec-part-select start size val))
       (equal (4vec-part-select start size (4vec-fix val))
              (4vec-part-select start size val)))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select) ()))))

(defthm 4vec-part-select-size=0
  (implies (natp start)
           (equal (4vec-part-select start 0 x)
                  0))
  :hints (("Goal"
           :expand (4vec-part-select start 0 x)
           :in-theory
           (e/d (4vec-part-select
                 ) ()))))

(encapsulate
  nil
  (local
   (defthmd lemma1
     (equal (loghead size
                     (lognot (logand a b)))
            (loghead size
                     (lognot (loghead size (logand a b)))))
     :hints (("goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ((:rewrite bitops::logcdr-of-bit)
                                (:rewrite acl2::logand-=-minus-1)
                                (:rewrite default-+-2)
                                (:linear acl2::loghead-leq)
                                (:rewrite bitops::lognot-<-0)
                                (:rewrite acl2::logcons-<-0)
                                (:rewrite bitops::logcar-of-bit)
                                (:type-prescription bitp)
                                (:rewrite bitops::lognot-<-const)
                                (:type-prescription bitops::lognot-natp)
                                (:type-prescription bitops::logcons-negp)
                                (:rewrite default-<-2)
                                (:type-prescription bitops::logcons-posp-1)
                                (:rewrite default-<-1)
                                (:type-prescription
                                 bitops::logand-natp-type-1)
                                (:type-prescription acl2::binary-logand)
                                (:type-prescription acl2::bitmaskp$inline)
                                (:rewrite acl2::loghead-identity)
                                (:definition acl2::unsigned-byte-p**)
                                (:definition acl2::bitmaskp**)
                                (:rewrite bitops::logand-with-negated-bitmask)
                                (:rewrite acl2::unsigned-byte-p-plus)
                                (:type-prescription natp)
                                (:definition unsigned-byte-p)))))))

  (local
   (defthmd lemma2
     (equal (loghead size
                     (lognot (logior a b)))
            (loghead size
                     (lognot (loghead size (logior a b)))))
     :hints (("goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ((:rewrite acl2::loghead-identity)
                                (:definition acl2::unsigned-byte-p**)

                                (:rewrite acl2::unsigned-byte-p-plus)
                                (:type-prescription natp)
                                (:definition unsigned-byte-p)
                                (:definition integer-range-p)
                                (:rewrite bitops::logcdr-of-bit)
                                (:rewrite bitops::logcar-of-bit)
                                (:type-prescription bitops::lognot-natp)
                                (:rewrite bitops::lognot-equal-const)
                                (:rewrite acl2::logior-=-0)
                                (:definition bitops::lognot$)
                                (:rewrite bitops::logior-equal-0)
                                (:rewrite default-<-2)
                                (:rewrite default-<-1)
                                (:rewrite acl2::logcons-<-0)
                                (:type-prescription bitops::logcons-posp-1)
                                (:rewrite acl2::zp-when-gt-0)
                                (:rewrite default-+-2)))))))

  ;; helper lemma for |(4vec-bitnot$ size (bits 0 size term))| in bits-sbits.lisp
  (defthmd |(4vec-bitnot$ size (4vec-part-select 0 size term))|
    (equal (4vec-bitnot$ size (4vec-part-select 0 size term))
           (4vec-bitnot$ size term))
    :hints (("goal"
             :use
             ((:instance
               lemma1
               (size (car size))
               (a (car term))
               (b (cdr term)))
              (:instance
               lemma1
               (size size)
               (a (car term))
               (b (cdr term)))
              (:instance
               lemma2
               (size (car size))
               (a (car term))
               (b (cdr term)))
              (:instance
               lemma2
               (size size)
               (a (car term))
               (b (cdr term))))
             :in-theory (e/d* (4vec-bitnot$
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               4vec-concat
                               4vec-bitnot
                               sv::3vec-bitnot
                               sv::4vec->lower
                               sv::3vec-fix
                               4vec-part-select)
                              (4vec
                               (:rewrite acl2::loghead-identity)
                               (:definition acl2::bitmaskp**)
                               (:definition acl2::unsigned-byte-p**)
                               (:rewrite bitops::logand-with-negated-bitmask)
                               (:type-prescription bitops::logcdr-natp)
                               (:definition bitops::lognot$)
                               (:rewrite acl2::unsigned-byte-p-plus)
                               (:definition unsigned-byte-p)
                               (:definition integer-range-p)
                               (:rewrite bitops::lognot-<-const)
                               (:rewrite bitops::logand-with-bitmask)
                               (:rewrite bitops::lognot-equal-const)
                               (:type-prescription acl2::logcdr-type)
                               (:type-prescription natp)
                               sv::4vec-equal))))))

#|(defthm lemma1
  (implies (EQUAL (LOGHEAD size -1) 0)
           (or (not (integerp size))
               (<= size 0)))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs) ())))
  :rule-classes :forward-chaining)||#

#|(defthm lemma2
  (implies (and (EQUAL (LOGHEAD size -1) 0))
           (equal (equal (loghead size x) 0)
                  t))
  :hints (("Goal"
           :cases ((integerp size))
           :use ((:instance lemma1))
           :in-theory (e/d* (zp loghead nfix ifix) (lemma1)))))||#

(encapsulate
  nil

  (defthm logand-of-loghead-size-minus-1
    (equal (logand (loghead size -1)
                   (loghead size x))
           (loghead size x))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ((:DEFINITION ACL2::BITMASKP**)
                               (:REWRITE ACL2::LOGHEAD-IDENTITY)
                               (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK)
                               (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                               (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                               (:REWRITE BITOPS::LOGAND-WITH-BITMASK)
                               (:DEFINITION UNSIGNED-BYTE-P)
                               (:REWRITE BITOPS::LOGCDR-OF-BIT)
                               (:DEFINITION BITOPS::LOGNOT$)
                               (:DEFINITION INTEGER-RANGE-P)
                               (:REWRITE BITOPS::LOGNOT-EQUAL-CONST))))))

  (defthm 4vec-bitand$-of-4vec-part-select-0-same-size
    (and (equal (4vec-bitand$ size (4vec-part-select 0 size val1)
                              val2)
                (4vec-bitand$ size val1 val2))
         (equal (4vec-bitand$ size val1 (4vec-part-select 0 size val2))
                (4vec-bitand$ size val1 val2)))
    :hints (("goal"
             ;; :cases ((integerp val1)
             ;;         (integerp val2))
             :in-theory (e/d* (4vec-bitand$
                               4vec-bitand
                               3vec-bitand
                               sv::3vec-fix
                               sv::4vec->lower
                               sv::4vec->upper
                               4vec-part-select
                               4vec-concat
                               acl2::negp)
                              (4vec
                               (:linear bitops::logior-<-0-linear-2)
                               (:linear bitops::logior-<-0-linear-1)
                               (:rewrite acl2::loghead-identity)
                               (:definition unsigned-byte-p)
                               (:linear acl2::loghead-upper-bound)
                               (:linear bitops::logior->=-0-linear)
                               (:definition integer-range-p)
                               (:rewrite default-<-1))))))

  (defthm logior-of-loghead-size-minus-1
    (equal (logior (loghead size -1)
                   (loghead size x))
           (loghead size -1))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ((:DEFINITION ACL2::BITMASKP**)
                               (:REWRITE ACL2::LOGHEAD-IDENTITY)
                               (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK)
                               (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                               (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                               (:REWRITE BITOPS::LOGAND-WITH-BITMASK)
                               (:DEFINITION UNSIGNED-BYTE-P)
                               (:REWRITE BITOPS::LOGCDR-OF-BIT)
                               (:DEFINITION BITOPS::LOGNOT$)
                               (:DEFINITION INTEGER-RANGE-P)
                               (:REWRITE BITOPS::LOGNOT-EQUAL-CONST))))))

  (defthm logior-of-loghead-size-minus-1-v2
    (equal (logior (loghead size -1)
                   (loghead size x)
                   (loghead size y))
           (loghead size -1))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ((:DEFINITION ACL2::BITMASKP**)
                               (:REWRITE ACL2::LOGHEAD-IDENTITY)
                               (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK)
                               (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                               (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                               (:REWRITE BITOPS::LOGAND-WITH-BITMASK)
                               (:DEFINITION UNSIGNED-BYTE-P)
                               (:REWRITE BITOPS::LOGCDR-OF-BIT)
                               (:DEFINITION BITOPS::LOGNOT$)
                               (:DEFINITION INTEGER-RANGE-P)
                               (:REWRITE BITOPS::LOGNOT-EQUAL-CONST))))))

  (defthm 4vec-bitor$-of-4vec-part-select-0-same-size
    (and (equal (4vec-bitor$ size (4vec-part-select 0 size val1)
                             val2)
                (4vec-bitor$ size val1 val2))
         (equal (4vec-bitor$ size val1 (4vec-part-select 0 size val2))
                (4vec-bitor$ size val1 val2)))
    :hints (("goal"
             ;; :cases ((integerp val1)
             ;;         (integerp val2))
             :in-theory (e/d* (4vec-bitor$
                               4vec-bitor
                               SV::3VEC-BITOR
                               sv::3vec-fix
                               sv::4vec->lower
                               sv::4vec->upper
                               4vec-part-select
                               4vec-concat
                               acl2::negp)
                              (4vec
                               (:linear bitops::logior-<-0-linear-2)
                               (:linear bitops::logior-<-0-linear-1)
                               (:rewrite acl2::loghead-identity)
                               (:definition unsigned-byte-p)
                               (:linear acl2::loghead-upper-bound)
                               (:linear bitops::logior->=-0-linear)
                               (:definition integer-range-p)
                               (:rewrite default-<-1))))))

  (defthmd logxor-redef
    (equal (logxor x y)
           (logior (logand x (lognot y))
                   (logand (lognot x) y)))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ((:REWRITE ACL2::EQUAL-LOGCONS)
                               (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP)
                               (:DEFINITION ACL2::BITMASKP**)
                               (:TYPE-PRESCRIPTION
                                BITOPS::LOGAND-NATP-TYPE-2)
                               (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NEGP)
                               (:TYPE-PRESCRIPTION BITOPS::LOGIOR-NATP-TYPE)
                               (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP)
                               (:REWRITE BITOPS::LOGCDR-OF-BIT)
                               (:TYPE-PRESCRIPTION BITP)
                               (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-2)
                               (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-1)
                               (:TYPE-PRESCRIPTION
                                BITOPS::LOGXOR-NATP-TYPE-2))))))

  (defthmd lognot-of-logand
    (equal (lognot (logand x y))
           (logior (lognot x) (lognot y)))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ()))))

  (defthmd lognot-of-logior
    (equal (lognot (logior x y))
           (logand (lognot x) (lognot y)))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ()))))

  #|(local
  (use-ihs-extensions nil))||#

  #|(defthmd 4vec-bitxor-redef
  (equal (sv::4vec-bitxor x y)
  (sv::4vec-bitor (sv::4vec-bitand x (sv::4vec-bitnot y))
  (sv::4vec-bitand (sv::4vec-bitnot x) y)))
  :hints (("Goal"
  :do-not '(preprocess)
  :do-not-induct t
  :in-theory (e/d* (sv::4vec-bitxor
  ;; bitops::ihsext-inductions
  ;; bitops::ihsext-recursive-redefs
  sv::4vec-bitand
  3VEC-BITAND
  SV::3VEC-FIX
  ;; SV::4VEC->LOWER
  ;; SV::4VEC->upper
  SV::3VEC-BITNOT
  4VEC-BITOR
  SV::3VEC-BITOR
  sv::4vec-bitnot
  logxor-redef
  lognot-of-logand
  lognot-of-logior
  ACL2::|(logior (logior x y) z)|
  ACL2::|(logand (logand x y) z)|
  ACL2::|(logand y x)|
  ACL2::COMMUTATIVITY-OF-LOGIOR
  ACL2::COMMUTATIVITY-OF-LOGand
  BITOPS::COMMUTATIVITY-2-OF-LOGIOR
  BITOPS::COMMUTATIVITY-2-OF-LOGand
  BITOPS::LOGAND-OF-LOGAND-SELF-1
  BITOPS::LOGAND-OF-LOGAND-SELF-2
  BITOPS::LOGAND-OF-LOGior-SELF
  BITOPS::LOGior-OF-LOGior-SELF-2
  BITOPS::LOGior-OF-LOGior-SELF
  BITOPS::LOGAND-OF-SELF
  BITOPS::LOGior-OF-SELF
  )
  (4vec
  logand
  logior
  lognot
  (:REWRITE ACL2::EQUAL-LOGCONS)
  (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP)
  (:DEFINITION ACL2::BITMASKP**)
  (:TYPE-PRESCRIPTION
  BITOPS::LOGAND-NATP-TYPE-2)
  (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NEGP)
  (:TYPE-PRESCRIPTION BITOPS::LOGIOR-NATP-TYPE)
  (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP)
  (:REWRITE BITOPS::LOGCDR-OF-BIT)
  (:TYPE-PRESCRIPTION BITP)
  (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-2)
  (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-1)
  (:TYPE-PRESCRIPTION
  BITOPS::LOGXOR-NATP-TYPE-2))))))||#

  (local
   (use-ihs-extensions nil))

  (defthm 4vec-bitxor$-of-4vec-part-select-0-same-size
    (and (equal (4vec-bitxor$ size (4vec-part-select 0 size val1)
                              val2)
                (4vec-bitxor$ size val1 val2))
         (equal (4vec-bitxor$ size val1 (4vec-part-select 0 size val2))
                (4vec-bitxor$ size val1 val2)))
    :hints (("goal"
             ;; :cases ((integerp val1)
             ;;         (integerp val2))
             :do-not-induct t
             :in-theory (e/d* (4vec-bitxor$
                               lognot-of-logand
                               lognot-of-logior
                               sv::4vec-bitxor
                               SV::3VEC-BITxOR
                               sv::3vec-fix
                               ;; sv::4vec->lower
                               ;; sv::4vec->upper
                               4vec-part-select
                               4vec-concat
                               acl2::negp
                               logxor-redef

                               ACL2::|(logior (logior x y) z)|
                               ACL2::|(logand (logand x y) z)|
                               ACL2::|(logand y x)|
                               ACL2::COMMUTATIVITY-OF-LOGIOR
                               ACL2::COMMUTATIVITY-OF-LOGand
                               BITOPS::COMMUTATIVITY-2-OF-LOGIOR
                               BITOPS::COMMUTATIVITY-2-OF-LOGand
                               BITOPS::LOGAND-OF-LOGAND-SELF-1
                               BITOPS::LOGAND-OF-LOGAND-SELF-2
                               BITOPS::LOGAND-OF-LOGior-SELF
                               BITOPS::LOGior-OF-LOGior-SELF-2
                               BITOPS::LOGior-OF-LOGior-SELF
                               BITOPS::LOGAND-OF-SELF
                               BITOPS::LOGior-OF-SELF

                               BITOPS::LOGHEAD-CANCEL-IN-LOGNOT
                               BITOPS::LOGHEAD-OF-LOGIOR
                               BITOPS::LOGHEAD-OF-LOGand
                               )
                              (4vec
                               lognot
                               logand
                               logior
                               logxor
                               loghead
                               logapp
                               (:linear bitops::logior-<-0-linear-2)
                               (:linear bitops::logior-<-0-linear-1)
                               (:rewrite acl2::loghead-identity)
                               (:definition unsigned-byte-p)
                               (:linear acl2::loghead-upper-bound)
                               (:linear bitops::logior->=-0-linear)
                               (:definition integer-range-p)
                               (:rewrite default-<-1)))))))

(local
 (define logapp$ ((size natp)
                  (a integerp)
                  (b integerp))
   (logapp size a b)))

(local
 (defthm loghead-of-logapp$
   (and
    (implies (> (nfix acl2::n) (nfix acl2::size))
             (equal (loghead acl2::n
                             (logapp$ acl2::size acl2::i acl2::j))
                    (logapp$ acl2::size acl2::i
                             (loghead (- (nfix acl2::n) (nfix acl2::size))
                                      acl2::j))))

    (implies (<= (nfix acl2::n) (nfix acl2::size))
             (equal (loghead acl2::n
                             (logapp$ acl2::size acl2::i acl2::j))
                    (loghead acl2::n acl2::i))))
   :hints (("Goal"

            :in-theory (e/d (logapp$) ())))))

(local
 (defthm logtail-of-logapp$
   (and
    (IMPLIES (< (NFIX ACL2::N) (NFIX ACL2::SIZE))
             (EQUAL (LOGTAIL ACL2::N
                             (LOGAPP$ ACL2::SIZE ACL2::I ACL2::J))
                    (LOGAPP (- (NFIX ACL2::SIZE) (NFIX ACL2::N))
                            (LOGTAIL ACL2::N ACL2::I)
                            ACL2::J)))
    (IMPLIES (>= (NFIX ACL2::N) (NFIX ACL2::SIZE))
             (EQUAL (LOGTAIL ACL2::N
                             (LOGAPP$ ACL2::SIZE ACL2::I ACL2::J))
                    (LOGTAIL (- (NFIX ACL2::N) (NFIX ACL2::SIZE))
                             ACL2::J))))
   :hints (("Goal"
            :use ((:instance BITOPS::LOGtail-OF-LOGAPP-2)
                  (:instance BITOPS::LOGtail-OF-LOGAPP-1))
            :in-theory (e/d (logapp$) (BITOPS::LOGtail-OF-LOGAPP-2
                                       BITOPS::LOGtail-OF-LOGAPP-1))))))
(local
 (defthm lognot-of-logapp$
   (implies (and (natp size)
                 (integerp x)
                 (integerp y))
            (equal (lognot (logapp$ size x y))
                   (logapp size
                           (lognot x)
                           (lognot y))))
   :otf-flg t
   :hints (("Goal"
            :use ((:instance lognot-of-logapp))
            :in-theory (e/d* (logapp$)
                             (lognot-of-logapp))))))

(local
 (defthmd logapp-to-logapp$
   (equal (logapp size a b)
          (logapp$ size (loghead size a) b))
   :hints (("Goal"
            :in-theory (e/d (logapp$) ())))))

(local
 (defun logior-of-logapp$-ind (x a size)
   (if (zp size)
       0
     (acl2::logcons (acl2::b-ior (acl2::logcar x) (acl2::logcar a))
                    (logior-of-logapp$-ind (acl2::logcdr x)
                                           (acl2::logcdr a)
                                           (1- size))))))

(local
 (defthmd logior-of-logapp$
   (implies (and (natp size))
            (equal (LOGiOR x (logapp$ size a b))
                   (logapp size (logior (loghead size x)
                                        a)
                           (logior (ash x (- size))
                                   b))))
   :otf-flg t
   :hints (("Goal"
            :induct (logior-of-logapp$-ind x a size)
            :do-not-induct t
            :in-theory (e/d* (bitops::ihsext-inductions
                              logapp$
                              bitops::ihsext-recursive-redefs
                              term-times-expt2-is-ash)
                             (natp
                              (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP)
                              (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                              (:DEFINITION UNSIGNED-BYTE-P)
                              (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                              (:REWRITE ACL2::LOGHEAD-IDENTITY)
                              (:DEFINITION INTEGER-RANGE-P)
                              (:REWRITE ACL2::LOGTAIL-IDENTITY)
                              (:REWRITE BITOPS::LOGCDR-OF-BIT)
                              (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                              (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP)
                              (:REWRITE ACL2::LOGTAIL-EQUAL-0)
                              (:DEFINITION ACL2::BITMASKP**)
                              (:DEFINITION ACL2::LOGBITP**)
                              (:REWRITE BITOPS::LOGCAR-OF-LOGTAIL)
                              (:REWRITE BITOPS::LOGBIT-TO-LOGBITP)
                              (:REWRITE BITOPS::LOGCAR-OF-BIT)
                              (:REWRITE
                               BITOPS::EXPT-2-LOWER-BOUND-BY-LOGBITP)
                              zp
                              acl2::LOGAPP-0
                              ACL2::LOGCAR-LOGAPP))))))

(local
 (defthm logand-of-logapp$-lemma
   (EQUAL (LOGAND a (LOGHEAD size -1))
          (LOGHEAD size a))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs
                              ) ())))))

(local
 (defthmd logand-of-logapp$
   (implies (and (natp size)
;(integerp x)
;(integerp a)
;(integerp b)
                 )
            (equal (LOGand x (LOGAPP$ SIZE a b))
                   (logapp size (logand (loghead size x)
                                        a)
                           (logand (ash x (- size))
                                   b))))
   :otf-flg t
   :hints (("Goal"
            :induct (logior-of-logapp$-ind x a size)
            :do-not-induct t
            :in-theory (e/d* (bitops::ihsext-inductions
                              logapp$
                              bitops::ihsext-recursive-redefs
                              term-times-expt2-is-ash)
                             (natp
                              zp
                              ACL2::LOGAND-WITH-MASK
                              acl2::LOGAPP-0
                              ACL2::LOGCAR-LOGAPP
                              (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP)
                              (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK)
                              (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                              (:DEFINITION UNSIGNED-BYTE-P)
                              (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                              (:DEFINITION INTEGER-RANGE-P)
                              (:REWRITE ACL2::LOGTAIL-IDENTITY)
                              (:DEFINITION BITOPS::LOGNOT$)
                              (:REWRITE BITOPS::LOGCDR-OF-BIT)
                              (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                              (:REWRITE BITOPS::LOGCAR-OF-BIT)
                              (:REWRITE BITOPS::LOGCDR-OF-LOGNOT)
                              (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP)))))))

(local
 (defthmd logxor-of-logapp$
   (implies (natp size)
            (equal (LOGXOR x (LOGAPP$ SIZE a b))
                   (logapp size (logxor (loghead size x)
                                        a)
                           (logxor (ash x (- size))
                                   b))))
   :otf-flg t
   :hints (("Goal"
            :induct (logior-of-logapp$-ind x a size)
            :do-not-induct t
            :in-theory (e/d* (bitops::ihsext-inductions
                              logapp$
                              bitops::ihsext-recursive-redefs
                              term-times-expt2-is-ash)
                             (natp
                              (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP)
                              (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                              (:REWRITE ACL2::LOGTAIL-IDENTITY)
                              (:DEFINITION UNSIGNED-BYTE-P)
                              (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                              (:DEFINITION INTEGER-RANGE-P)
                              (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                              (:REWRITE BITOPS::LOGCDR-OF-BIT)
                              (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP)
                              (:DEFINITION ACL2::BITMASKP**)
                              (:DEFINITION ACL2::LOGBITP**)
                              (:REWRITE BITOPS::LOGCAR-OF-LOGTAIL)
                              (:REWRITE BITOPS::LOGBIT-TO-LOGBITP)
                              (:REWRITE ACL2::LOGTAIL-EQUAL-0)
                              (:REWRITE BITOPS::LOGCAR-OF-BIT)
                              zp
                              ACL2::LOGAND-WITH-MASK
                              acl2::LOGAPP-0
                              ACL2::LOGCAR-LOGAPP))))))

(defthmd 4vec-bitxor-of-4vec-concat
  (implies (and (natp size))
           (and (equal (sv::4vec-bitxor x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitxor (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitxor (4vec-rsh size x) b)))
                (equal (sv::4vec-bitxor x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitxor (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitxor (4vec-rsh size x) b)))))
  :hints (("Goal"
           :in-theory (e/d* (4vec-concat
                             4vec-part-select
                             4VEC-SHIFT-CORE
                             logapp-to-logapp$
                             logxor-of-logapp$
                             logand-of-logapp$
                             logior-of-logapp$
                             4vec-rsh
                             sv::4vec-bitxor)
                            (4vec)))))

(defthmd 4vec-bitand-of-4vec-concat
  (implies (and (natp size))
           (and (equal (sv::4vec-bitand x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitand (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitand (4vec-rsh size x) b)))
                (equal (sv::4vec-bitand x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitand (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitand (4vec-rsh size x) b)))))
  :hints (("Goal"
           :in-theory (e/d* (4vec-concat
                             3VEC-BITAND
                             sv::4vec-bitand
                             4vec-part-select
                             4VEC-SHIFT-CORE
                             logapp-to-logapp$
                             logxor-of-logapp$
                             logand-of-logapp$
                             logior-of-logapp$
                             4vec-rsh
                             SV::3VEC-FIX
                             sv::4vec-bitxor)
                            (4vec)))))

(defthmd 4vec-bitor-of-4vec-concat
  (implies (and (natp size))
           (and (equal (sv::4vec-bitor x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitor (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitor (4vec-rsh size x) b)))
                (equal (sv::4vec-bitor x (4vec-concat size a b))
                       (4vec-concat size
                                    (sv::4vec-bitor (4vec-part-select 0 size X) a)
                                    (sv::4vec-bitor (4vec-rsh size x) b)))))
  :hints (("Goal"
           :in-theory (e/d* (4vec-concat
                             SV::3VEC-BITOR
                             SV::3VEC-FIX
                             sv::4vec-bitor
                             4vec-part-select
                             4VEC-SHIFT-CORE
                             logapp-to-logapp$
                             logxor-of-logapp$
                             logand-of-logapp$
                             logior-of-logapp$
                             4vec-rsh
                             sv::4vec-bitxor)
                            (4vec)))))

(defthmd 4vec-part-select-remove-start--and-insert-4vec-rsh
  (implies (and (natp start)
                (natp size)
                (syntaxp (not (or (equal start ''0)
                                  (equal start '0)))))
           (equal (4vec-part-select start size val)
                  (4vec-part-select 0 size (4vec-rsh start val))))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select
                            4vec-rsh
                            sv::4vec->upper
                            SV::4VEC->LOWER
                            4vec-shift-core
                            4vec-concat
                            ) ()))))

(encapsulate
  nil

  (local
   (defthm lemma1
     (implies (and (equal (logior x y) (logand x y))
                   (natp start))
              (equal (logand (logtail start x)
                             (logtail start y))
                     (logior (logtail start x)
                             (logtail start y))))
     :hints (("goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ((:rewrite bitops::logand-with-negated-bitmask)
                                (:type-prescription bitops::logcdr-natp)
                                (:rewrite acl2::logtail-identity)
                                (:definition bitops::lognot$)
                                (:definition acl2::unsigned-byte-p**)
                                (:rewrite bitops::logcdr-of-lognot)
                                (:rewrite bitops::logbitp-when-bitmaskp)
                                (:definition acl2::logbitp**)
                                (:rewrite
                                 bitops::expt-2-lower-bound-by-logbitp)
                                (:rewrite bitops::logcdr-of-bit)
                                (:definition acl2::bit->bool$inline)
                                (:rewrite bitops::logcar-of-bit)
                                (:type-prescription bitp)))))))

  (defthmd 4vec-bitnot-of-4vec-rsh
    (implies (natp size)
             (equal (4vec-bitnot (4vec-rsh size val))
                    (4vec-rsh size (4vec-bitnot val))))
    :hints (("Goal"
             :in-theory (e/d (4vec-rsh
                              4vec-bitnot
                              4vec-shift-core
                              sv::3vec-bitnot
                              sv::4vec->lower
                              sv::4vec->upper
                              sv::3vec-fix) ()))))

  (defthm 4VEC-PART-SELECT-of-4vec-bitnot$-1
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (>= start size))
             (and (equal (4VEC-PART-SELECT start bits-size (4vec-bitnot$ size val))
                         0)))
    :hints (("Goal"
             :in-theory (e/d* (4vec-bitnot-of-4vec-rsh
                               4VEC-BITNOT$)
                              ((:e tau-system))))))

  (local
   (defthm 4VEC-PART-SELECT-of-4vec-bitnot$-2-lemma
     (implies (and (natp bits-size)
                   (natp size)
                   (natp start)
                   (< start size))
              (and (equal (4VEC-PART-SELECT start bits-size (4vec-bitnot$ size val))
                          (4vec-bitnot$ (min (- size start) bits-size)
                                        (4vec-rsh start val)))))
     :hints (("Goal"
              :in-theory (e/d* (4vec-bitnot-of-4vec-rsh
                                4VEC-BITNOT$)
                               ((:e tau-system)))))))

  (defthm 4vec-part-select-of-4vec-bitnot$-2
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (< start size))
             (and (equal (4VEC-PART-SELECT start bits-size (4vec-bitnot$ size val))
                         (4vec-bitnot$ (min (- size start) bits-size)
                                       (4vec-part-select start
                                                         (min (- size start)
                                                              bits-size)
                                                         val)))))
    :hints (("Goal"
;:use ((:instance 4VEC-PART-SELECT-of-4vec-bitnot$-2-lemma))
             ;; :use ((:instance 4vec-part-select-to-4vec-rsh
             ;;                  (start start)
             ;;                  (size (MIN (+ SIZE (- START)) BITS-SIZE))
             ;;                  (val val)))
             :in-theory (e/d* (4vec-bitnot-of-4vec-rsh
                               4vec-part-select-remove-start--and-insert-4vec-rsh
                               4VEC-PART-SELECT-of-4vec-bitnot$-2-lemma
                               |(4vec-bitnot$ size (4vec-part-select 0 size term))|)
                              ((:e tau-system)
                               4VEC-PART-SELECT-OF-4VEC-RSH

                               )))))

  (local
   (defthm lemma2
     (implies (and (equal (logior x1 x2)
                          (logand x1 x2)))
              (equal (ifix x1) (ifix x2)))
     :rule-classes :forward-chaining
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                zip
                                bitops::ihsext-recursive-redefs) ())))))

  (local
   (defthm lemma3
     (implies (and (equal (ifix x)
                          (ifix y))
                   (syntaxp (lexorder x y)))
              (equal (logtail start x)
                     (logtail start y)))
     :hints (("Goal"
              :in-theory (e/d (logtail) ())))))

  (local
   (defthm lemma4
     (implies (and (equal (ifix x)
                          (ifix y))
                   (integerp val1)
                   (syntaxp (lexorder x y)))
              (and (equal (logand val1 x)
                          (logand val1 y))
                   (equal (logand x val1)
                          (logand y val1))))
     :hints (("Goal"
              :in-theory (e/d (logand
                               zip) ())))))

  (defthmd logand-of-logtail
    (equal (logand (logtail size x)
                   (logtail size y))
           (logtail size (logand x y)))
    :hints (("Goal"
             :in-theory (e/d* (
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               ) ()))))

  (defthmd 4vec-bitand-of-4vec-rsh
    (implies (natp size)
             (equal (4vec-bitand (4vec-rsh size val1)
                                 (4vec-rsh size val2))
                    (4vec-rsh size (4vec-bitand val1 val2))))
    :hints (("Goal"
             ;; :cases ((integerp val1)
             ;;         (integerp val2)
             ;;         (sv::3vec-p val1)
             ;;         (sv::3vec-p val2))
             :in-theory (e/d* (4vec-rsh
                               4vec-bitand
                               sv::3vec-p
                               3VEC-BITAND
                               4vec-shift-core
                               sv::4vec->lower
                               sv::4vec->upper
                               logand-of-logtail
                               sv::3vec-fix)
                              (BITOPS::LOGTAIL-OF-LOGAND
                               4vec)))))

  (defthm 4vec-part-select-of-4vec-bitand$-1
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (>= start size))
             (and (equal (4VEC-PART-SELECT start bits-size
                                           (4vec-bitand$ size val1 val2))
                         0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitand$) ()))))

  (local
   (defthm 4vec-part-select-of-4vec-bitand$-2-lemma
     (implies (and (natp bits-size)
                   (natp size)
                   (natp start)
                   (< start size))
              (and (equal (4vec-part-select start bits-size
                                            (4vec-bitand$ size val1 val2))
                          (4vec-bitand$ (min (- size start) bits-size)
                                        (4vec-rsh start val1)
                                        (4vec-rsh start val2)))))
     :hints (("Goal"
              :in-theory (e/d (4vec-bitand$
                               4vec-bitand-of-4vec-rsh)
                              (4VEC-RSH-OF-BITAND))))))

  (defthm 4vec-part-select-of-4vec-bitand$-2
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (< start size))
             (and (equal (4vec-part-select start bits-size
                                           (4vec-bitand$ size val1 val2))
                         (4vec-bitand$ (min (- size start) bits-size)
                                       (4vec-part-select start (min (- size start) bits-size) val1)
                                       (4vec-part-select start (min (- size start) bits-size) val2)))))
    :hints (("Goal"
             :in-theory (e/d
                         (4vec-part-select-remove-start--and-insert-4vec-rsh
                          4vec-bitand-of-4vec-rsh)
                         (4VEC-PART-SELECT-OF-4VEC-RSH)))))

  (defthmd 4vec-bitor-of-4vec-rsh
    (implies (natp size)
             (equal (4vec-bitor (4vec-rsh size val1)
                                (4vec-rsh size val2))
                    (4vec-rsh size (4vec-bitor val1 val2))))
    :hints (("Goal"
             :in-theory (e/d* (4vec-rsh
                               4vec-bitor
                               sv::3vec-p
                               SV::3VEC-BITOR
                               4vec-shift-core
                               sv::4vec->lower
                               sv::4vec->upper
                               sv::3vec-fix)
                              (4vec)))))

  (defthm 4vec-part-select-of-4vec-bitor$-1
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (>= start size))
             (and (equal (4VEC-PART-SELECT start bits-size
                                           (4vec-bitor$ size val1 val2))
                         0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitor$) ()))))

  (local
   (defthm 4vec-part-select-of-4vec-bitor$-2-lemma
     (implies (and (natp bits-size)
                   (natp size)
                   (natp start)
                   (< start size))
              (and (equal (4vec-part-select start bits-size
                                            (4vec-bitor$ size val1 val2))
                          (4vec-bitor$ (min (- size start) bits-size)
                                       (4vec-rsh start val1)
                                       (4vec-rsh start val2)))))
     :hints (("Goal"
              :in-theory (e/d (4vec-bitor$
                               4vec-bitor-of-4vec-rsh)
                              (4VEC-RSH-OF-BITor))))))

  (defthm 4vec-part-select-of-4vec-bitor$-2
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (< start size))
             (and (equal (4vec-part-select start bits-size
                                           (4vec-bitor$ size val1 val2))
                         (4vec-bitor$ (min (- size start) bits-size)
                                      (4vec-part-select start (min (- size start) bits-size) val1)
                                      (4vec-part-select start (min (- size start) bits-size) val2)))))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitor-of-4vec-rsh
                              4vec-part-select-remove-start--and-insert-4vec-rsh)
                             (4VEC-PART-SELECT-OF-4VEC-RSH)))))

  (def-rp-rule :disabled t
    4vec-bitxor-of-4vec-rsh
    (implies (natp size)
             (equal (sv::4vec-bitxor (4vec-rsh size val1)
                                     (4vec-rsh size val2))
                    (4vec-rsh size (sv::4vec-bitxor val1 val2))))
    :hints (("Goal"
             :in-theory (e/d* (4vec-rsh
                               sv::4vec-bitxor
                               sv::3vec-p
                               SV::3VEC-BITOR
                               4vec-shift-core
                               sv::4vec->lower
                               sv::4vec->upper
                               sv::3vec-fix)
                              (4vec)))))

  (add-svex-simplify-rule 4vec-bitxor-of-4vec-rsh
                          :disabled t)

  (defthm 4vec-part-select-of-4vec-bitxor$-1
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (>= start size))
             (and (equal (4VEC-PART-SELECT start bits-size
                                           (4vec-bitxor$ size val1 val2))
                         0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitxor$) ()))))

  (local
   (defthm 4vec-part-select-of-4vec-bitxor$-2-lemma
     (implies (and (natp bits-size)
                   (natp size)
                   (natp start)
                   (< start size))
              (and (equal (4vec-part-select start bits-size
                                            (4vec-bitxor$ size val1 val2))
                          (4vec-bitxor$ (min (- size start) bits-size)
                                        (4vec-rsh start val1)
                                        (4vec-rsh start val2)))))
     :hints (("Goal"
              :in-theory (e/d (4vec-bitxor$
                               4vec-bitxor-of-4vec-rsh)
                              (4VEC-RSH-OF-BITxor))))))

  (defthm 4vec-part-select-of-4vec-bitxor$-2
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start)
                  (< start size))
             (and (equal (4vec-part-select start bits-size
                                           (4vec-bitxor$ size val1 val2))
                         (4vec-bitxor$ (min (- size start) bits-size)
                                       (4vec-part-select start (min (- size start) bits-size) val1)
                                       (4vec-part-select start (min (- size start) bits-size) val2)))))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitxor-of-4vec-rsh
                              4vec-part-select-remove-start--and-insert-4vec-rsh)
                             (4VEC-PART-SELECT-OF-4VEC-RSH))))))

(local
 (defthm 4vec-bitnot$-of-4vec-bitnot$-1-lemma
   (equal (EQUAL (LOGIOR (LOGNOT (LOGHEAD SIZE1 x))
                         (LOGNOT (LOGHEAD SIZE1 y)))
                 (LOGAND (LOGNOT (LOGHEAD SIZE1 x))
                         (LOGNOT (LOGHEAD SIZE1 y))))
          (EQUAL (LOGIOR (LOGHEAD SIZE1 x)
                         (LOGHEAD SIZE1 y))
                 (LOGAND (LOGHEAD SIZE1 x)
                         (LOGHEAD SIZE1 y))))
   :hints (("Goal"
            :in-theory (e/d (ACL2::BINARY-LOGIOR)
                            ())))))

#|(local
 (defthm 4vec-bitnot$-of-4vec-bitnot$-1-lemma-2
   (equal (EQUAL (LOGIOR (LOGHEAD SIZE1 (LOGNOT x))
                         (LOGNOT (LOGHEAD SIZE1 y)))
                 (LOGAND (LOGNOT (LOGHEAD SIZE1 x))
                         (LOGNOT (LOGHEAD SIZE1 y))))
          (EQUAL (LOGIOR (LOGHEAD SIZE1 x)
                         (LOGHEAD SIZE1 y))
                 (LOGAND (LOGHEAD SIZE1 x)
                         (LOGHEAD SIZE1 y))))
   :hints (("Goal"
            :in-theory (e/d (ACL2::BINARY-LOGIOR)
                            ())))))|#

(def-rp-rule 4vec-bitnot$-of-4vec-bitnot$-1
  (implies (and ;;(sv::4vec-p x)
            (posp size1)
            (posp size2)
            (<= size1 size2)
            (integerp x)
            )
           (equal (4vec-bitnot$ size1
                                (4vec-bitnot$ size2 x))
                  (4vec-part-select  0 size1 (sv::3vec-fix x))))
  :hints (("Goal"

           :in-theory (e/d* (4vec-bitnot$
                             sv::4vec-p
                             ACL2::LOGNOT-LOGAND
                             ACL2::LOGNOT-LOGIOR
                             4VEC
                             SV::3VEC-FIX
                             4VEC-PART-SELECT
                             4VEC-CONCAT
                             SV::4VEC->UPPER
                             SV::4VEC->LOWER
                             SV::3VEC-BITNOT
                             4VEC-BITNOT)
                            ((:e tau-system)
                             ;;4vec-bitnot
                             4vec-part-select-of-4vec-bitnot$-2)))))

(add-svex-simplify-rule 4vec-bitnot$-of-4vec-bitnot$-1)

(defthmd 4vec-part-select-of-4vec-bitand
  (implies (and (natp size)
                (natp start))
           (equal (4vec-part-select start size (4vec-bitand val1 val2))
                  (4vec-part-select 0 size
                                    (4vec-bitand (4vec-part-select start size val1)
                                                 (4vec-part-select start size val2)))))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            SV::4VEC->LOWER
                            4VEC-RSH
                            SV::4VEC->UPPER
                            4VEC-BITAND
                            4VEC-SHIFT-CORE
                            3VEC-BITAND
                            SV::3VEC-FIX)
                           (4vec)))))

(defthmd 4vec-part-select-of-4vec-bitand-better
  (implies (and (natp size)
                (natp start))
           (equal (4vec-part-select start size (4vec-bitand val1 val2))
                  (4vec-bitand (4vec-part-select start size val1)
                               (4vec-part-select start size val2))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bitand))
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            SV::4VEC->LOWER
                            4VEC-RSH
                            SV::4VEC->UPPER
                            4VEC-BITAND
                            4VEC-SHIFT-CORE
                            3VEC-BITAND
                            SV::3VEC-FIX)
                           (4vec)))))

(defthmd 4vec-part-select-of-4vec-bitor
  (implies (and (natp size)
                (natp start))
           (equal (4vec-part-select start size (4vec-bitor val1 val2))
                  (4vec-part-select 0 size
                                    (4vec-bitor (4vec-part-select start size val1)
                                                (4vec-part-select start size val2)))))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            SV::4VEC->LOWER
                            4VEC-RSH
                            SV::4VEC->UPPER
                            4VEC-BITor
                            4VEC-SHIFT-CORE
                            sv::3VEC-BITor
                            SV::3VEC-FIX)
                           (4vec)))))

(defthmd 4vec-part-select-of-4vec-bitor-better
  (implies (and (natp size)
                (natp start))
           (equal (4vec-part-select start size (4vec-bitor val1 val2))
                  (4vec-bitor (4vec-part-select start size val1)
                              (4vec-part-select start size val2))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bitor))
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            SV::4VEC->LOWER
                            4VEC-RSH
                            SV::4VEC->UPPER
                            4VEC-BITor
                            4VEC-SHIFT-CORE
                            sv::3VEC-BITor
                            SV::3VEC-FIX)
                           (4vec)))))

(encapsulate
  nil

  (defthm ash-of-logior
    (equal (ash (logior x y) size)
           (logior (ash x size)
                   (ash y size)))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ()))))

  (defthm ash-of-logand
    (equal (ash (logand x y) size)
           (logand (ash x size)
                   (ash y size)))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ()))))

  (defthm ash-of-lognot
    (implies (<= size 0)
             (equal (ash (lognot x) size)
                    (lognot (ash x size))))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ()))))
  (local
   (use-ihs-extensions nil))

  (defthmd 4vec-part-select-of-4vec-bitxor
    (implies (and (natp size)
                  (natp start))
             (equal (4vec-part-select start size (sv::4vec-bitxor val1 val2))
                    (4vec-part-select 0 size
                                      (sv::4vec-bitxor (4vec-part-select start size val1)
                                                       (4vec-part-select start size val2)))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              4VEC-CONCAT
                              4VEC-RSH
                              sv::4VEC-BITxor
                              logxor-redef
                              lognot-of-logior
                              lognot-of-logand
                              4VEC-SHIFT-CORE
                              sv::3VEC-BITxor
                              SV::3VEC-FIX

                              ACL2::|(logior (logior x y) z)|
                              ACL2::|(logand (logand x y) z)|
                              ACL2::|(logand y x)|
                              ACL2::COMMUTATIVITY-OF-LOGIOR
                              ACL2::COMMUTATIVITY-OF-LOGand
                              BITOPS::COMMUTATIVITY-2-OF-LOGIOR
                              BITOPS::COMMUTATIVITY-2-OF-LOGand
                              BITOPS::LOGAND-OF-LOGAND-SELF-1
                              BITOPS::LOGAND-OF-LOGAND-SELF-2
                              BITOPS::LOGAND-OF-LOGior-SELF
                              BITOPS::LOGior-OF-LOGior-SELF-2
                              BITOPS::LOGior-OF-LOGior-SELF
                              BITOPS::LOGAND-OF-SELF
                              BITOPS::LOGior-OF-SELF

                              BITOPS::LOGHEAD-CANCEL-IN-LOGNOT
                              BITOPS::LOGHEAD-OF-LOGIOR
                              BITOPS::LOGHEAD-OF-LOGand)
                             (4vec
                              lognot
                              logior
                              logapp
                              logand
                              ash
                              loghead
                              )))))

  (local
   (use-ihs-extensions t))

  (defthmd logand-loghead-and-lognot
    (implies (and (integerp val1)
                  (integerp val2))
             (equal (LOGAND (LOGHEAD SIZE val1)
                            (LOGNOT (LOGHEAD SIZE val2)))
                    (LOGAND (LOGHEAD SIZE val1)
                            (LOGHEAD SIZE (LOGNOT val2)))))
    :hints (("Goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs) ()))))

  (local
   (use-ihs-extensions nil))

  (defthmd 4vec-part-select-of-4vec-bitxor-better
    (implies (and (natp size)
                  (natp start))
             (equal (4vec-part-select start size (sv::4vec-bitxor val1 val2))
                    (sv::4vec-bitxor (4vec-part-select start size val1)
                                     (4vec-part-select start size val2))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitxor))
             :in-theory (e/d (4vec-part-select
                              4VEC-CONCAT
                              4VEC-RSH
                              sv::4VEC-BITxor
                              logxor-redef
                              lognot-of-logior
                              lognot-of-logand
                              4VEC-SHIFT-CORE
                              sv::3VEC-BITxor
                              SV::3VEC-FIX
                              logand-loghead-and-lognot
                              ACL2::|(logior (logior x y) z)|
                              ACL2::|(logand (logand x y) z)|
                              ACL2::|(logand y x)|
                              ACL2::COMMUTATIVITY-OF-LOGIOR
                              ACL2::COMMUTATIVITY-OF-LOGand
                              BITOPS::COMMUTATIVITY-2-OF-LOGIOR
                              BITOPS::COMMUTATIVITY-2-OF-LOGand
                              BITOPS::LOGAND-OF-LOGAND-SELF-1
                              BITOPS::LOGAND-OF-LOGAND-SELF-2
                              BITOPS::LOGAND-OF-LOGior-SELF
                              BITOPS::LOGior-OF-LOGior-SELF-2
                              BITOPS::LOGior-OF-LOGior-SELF
                              BITOPS::LOGAND-OF-SELF
                              BITOPS::LOGior-OF-SELF

                              BITOPS::LOGHEAD-CANCEL-IN-LOGNOT
                              BITOPS::LOGHEAD-OF-LOGIOR
                              BITOPS::LOGHEAD-OF-LOGand)
                             (4vec
                              lognot
                              logior
                              logapp
                              logand
                              ash
                              loghead
                              ))))))

(defthm 4vec-bitxor-with-zero
  (implies (integerp x)
           (and (equal (sv::4vec-bitxor 0 x)
                       x)
                (equal (sv::4vec-bitxor x 0)
                       x)))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-bitxor
                             4VEC-FIX
                             4VEC-P
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             SV::4VEC->UPPER
                             SV::4VEC->lower)
                            (4vec)))))

(defthm 4vec-bitor-of-the-same
  (equal (sv::4vec-bitor x x)
         (sv::3vec-fix x))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitor
                            SV::3VEC-FIX
                            SV::3VEC-BITOR
                            SV::4VEC->UPPER
                            SV::4VEC->lower)
                           ()))))

(defthm 4vec-bitor-with-zero
  (and (equal (sv::4vec-bitor 0 x)
              (sv::3vec-fix x))
       (equal (sv::4vec-bitor x 0)
              (sv::3vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitor
                            SV::3VEC-FIX
                            SV::3VEC-BITOR
                            SV::4VEC->UPPER
                            SV::4VEC->lower)
                           ()))))

(def-rp-rule 4vec-bitand-of-the-same
  (equal (sv::4vec-bitand x x)
         (sv::3vec-fix x))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitand
                            3VEC-BITAND
                            SV::3VEC-FIX
                            SV::4VEC->UPPER
                            SV::4VEC->lower)
                           ()))))

(add-svex-simplify-rule 4vec-bitand-of-the-same)

(def-rp-rule 4vec-bitand-with-0
  (and (equal (sv::4vec-bitand 0 x)
              0)
       (equal (sv::4vec-bitand x 0)
              0))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitand
                            3VEC-BITAND
                            SV::3VEC-FIX) ()))))

(add-svex-simplify-rule 4vec-bitand-with-0
                        :outside-in :both)

(def-rp-rule 4vec-bitand-with--1
  (and (equal (sv::4vec-bitand -1 x)
              (sv::3vec-fix x))
       (equal (sv::4vec-bitand x -1)
              (sv::3vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitand
                            3VEC-BITAND
                            SV::3VEC-FIX)
                           ()))))

(add-svex-simplify-rule 4vec-bitand-with--1)

(def-rp-rule 4vec-bitand-with-1
  (and (equal (sv::4vec-bitand 1 x)
              (4vec-part-select 0 1 (sv::3vec-fix x)))
       (equal (sv::4vec-bitand x 1)
              (4vec-part-select 0 1 (sv::3vec-fix x))))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-bitand
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-PART-SELECT
                             3VEC-BITAND
                             SV::3VEC-FIX
                             4VEC-CONCAT)
                            (4vec)))))

(add-svex-simplify-rule 4vec-bitand-with-1)

(def-rp-rule 4vec-bitor-with-0
  (and (equal (sv::4vec-bitor 0 x)
              (sv::3vec-fix x))
       (equal (sv::4vec-bitor x 0)
              (sv::3vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (4vec-bitor
                            4vec-fix
                            sv::3vec-bitor
                            sv::3vec-fix
                            ifix) ()))))

(add-svex-simplify-rule 4vec-bitor-with-0)

(def-rp-rule 4vec-?*-test=0
  (equal (4vec-?* 0 x y)
         (4vec-fix y))
  :hints (("Goal"
           :in-theory (e/d (4vec-?*
                            SV::3VEC-?*) ()))))

(add-svex-simplify-rule 4vec-?*-test=0
                        :outside-in :both)

(def-rp-rule 4vec-?*-test=1
  (equal (4vec-?* 1 x y)
         (4vec-fix x))
  :hints (("Goal"
           :in-theory (e/d (4vec-?*
                            SV::3VEC-?*) ()))))

(add-svex-simplify-rule 4vec-?*-test=1
                        :outside-in :both)

(def-rp-rule 4vec-?-with-0
  (and (equal (sv::4vec-? 0 x y)
              (sv::4vec-fix y)))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-fix
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             4vec-?
                             sv::3vec-fix
                             sv::3vec-?
                             ifix) ()))))

(add-svex-simplify-rule 4vec-?-with-0
                        :outside-in :both)

(def-rp-rule 4vec-?-with-1
  (and (equal (sv::4vec-? 1 x y)
              (sv::4vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-fix
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             4vec-?
                             sv::3vec-fix
                             sv::3vec-?
                             ifix) ()))))

(add-svex-simplify-rule 4vec-?-with-1
                        :outside-in :both)

(def-rp-rule integerp-4vec?
  (implies (and (integerp test)
                (integerp x)
                (integerp y))
           (integerp (sv::4vec-? test x y)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-?
                            sv::3vec-?
                            4vec-fix
                            sv::3vec-fix) ()))))

(add-svex-simplify-rule integerp-4vec?)

(def-rp-rule integerp-4vec-bitand
  (implies (and (integerp y )
                (integerp x))
           (integerp (sv::4vec-bitand x y)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitand
                            sv::3vec-bitand
                            sv::3vec-fix) ()))))

(add-svex-simplify-rule integerp-4vec-bitand)

(def-rp-rule natp-4vec-bitand
  (implies (or (and (natp y )
                    (integerp x))
               (and (integerp y )
                    (natp x)))
           (natp (sv::4vec-bitand x y)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitand
                            sv::3vec-bitand
                            sv::3vec-fix) ()))))

(def-rp-rule natp-4vec-bitor
  (implies (and (natp y )
                (natp x))
           (natp (sv::4vec-bitor x y)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitor
                            sv::3vec-bitor
                            sv::3vec-fix) ()))))
(def-rp-rule natp-4vec-bitxor
  (implies (and (natp y)
                (natp x))
           (natp (sv::4vec-bitxor x y)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitxor
                            sv::3vec-bitxor
                            sv::3vec-fix) ()))))

(defthmd logand-of-single-loghead
  (implies (syntaxp (or (atom y)
                        (not (equal (car y) 'loghead))))
           (equal (logand (loghead size x)
                          y)
                  (logand (loghead size x)
                          (loghead size y))))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions)
                            ()))))

(defthm 4vec-part-select-of-4vec-?*
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size (4vec-?* test x y))
                  (4vec-?* test
                           (4vec-part-select start size x )
                           (4vec-part-select start size y))))
  :otf-flg t
  :hints (("goal"
           :use ((:instance logand-of-single-loghead
                            (x (LOGTAIL START (SV::4VEC->LOWER Y)))
                            (y (logand (LOGNOT (LOGHEAD SIZE
                                                        (LOGTAIL START (SV::4VEC->UPPER X))))
                                       (LOGNOT (LOGHEAD SIZE
                                                        (LOGTAIL START (SV::4VEC->UPPER Y))))))))
           :in-theory (e/d* (4vec-?*
                             4vec-shift-core
                             acl2::negp
                             4vec-part-select
                             4vec-concat
                             4vec-fix
                             sv::3vec-fix
                             sv::4vec-symwildeq
                             4vec-rsh
                             sv::3vec-reduction-and
                             sv::3vec-bitor
                             sv::3vec-bitnot
                             zip
                             sv::4vec-bitxor
                             sv::3vec-?*)
                            ((:rewrite acl2::zip-open)
                             sv::4vec)))))

(defthm bitp-4vec-part-select-size=1
  (implies (and (natp val)
                (natp start))
           (bitp (4vec-part-select start 1 val)))
  :hints (("goal"
           :in-theory (e/d* (bitp
                             4vec-part-select
                             sv::4vec->lower
                             4vec-rsh
                             4vec-concat
                             4vec-shift-core
                             sv::4vec->upper)
                            ()))))

(def-rp-rule 4vec-?-of-test=0
  (equal (4vec-?* 0 a b)
         (4vec-fix B))
  :hints (("Goal"
           :in-theory (e/d (4vec-?*
                            SV::3VEC-?*) ()))))

(add-svex-simplify-rule 4vec-?-of-test=0
                        :outside-in :both)

(def-rp-rule :disabled t
  bitp-of-4vec-?*
  (implies (and (force (bitp a))
                (force (bitp b))
                (force (bitp test)))
           (bitp (4vec-?* test a b)))
  :hints (("Goal"
           :in-theory (e/d (bitp) ()))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (defthm 4vec-part-select-of-negated-bit
    (implies (and (bitp x)
                  (natp start))
             (equal (4vec-part-select start 1 (- x))
                    x))
    :hints (("Goal"
             :do-not '(preprocess)
             :in-theory (e/d (4VEC-PART-SELECT
                              SV::4VEC->UPPER
                              4VEC-CONCAT
                              logapp
                              loghead
                              ifix
                              4vec-rsh
                              4VEC-SHIFT-CORE
                              mod
                              SV::4VEC->LOWER)
                             (

                              ))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate
  nil

  (define 4vec-plus++ ((x integerp)
                       (y integerp)
                       (carry-in integerp)
                       (size natp))
    (if (zp size)
        0
      (let ((sum (+ (acl2::logcar x)
                    (acl2::logcar y)
                    carry-in)))
        (logapp 1
                (acl2::logcar sum)
                (4vec-plus++
                 (acl2::logcdr x)
                 (acl2::logcdr y)
                 (acl2::logcdr sum)
                 (1- size)))))
    ///

    (def-rp-rule 4vec-p-of-4vec-plus++
      (4vec-p (4vec-plus++ x y carry-in size))
      :hints (("Goal"
               :in-theory (e/d (4vec-p) ()))))

    (def-rp-rule integer-of-4vec-plus++
      (integerp (4vec-plus++ x y carry-in size))))

  #|(local
  (use-arithmetic-5 t))||#

  (def-rp-rule integerp-4vec-plus
    (implies (and (integerp x)
                  (integerp y))
             (integerp (4vec-plus x y)))
    :hints (("Goal"
             :in-theory (e/d (4vec-plus
                              2vec) ()))))

  (add-svex-simplify-rule integerp-4vec-plus)

  (def-rp-rule integerp-4vec-rsh
    (implies (and (integerp amount)
                  (integerp x))
             (integerp (4vec-rsh amount x)))
    :hints (("Goal"
             :in-theory (e/d (4vec-rsh
                              4VEC-SHIFT-CORE
                              2vec) ()))))

  (add-svex-simplify-rule integerp-4vec-rsh)

  (local
   (defthmd 4vec-part-select-of-4vec-plus-is-4vec-plus-lemma
     (implies (and (integerp x)
                   (integerp y)
                   (integerp carry-in)
                   (natp size))
              (equal (4vec-plus++ x y carry-in
                                  size)
                     (loghead size (+ (4vec-plus x y)
                                      carry-in))))
     :hints (("Goal"
              :induct (4vec-plus++ x y carry-in
                                   size)
              :do-not-induct t
              :in-theory (e/d* (
                                4vec-plus++
                                4VEC-PLUS
                                2vec
                                bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ((:DEFINITION NOT)
                                (:REWRITE ACL2::LOGHEAD-IDENTITY)
                                (:REWRITE ACL2::LOGHEAD-IDENTITY)
                                (:DEFINITION ACL2::UNSIGNED-BYTE-P**)
                                (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                                (:REWRITE DEFAULT-+-1)
                                (:DEFINITION UNSIGNED-BYTE-P)
                                (:REWRITE DEFAULT-+-2)))))))

  (local
   (defthmd 4vec-plus++-of-part-select-of-inputs
     (implies (and (integerp x)
                   (integerp y))
              (equal (4vec-plus++ (4vec-part-select 0 size x)
                                  (4vec-part-select 0 size y) carry-in size)
                     (4vec-plus++ x y carry-in size)))
     :hints (("Goal"
              :induct (4vec-plus++ x y carry-in size)
              :do-not-induct t
              :in-theory (e/d* (4vec-plus++
                                4VEC-CONCAT
                                SV::4VEC->LOWER
                                SV::4VEC->UPPER
                                BITOPS::LOGCDR-OF-LOGHEAD
                                4vec-part-select) ())))))

  (def-rp-rule 4vec-part-select-of-4vec-plus-is-4vec-plus
    (implies (and (integerp x)
                  (integerp y)
                  (natp size)
                  (natp start))
             (equal (4vec-part-select start size (4vec-plus x y))
                    (4vec-rsh start (4vec-plus++
                                     (4vec-part-select 0 (+ start size) x)
                                     (4vec-part-select 0 (+ start size) y)
                                     0
                                     (+ start size)))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-plus-is-4vec-plus-lemma
                              (carry-in 0)
                              (size (+ start size)))
                   (:instance 4vec-plus++-of-part-select-of-inputs
                              (carry-in 0)
                              (size (+ start size))))
             :in-theory (e/d (4vec-part-select
                              4vec-rsh
                              4vec-shift-core
                              SV::4VEC->LOWER
                              4vec-concat) ()))))

  (defthm 4vec-plus++-commutativy
    (implies t
             (equal (4vec-plus++ y x carry-in size)
                    (4vec-plus++ x y carry-in size)))
    :hints (("Goal"
             :in-theory (e/d (4vec-plus++) ()))))

  (defthm 4vec-plus-commutativy
    (implies t
             (equal (4vec-plus y x)
                    (4vec-plus x y)))
    :hints (("Goal"
             :in-theory (e/d (4vec-plus) ()))))

  (defthm 4vec-plus++-commutativy-with-carry
    (implies (and (bitp carry-in)
                  (syntaxp (and (not (equal carry-in '0))
                                (not (equal carry-in ''0)))))
             (and (equal (4vec-plus++ 0 x carry-in size)
                         (4vec-plus++ x carry-in 0 size))
                  (equal (4vec-plus++ x 0 carry-in size)
                         (4vec-plus++ x carry-in 0 size))))
    :hints (("Goal"
             :expand ((4VEC-PLUS++ 0 X 1 SIZE)
                      (4VEC-PLUS++ 1 X 0 SIZE)
                      (4VEC-PLUS++ 0 X 0 SIZE)
                      (4VEC-PLUS++ 0 0 X SIZE))
             :in-theory (e/d (bitp) ()))))

  (def-rp-rule 4vec-part-select-of-4vec-plus-is-4vec-plus-with-carry-in
    (implies (and (integerp x)
                  (bitp carry-in)
                  (natp size)
                  (natp start))
             (and (equal (4vec-part-select start size (4vec-plus x carry-in))
                         (4vec-rsh start (4vec-plus++
                                          (4vec-part-select 0 (+ start size) x)
                                          0
                                          carry-in
                                          (+ start size))))
                  (equal (4vec-part-select start size (4vec-plus carry-in x))
                         (4vec-rsh start (4vec-plus++
                                          (4vec-part-select 0 (+ start size) x)
                                          0
                                          carry-in
                                          (+ start size))))))
    :hints (("Goal"
             :cases ((posp (+ SIZE START)))
             :expand ((4VEC-PLUS 0 X)
                      (LOGHEAD (+ SIZE START) 1)
                      (4VEC-PLUS X 0)
                      (2VEC X)
                      (4VEC-PLUS++ X 0 0 (+ SIZE START)))
             :use ((:instance BITOPS::LOGTAIL-OF-LOGHEAD
                              (acl2::n start)
                              (acl2::m (+ size start))
                              (acl2::x (4VEC-PLUS X 1)))
                   (:instance 4vec-part-select-of-4vec-plus-is-4vec-plus-lemma
                              (carry-in 0)
                              (y carry-in)
                              (size (+ start size)))
                   (:instance 4vec-plus++-of-part-select-of-inputs
                              (y carry-in)
                              (carry-in 0)

                              (size (+ start size))))
             :in-theory (e/d (4vec-part-select
                              4vec-rsh
                              bitp
                              4vec-shift-core
                              SV::4VEC->LOWER
                              4vec-concat)
                             (4vec-part-select-of-4vec-plus-is-4vec-plus-lemma
                              BITOPS::LOGTAIL-OF-LOGHEAD
                              4vec-plus++-of-part-select-of-inputs))))))

(local
 (use-ihs-logops-lemmas t))
(local
 (use-ihs-extensions t))

(local
 (defthm when-ifix-are-equal-logcdrs-also
   (implies (equal (ifix x) (ifix y))
            (equal (equal (acl2::logcdr x)
                          (acl2::logcdr y))
                   t))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              acl2::logcdr
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthm when-ifix-are-equal-logcdrs-also-fc
   (implies (equal (ifix x) (ifix y))
            (equal (acl2::logcdr x)
                   (acl2::logcdr y)))
   :rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              acl2::logcdr
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthm when-ifix-are-equal-logcars-also
   (implies (equal (ifix x) (ifix y))
            (equal (equal (acl2::logcar x)
                          (acl2::logcar y))
                   t))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              acl2::logcar
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthm when-ifix-are-equal-logcars-also-2
   (implies (equal (ifix x) (ifix y))
            (equal (acl2::logcar x)
                   (acl2::logcar y)))
   :rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              acl2::logcar
                              bitops::ihsext-recursive-redefs)
                             ())))))

(encapsulate
  nil
  (local
   (defthm dummy-lemma1
     (implies (and (or (not (equal (logapp amount num -1) -1))
                       (not (equal (logapp amount num2 -1) -1)))
                   (integerp num)
                   (integerp num2))
              (not (equal
                    (logapp amount (logand num num2) -1) -1)))
     :hints (("goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               ())))))

  (defthm 4vec-part-select-of-4vec-reduction-and
    (implies
     (and (integerp amount)
          (> amount 1))

     (equal (4vec-part-select 0 1 (sv::4vec-reduction-and
                                   (sv::4vec-sign-ext amount
                                                      term)))
            (sv::4vec-bitand
             (sv::4vec-part-select 0 1 term)
             (4vec-part-select 0 1 (sv::4vec-reduction-and
                                    (sv::4vec-sign-ext (1- amount)
                                                       (4vec-rsh 1 term)))))))
    :hints (("goal"
             :in-theory (e/d* (bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs
                               sv::4vec-sign-ext
                               acl2::logext
                               4vec-rsh
                               4vec-shift-core
                               sv::4vec-reduction-and
                               sv::4vec-part-select
                               sv::4vec-bitand
                               sv::3vec-fix
                               sv::4vec-sign-ext
                               4vec-concat
                               sv::3vec-reduction-and
                               3vec-bitand
                               sv::bool->vec
                               sv::4vec->lower)
                              ((:e tau-system)
                               (:type-prescription acl2::logcar-type)
                               (:rewrite acl2::loghead-identity)
                               (:type-prescription bitops::logcdr-natp)
                               (:definition acl2::unsigned-byte-p**)
                               (:definition unsigned-byte-p)
                               (:rewrite acl2::unsigned-byte-p-plus)
                               (:definition integer-range-p)
                               (:rewrite bitops::logbitp-when-bitmaskp)
                               (:definition bitops::lognot$)
                               (:type-prescription bitp)
                               (:type-prescription ifix)
                               (:type-prescription o<)
                               (:type-prescription acl2::logcdr-type)
                               (:type-prescription acl2::logcar$inline)
;;                               (:forward-chaining
;;                                acl2::|a <= b & ~(a = b)  =>  a < b|)
                               (:rewrite default-<-1)
                               (:rewrite default-<-2)
                               (:rewrite bitops::logand-with-negated-bitmask)))))))

(defthm 4vec-part-select-of-4vec-reduction-and-when-amount=1
  (implies t
           (equal (4vec-part-select 0 1 (sv::4vec-reduction-and
                                         (SV::4VEC-SIGN-EXT 1 term)))
                  (sv::3vec-fix (sv::4vec-part-select 0 1 term))))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             sv::4vec-sign-ext
                             acl2::logext
                             4vec-rsh
                             4VEC-SHIFT-CORE
                             sv::4vec-reduction-and
                             sv::4vec-part-select
                             sv::4vec-bitand
                             sv::3vec-fix
                             SV::4VEC-SIGN-EXT
                             4VEC-CONCAT
                             sv::3VEC-REDUCTION-AND
                             3VEC-BITAND
                             SV::BOOL->VEC
                             SV::4VEC->LOWER)
                            ((:e tau-system))))))

(def-rp-rule 4vec-bitand-of-3vec-fix
  (and (equal (sv::4vec-bitand (sv::3vec-fix x) y)
              (sv::4vec-bitand x y))
       (equal (sv::4vec-bitand x (sv::3vec-fix y))
              (sv::4vec-bitand x y))))

(add-svex-simplify-rule 4vec-bitand-of-3vec-fix)

(def-rp-rule integerp-implies-3vec-p
  (implies (integerp x)
           (sv::3vec-p x))
  :hints (("Goal"
           :in-theory (e/d (sv::3vec-p) ()))))

(add-svex-simplify-rule integerp-implies-3vec-p)

(def-rp-rule 3vec-fix-of-3vec-p
  (implies (and (sv::3vec-p x)
                (sv::4vec-p x))
           (equal (sv::3vec-fix x)
                  x))
  :hints (("Goal"
           :in-theory (e/d* (sv::3vec-fix
                             sv::3vec-p
                             SV::4VEC-FIX-OF-4VEC
                             SV::3VEC-FIX-OF-3VEC-P
                             ;;sv::4vec-p
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-FIX) ()))))

(add-svex-simplify-rule 3vec-fix-of-3vec-p)

(def-rp-rule 3vec-fix-of-3vec-fix
  (implies t
           (equal (sv::3vec-fix (sv::3vec-fix x))
                  (sv::3vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (sv::3vec-fix
                            4VEC-FIX) ()))))

(add-svex-simplify-rule 3vec-fix-of-3vec-fix)

#||#

(def-rp-rule 3vec-p-of-4vec-bitand-bitor-bitxor
  (and (sv::3vec-p (4vec-bitand x y))
       (sv::3vec-p (4vec-bitor x y))
       (sv::3vec-p (sv::4vec-bitxor x y))))

(add-svex-simplify-rule 3vec-p-of-4vec-bitand-bitor-bitxor)

(def-rp-rule 3vec-fix-of-4vec-bitand-bitor-bitxor
  (and
   (equal (sv::3vec-fix (sv::4vec-bitand x y))
          (sv::4vec-bitand x y))
   (equal (sv::3vec-fix (sv::4vec-bitor x y))
          (sv::4vec-bitor x y))
   (equal (sv::3vec-fix (sv::4vec-bitxor x y))
          (sv::4vec-bitxor x y))
   (equal (sv::3vec-fix (sv::4vec-bitnot x))
          (sv::4vec-bitnot x)))
  :hints (("Goal"
           :in-theory (e/d (4VEC-PART-SELECT)
                           ()))))

(add-svex-simplify-rule 3vec-fix-of-4vec-bitand-bitor-bitxor)

(defthm logior-of-same-logand
  (implies t
           (EQUAL (LOGIOR b c (logand b z))
                  (logior b c)))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-bitor
                             sv::3VEC-BITOR
                             SV::3VEC-FIX
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             )
                            (4vec
                             ACL2::LOGAND-WITH-MASK)))))

(def-rp-rule 4vec-bitor-reorder
  (equal (sv::4vec-bitor (sv::4vec-bitor a b) c)
         (sv::4vec-bitor a (sv::4vec-bitor b c)))
; :otf-flg t
  :hints (("Goal"
           :do-not-induct t
           :do-not '(preprocess)
           :use ((:instance logior-of-same-logand
                            (b (SV::4VEC->LOWER B))
                            (c (logior (SV::4VEC->LOWER A)
                                       (SV::4VEC->LOWER C)
                                       (SV::4VEC->UPPER A)
                                       (SV::4VEC->UPPER B)
                                       (SV::4VEC->UPPER C)))
                            (z (SV::4VEC->UPPER B)))
                 (:instance logior-of-same-logand
                            (b (SV::4VEC->LOWER A))
                            (c (logior (SV::4VEC->LOWER B)
                                       (SV::4VEC->LOWER C)
                                       (SV::4VEC->UPPER A)
                                       (SV::4VEC->UPPER B)
                                       (SV::4VEC->UPPER C)))
                            (z (SV::4VEC->UPPER A)))
                 (:instance logior-of-same-logand
                            (b (LOGAND (SV::4VEC->LOWER B)
                                       (SV::4VEC->UPPER B)))
                            (c (logior (LOGAND (SV::4VEC->LOWER A)
                                               (SV::4VEC->UPPER A))
                                       (LOGAND (SV::4VEC->LOWER C)
                                               (SV::4VEC->UPPER C))
                                       (LOGAND (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER B))
                                       (LOGAND (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER B)
                                               (SV::4VEC->UPPER C))))
                            (z (SV::4VEC->LOWER C)))
                 (:instance logior-of-same-logand
                            (b (LOGAND (SV::4VEC->LOWER B)
                                       (SV::4VEC->UPPER B)))
                            (c (logior (LOGAND (SV::4VEC->LOWER A)
                                               (SV::4VEC->UPPER A))
                                       (LOGAND (SV::4VEC->LOWER C)
                                               (SV::4VEC->UPPER C))
                                       (LOGAND (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER B))))
                            (z (SV::4VEC->UPPER C)))
                 (:instance logior-of-same-logand
                            (b (LOGAND (SV::4VEC->LOWER A)
                                       (SV::4VEC->UPPER A)))
                            (c (logior (LOGAND (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER B))
                                       (LOGAND (SV::4VEC->LOWER C)
                                               (SV::4VEC->UPPER C))
                                       (LOGAND (SV::4VEC->LOWER A)
                                               (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER A))))
                            (z (SV::4VEC->UPPER B)))
                 (:instance logior-of-same-logand
                            (b (LOGAND (SV::4VEC->LOWER A)
                                       (SV::4VEC->UPPER A)))
                            (c (logior (LOGAND (SV::4VEC->LOWER B)
                                               (SV::4VEC->UPPER B))
                                       (LOGAND (SV::4VEC->LOWER C)
                                               (SV::4VEC->UPPER C))))
                            (z (SV::4VEC->LOWER B))))
           :in-theory (e/d* (sv::4vec-bitor
                             sv::3VEC-BITOR
                             SV::3VEC-FIX)
                            (4vec
                             logior-of-same-logand)))))

(add-svex-simplify-rule 4vec-bitor-reorder)

(def-rp-rule 4vec-bitor-of-same-var
  (and (equal (sv::4vec-bitor a (sv::4vec-bitor a b))
              (sv::4vec-bitor a b))
       (equal (sv::4vec-bitor a a)
              (sv::3vec-fix a)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bitor
                            sv::3vec-bitor
                            sv::3vec-fix)
                           (4vec)))))

(add-svex-simplify-rule 4vec-bitor-of-same-var)

(def-rp-rule 4vec-bitor-of-negated-same-var
  (implies (and (natp size)
                (integerp x)
                )
           (and (equal (sv::4vec-bitor
                        (sv::4vec-part-select 0 size
                                              (sv::4vec-bitnot x))
                        x)
                       (sv::4vec-part-install 0 size x -1))
                (equal (sv::4vec-bitor
                        (4vec-bitnot$ size x)
                        x)
                       (sv::4vec-part-install 0 size x -1))

                #|(equal (sv::4vec-bitor a a)
                (sv::3vec-fix a))||#))
  :otf-flg t
  :hints (("Goal"
           ;;:do-not-induct t
           :expand ((4vec-bitnot$ size x))
           :in-theory (e/d* (sv::4vec-bitor
                             4VEC-P
                             4VEC-RSH
                             4VEC-CONCAT
                             4VEC-BITNOT
                             SV::3VEC-BITNOT
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-SHIFT-CORE
                             4vec-part-select
                             sv::3vec-bitor
                             4VEC-PART-INSTALL
                             SV::4VEC->LOWER
                             sv::3vec-fix)
                            (4vec)))))

(add-svex-simplify-rule 4vec-bitor-of-negated-same-var)

(def-rp-rule 4vec-bitor-with-one
  (implies (and (integerp x))
           (and (equal (sv::4vec-bitor 1 x)
                       (sv::4vec-part-install 0 1 x -1))
                (equal (sv::4vec-bitor x 1)
                       (sv::4vec-part-install 0 1 x -1))
                #|(equal (sv::4vec-bitor a a)
                (sv::3vec-fix a))||#))
  :otf-flg t
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-bitor
                             4VEC-RSH
                             4VEC-CONCAT
                             4VEC-BITNOT
                             SV::3VEC-BITNOT
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-SHIFT-CORE
                             4vec-part-select
                             sv::3vec-bitor
                             4VEC-PART-INSTALL
                             SV::4VEC->LOWER
                             sv::3vec-fix)
                            (4vec)))))

(add-svex-simplify-rule 4vec-bitor-with-one)

(local
 (encapsulate
   nil

   (local
    (defthm lemma1
      (IMPLIES t ;(natp size)
               (and (EQUAL (LOGIOR (LOGAPP SIZE -1 Y) x)
                           (LOGAPP SIZE -1 (LOGIOR Y (logtail size x))))
                    (EQUAL (LOGIOR x (LOGAPP SIZE -1 Y))
                           (LOGAPP SIZE -1 (LOGIOR Y (logtail size x))))))
      :hints (("Goal"
               :in-theory (e/d* (bitops::ihsext-inductions
                                 bitops::ihsext-recursive-redefs)
                                (ACL2::LOGAPP-0))))))

   (defthmd logior-of-logapp
     (implies t
              (equal (logior (logapp size x y)
                             (logapp size a b))
                     (logapp size
                             (logior x a)
                             (logior y b))))
     :otf-flg t
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bitops::ihsext-recursive-redefs)
                               (ACL2::LOGAPP-0)))))))

(defthm 4vec-part-install-of-4vec-bitand
  (implies (and (natp size)
                (natp start)
                (integerp new))
           (equal (sv::4vec-part-install start size (4vec-bitand val1 val2) new)
                  (4vec-bitand (sv::4vec-part-install start size val1 new)
                               (sv::4vec-part-install start size val2 new))))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-part-install
                             logior-of-logapp
                             4vec-bitand
                             4VEC-RSH
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             2vec
                             4VEC-SHIFT-CORE
                             3VEC-BITAND
                             4VEC-CONCAT
                             SV::3VEC-FIX
                             )
                            (LOGAPP-OF-LOGAPP
                             (:DEFINITION ACL2::LOGTAIL**)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGTAIL)
                             (:DEFINITION BITOPS::LOGAND$)
                             (:REWRITE ACL2::LOGTAIL-IDENTITY)
                             (:DEFINITION ACL2::BITMASKP**)
                             (:REWRITE BITOPS::LOGCDR-OF-LOGAND)
                             (:DEFINITION BITOPS::LOGIOR$)
                             (:REWRITE BITOPS::LOGAND-WITH-NEGATED-BITMASK)
                             4vec
                             )))))

(defthm 4vec-part-install-of-part-select-same-size-over-old
  (implies (and (natp size))
           (EQUAL (4VEC-PART-INSTALL 0 SIZE
                                     (4VEC-PART-SELECT 0 SIZE x)
                                     NEW)
                  (4VEC-PART-SELECT 0 SIZE NEW)))
  :hints (("Goal"
           :in-theory (e/d* (4VEC-PART-INSTALL
                             4VEC-PART-SELECT
                             4VEC-CONCAT
                             4VEC-RSH
                             4VEC-SHIFT-CORE
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             2vec)
                            (ACL2::ASSOCIATIVITY-OF-LOGAPP
                             4vec
                             )))))

(defthm 4vec-bitor-assoc
  (equal (4vec-bitor y x)
         (4vec-bitor x y))
  :hints (("Goal"
           :in-theory (e/d (4vec-bitor
                            SV::3VEC-BITOR) ()))))

(progn
  (def-rp-rule :disabled-for-acl2 t
    loghead-to-4vec-part-select
    (implies (and (natp size)
                  (integerp x))
             (and (equal (loghead size x)
                         (4vec-part-select 0 size x))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT) ()))))
  (defthmd loghead-to-4vec-part-select-side-cond
    (implies (and (natp size)
                  (integerp x))
             (integerp (4vec-part-select 0 size x)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              4vec-concat) ()))))
  (defthmd loghead-to-4vec-part-select-side-cond2
    (implies (and (natp size)
                  (integerp x))
             (natp (4vec-part-select 0 size x)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              4vec-concat) ()))))
  (rp-attach-sc loghead-to-4vec-part-select
                loghead-to-4vec-part-select-side-cond)
  (rp-attach-sc loghead-to-4vec-part-select
                loghead-to-4vec-part-select-side-cond2))

(progn
  (def-rp-rule :disabled-for-acl2 t
    logtail-to-4vec-rsh
    (implies (and (natp size)
                  (integerp x))
             (and (equal (logtail size x)
                         (4vec-rsh size x))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4vec-rsh
                              4VEC-SHIFT-CORE) ()))))
  (defthmd logtail-to-4vec-rsh-side-cond
    (implies (and (natp size)
                  (integerp x))
             (integerp (4vec-rsh size x))))

  (rp-attach-sc logtail-to-4vec-rsh
                logtail-to-4vec-rsh-side-cond)

  (add-svex-simplify-rule logtail-to-4vec-rsh))

(progn
  (def-rp-rule  :disabled-for-acl2 t
    ash-to-4vec-rsh
    (implies (and (integerp size)
                  (< size 0)
                  (integerp x))
             (and (equal (ash x size)
                         (4vec-rsh (- size) x))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4vec-rsh
                              4VEC-SHIFT-CORE) ()))))
  (defthmd ash-to-4vec-rsh-side-cond
    (implies (and (integerp size)
                  (< size 0)
                  (integerp x))
             (integerp (4vec-rsh (- size) x))))

  (rp-attach-sc ash-to-4vec-rsh
                ash-to-4vec-rsh-side-cond)

  (add-svex-simplify-rule ash-to-4vec-rsh))

(progn
  (def-rp-rule  :disabled-for-acl2 t
    ash-to-4vec-lsh
    (implies (and (integerp x)
                  (natp size))
             (and (equal (ash x size)
                         (4vec-lsh size x))))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4vec-lsh
                              4VEC-SHIFT-CORE) ()))))
  (defthmd ash-to-4vec-lsh-side-cond
    (implies (and (integerp x)
                  (natp size))
             (integerp (4vec-lsh size x)))
    :hints (("Goal"
             :in-theory (e/d (4VEC-LSH
                              4VEC-SHIFT-CORE) ()))))

  (rp-attach-sc ash-to-4vec-lsh
                ash-to-4vec-lsh-side-cond)

  (add-svex-simplify-rule ash-to-4vec-lsh))

(progn
  (def-rp-rule  :disabled-for-acl2 t
    logior-to-4vec-bitor
    (implies (and (integerp x)
                  (integerp y))
             (and (equal (logior x y)
                         (4vec-bitor x y))))
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              sv::4vec-bitor
                              SV::3VEC-BITOR) ()))))
  (def-rp-rule integerp-4vec-bitor
    (implies (and (integerp x)
                  (integerp y))
             (integerp (4vec-bitor x y)))
    :hints (("Goal"
             :in-theory (e/d (4VEC-BITOR
                              SV::3VEC-BITOR) ()))))

  (rp-attach-sc logior-to-4vec-bitor
                integerp-4vec-bitor)

  (add-svex-simplify-rule logior-to-4vec-bitor)
  (add-svex-simplify-rule integerp-4vec-bitor))

(progn
  (def-rp-rule :disabled-for-acl2 t
    logand-to-4vec-bitand
    (implies (and (integerp x)
                  (integerp y))
             (and (equal (logand x y)
                         (4vec-bitand x y))))
    
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              sv::4vec-bitand
                              SV::3VEC-BITAND) ()))))

  (rp-attach-sc logand-to-4vec-bitand
                integerp-4vec-bitand)

  (ADD-svex-simplify-rule logand-to-4vec-bitand))

(progn
  (def-rp-rule :disabled-for-acl2 t 
    lognot-to-4vec-bitnot
    (implies (and (integerp x))
             (and (equal (lognot x)
                         (sv::4vec-bitnot x))))
    
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              sv::4vec-bitnot
                              SV::3VEC-BITnot) ()))))
  (def-rp-rule integerp-4vec-bitnot
    (implies (and (integerp x))
             (integerp (sv::4vec-bitnot x)))
    :hints (("Goal"
             :in-theory (e/d ( sv::4vec-bitnot
                               4vec
                               SV::4VEC->UPPER
                               SV::4VEC->LOWER
                               SV::3VEC-BITnot) ()))))

  (rp-attach-sc lognot-to-4vec-bitnot
                integerp-4vec-bitnot)

  (add-svex-simplify-rule lognot-to-4vec-bitnot)
  (add-svex-simplify-rule integerp-4vec-bitnot))

(progn
  (def-rp-rule :disabled-for-acl2 t
    logxor-to-4vec-bitxor
    (implies (and (integerp x)
                  (integerp y))
             (and (equal (logxor x y)
                         (sv::4vec-bitxor x y))))
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              sv::4vec-bitxor
                              SV::3VEC-BITXOR) ()))))
  (def-rp-rule integerp-of-4vec-bitxor
    (implies (and (integerp x)
                  (integerp y))
             (integerp (sv::4vec-bitxor x y)))
    :hints (("Goal"
             :in-theory (e/d (sv::4vec-bitxor
                              SV::3VEC-BITXOR) ()))))

  (rp-attach-sc logxor-to-4vec-bitxor
                integerp-of-4vec-bitxor)

  (add-svex-simplify-rule logxor-to-4vec-bitxor)
  (add-svex-simplify-rule integerp-of-4vec-bitxor))

(progn
  (def-rp-rule :disabled t
    binary-+-to-4vec-plus
    (implies (and (integerp x)
                  (integerp y))
             (and (equal (+ x y)
                         (sv::4vec-plus x y))))
    :hints (("goal"
             :in-theory (e/d (sv::4vec->upper
                              sv::4vec->lower
                              sv::4vec-bitxor
                              sv::4vec-plus
                              4vec-p
                              sv::3vec-bitxor) ()))))
  (defthmd binary-+-to-4vec-plus-side-cond
    (implies (and (integerp x)
                  (integerp y))
             (integerp (sv::4vec-plus x y)))
    :hints (("goal"
             :in-theory (e/d (sv::4vec-bitxor
                              sv::3vec-bitxor) ()))))

  (rp-attach-sc binary-+-to-4vec-plus
                binary-+-to-4vec-plus-side-cond))

(progn

  (def-rp-rule integer-p-of-unary--
    (implies (integerp x)
             (integerp (- x))))
  (add-svex-simplify-rule integer-p-of-unary--)

  (def-rp-rule :disabled-for-acl2 t 
    logapp-to-4vec-concat
    (implies (and (integerp x)
                  (natp size)
                  (integerp y))
             (and (equal (logapp size x y)
                         (sv::4vec-concat size x y))))
    :hints (("Goal"
             :in-theory (e/d (sv::4vec-concat)
                             ()))))
  (defthm logapp-to-4vec-concat-side-cond
    (implies (and (integerp x)
                  (natp size)
                  (integerp y))
             (integerp (sv::4vec-concat size x y)))
    :rule-classes nil
    :hints (("Goal"
             :in-theory (e/d (sv::4vec-concat)
                             ()))))

  (rp-attach-sc logapp-to-4vec-concat
                logapp-to-4vec-concat-side-cond)

  (add-svex-simplify-rule logapp-to-4vec-concat)
  (add-svex-simplify-rule logapp-to-4vec-concat-side-cond))

(def-rp-rule :disabled-for-acl2 t 
  integerp-of--
  (implies (integerp x)
           (integerp (- x))))

(def-rp-rule 4vec-p-of-nth
  (implies (and (or (sv::4veclist-p lst)
                    (integer-listp lst))
                (< index (len lst))
                (natp index))
           (sv::4vec-p (nth index lst)))
  :hints (("Goal"
           :in-theory (e/d (4vec-p)
                           ()))))

(def-rp-rule sv::4vec-xdet-opener
  (implies (integerp x)
           (equal (sv::4vec-xdet x)
                  x))
  :hints (("goal"
           :in-theory (e/d (sv::4vec-xdet
                            4vec-fix
                            4VEC-P
                            sv::4vec->upper
                            sv::4vec->lower)
                           ()))))

(add-svex-simplify-rule sv::4vec-xdet-opener)

(local
 (defthmd 4vec-parity-to-4vec-bitxor-lemma
   (implies (and (integerp x)
                 (natp start))
            (and (equal (sv::4vec-parity
                         (sv::4vec-concat
                          1
                          (sv::4vec-part-select start 1 x)
                          (sv::4vec-part-select (1+ start) 1 x)))
                        (- (sv::4vec-bitxor (sv::4vec-part-select start 1 x)
                                            (sv::4vec-part-select (1+ start) 1 x))))
                 (equal (sv::4vec-parity (sv::4vec-part-select start 1 x))
                        (- (sv::4vec-part-select start 1 x)))))
   :hints (("Goal"
            :do-not-induct t
            :use ((:instance bitp-of-4vec-part-select)
                  (:instance bitp-of-4vec-part-select
                             (start (1+ start))))
            :cases ((equal (sv::4vec-part-select start 1 x) 0)
                    (equal (sv::4vec-part-select (1+ start) 1 x) 0))
            :in-theory (e/d (bitp)
                            (bitp-of-4vec-part-select))))))

(local
 (defthmd 4vec-parity-to-4vec-bitxor-lemma2
   (implies (and (integerp x)
                 (natp start))
            (equal (4vec-concat 1 (4vec-part-select start 1 x)
                                (4vec-part-select (+ 1 start) 1 x))
                   (4vec-part-select start 2 x)))
   :hints (("goal"
            :in-theory (e/d* (4vec-part-select
                              4vec-rsh
                              bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs
                              4vec-concat
                              sv::4vec->upper
                              4vec-shift-core)
                             (equal-of-4vec-concat-with-size=1))))))

(defthm 4vec-parity-of-4vec-part-select-to-4vec-bitxor
  (implies (and (integerp x)
                (natp start))
           (and (equal (sv::4vec-parity (sv::4vec-part-select start 2 x))
                       (- (sv::4vec-bitxor (sv::4vec-part-select start 1 x)
                                           (sv::4vec-part-select (1+ start) 1 x))))
                (equal (sv::4vec-parity (sv::4vec-part-select start 1 x))
                       (- (sv::4vec-part-select start 1 x)))))
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance 4vec-parity-to-4vec-bitxor-lemma))
           :in-theory (e/d (4vec-parity-to-4vec-bitxor-lemma2)
                           (4vec-parity-to-4vec-bitxor-lemma)))))

(def-rp-rule integerp-4vec-reduction-or-to-4vec-bitor
  (implies (integerp x)
           (integerp (sv::4vec-reduction-or x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-reduction-or
                            SV::3VEC-REDUCTION-OR
                            SV::4VEC->LOWER
                            SV::4VEC->upper)
                           ()))))

(add-svex-simplify-rule integerp-4vec-reduction-or-to-4vec-bitor)

(def-rp-rule 4vec-reduction-or-to-4vec-bitor
  (implies (and (integerp x))
           (equal (sv::4vec-reduction-or x)
                  (- (sv::4vec-bitor (sv::4vec-part-select 0 1 x)
                                     (- (sv::4vec-reduction-or (sv::4vec-rsh 1 x)))))))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-reduction-or
                             4VEC-BITOR
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             SV::3VEC-BITOR
                             4VEC-PART-SELECT
                             4VEC-CONCAT
                             4VEC-RSH
                             4VEC-SHIFT-CORE
                             SV::3VEC-REDUCTION-OR)
                            ()))))

(add-svex-simplify-rule 4vec-reduction-or-to-4vec-bitor
                        :disabled t)

(def-rp-rule integerp-of-4vec-=
  (implies (and (integerp x)
                (integerp y))
           (integerp (4vec-== x y)))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d (4vec-==
                            SV::3VEC-BITXOR
                            SV::3VEC-BITNOT
                            SV::3VEC-REDUCTION-AND
                            sv::3vec-==)
                           ()))))

(add-svex-simplify-rule integerp-of-4vec-=)

(def-rp-rule 4vec-?*-of-test=-1
  (implies t
           (equal (4vec-?* -1 x y)
                  (sv::4vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (4vec-?*
                            sv::3vec-?*)
                           ()))))

(add-svex-simplify-rule 4vec-?*-of-test=-1)

#|(skip-proofs
 (local
 (defthmd equivalence-of-integers-to-loghead-and-tails
     (implies (and (integerp x)
                   (integerp y)
                   (natp size)
                   (syntaxp (and (or (atom x)
                                     (equal (car x) 'car)
                                     (equal (car x) 'cdr))
                                 (or (atom y)
                                     (equal (car y) 'car)
                                     (equal (car y) 'cdr)))))
              (equal (equal x y)
                     (and (equal (loghead size x)
                                 (loghead size y))
                          (equal (logtail size x)
                                 (logtail size y)))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ()))))))||#

(local
 (defthmd logext-to-loappp
   (implies (and (posp size)
                 (integerp x))
            (equal (ACL2::LOGEXT size x)
                   (logapp (1- size) x
                           (- (4vec-part-select (1- size) 1 x)))))
   :hints (("Goal"
            :in-theory (e/d (sv::4vec-sign-ext
                             acl2::LOGEXT
                             4VEC-RSH
                             4VEC-CONCAT
                             SV::4VEC->LOWER
                             4VEC-SHIFT-CORE
                             4VEC-PART-SELECT)
                            ())))))

(defthm equivalence-of-logapp-with-same-size
  (implies (natp size)
           (equal (equal (logapp size x1 y1)
                         (logapp size x2 y2))
                  (and (equal (loghead size x1)
                              (loghead size x2))
                       (equal (ifix y1) (ifix y2)))))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(defthm equivalence-of-logapp-and-loghead-with-same-size
  (implies (natp size)
           (equal (equal (logapp size x1 y1)
                         (loghead size x2))
                  (and (equal (loghead size x1)
                              (loghead size x2))
                       (equal (ifix y1) 0))))
  :hints (("Goal"
           :use ((:instance equivalence-of-logapp-with-same-size
                            (y2 0)))
           :in-theory (e/d* (bitops::ihsext-inductions

                             bitops::ihsext-recursive-redefs)
                            (equivalence-of-logapp-with-same-size)))))

(local
 (defthmd 4vec-sign-ext-to-4vec-concat-lemma4
   (implies (and (natp size)
                 (integerp x)
                 )
            (equal (LOGAPP size x (- (LOGHEAD 1 (LOGTAIL size x))))
                   (logapp (1+ size) x (- (LOGHEAD 1 (LOGTAIL size x))))))
   :hints (("Goal"
            :in-theory (e/d* (bitp
                              bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthmd 4vec-sign-ext-to-4vec-concat-lemma5
   (implies (and (natp size)
                 (not (integerp x))
                 )
            (equal (LOGAPP size x (- (LOGHEAD 1 (LOGTAIL size x))))
                   (logapp (1+ size) x (- (LOGHEAD 1 (LOGTAIL size x))))))
   :hints (("Goal"
            :in-theory (e/d* (bitp
                              loghead
                              logbitp)
                             ())))))

(local
 (defthmd 4vec-sign-ext-to-4vec-concat-lemma6
   (implies (and (natp size))
            (equal (LOGAPP size x (- (LOGHEAD 1 (LOGTAIL size x))))
                   (logapp (1+ size) x (- (LOGHEAD 1 (LOGTAIL size x))))))
   :hints (("Goal"
            :cases ((integerp x))
            :use ((:instance 4vec-sign-ext-to-4vec-concat-lemma4)
                  (:instance 4vec-sign-ext-to-4vec-concat-lemma5))
            :in-theory (e/d* ()
                             ())))))

(local
 (defthmd separate-num-to-vector
   (implies (and (natp size)
                 (syntaxp (atom y)))
            (equal (ifix y)
                   (logapp size y
                           (ash y (- size)))))))

(def-rp-rule :disabled t
  4vec-sign-ext-to-4vec-concat
  (implies (and ;;(sv::4vec-p x)
            (posp size))
           (equal (sv::4vec-sign-ext size x)
                  (sv::4vec-concat size ;(1- size)
                                   x
                                   (4vec  (- (4vec-part-select (1- size) 1
                                                               (sv::4vec->upper x)))
                                          (- (4vec-part-select (1- size) 1
                                                               (sv::4vec->lower x)))))))
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance 4vec-sign-ext-to-4vec-concat-lemma6
                            (size (1- size))
                            (x (car x)))
                 (:instance 4vec-sign-ext-to-4vec-concat-lemma6
                            (size (1- size))
                            (x (cdr x)))
                 (:instance 4vec-sign-ext-to-4vec-concat-lemma6
                            (size (1- size))
                            (x x)))
           :in-theory (e/d* (sv::4vec-sign-ext
                             logext-to-loappp
                             ;;equivalence-of-integers-to-loghead-and-tails
                             ;;acl2::LOGEXT
                             ;;bitops::ihsext-inductions
                             ;;bitops::ihsext-recursive-redefs
                             4VEC-RSH
                             4VEC-CONCAT
                             sv::4vec-p
                             SV::4VEC->LOWER
                             SV::4VEC->upper

                             4VEC-SHIFT-CORE
                             4VEC-PART-SELECT)
                            (BITOPS::LOGHEAD-1-OF-LOGTAIL
                             EQUIVALENCE-OF-LOGAPP-WITH-SAME-SIZE
                             (:e tau-system)
                             (:REWRITE ACL2::LOGHEAD-IDENTITY)
                             (:DEFINITION UNSIGNED-BYTE-P)
                             (:DEFINITION INTEGER-RANGE-P)
                             (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                             (:REWRITE ACL2::LOGTAIL-IDENTITY)
                             (:REWRITE ACL2::UNSIGNED-BYTE-P-OF-LOGTAIL)
                             (:REWRITE DEFAULT-UNARY-MINUS))))))

(add-svex-simplify-rule 4vec-sign-ext-to-4vec-concat
                        :disabled t)

(def-rp-rule 4vec-sign-ext-to-4vec-concat-when-integerp
  (implies (and (integerp x)
                (posp size))
           (equal (sv::4vec-sign-ext size x)
                  (logapp size x (- (4vec-part-select (1- size) 1
                                                      x)))))
  :hints (("Goal"
           :use ((:instance 4vec-sign-ext-to-4vec-concat))
           :expand ((4VEC-CONCAT SIZE X
                                 (- (4VEC-PART-SELECT (+ -1 SIZE) 1 X))))
           :in-theory (e/d ()
                           (4vec-sign-ext-to-4vec-concat)))))

(add-svex-simplify-rule 4vec-sign-ext-to-4vec-concat-when-integerp
                        :disabled t)

(def-rp-rule :disabled t 
  4vec-sign-ext-to-4vec-concat-when-integerp-for-svex-simplify
  (implies (and (integerp x)
                (posp size))
           (equal (sv::4vec-sign-ext size x)
                  (4vec-concat size x
                               (sv::4vec-minus
                                0
                                (4vec-part-select (1- size) 1 x)))))
  :hints (("Goal"
           :use ((:instance 4vec-sign-ext-to-4vec-concat-when-integerp))
           :in-theory (e/d (sv::4vec-minus
                            4VEC-CONCAT
                            2vec
                            4VEC-PART-SELECT)
                           (4vec-sign-ext-to-4vec-concat-when-integerp
                            4vec-sign-ext-to-4vec-concat)))))

(add-svex-simplify-rule 4vec-sign-ext-to-4vec-concat-when-integerp-for-svex-simplify)

(def-rp-rule 4vec-sign-ext-when-size=0
  (equal (sv::4vec-sign-ext 0 x)
         (sv::4vec-x))
  :hints (("Goal"
           :expand (sv::4vec-sign-ext 0 x)
           :in-theory (e/d () ()))))

(add-svex-simplify-rule 4vec-sign-ext-when-size=0)

(def-rp-rule :disabled-for-acl2 t 
  logext-to-4vec-signext
  (implies (and (posp size)
                (integerp y))
           (equal (acl2::logext size y)
                  (sv::4vec-sign-ext size y)))
  :hints (("Goal"
           :expand ((sv::4vec-sign-ext size y)
                    (SV::4VEC-PART-SELECT (+ -1 SIZE)
                                          1 Y))
           :in-theory (e/d (SV::4VEC->UPPER
                            SV::4VEC->LOWER)
                           (logapp
                            SVL::4VEC-SIGN-EXT-TO-4VEC-CONCAT-WHEN-INTEGERP
                            LOGBITP
                            floor
                            evenp
                            )))))

(def-rp-rule integerp-of-4vec-sign-ext
  (implies (and (posp size)
                (integerp y))
           (integerp (sv::4vec-sign-ext size y)))
  :hints (("Goal"
           :expand ((SV::4VEC-SIGN-EXT SIZE Y))
           :in-theory (e/d (SV::4VEC->UPPER
                            SV::4VEC->LOWER)
                           (SVL::4VEC-SIGN-EXT-TO-4VEC-CONCAT-WHEN-INTEGERP)))))

(rp::rp-attach-sc logext-to-4vec-signext
                  integerp-of-4vec-sign-ext)

(add-svex-simplify-rule integerp-of-4vec-sign-ext)

;; (defthm 4vec-part-select-of-4vec-sign-ext
;;     (implies (and (natp start)
;;                   (natp size)
;;                   (natp s-size))
;;              (equal (4vec-part-select start size
;;                                       (sv::4vec-sign-ext s-size x))
;;                     (cond ((equal s-size 0)
;;                            0)
;;                           ((<= s-size start)
;;                            (4vec-part-select
;;                             0 size
;;                             (sv::4vec-sign-ext 1
;;                                                (4vec-part-select (1- s-size) 1
;;                                                                  x))))
;;                           ((and (< start s-size)
;;                                    (< s-size (+ start size)))
;;                            (4vec-part-select
;;                             0 size
;;                             (sv::4vec-sign-ext 1
;;                                                (4vec-part-select (1- s-size) 1 x))))

(def-rp-rule integerp-of-4VEC-bit?
  (implies (and (integerp test)
                (integerp then)
                (integerp else))
           (integerp (SV::4VEC-bit? test then else)))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-SIGN-EXT
                            SV::4vec->upper
                            sv::4vec->lower
                            SV::4VEC-bit?
                            SV::3VEC-BIT?
                            )
                           ()))))

(add-svex-simplify-rule integerp-of-4vec-sign-ext)

(def-rp-rule 4vec-?*-when-test-and-then-is-dont-care
  (equal (sv::4vec-?* '(-1 . 0) '(-1 . 0) x)
         '(-1 . 0))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-?*
                            SV::3VEC-?*) ()))))

(add-svex-simplify-rule 4vec-?*-when-test-and-then-is-dont-care)

(def-rp-rule integerp-of-4VEC-?*
  (implies (and (integerp test)
                (integerp then)
                (integerp else))
           (integerp (SV::4VEC-?* test then else)))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-SIGN-EXT
                            SV::4vec->upper
                            sv::4vec->lower
                            4VEC-?*
                            sv::3vec-?*
                            4VEC-FIX
                            )
                           ()))))

(add-svex-simplify-rule integerp-of-4VEC-?*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4vec-res lemmas

(rp::def-rp-rule 4vec-res-of-x-or-z
  (and (equal (sv::4vec-res x (sv::4vec-x))
              (sv::4vec-x))
       (equal (sv::4vec-res (sv::4vec-x) x)
              (sv::4vec-x))
       (equal (sv::4vec-res x (sv::4vec-z))
              (4vec-fix x))
       (equal (sv::4vec-res (sv::4vec-z) x)
              (4vec-fix x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-res
                            SV::4VEC-P
                            4VEC-FIX
                            SV::4VEC->UPPER
                            SV::4VEC->lower
                            logand)
                           ()))))

(defthm 4vec-res-commutativy
  (equal (sv::4vec-res y x)
         (sv::4vec-res x y))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-res) ()))))

;; (local
;;  (use-ihs-extensions t))

(local
 (defthm when-loghead-of--1-is-0
   (implies (and (EQUAL 0 (LOGHEAD SIZE -1))
                 (natp size))
            (equal size 0))
   :rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

(defthm logand-when-ifix-are-equal
  (implies (and (equal (ifix x) (ifix y))
                (syntaxp (not (lexorder x y))))
           (and (equal (logand x z)
                       (logand y z))
                (equal (logand z x)
                       (logand z y))))
  :rule-classes :rewrite
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(defthm logapp-of-not-integerp
  (implies (not (integerp x))
           (and (equal (logapp size x y)
                       (logapp size 0 y))
                (equal (logapp size y x)
                       (logapp size y 0))))
  :hints (("goal"
           :in-theory (e/d* (logapp
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             loghead
                             mod
                             floor
                             (:definition ash)
                             (:definition acl2::expt2$inline)
                             (:definition floor)
                             (:definition acl2::imod$inline)
                             (:definition logapp)
                             (:definition acl2::loghead$inline)
                             (:definition mod)
                             (:rewrite acl2::|(* (* x y) z)|)
                             (:rewrite acl2::|(* (if a b c) x)|)
                             (:rewrite acl2::|(* -1 x)|)
                             (:rewrite acl2::|(* 0 x)|)
                             (:rewrite acl2::|(* 1 x)|)
                             (:rewrite acl2::|(* x (+ y z))|)
                             (:rewrite acl2::|(* x (- y))|)
                             (:rewrite acl2::|(* y x)|)
                             (:rewrite acl2::|(+ (+ x y) z)|)
                             (:rewrite acl2::|(+ (if a b c) x)|)
                             (:rewrite acl2::|(+ 0 x)|)
                             (:rewrite acl2::|(+ x (if a b c))|)
                             (:rewrite acl2::|(+ y x)|)
                             (:rewrite acl2::|(- (+ x y))|)
                             (:rewrite acl2::|(- (if a b c))|)
                             (:rewrite acl2::|(/ (expt x n))|)
                             (:rewrite acl2::|(mod 0 y)|)
                             (:rewrite acl2::equal-denominator-1)
                             (:rewrite acl2::ifix-when-integerp)
                             (:rewrite acl2::ifix-when-not-integerp)
                             (:rewrite acl2::integerp==>denominator-=-1)
                             (:rewrite acl2::integerp==>numerator-=-x)
                             (:rewrite bitops::logapp-of-i-0)
                             (:rewrite bitops::logapp-of-j-0)
                             (:rewrite acl2::numerator-negative)
                             (:rewrite unary-of-unary-)
                             (:type-prescription acl2::expt-type-prescription-integerp-base)
                             (:type-prescription acl2::expt-type-prescription-nonnegative-base)
                             (:type-prescription acl2::expt-type-prescription-positive-base)
                             ash)
                            ()))))

;; (skip-proofs
;;  (defthmd logand-of-ash
;;     (implies (natp size)
;;              (equal (logand (ash x size) y)
;;                     (ash (logand x (ash y (- size))) size)))
;;   :hints (("Goal"
;;            :in-theory (e/d* (ASH-OF-LOGAND)
;;                             ())))))

;; (skip-proofs
;;  (defthm logior-of-logapp-of--1
;;      (implies (natp size)
;;               (equal (logior x
;;                              (logapp size -1 y))
;;                      (logapp size -1
;;                              (logior (ash x (- size)) y))))))

(local
 (defthm mult-with-expt-2-to-ash
   (implies (and (natp size)
                 (integerp num))
            (equal (* (expt 2 size) num)
                   (ash num size)))
   :hints (("Goal"
            :in-theory (e/d (ash
                             (:REWRITE ACL2::|(* y x)|)
                             (:REWRITE ACL2::|(floor x 1)|)
                             (:REWRITE ACL2::IFIX-WHEN-INTEGERP)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE)
                             (:TYPE-PRESCRIPTION
                              ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
                            ())))))

(defthmd ash-to-logapp
  (implies (natp size)
           (equal (ash x size)
                  (logapp size 0 x))))

(local
 (defthmd loghead-to-logapp
   (equal (loghead size x)
          (logapp size x 0))))

(local
 (defthmd LOGIOR-OF-LOGAPP-2
   (EQUAL (LOGIOR (LOGAPP SIZE X Y)
                  (loghead SIZE A))
          (LOGAPP SIZE
                  (LOGIOR X A)
                  Y))
   :hints (("Goal"
            :use ((:instance LOGIOR-OF-LOGAPP
                             (b 0)))
            :in-theory (e/d () ())))))

(local
 (defthmd LOGand-OF-LOGAPP-2
   (implies (natp size)
            (and (equal (logand (logapp size x y)
                                (loghead size x2))
                        (logapp size
                                (logand x x2)
                                0))
                 (equal (logand (loghead size x2)
                                (logapp size x y))
                        (logapp size
                                (logand x x2)
                                0))))
   :hints (("Goal"
            :use ((:instance LOGand-OF-LOGAPP
                             (y2 0)))
            :in-theory (e/d (loghead-to-logapp)
                            (LOGand-OF-LOGAPP
                             ACL2::LOGAPP-0
                             (:REWRITE BITOPS::LOGAPP-OF-J-0)
                             ACL2::LOGAND-WITH-MASK))))))

(local
 (defthmd loghead-when-not-integerp
   (implies (not (integerp x))
            (equal (loghead size x)
                   0))
   :hints (("Goal"
            :in-theory (e/d (loghead) ())))))

(local
 (defthmd 4vec-res-of-4vec-concat-when-z-lemma
   (implies (and (natp size)
                 (equal y1 (4vec-part-select 0 size (sv::4vec-z))))
            (equal (sv::4vec-res (4vec-concat size x rest)
                                 (4vec-concat size y1 y2))
                   (svl::4vec-concat size
                                     x
                                     (sv::4vec-res rest y2))))
   :hints (("goal"
            :in-theory (e/d* (sv::4vec-res
                              loghead-when-not-integerp
                              ash-to-logapp
                              sv::4vec-p
                              ;;logand-of-ash
                              bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs
                              svl::4vec-concat
                              4vec-part-select
                              4vec-fix
                              sv::4vec->upper
                              sv::4vec->lower
                              acl2::commutativity-of-logand
                              logior-of-logapp
                              logior-of-logapp-2
                              logand
                              logand-of-logapp-2
                              )
                             (;;ash-of-logand
                              (:definition acl2::bitmaskp**)
                              (:rewrite acl2::loghead-identity)
                              (:definition acl2::binary-logand)
                              (:type-prescription
                               bitops::logand-natp-type-1)
                              (:definition acl2::logapp**)
                              (:type-prescription bitp)
                              (:rewrite bitops::logcar-of-bit)
                              (:type-prescription bitops::logcdr-natp)
                              (:rewrite bitops::logcdr-of-bit)
                              (:rewrite default-<-1)
                              (:rewrite bitops::logand-with-negated-bitmask)
                              acl2::logapp-0
                              bitops::logapp-of-i-0))))))

(local
 (defthmd logtail-is-ash
   (implies (natp size)
            (equal (logtail size x)
                   (ash x (- size))))
   :hints (("Goal"
            :in-theory (e/d (logtail
                             ash
                             (:REWRITE ACL2::|(* (expt c m) (expt d n))|)
                             (:REWRITE ACL2::|(* 1 x)|)
                             (:REWRITE ACL2::|(* x (- y))|)
                             (:REWRITE ACL2::|(* y (* x z))|)
                             (:REWRITE ACL2::|(* y x)|)
                             (:REWRITE ACL2::|(+ x (- x))|)
                             (:REWRITE ACL2::|(/ (expt x n))|)
                             (:REWRITE ACL2::|(floor (* x (/ y)) z) rewriting-goal-literal|)
                             (:REWRITE ACL2::ASH-TO-FLOOR)
                             (:REWRITE ACL2::BUBBLE-DOWN-*-MATCH-1)
                             (:REWRITE ACL2::BUBBLE-DOWN-+-MATCH-1)
                             (:REWRITE ACL2::FLOOR-=-X/Y . 3)
                             (:REWRITE ACL2::IFIX-WHEN-INTEGERP)
                             (:REWRITE MULT-WITH-EXPT-2-TO-ASH)
                             (:REWRITE NFIX-OPENER)
                             (:REWRITE ACL2::NORMALIZE-ADDENDS)
                             (:REWRITE ACL2::NORMALIZE-FACTORS-GATHER-EXPONENTS)
                             (:REWRITE UNARY-OF-UNARY-)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE)
                             (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE)
                             (:TYPE-PRESCRIPTION IFIX)
                             (:TYPE-PRESCRIPTION ACL2::INTEGERP-/-EXPT-1))
                            ())))))

(local
 (defthmd ash-of-pos-size-to-logapp
   (implies (and (natp size))
            (equal (ash x size)
                   (logapp size 0 x)))))

(local
 (defthmd separate-num-to-vector-reverse
   (IMPLIES (AND (NATP SIZE))
            (EQUAL (LOGAPP SIZE y
                           (ASH y (- SIZE)))
                   (IFIX y)))))

(local
 (defthmd separate-num-to-vector-reverse-2
   (IMPLIES (AND (NATP SIZE)
                 (integerp y))
            (EQUAL (LOGAPP SIZE y
                           (ASH y (- SIZE)))
                   y))))

(defthm logapp-when-ifix-are-equal
  (implies (and (equal (ifix z) (ifix y))
                (syntaxp (not (lexorder y z))))
           (and (equal (logapp size x y)
                       (logapp size x z))
                (equal (logapp size y x)
                       (logapp size z x))))
  :rule-classes :rewrite
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(defthm ash-when-ifix-are-equal
  (implies (and (equal (ifix z) (ifix y))
                (syntaxp (not (lexorder y z))))
           (and (equal (ash y size)
                       (ash z size))))
  :rule-classes :rewrite
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(local
 (defthmd 4vec-concat-of-part-select-and-rsh-lemma
   (implies (and (natp size)
                 )
            (equal (EQUAL (IFIX x) (IFIX y))
                   (and (EQUAL (ASH x (- SIZE))
                               (ASH y (- SIZE)))
                        (EQUAL (LOGHEAD SIZE x)
                               (LOGHEAD SIZE y)))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

;; separate
(defthm 4vec-concat-of-part-select-and-rsh
  (implies (natp size)
           (equal (4VEC-CONCAT SIZE
                               (4VEC-PART-SELECT 0 SIZE y)
                               (4VEC-RSH SIZE Y))
                  (4vec-fix y)))
  :otf-flg t
  :hints (("Goal"
           :use ((:instance 4vec-concat-of-part-select-and-rsh-lemma
                            (x (car y))
                            (y (cdr y))))
           :in-theory (e/d* (4VEC-PART-SELECT
                             ;;logtail-is-ash
                             4VEC-CONCAT
                             separate-num-to-vector
                             SV::4VEC->LOWER
                             4VEC-RSH
                             4VEC-SHIFT-CORE
                             4VEC-FIX
                             separate-num-to-vector-reverse-2
                             ;;4vec-concat-of-part-select-and-rsh-lemma
                             ;;logapp
                             ;;ash-of-pos-size-to-logapp
                             ;;mult-with-expt-2-to-ash
                             )
                            (ACL2::RIGHT-SHIFT-TO-LOGTAIL
                             BITOPS::LOGAPP-OF-I-0
                             ACL2::LOGAPP-0
                             )))))

(defthmd 4vec-concat-of-term2=0
  (implies t;(natp size)
           (equal (4vec-concat size x 0)
                  (4vec-part-select 0 size x)))
  :hints (("Goal"
           :expand (4vec-concat size x 0)
           :in-theory (e/d (SV::4VEC-PART-SELECT) ()))))

;; will go to bits-sbits too (add syntaxp for y)
(defthm 4vec-res-of-4vec-concat-when-z
  (implies
   (and (natp size)
        (equal (4vec-part-select 0 size y) (4vec-part-select 0 size (sv::4vec-z))))
   (and (equal (sv::4vec-res (svl::4vec-concat size x rest) y)
               (svl::4vec-concat size
                                 x
                                 (sv::4vec-res rest (sv::4vec-rsh size y))))
        (equal (sv::4vec-res y (svl::4vec-concat size x rest))
               (svl::4vec-concat size
                                 x
                                 (sv::4vec-res rest (sv::4vec-rsh size
                                                                  y))))))
  :hints (("Goal"
           :use ((:instance 4vec-res-of-4vec-concat-when-z-lemma
                            (y1 (4vec-part-select 0 size y))
                            (y2 (4vec-rsh size y))))
           :in-theory (e/d* ()
                            (4vec-res-of-4vec-concat-when-z-lemma)))))

(local
 (defthmd 4vec-res-of-4vec-concat-when-dont-care-lemma
   (implies (and (natp size)
                 (equal y1 (4vec-part-select 0 size (sv::4vec-x))))
            (equal (sv::4vec-res (4vec-concat size x rest)
                                 (4vec-concat size y1 y2))
                   (svl::4vec-concat size
                                     (sv::4vec-x)
                                     (sv::4vec-res rest y2))))
   :hints (("goal"
            :do-not '(preprocess)
            :in-theory (e/d* (sv::4vec-res
                              loghead-when-not-integerp
                              ash-to-logapp
                              sv::4vec-p
                              ;;logand-of-ash
                              bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs
                              svl::4vec-concat
                              4vec-part-select
                              4vec-fix
                              sv::4vec->upper
                              sv::4vec->lower
                              acl2::commutativity-of-logand
                              logior-of-logapp
                              logior-of-logapp-2
                              logand
                              logand-of-logapp-2
                              )
                             (;;ash-of-logand
                              (:definition acl2::bitmaskp**)
                              (:rewrite acl2::loghead-identity)
                              (:definition acl2::binary-logand)
                              (:type-prescription
                               bitops::logand-natp-type-1)
                              (:definition acl2::logapp**)
                              (:type-prescription bitp)
                              (:rewrite bitops::logcar-of-bit)
                              (:type-prescription bitops::logcdr-natp)
                              (:rewrite bitops::logcdr-of-bit)
                              (:rewrite default-<-1)
                              (:rewrite bitops::logand-with-negated-bitmask)
                              acl2::logapp-0
                              bitops::logapp-of-i-0))))))

;; will go to bits-sbits too (add syntaxp for y)
(defthm 4vec-res-of-4vec-concat-when-dont-care
  (implies
   (and (natp size)
        (equal (4vec-part-select 0 size y) (4vec-part-select 0 size (sv::4vec-x))))
   (and (equal (sv::4vec-res (svl::4vec-concat size x rest) y)
               (svl::4vec-concat size
                                 (sv::4vec-x)
                                 (sv::4vec-res rest (sv::4vec-rsh size y))))
        (equal (sv::4vec-res y (svl::4vec-concat size x rest))
               (svl::4vec-concat size
                                 (sv::4vec-x)
                                 (sv::4vec-res rest (sv::4vec-rsh size
                                                                  y))))))
  :hints (("Goal"
           :use ((:instance 4vec-res-of-4vec-concat-when-dont-care-lemma
                            (y1 (4vec-part-select 0 size y))
                            (y2 (4vec-rsh size y))))

           :in-theory (e/d ()
                           (4vec-res-of-4vec-concat-when-dont-care-lemma)))))

(defthm logand-of-the-same
  (equal (logand a a)
         (ifix a)))

(def-rp-rule 4vec-res-of-two-same
  (implies (sv::4vec-p x)
           (equal (sv::4vec-res x x)
                  x))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-res
                            SV::4VEC-P
                            SV::4VEC->UPPER
                            SV::4VEC->lower
                            logand)
                           ()))))

(add-svex-simplify-rule 4vec-res-of-two-same)

(defthm 4vec-part-select-of-4vec-res
  (implies (natp start)
           (equal (4vec-part-select start size (sv::4vec-res x y))
                  (sv::4vec-res (4vec-part-select start size x)
                                (4vec-part-select start size y))))
  :hints (("Goal"
           :in-theory (e/d (4vec-part-select
                            4VEC-CONCAT
                            4vec-rsh
                            4vec-shift-core
                            sv::4vec-res)
                           (4vec)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4vec-bit?! lemmas

(def-rp-rule integerp-of-4vec-bit?!
  (implies (and (integerp test)
                (integerp then)
                (integerp else))
           (integerp (sv::4vec-bit?! test then else)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-bit?!) ()))))

(add-svex-simplify-rule integerp-of-4vec-bit?!)

(defthmd logand-of-loghead
  (implies (natp size)
           (equal (logand (loghead size x)
                          (loghead size x2))
                  (loghead size
                           (logand x x2))))
  :hints (("Goal"
           :use ((:instance LOGand-OF-LOGAPP
                            (y2 0)
                            (y 0)))
           :in-theory (e/d (loghead-to-logapp)
                           (LOGand-OF-LOGAPP
                            ACL2::LOGAPP-0
                            (:REWRITE BITOPS::LOGAPP-OF-J-0)
                            ACL2::LOGAND-WITH-MASK)))))

#|(skip-proofs
 (defthm lognot-of-loghead
    (implies (natp size)
             (equal (lognot (loghead size x))
                    (logapp size (lognot x) -1)))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             lognot)
())))))||#

(defthm logcons-equivalence
  (implies (and (integerp z)
                (integerp y)
                (bitp x))
           (and (equal (equal (acl2::logcons x y)
                              z)
                       (and (equal (acl2::logcar z) x)
                            (equal (acl2::logcdr z) y)))
                (equal (equal z
                              (acl2::logcons x y))
                       (and (equal (acl2::logcar z) x)
                            (equal (acl2::logcdr z) y))))))

(defthm logcar-and-cdr-of-expt-2-size
  (implies (and (natp size)
                (case-split (posp size)))
           (and (equal (ACL2::LOGCAR (EXPT 2 SIZE))
                       0)
                (equal (ACL2::LOGCdR (EXPT 2 SIZE))
                       (EXPT 2 (+ -1 SIZE)))))
  :hints (("Goal"
           :in-theory (e/d (ACL2::LOGCDR
                            ACL2::LOGCAR
                            (:REWRITE ACL2::|(* (/ c) (expt d n))|)
                            (:REWRITE ACL2::|(* 1 x)|)
                            (:REWRITE ACL2::|(floor x 2)| . 1)
                            (:REWRITE ACL2::|(mod x 2)| . 1)
                            (:REWRITE ACL2::BUBBLE-DOWN-*-MATCH-1)
                            (:REWRITE ACL2::IFIX-WHEN-INTEGERP)
                            (:REWRITE ACL2::NORMALIZE-FACTORS-GATHER-EXPONENTS)
                            (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE)
                            (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE)
                            (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
                           ()))))

(local
 (defthm lognot-of-loghead-lemma
   (IMPLIES (and (NATP SIZE))
            (EQUAL (LOGHEAD SIZE -1)
                   (+ -1 (EXPT 2 SIZE))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs
                              ACL2::|(integerp (expt x n))|)
                             ())))))

(local
 (defthm lognot-of-loghead-lemma-2
   (IMPLIES (and (NATP SIZE))
            (EQUAL (LOGNOT (+ -1 (EXPT 2 SIZE)))
                   (* -1 (EXPT 2 SIZE))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              lognot
                              bitops::ihsext-recursive-redefs
                              ACL2::|(integerp (expt x n))|)
                             ())))))

(defthm lognot-of-loghead
  (implies
   (natp size)
   (equal (lognot (loghead size x))
          (logapp size (lognot x) -1)))
  :otf-flg t
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(defthmd lognot-of-logtail
  (implies
   (natp size)
   (equal (lognot (logtail size x))
          (logtail size (lognot x))))
  :otf-flg t
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            ()))))

(defthmd logior-of-loghead
  (implies (natp size)
           (equal (logior (loghead size x)
                          (loghead size x2))
                  (loghead size
                           (logior x x2))))
  :hints (("Goal"
           :in-theory (e/d ()
                           ()))))

(defthmd logior-of-logtail
  (implies (natp size)
           (equal (logior (logtail size x)
                          (logtail size x2))
                  (logtail size
                           (logior x x2))))
  :hints (("Goal"
           :in-theory (e/d ()
                           ()))))

(defthm 4vec-part-select-of-4vec-bit?!
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size
                                    (sv::4vec-bit?! test then else))
                  (sv::4vec-bit?! (4vec-part-select start size test)
                                  (4vec-part-select start size then)
                                  (4vec-part-select start size else))))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d*
                       (;;bitops::ihsext-recursive-redefs
                        ;;   bitops::ihsext-inductions
                        sv::4vec-bit?!
;SV::4VEC->LOWER
                        LOGand-OF-LOGAPP-2
                        ;;LOGior-OF-LOGAPP-2
                        4VEC-PART-SELECT
                        ;;SV::4VEC->UPPER
                        4VEC-RSH
                        4VEC-CONCAT
                        4VEC-SHIFT-CORe
                        lognot-of-logtail
                        lognot-of-logand
                        logand-of-loghead
                        Logand-OF-logtail

                        Logior-OF-loghead
                        Logior-OF-logtail
                        )
                       (acl2::logapp-0
                        ;;BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGTAIL-OF-LOGNOT
                        4VEC
                        BITOPS::LOGTAIL-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGior
                        BITOPS::LOGtail-OF-LOGior
                        bitops::logapp-of-i-0)))))

(defthmd 4vec-part-select-of-4vec-bit?!-reverse
  (implies (and (natp start)
                (natp size))
           (equal (sv::4vec-bit?! (4vec-part-select start size test)
                                  (4vec-part-select start size then)
                                  (4vec-part-select start size else))
                  (4vec-part-select start size
                                    (sv::4vec-bit?! test then else)))))

(def-rp-rule sv::4vec-bit?!-when-test=1
  (equal (sv::4vec-bit?! 1 then else)
         (sv::4vec-concat 1
                          (4vec-part-select 0 1 then)
                          (4vec-rsh 1 else)))
  :hints (("Goal"
           :expand ((sv::4vec-bit?! 1 then else))
           :in-theory (e/d* (4VEC-PART-SELECT
                             4VEC-RSH
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-SHIFT-CORE
                             4VEC-CONCAT)
                            (4vec)))))

(add-svex-simplify-rule sv::4vec-bit?!-when-test=1)

(local
 (defthm 4vec-upper-and-lower-when-natp
   (implies (natp x)
            (and (equal (SV::4VEC->UPPER x) x)
                 (equal (SV::4VEC->lower x) x)))
   :hints (("Goal"
            :in-theory (e/d (SV::4VEC->UPPER
                             SV::4VEC->lower)
                            ())))
   :rule-classes :forward-chaining))

(local
 (defthm 4vec-when-both-are-same
   (equal (4vec x x)
          (ifix x))))

(local
 (defthm 4vec-lower-of-upper-vs
   (and (equal (sv::4vec->lower (sv::4vec->upper x))
               (sv::4vec->upper x))
        (equal (sv::4vec->lower (sv::4vec->lower x))
               (sv::4vec->lower x))
        (equal (sv::4vec->upper (sv::4vec->lower x))
               (sv::4vec->lower x))
        (equal (sv::4vec->upper (sv::4vec->upper x))
               (sv::4vec->upper x)))
   :hints (("Goal"
            :in-theory (e/d (sv::4vec->upper
                             sv::4vec->upper
                             ) ())))))

(local
 (DEFTHMd separate-num-to-vector-with-loghead
   (IMPLIES (AND (NATP SIZE)
                 (integerp y))
            (EQUAL
             (LOGAPP SIZE (loghead size Y)
                     (ASH Y (- SIZE)))
             y))))

(local
 (defthm equivalence-of-4vec-and-integerp
   (implies (and (integerp x)
                 (integerp y)
                 (integerp z))
            (equal (equal (4vec x y)
                          z)
                   (and (equal x z)
                        (equal y z))))))

(defthmd loghead-of-lognot
  (implies (and (natp size)
                (not (rp::include-fnc x 'loghead)))
           (equal (loghead size (lognot x))
                  (loghead size (lognot (loghead size x))))))

(local
 (defthmd bit?!-resolve-correct-lemma1-lemma
   (implies (and (natp shift-amount))
            (equal (LOGHEAD SHIFT-AMOUNT (LOGNOT test))
                   (loghead shift-amount
                            (lognot (loghead shift-amount test)))))))

(defthm bit?!-resolve-correct-lemma1
  (implies (and (natp shift-amount)
                (equal (4vec-part-select 0 shift-amount test)
                       (4vec-part-select 0 shift-amount -1)))
           (equal
            (4vec-concat shift-amount ;
                         then
                         (sv::4vec-bit?! (4vec-rsh shift-amount test)
                                         (4vec-rsh shift-amount then)
                                         (4vec-rsh shift-amount else)))
            (sv::4vec-bit?! test then else)))
  :hints (("goal"
           :use ((:instance 4vec-concat-of-part-select-and-rsh
                            (size shift-amount)
                            (y (sv::4vec-bit?! test
                                               then
                                               else)))
                 (:instance bit?!-resolve-correct-lemma1-lemma
                            (test (logand (sv::4vec->lower test)
                                          (sv::4vec->upper test)))))
           :in-theory (e/d* (4vec-rsh
                             4vec-concat

                             sv::4vec-shift-core
                             4vec-part-select
                             sv::4vec-bit?!
                             logand-of-logtail
                             lognot-of-logtail
                             logior-of-logtail
                             acl2::reduce-integerp-+
                             acl2::|(integerp (expt x n))|)
                            (4vec
                             4vec-concat-of-part-select-and-rsh
                             lognot-of-loghead-lemma
                             4vec->lower-opener
                             bitops::logapp-of-logtail
                             4vec->upper-opener
                             lognot-of-loghead
                             bitops::logtail-of-logand
                             ash-of-logand
                             ash-of-logior
                             ash-of-lognot
                             acl2::logapp-loghead-logtail
                             bitops::logtail-of-lognot
                             bitops::logtail-of-logior
                             acl2::logand-with-mask
                             sv::4vec-equal)))))

(defthm bit?!-resolve-correct-lemma2
  (implies (and (natp shift-amount)
                (or (equal (4vec-part-select 0 shift-amount test)
                           0)
                    (equal (4vec-part-select 0 shift-amount test)
                           (4vec-part-select 0 shift-amount (sv::4vec-x)))
                    (equal (4vec-part-select 0 shift-amount test)
                           (4vec-part-select 0 shift-amount (sv::4vec-z)))))
           (EQUAL
            (4vec-concat shift-amount ;
                         else
                         (sv::4vec-bit?! (4vec-rsh shift-amount test)
                                         (4vec-rsh shift-amount then)
                                         (4vec-rsh shift-amount else)))
            (sv::4vec-bit?! test then else)))
  :hints (("goal"
           :use ((:instance 4vec-concat-of-part-select-and-rsh
                            (size shift-amount)
                            (y (sv::4vec-bit?! test
                                               then
                                               else)))
                 (:instance bit?!-resolve-correct-lemma1-lemma
                            (test (logand (sv::4vec->lower test)
                                          (sv::4vec->upper test)))))
           :expand ((4VEC (LOGHEAD SHIFT-AMOUNT -1) 0)
                    (4VEC 0 (LOGHEAD SHIFT-AMOUNT -1))
                    (4VEC (LOGHEAD SHIFT-AMOUNT (SV::4VEC->UPPER TEST))
                          (LOGHEAD SHIFT-AMOUNT (SV::4VEC->LOWER TEST))))
           :in-theory (e/d* (4vec-rsh
                             4vec-concat

                             sv::4vec-shift-core
                             4vec-part-select
                             sv::4vec-bit?!
                             logand-of-logtail
                             lognot-of-logtail
                             logior-of-logtail
                             acl2::reduce-integerp-+
                             acl2::|(integerp (expt x n))|)
                            (4vec
                             4vec-concat-of-part-select-and-rsh
                             lognot-of-loghead-lemma
                             4vec->lower-opener
                             bitops::logapp-of-logtail
                             4vec->upper-opener
                             lognot-of-loghead
                             bitops::logtail-of-logand
                             ash-of-logand
                             ash-of-logior
                             ash-of-lognot
                             acl2::logapp-loghead-logtail
                             bitops::logtail-of-lognot
                             bitops::logtail-of-logior
                             acl2::logand-with-mask
                             sv::4vec-equal)))))

(defthm 4vec-bit?!-when-test=-1
  (equal (SV::4VEC-BIT?! -1 THEN ELSE)
         (4vec-fix then))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-BIT?!

                            SV::4VEC->UPPER
                            4VEC-FIX
                            SV::4VEC->LOWER)
                           ()))))

(defthm 4vec-bit?!-when-test=-1-masked
  (implies (and (natp start)
                (natp size))
           (equal (SV::4VEC-BIT?! (4VEC-PART-SELECT START SIZE -1)
                                  (4VEC-PART-SELECT START SIZE then)
                                  (4VEC-PART-SELECT START SIZE else))
                  (4VEC-PART-SELECT START SIZE
                                    then)))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bit?!
                            (test -1)))
           :in-theory (e/d (4vec-part-select-of-4vec-bit?!-reverse
                            4VEC-PART-SELECT)
                           (4vec-part-select-of-4vec-bit?!)))))

(defthm 4vec-bit?!-when-test=dont-care
  (equal (SV::4VEC-BIT?! '(-1 . 0)  THEN ELSE)
         (4vec-fix else))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-BIT?!

                            SV::4VEC->UPPER
                            4VEC-FIX
                            SV::4VEC->LOWER)
                           ()))))

(defthm 4vec-bit?!-when-test=z
  (equal (SV::4VEC-BIT?! '(0 . -1)  THEN ELSE)
         (4vec-fix else))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-BIT?!

                            SV::4VEC->UPPER
                            4VEC-FIX
                            SV::4VEC->LOWER)
                           ()))))

(defthm 4vec-bit?!-when-test=-dont-care-or-z-masked
  (implies (and (natp start)
                (natp size))
           (and (equal (SV::4VEC-BIT?! (4VEC-PART-SELECT START SIZE '(-1 . 0))
                                       (4VEC-PART-SELECT START SIZE then)
                                       (4VEC-PART-SELECT START SIZE else))
                       (4VEC-PART-SELECT START SIZE
                                         else))
                (equal (SV::4VEC-BIT?! (4VEC-PART-SELECT START SIZE '(0 . -1))
                                       (4VEC-PART-SELECT START SIZE then)
                                       (4VEC-PART-SELECT START SIZE else))
                       (4VEC-PART-SELECT START SIZE
                                         else))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bit?!
                            (test '(-1 . 0)))
                 (:instance 4vec-part-select-of-4vec-bit?!
                            (test '(0 . -1))))
           :expand ((4VEC-PART-SELECT START SIZE (4VEC-FIX ELSE)))
           :in-theory (e/d (4vec-part-select-of-4vec-bit?!-reverse
                            4VEC-PART-SELECT)
                           (4vec-part-select-of-4vec-bit?!)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4vec-parity-lemmas

(def-rp-rule integerp-4vec-parity
  (implies (natp x)
           (integerp (sv::4vec-parity x)))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-parity
                            2vec)
                           ()))))

(add-svex-simplify-rule integerp-4vec-parity)

(def-rp-rule 4vec-parity-to-bitxor
  (implies (natp x)
           (equal (sv::4vec-parity x)
                  (- (sv::4vec-bitxor (4vec-part-select 0 1 x)
                                      (- (sv::4vec-parity
                                          (4vec-rsh 1 x)))))))
  :hints (("Goal"
           :expand ((ACL2::PARITY (+ 1 (INTEGER-LENGTH X))
                                  X))
           :cases ((equal (INTEGER-LENGTH X) 0))
           :in-theory (e/d (sv::4vec-parity
                            4VEC-RSH
                            sv::4vec-shift-core
                            2vec
                            4VEC-PART-SELECT
                            sv::4vec-bitxor
                            4VEC-CONCAT)
                           ()))))
;;;; 4vec-bit? lemmas

(local
 (defthm 4VEC->LOWER-of-4vec
   (equal (sv::4VEC->LOWER (4vec x y))
          (ifix y))
   :hints (("Goal"
            :in-theory (e/d (sv::4VEC->LOWER 4vec)
                            ())))))

(local
 (defthm 4VEC->upper-of-4vec
   (equal (sv::4VEC->upper (4vec x y))
          (ifix x))
   :hints (("Goal"
            :in-theory (e/d (sv::4VEC->LOWER 4vec)
                            ())))))

(defthm 4vec-part-select-of-4vec-bit?
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size
                                    (sv::4vec-bit? test then else))
                  (sv::4vec-bit? (4vec-part-select start size test)
                                 (4vec-part-select start size then)
                                 (4vec-part-select start size else))))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d*
                       (sv::4vec-bit?
                        sv::3vec-bit?
                        SV::3VEC-FIX

                        LOGand-OF-LOGAPP-2
                        ;;LOGior-OF-LOGAPP-2
                        4VEC-PART-SELECT
                        ;;SV::4VEC->UPPER
                        4VEC-RSH
                        4VEC-CONCAT
                        4VEC-SHIFT-CORe
                        lognot-of-logtail
                        lognot-of-logand
                        logand-of-loghead
                        Logand-OF-logtail

                        Logior-OF-loghead
                        Logior-OF-logtail
                        )
                       (acl2::logapp-0
                        (:DEFINITION INTEGER-RANGE-P)
                        (:DEFINITION UNSIGNED-BYTE-P)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-LOGIOR)
                        (:REWRITE ACL2::LOGHEAD-IDENTITY)
                        (:REWRITE ACL2::LOGTAIL-UNSIGNED-BYTE-P)
                        (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2)
                        (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2)
                        (:LINEAR ACL2::LOGAND-UPPER-BOUND . 2)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-LOGAND)
                        (:REWRITE ACL2::LOGTAIL-IDENTITY)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-OF-LOGAND-2)
                        (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP)
                        ;;BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGTAIL-OF-LOGNOT
                        SV::4VEC->LOWER-OF-4VEC
                        SV::4VEC-EQUAL
                        4VEC
                        BITOPS::LOGTAIL-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGior
                        BITOPS::LOGtail-OF-LOGior
                        bitops::logapp-of-i-0)))))

(def-rp-rule 4vec-rsh-of-4vec-bit?
  (implies (natp size)
           (equal (4vec-rsh size (sv::4vec-bit? test then else))
                  (sv::4vec-bit? (sv::4vec-rsh size test)
                                 (sv::4vec-rsh size then)
                                 (sv::4vec-rsh size else))))
  :hints (("Goal"
           :do-not-induct t
           :expand ((SV::4VEC->UPPER SIZE)
                    (SV::4VEC->lower SIZE))
           :in-theory (e/d*
                       (sv::4vec-bit?
                        sv::3vec-bit?
                        SV::3VEC-FIX

                        LOGand-OF-LOGAPP-2
                        ;;LOGior-OF-LOGAPP-2
                        4VEC-PART-SELECT
                        ;;SV::4VEC->UPPER
                        4VEC-RSH
                        4VEC-CONCAT
                        4VEC-SHIFT-CORe
                        lognot-of-logtail
                        lognot-of-logand
                        logand-of-loghead
                        Logand-OF-logtail

                        Logior-OF-loghead
                        Logior-OF-logtail
                        )
                       (acl2::logapp-0
                        (:DEFINITION INTEGER-RANGE-P)
                        (:DEFINITION UNSIGNED-BYTE-P)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-LOGIOR)
                        (:REWRITE ACL2::LOGHEAD-IDENTITY)
                        (:REWRITE ACL2::LOGTAIL-UNSIGNED-BYTE-P)
                        (:LINEAR BITOPS::LOGAND->=-0-LINEAR-2)
                        (:LINEAR BITOPS::UPPER-BOUND-OF-LOGAND . 2)
                        (:LINEAR ACL2::LOGAND-UPPER-BOUND . 2)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-PLUS)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-LOGAND)
                        (:REWRITE ACL2::LOGTAIL-IDENTITY)
                        (:REWRITE ACL2::UNSIGNED-BYTE-P-OF-LOGAND-2)
                        (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP)
                        ;;BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGTAIL-OF-LOGNOT
                        SV::4VEC->LOWER-OF-4VEC
                        SV::4VEC-EQUAL
                        4VEC
                        BITOPS::LOGTAIL-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGAND
                        BITOPS::LOGHEAD-OF-LOGior
                        BITOPS::LOGtail-OF-LOGior
                        bitops::logapp-of-i-0)))))

(add-svex-simplify-rule 4vec-rsh-of-4vec-bit?)

(defthmd 4vec-part-select-of-4vec-bit?-reverse
  (implies (and (natp start)
                (natp size))
           (equal (sv::4vec-bit? (4vec-part-select start size test)
                                 (4vec-part-select start size then)
                                 (4vec-part-select start size else))
                  (4vec-part-select start size
                                    (sv::4vec-bit? test then else))))
  :hints (("Goal"
           :do-not-induct t)))

(defthm 4vec-bit?-when-test=0
  (implies (and (natp start)
                (natp size))
           (equal (sv::4vec-bit? 0 then else)
                  (sv::4vec-fix else)))
  :hints (("Goal"
           :expand ((sv::4vec-bit? 0 then else)
                    (SV::3VEC-BIT? 0 THEN ELSE))
           :in-theory (e/d (SV::4VEC->UPPER
                            4VEC-FIX
                            SV::4VEC->LOWER)
                           ()))))

(defthm 4vec-bit?-when-test=-1
  (equal (SV::4VEC-BIT? -1 THEN ELSE)
         (4vec-fix then))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-BIT?
                            SV::3VEC-BIT?
                            SV::4VEC->UPPER
                            4VEC-FIX
                            SV::4VEC->LOWER)
                           ()))))

(defthm 4vec-bit?-when-test=-1-masked
  (implies (and (natp start)
                (natp size))
           (equal (SV::4VEC-BIT? (4VEC-PART-SELECT START SIZE -1)
                                 (4VEC-PART-SELECT START SIZE then)
                                 (4VEC-PART-SELECT START SIZE else))
                  (4VEC-PART-SELECT START SIZE
                                    then)))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bit?
                            (test -1)))
           :in-theory (e/d (4vec-part-select-of-4vec-bit?-reverse
                            4VEC-PART-SELECT)
                           (4vec-part-select-of-4vec-bit?)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sv::4vec-bit?
(defthm 4vec-part-select-of-4vec-bit?
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size
                                    (sv::4vec-bit? test then else))
                  (sv::4vec-bit? (4vec-part-select start size test)
                                 (4vec-part-select start size then)
                                 (4vec-part-select start size else)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;4vec-?!

(def-rp-rule 4vec-part-select-of-4vec-?!
  (implies (and (natp start)
                (natp size))
           (equal (4vec-part-select start size (sv::4vec-?! test x y))
                  (sv::4vec-?! test
                               (4vec-part-select start size x )
                               (4vec-part-select start size y))))
  :otf-flg t
  :hints (("goal"

           :in-theory (e/d* (sv::4vec-?!)
                            (sv::4vec)))))

;;;;
(defthm 4vec-part-select-of-4vec
  (implies (and (natp start)
                (natp size)
                (integerp x)
                (integerp y))
           (equal (4vec-part-select start size (4vec x y))
                  (4vec (4vec-part-select start size x)
                        (4vec-part-select start size y))))
  :hints (("Goal"

           :expand ((4VEC-PART-SELECT START SIZE (CONS X Y))
                    (4VEC-SHIFT-CORE (- START) (CONS X Y))
                    (4VEC-PART-SELECT START SIZE X)
                    (4VEC-PART-SELECT START SIZE Y)
                    (4VEC-RSH START (CONS X Y)))
           :in-theory (e/d (4vec
                            4VEC-SHIFT-CORE
                            4vec-part-select
                            4vec-concat
                            4vec-rsh)
                           ()))))

(defthm 4vec-part-select-of-repeated-bit
  (implies (and (natp start)
                (natp size)
                (syntaxp (and (not (equal start '0))
                              (not (equal start ''0))))
                (bitp x))
           (equal (4vec-part-select start size (- x))
                  (4vec-part-select 0 size (- x))))
  :hints (("Goal"
           :expand ((4VEC-PART-SELECT START SIZE -1)
                    (4VEC-RSH START -1)
                    (4VEC-PART-SELECT 0 SIZE -1)
                    (4VEC-PART-SELECT START SIZE 0)
                    (4VEC-PART-SELECT 0 SIZE 0)
                    (4VEC-SHIFT-CORE (- START) -1)
                    )
           :in-theory (e/d (bitp) ()))))

(defthm 4vec->upper-and-lower-of-4vec-part-select
  (implies (and (natp start)
                (natp size))
           (and (equal (sv::4vec->upper (4vec-part-select start size x))
                       (4vec-part-select start size (sv::4vec->upper x)))
                (equal (sv::4vec->lower (4vec-part-select start size x))
                       (4vec-part-select start size (sv::4vec->lower x)))))
  :hints (("Goal"

           :in-theory (e/d (SV::4VEC->UPPER
                            4VEC-RSH
                            4VEC-SHIFT-CORE
                            4VEC-CONCAT
                            4vec-part-select
                            ) ()))))

(defthm 4vec->upper-and-lower-of-4vec-concat
  (implies (and (natp size))
           (and (equal (sv::4vec->upper (4vec-concat size x y))
                       (4vec-concat size (sv::4vec->upper x) (sv::4vec->upper y)))
                (equal (sv::4vec->lower (4vec-concat size x y))
                       (4vec-concat size (sv::4vec->lower x) (sv::4vec->lower y)))))
  :hints (("Goal"

           :in-theory (e/d (;;SV::4VEC->UPPER
                            ;;SV::4VEC->lower
                            4VEC-RSH
                            4VEC-SHIFT-CORE
                            4VEC-CONCAT
                            4vec-part-select
                            ) ()))))

(local
 (defthmd logand-of-loghead-2-lemma
   (implies (and (unsigned-byte-p size x)
                 (integerp y))
            (equal (loghead size (logand x y))
                   (logand x y)))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             (LOGAND-OF-LOGAPP$-LEMMA
                              BITOPS::LOGHEAD-OF-LOGAND))))))

(local
 (defthmd loghead-when-non-natp-size
   (implies (not (natp size))
            (equal (loghead size x)
                   0))
   :hints (("Goal"
            :in-theory (e/d (loghead) ())))))

(local
 (defthmd loghead-when-non-integerp
   (implies (not (integerp x))
            (equal (loghead size x)
                   0))
   :hints (("Goal"
            :in-theory (e/d (loghead) ())))))

(local
 (defthmd logand-when-non-integerp
   (implies (not (integerp x))
            (and (equal (logand x y)
                        0)
                 (equal (logand y x)
                        0)))
   :hints (("Goal"
            :in-theory (e/d (logand) ())))))

(local
 (defthmd logand-of-loghead-2
   (implies (and ;;(natp size)
             ;;(integerp x)
             ;;(integerp y)
             )
            (and
             (equal (logand x (loghead size y))
                    (loghead size (logand x y)))
             (equal (logand (loghead size x) y)
                    (loghead size (logand x y)))))
   :otf-flg t
   :hints (("Goal"
            :do-not-induct t
            :use ((:instance logand-of-loghead-2-lemma
                             (x (loghead size x))
                             (y y))
                  (:instance logand-of-loghead-2-lemma
                             (x (loghead size y))
                             (y x)))
            :in-theory (e/d* (loghead-when-non-natp-size
                              loghead-when-non-integerp
                              logand-when-non-integerp)
                             ())))))

(def-rp-rule 4vec-bitand-of-4vec-bitnot$-with-same
  (implies (and (integerp x)
                (natp size))
           (and
            (equal (4vec-bitand (4vec-bitnot$ size x)
                                x)
                   0)
            (equal (4vec-bitand x
                                (4vec-bitnot$ size x))
                   0)))
  :hints (("Goal"
           :in-theory (e/d* (logand-of-loghead-2
                             4vec-bitand
                             4vec-bitnot$
                             4VEC-BITNOT
                             SV::3VEC-BITNOT
                             4VEC-PART-SELECT
                             3VEC-BITAND
                             4VEC-CONCAT
                             )
                            ()))))

(add-svex-simplify-rule 4vec-bitand-of-4vec-bitnot$-with-same)

(add-svex-simplify-rule sv::4vec-fix-of-4vec)

(def-rp-rule 4vec-fix-of-the-same
  (equal (4vec-fix (cons x x))
         (ifix x))
  :hints (("Goal"
           :in-theory (e/d (4vec-fix) ()))))

(def-rp-rule 4vec-rsh-of-4vec-bitnot$
  (implies (and (natp size1)
                (natp size2)
                (syntaxp (and (quotep size1)
                              (quotep size2))))
           (equal (4vec-rsh size1 (4vec-bitnot$ size2 x))
                  (if (>= size1 size2)
                      0
                    (4vec-bitnot$ (- size2 size1) (4vec-rsh size1 x)))))
  :otf-flg t

  :hints (("Goal"
           :expand (
                    )
           :in-theory (e/d* (4VEC-PART-SELECT-better-opener
                             4vec-rsh-better-opener
                             ;;4vec-rsh-of-integerp
                             ;;4vec-rsh-of-not-4vec-p
                             4vec-bitnot$
                             ;;4vec-part-select-drop-start-insert-4vec-rsh
                             LOGNOT-OF-LOGTAIL
                             ;;loghead-of-lognot
                             ;;BITOPS::LOGTAIL-OF-LOGNOT
                             ;;BITOPS::LOGHEAD-OF-LOGIOR
                             ;;BITOPS::LOGtail-OF-LOGIOR
                             lognot-of-logand
                             lognot-of-logior
                             4VEC-SHIFT-CORE
                             ;;bitops::ihsext-recursive-redefs
                             ;;bitops::ihsext-inductions
                             4VEC-BITNOT
                             ;;4VEC-PART-SELECT
                             SV::4VEC->UPPER
                             SV::4VEC->LOWER
                             SV::3VEC-BITNOT
                             SV::3VEC-FIX
                             4VEC-CONCAT
                             ;;4vec-rsh
                             )
                            (4vec
                             sv::4vec-p
                             SV::4VEC-FIX-UNDER-4VEC-EQUIV
                             4VEC-PART-SELECT-OF-4VEC-RSH
                             ;;SV::2VEC-P$INLINE
                             ;;SV::2VEC->VAL$INLINE
                             ;;SV::3VEC-FIX-OF-3VEC-P
                             BITOPS::LOGTAIL-OF-LOGNOT
                             ;;BITOPS::LOGHEAD-OF-LOGIOR
                             ;;BITOPS::LOGtail-OF-LOGIOR
                             )))))

(add-svex-simplify-rule 4vec-rsh-of-4vec-bitnot$)

(local
 (defthmd 3vec-p-of-4vec-part-select-lemma
   (implies (and (EQUAL x 0)
                 (natp start)
                 (natp size))
            (equal (4vec-part-select start size x)
                   0))
   :hints (("Goal"
            :in-theory (e/d (4vec-part-select) ())))))

(def-rp-rule 3vec-p-of-4vec-part-select
  (implies (and (sv::3vec-p x)
                (natp start)
                (natp size))
           (sv::3vec-p (4vec-part-select start size x)))
  :hints (("Goal"
           :use ((:instance 3vec-p-of-4vec-part-select-lemma
                            (x (LOGAND (SV::4VEC->LOWER X)
                                       (LOGNOT (SV::4VEC->UPPER X)))))
                 (:instance logand-of-loghead-2
                            (x (LOGNOT (LOGHEAD SIZE
                                                (LOGTAIL START (SV::4VEC->UPPER X)))))
                            (y (LOGTAIL START (SV::4VEC->LOWER X)))))
           :in-theory (e/d* (4VEC-PART-SELECT

                             LOGIOR-OF-LOGHEAD-SAME-SIZE
                             ;;LOGand-OF-LOGHEAD-SAME-SIZE
                             ;;SV::3VEC-FIX
                             SV::3VEC-P
                             ;;SV::4VEC-P
                             4VEC-FIX
                             4VEC-RSH
                             4VEC-SHIFT-CORE
                             4VEC-CONCAT
                             LOGIOR-OF-LOGTAIL-SAME-SIZE
                             )
                            (LOGNOT-OF-LOGHEAD
                             ;;BITOPS::LOGHEAD-OF-LOGIOR
                             ACL2::LOGAPP-0
                             ;;BITOPS::LOGTAIL-OF-LOGIOR
                             3VEC-FIX-OF-3VEC-P
                             ;;BITOPS::LOGHEAD-OF-LOGand
                             )))))

(def-rp-rule 3vec-fix-of-4vec-part-select
  (implies (and (sv::3vec-p x)
                (natp start)
                (natp size))
           (equal (sv::3vec-fix
                   (4vec-part-select start size x))
                  (4vec-part-select start size x))))

(add-svex-simplify-rule 3vec-fix-of-4vec-part-select)

(def-rp-rule 3vec-fix-of-4vec-bitnot$
  (implies (natp size)
           (equal (sv::3vec-fix (4vec-bitnot$ size x))
                  (4vec-bitnot$ size x)))
  :hints (("Goal"
           :expand (4VEC-BITNOT$ SIZE X)
           :in-theory (e/d () ()))))

(add-svex-simplify-rule 3vec-fix-of-4vec-bitnot$)

(def-rp-rule 3vec-p-of-4vec-concat$
  (implies (and (integerp x)
                (sv::3vec-p y)
                (sv::3vec-p z))
           (and (sv::3vec-p (4vec-concat x y z))
                (sv::3vec-p (4vec-concat$ x y z))))
  :hints (("Goal"
           :in-theory (e/d (4vec-concat
                            4vec-concat$
                            sv::3vec-p)
                           ()))))

(add-svex-simplify-rule 3vec-p-of-4vec-concat$)

(defthm 3vec-p-of-4vec-fix
  (IMPLIES (AND (SV::3VEC-P Y))
           (SV::3VEC-P (4VEC-FIX Y)))
  :hints (("Goal"
           :in-theory (e/d (4VEC-FIX
                            SV::3VEC-P) ()))))





(def-rp-rule 3vec-fix-of-4vec-==
  (equal (sv::3vec-fix (sv::4vec-== x y))
         (sv::4vec-== x y))
  :hints (("Goal"
           :expand ((sv::4vec-== x y))
           :in-theory (e/d (SV::3VEC-==)
                           ()))))

(add-svex-simplify-rule 3vec-fix-of-4vec-==)

(local
 (defthmd 3vec-fix-of-4vec-?-lemma
   (implies (and (equal (logior a b) (logand a b)))
            (and
             (equal (logior (logand a b) other)
                    (logior a b other))
             (equal (logior other (logand a b))
                    (logior a b other))))))

(local
 (defthmd 3vec-fix-of-4vec-?-lemma2
   (implies (and (EQUAL (LOGIOR (SV::4VEC->LOWER Y)
                                (SV::4VEC->UPPER Y))
                        (LOGAND (SV::4VEC->LOWER Y)
                                (SV::4VEC->UPPER Y)))
                 (EQUAL (LOGIOR (SV::4VEC->LOWER Z)
                                (SV::4VEC->UPPER Z))
                        (LOGAND (SV::4VEC->LOWER Z)
                                (SV::4VEC->UPPER Z))))
            (and (equal (LOGIOR (LOGAND (SV::4VEC->LOWER Y)
                                        (SV::4VEC->UPPER Y))
                                (LOGAND (SV::4VEC->LOWER Z)
                                        (SV::4VEC->UPPER Z)))
                        (LOGIOR (SV::4VEC->LOWER Y)
                                (SV::4VEC->LOWER Z)
                                (SV::4VEC->UPPER Y)
                                (SV::4VEC->UPPER Z)))
                 #|(equal (EQUAL (LOGIOR (SV::4VEC->LOWER Y)
                 (SV::4VEC->LOWER Z)
                 (SV::4VEC->UPPER Y)
                 (SV::4VEC->UPPER Z))
                 (LOGAND (SV::4VEC->LOWER Y)
                 (SV::4VEC->LOWER Z)
                 (SV::4VEC->UPPER Y)
                 (SV::4VEC->UPPER Z)))
                 t)|#))
   :hints (("Goal"
            :use (#|(:instance 3vec-fix-of-4vec-?-lemma
                  (a (SV::4VEC->LOWER Y))
                  (b (SV::4VEC->UPPER Y))
                  (x (LOGIOR (SV::4VEC->LOWER Y)
                  (SV::4VEC->UPPER Y)))
                  (other (LOGAND (SV::4VEC->LOWER Z)
                  (SV::4VEC->UPPER Z))))
                  (:instance 3vec-fix-of-4vec-?-lemma
                  (a (SV::4VEC->LOWER z))
                  (b (SV::4VEC->UPPER z))
                  (x (LOGIOR (SV::4VEC->LOWER z)
                  (SV::4VEC->UPPER z)))
                  (other (LOGAND (SV::4VEC->LOWER y)
                  (SV::4VEC->UPPER y))))|#)
            :in-theory (e/d (3vec-fix-of-4vec-?-lemma)
                            (LOGAND-OF-THE-SAME
                             (:TYPE-PRESCRIPTION ACL2::BINARY-LOGIOR)))))))

(local
 (defthm 4vec-fix-when-integerp
   (implies (integerp x)
            (equal (4vec-fix x) x))
   :hints (("Goal"
            :in-theory (e/d (4vec-fix) ())))))

(local
 (defthm 4vec-fix-when-consed-integerp
   (implies (and (integerp x)
                 (integerp y)
                 (equal x y))
            (equal (4vec-fix (cons x y)) x))
   :hints (("Goal"
            :in-theory (e/d (4vec-fix) ())))))

(local
 (defthm 4vec-fix-when-consed-integerp-2
   (implies (and (integerp x)
                 (integerp y)
                 (not (equal x y)))
            (equal (4vec-fix (cons x y)) (cons x y)))
   :hints (("Goal"
            :expand (4vec-fix (cons x y))
            :in-theory (e/d (4vec-fix) ())))))

(local
 (defthm logior-of-logand-with-shared-var
   (implies (and (integerp a)
                 (integerp other))
            (equal (logior a (logand a other))
                   a))
   :hints (("Goal"
            :in-theory (e/d* (;;logior
                              bitops::ihsext-recursive-redefs
                              bitops::ihsext-inductions
                              )
                             ())))))

(local
 (defthm 3vec-fix-of-4vec-?-lemma3
   (implies (and (integerp a)
                 (integerp b)
                 (integerp c)
                 (integerp d))
            (equal (logior a b c d
                           (logand a b c d))
                   (logior a b c d)))
   :hints (("Goal"
            :use ((:instance logior-of-logand-with-shared-var
                             (a d)
                             (other (logand a b c))))
            :in-theory (e/d* (;;logior
                              ACL2::LOGNOT-LOGAND)
                             ())))))

(def-rp-rule 3vec-fix-of-4vec-?
  (and (equal (sv::3vec-fix (sv::4vec-? x y z))
              (sv::4vec-? x
                          (sv::3vec-fix y)
                          (sv::3vec-fix z))))
  :otf-flg t
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-?
                             3vec-fix-of-4vec-?-lemma
                             ;;3vec-fix-of-4vec-?-lemma2
                             sv::3vec-?
                             ;;4vec-fix
                             SV::3VEC-FIX
                             ;;sv::3vec-p
                             ;;sv::3vec-?
                             )
                            (ACL2::LOGIOR-=-0
                             4vec
                             )))))

(add-svex-simplify-rule 3vec-fix-of-4vec-?)

(defthm 4vec-==-1-to-bits-of-integer
  (implies (and (integerp x)
                (natp start))
           (and (equal (sv::4vec-== 1
                                    (4vec-part-select start 1 x))
                       (sv::4vec-minus 0 (4vec-part-select start 1 x)))
                (equal (sv::4vec-== 1
                                    (4vec-part-select start 1 x))
                       (sv::4vec-minus 0 (4vec-part-select start 1 x)))))
  :hints (("Goal"
           :use ((:instance BITP-OF-4VEC-PART-SELECT))
           :in-theory (e/d (sv::4vec-==
                            SV::4VEC-MINUS
                            SV::3VEC-==
                            SV::3VEC-BITXOR
                            SV::3VEC-BITNOT
                            SV::3VEC-REDUCTION-AND
                            SV::BOOL->VEC
                            bitp
                            )
                           (BITP-OF-4VEC-PART-SELECT
                            EQUAL-OF-4VEC-CONCAT-WITH-SIZE=1)))))

(progn
  (defthm 4vec-?*-to-if-dummy-sc
    (implies (integerp test)
             (integerp test))
    :rule-classes nil)

  (defthmd 4vec-?*-to-if
    (implies (integerp test)
             (equal (sv::4vec-?* test then else)
                    (if (equal test 0)
                        (sv::4vec-fix else)
                      (sv::4vec-fix then))))
    :hints (("Goal"
             :in-theory (e/d (4VEC-?*
                              SV::3VEC-?*)
                             ()))))

  (add-svex-simplify-rule 4vec-?*-to-if
                          :outside-in :both
                          :disabled t)
  ;;(add-rp-rule 4vec-?*-to-if :outside-in t)

  (defthmd 4vec-?-to-if
    (implies (integerp test)
             (equal (sv::4vec-? test then else)
                    (if (equal test 0)
                        (sv::4vec-fix else)
                      (sv::4vec-fix then))))
    :hints (("Goal"
             :in-theory (e/d (4VEC-?
                              SV::3VEC-?)
                             ()))))

  (add-svex-simplify-rule 4vec-?-to-if
                          :outside-in :both
                          :disabled t)
  ;;(add-rp-rule 4vec-?-to-if :outside-in t)

  (defthmd 4vec-?!-to-if
    (implies (integerp test)
             (equal (sv::4vec-?! test then else)
                    (if (equal test 0)
                        (sv::4vec-fix else)
                      (sv::4vec-fix then))))
    :hints (("Goal"
             :in-theory (e/d (sv::4VEC-?!
                              SV::3VEC-?)
                             ()))))

  (add-svex-simplify-rule 4vec-?!-to-if :outside-in :both
                          :disabled t)
  ;;(add-rp-rule 4vec-?!-to-if :outside-in t)

  (def-rp-rule 4vec-p-of-if
    (implies (and (4vec-p x)
                  (4vec-p y))
             (4vec-p (if test x y))))

  (add-svex-simplify-rule 4vec-p-of-if)

  (rp-attach-sc 4vec-?*-to-if
                4vec-?*-to-if-dummy-sc)
  (rp-attach-sc 4vec-?!-to-if
                4vec-?*-to-if-dummy-sc)
  (rp-attach-sc 4vec-?-to-if
                4vec-?*-to-if-dummy-sc))

(defthm equal-of-4vec-==-of-1-dummy-sc
  (implies (bitp x)
           (bitp x))
  :rule-classes nil)

(def-rp-rule equal-of-4vec-==-of-1
  (implies (bitp x)
           (and (equal (equal (sv::4vec-== 1 x) 0)
                       (equal x 0)))))

(add-svex-simplify-rule equal-of-4vec-==-of-1)

(def-rp-rule not-equal-to-0-for-bitp
  (implies (bitp x)
           (equal (if (equal x 0) nil t)
                  (equal x 1))))

(add-svex-simplify-rule not-equal-to-0-for-bitp)

(def-rp-rule 4vec-branch-of-4vec-==-when-bitp
  (implies (bitp x)
           (and (equal (sv::4vec-?* (4vec-== 1 x) then else)
                       (sv::4vec-?* x then else))
                (equal (sv::4vec-? (4vec-== 1 x) then else)
                       (sv::4vec-? x then else))
                (equal (sv::4vec-?! (4vec-== 1 x) then else)
                       (sv::4vec-?! x then else))))
  :hints (("Goal"
           :in-theory (e/d (bitp
                            sv::4VEC-?
                            sv::4VEC-?!
                            SV::3VEC-?)
                           ()))))

(add-svex-simplify-rule 4vec-branch-of-4vec-==-when-bitp)

(rp-attach-sc 4vec-branch-of-4vec-==-when-bitp
              equal-of-4vec-==-of-1-dummy-sc)

(rp-attach-sc equal-of-4vec-==-of-1
              equal-of-4vec-==-of-1-dummy-sc)

(rp-attach-sc not-equal-to-0-for-bitp
              equal-of-4vec-==-of-1-dummy-sc)

#|(def-rp-rule 4vec-rsh-of-if
  (equal (4vec-rsh size (if test then else))
         (if test
             (4vec-rsh size then)
           (4vec-rsh size else)))
  :hints (("Goal"
           :in-theory (e/d () ()))))

(add-svex-simplify-rule 4vec-rsh-of-if
                        :outside-in :both)|#

(def-rp-rule 4vec-?*-of-0-or-1
  (and (equal (4vec-?* 0 then else)      (4vec-fix else))
       (equal (4vec-?* 1 then else)      (4vec-fix then))
       (equal (4vec-?* -1 then else)     (4vec-fix then))
       (equal (sv::4vec-?! 0 then else)  (4vec-fix else))
       (equal (sv::4vec-?! 1 then else)  (4vec-fix then))
       (equal (sv::4vec-?! -1 then else) (4vec-fix then))
       (equal (sv::4vec-? 0 then else)   (4vec-fix else))
       (equal (sv::4vec-? 1 then else)   (4vec-fix then))
       (equal (sv::4vec-? -1 then else)  (4vec-fix then)))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-?!
                            SV::4VEC-?
                            SV::3VEC-?)
                           ()))))

(add-svex-simplify-rule 4vec-?*-of-0-or-1
                        :outside-in :both)

(local
 (defthm 3vec-fix-equivalence
   (iff (EQUAL (LOGIOR x y)
               (LOGAND x y))
        (equal (ifix x)
               (ifix y)))
   ;;:rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthm ifix-equivalance-under-logior
   (implies (and(equal (ifix x)
                       (ifix y))
                (syntaxp (not (lexorder x y))))
            (equal (logior x z)
                   (logior y z)))
   :hints (("Goal"
            :in-theory (e/d (logior lognot) ())))
   ))

(def-rp-rule 4vec-?-branch-of-the-same-then-else
  (and (equal (4vec-?* test x x)
              (4vec-fix x))
       (equal (sv::4vec-?! test x x)
              (4vec-fix x))
       (implies (or (integerp test)
                    (sv::3vec-p X))
                (equal (sv::4vec-? test x x)
                       (sv::4vec-fix x))))
  :otf-flg t
  :hints (("Goal"
           :expand ((:free (x y) (sv::3vec-p (cons x y))))
           :use ((:instance ifix-equivalance-under-logior
                            (x (car x))
                            (y (cdr x))
                            (z (cdr x))))
           :in-theory (e/d* (SV::3VEC-?*
                             ;;sv::3vec-p
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs
                             ;;SV::3VEC-P
                             SV::3VEC-FIX
                             ;;SV::3VEC-FIX
                             SV::4VEC-?!
                             4VEC-?
                             SV::3VEC-?
                             SV::4VEC->UPPER
                             SV::4VEC->LOWER
                             4VEC-FIX
                             4vec-?*) ()))))

(add-svex-simplify-rule 4vec-?-branch-of-the-same-then-else)

(defthm 4vec-?*-with-constant-bitp-then-else
  (implies (bitp x)
           (and (equal (4vec-?* x 1 0)
                       x)
                (equal (4vec-?* x 0 1)
                       (4vec-bitnot$ 1 x))))
  :hints (("Goal"
           :in-theory (e/d (bitp) ()))))

(add-svex-simplify-rule 4vec-?*-with-constant-bitp-then-else)

(local
 (defthmd logand-expand
   (implies (and (syntaxp (and (not (rp::include-fnc x 'acl2::binary-logand))
                               (not (rp::include-fnc x 'loghead))
                               (not (rp::include-fnc x 'logtail))
                               (not (rp::include-fnc x 'acl2::binary-logior))
                               (not (rp::include-fnc y 'acl2::binary-logand))
                               (not (rp::include-fnc y 'loghead))
                               (not (rp::include-fnc y 'logtail))
                               (not (rp::include-fnc y 'acl2::binary-logior)))))
            (equal (logand x y)
                   (logapp 1 (logand (loghead 1 x)
                                     (loghead 1 y))
                           (logand (logtail 1 x)
                                   (logtail 1 y)))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthmd logior-expand
   (implies (and (syntaxp (and (not (rp::include-fnc x 'acl2::binary-logand))
                               (not (rp::include-fnc x 'loghead))
                               (not (rp::include-fnc x 'logtail))
                               (not (rp::include-fnc x 'acl2::binary-logior))
                               (not (rp::include-fnc y 'acl2::binary-logand))
                               (not (rp::include-fnc y 'loghead))
                               (not (rp::include-fnc y 'logtail))
                               (not (rp::include-fnc y 'acl2::binary-logior)))))
            (equal (logior x y)
                   (logapp 1 (logior (loghead 1 x)
                                     (loghead 1 y))
                           (logior (logtail 1 x)
                                   (logtail 1 y)))))
   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             ())))))

(local
 (defthm logior-1-with-single-bit
   (and (equal (logior 1 (loghead 1 x))
               1)
        (equal (logior 1 (logapp 1 x y))
               (logapp 1 1 (ifix y))))

   :hints (("Goal"
            :in-theory (e/d* (bitops::ihsext-inductions
                              bitops::ihsext-recursive-redefs)
                             (ACL2::LOGAPP-0))))))

(local
 (defthm logior-when-ifix-are-equal
   (implies (and (equal (ifix x) (ifix y)))
            (equal (logior x y) (ifix x)))
   :rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d (logior
                             LOGNOT)
                            ())))))

(def-rp-rule 4vec-bitor-with-1
  (implies t;(4vec-p x)
           (and (equal (4vec-bitor 1 x)
                       (4vec-concat 1 1 (4vec-rsh 1 (sv::3vec-fix x))))
                (equal (4vec-bitor x 1)
                       (4vec-concat 1 1 (4vec-rsh 1 (sv::3vec-fix x))))))
  :otf-flg t
  :hints (("Goal"
           :use ((:instance logand-expand
                            (x (car x))
                            (y (cdr x)))
                 (:instance logior-expand
                            (x 1)
                            (y x))
                 (:instance logior-expand
                            (x 1)
                            (y (car x)))
                 (:instance logior-expand
                            (x 1)
                            (y (logior (car x) (cdr x)))))
           :in-theory (e/d* (
                             ;;bitops::ihsext-inductions
                             ;;ACL2::LOGCDR
                             4VEC-P
                             ;;bitops::ihsext-recursive-redefs
                             SV::4VEC->UPPER
                             SV::4VEC->LOWER
                             SV::3VEC-FIX
                             4VEC-SHIFT-CORE
                             4VEC-RSH
                             4VEC-CONCAT
                             4VEC-BITOR
                             SV::3VEC-BITOR)
                            ()))))

(add-svex-simplify-rule 4vec-bitor-with-1)

(def-rp-rule 3vec-fix-of-integer
  (implies (integerp x)
           (equal (sv::3vec-fix x)
                  x)))

(add-svex-simplify-rule 3vec-fix-of-integer)

(def-rp-rule integerp-of-4vec-branch
  (and (implies (and (integerp y)
                     (integerp x)
                     (integerp z))
                (integerp (sv::4vec-? x y z)))
       (implies (and (integerp x)
                     (integerp y)
                     (integerp z))
                (integerp (sv::4vec-?* x y z)))
       (implies (and (integerp y)
                     (integerp x)
                     (integerp z))
                (integerp (sv::4vec-?! x y z))))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-?
                            SV::4VEC->UPPER
                            SV::4VEC->LOWER
                            ;;SV::3VEC-FIX
                            sv::3vec-?
                            sv::3vec-?*
                            sv::4vec-?*
                            sv::4vec-?!)
                           ()))))

(add-svex-simplify-rule integerp-of-4vec-branch)

(def-rp-rule bitp-of-4vec-bitand/or/xor
  (and (implies (or (and (bitp x) (bitp y))
                    (and (bitp x) (integerp y))
                    (and (bitp y) (integerp x)))
                (bitp (4vec-bitand x y)))
       (implies (and (bitp x)
                     (bitp y))
                (and (bitp (sv::4vec-bitxor x y))
                     (bitp (4vec-bitor x y)))))
  :hints (("Goal"
           :in-theory (e/d (4VEC-BITAND
                            BITP
                            3VEC-BITAND) ()))))

(add-svex-simplify-rule bitp-of-4vec-bitand/or/xor)

(defthm 4vec-concat-of-first-bit-and-the-rest
  (equal (4VEC-concat 1
                      (4VEC-PART-SELECT 0 1 Y)
                      (4VEC-RSH 1 Y))
         (4vec-fix y))
  :hints (("Goal"
           :in-theory (e/d (4vec-concat-better-opener
                            4vec-rsh-better-opener
                            ;;4VEC-RSH
                            4VEC-FIX
                            4VEC-SHIFT-CORE
                            4VEC-PART-SELECT-better-opener
                            )
                           ()))))

(defthmd 4vec-?*-of-with-bitp-cond
  (implies (and (bitp x)
                (integerp y)
                (integerp z))
           (equal (sv::4vec-?* (- x) y z)
                  (svl::4vec-concat 1
                                    (sv::4vec-?* x
                                                 (4vec-part-select 0 1 y)
                                                 (4vec-part-select 0 1 z))
                                    (sv::4vec-?* (- x)
                                                 (sv::4vec-rsh 1 y)
                                                 (sv::4vec-rsh 1 z)))))
  :hints (("Goal"
           :in-theory (e/d (bitp) ()))))
;;:i-am-here
(defthmd 4vec-==-with-constant
  (implies (and (integerp x)
                (natp y)
                )
           (equal (sv::4vec-== x y)
                  (- (sv::4vec-bitand (if (equal (acl2::logcar y) 1)
                                          (acl2::logcar x)
                                        (svl::4vec-bitnot$ 1 (acl2::logcar x)))
                                      (- (sv::4vec-== (acl2::logcdr x)
                                                      (acl2::logcdr y)))))))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-==
                            SV::3VEC-==
                            SV::3VEC-BITXOR
                            SV::3VEC-BITNOT
                            4VEC-BITAND
                            SV::3VEC-REDUCTION-AND
                            3VEC-BITAND
                            SV::BOOL->VEC
                            4vec-part-select-better-opener)
                           ()))))

(defthmd 4VEC-SYMWILDEQ-with-constant
  (implies (and (integerp x)
                (natp y)
               )
           (equal (sv::4vec-symwildeq x y)
                  (- (sv::4vec-bitand
                      (if (equal (acl2::logcar y) 1)
                          (acl2::logcar x)
                        (svl::4vec-bitnot$ 1 (acl2::logcar x)))
                      (- (sv::4vec-symwildeq (acl2::logcdr x)
                                             (acl2::logcdr
                                              y)))))))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-symwildeq
                             SV::BOOL->VEC
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             SV::4VEC-BITXOR
                             SV::4VEC->UPPER
                             SV::4VEC->LOWER
                             SV::2VEC
                             SV::4VEC
                             SV::3VEC-BITNOT
                             SV::3VEC-BITOR
                             SV::3VEC-REDUCTION-AND)
                            ()))))

(def-rp-rule 4vec-override-when-integerp
  (implies (integerp x)
           (equal (sv::4vec-override x y)
                  x))
  :hints (("Goal"
           :in-theory (e/d (sv::4vec-override
                            SV::4VEC->UPPER
                            SV::4VEC->LOWER)
                           ()))))

(def-rp-rule 4vec-res-chain
  (equal (sv::4vec-res x (sv::4vec-res x y))
         (sv::4vec-res x y))
  :hints (("Goal"
           :in-theory (e/d* (sv::4vec-res
                             4vec-res-better-opener
                             bitops::ihsext-inductions
                             bitops::ihsext-recursive-redefs)
                            (4vec)))))

(def-rp-rule integerp-4vec-sym-wildeq
  (implies (and (integerp x)
                (integerp y))
           (integerp (SV::4VEC-SYMWILDEQ x y)))
  :hints (("Goal"
           :in-theory (e/d (SV::4VEC-SYMWILDEQ
                            SV::3VEC-REDUCTION-AND
                            SV::3VEC-BITOR
                            SV::3VEC-BITNOT
                            SV::4VEC-BITXOR
                            SV::BOOL->VEC
                            SV::4VEC->UPPER
                            SV::4VEC->LOWER)
                           ()))))


(def-rp-rule 4vec-reduction-and-to-4vec-bitand
     (implies (and (integerp x)
                   (syntaxp (or (atom x)
                                (not (equal (car x) 'UNARY--)))))
              (equal
               (sv::4vec-reduction-and x)
               (- (sv::4vec-bitand (sv::4vec-part-select 0 1 x)
                                   (- (sv::4vec-reduction-and (sv::4vec-rsh 1 x)))))))
     :hints
     (("goal" :in-theory
       (e/d* (SV::BOOL->VEC
              sv::4vec-reduction-and
              sv::4vec-bitand
              bitops::ihsext-recursive-redefs
              bitops::ihsext-inductions sv::3vec-bitand
              sv::4vec-part-select sv::4vec-concat
              sv::4vec-rsh sv::4vec-shift-core
              sv::3vec-reduction-and)
             nil))))

(def-rp-rule 4vec-reduction-and-of-negated-bitp
    (implies (bitp x)
             (equal (sv::4vec-reduction-and (- x))
                    (- x)))
    :hints (("Goal"
             :in-theory (e/d (bitp) ()))))


(defthm logapp-same-var-merge
  (implies (and (natp csize1)
                (natp csize2)
                (natp start1))
           (and (equal (loghead (+ csize1 csize2)
                                (logapp csize1
                                        (logtail start1 x)
                                        (logtail (+ csize1 start1) x)))
                       (loghead (+ csize1 csize2)
                                (logtail start1 x)))
                (equal (logapp (+ csize1 csize2)
                               (logapp csize1
                                       (logtail start1 x)
                                       (logtail (+ csize1 start1) x))
                               other)
                       (logapp (+ csize1 csize2)
                               (logtail start1 x)
                               other))))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-recursive-redefs
                            bitops::ihsext-inductions)
                           ()))))

(defthm 4vec-concat-same-var-merge
  (implies (and (natp csize1)
                (natp csize2)
                (natp start1)
                (natp start2)
                (equal start2 (+ start1 csize1)))
           (equal (svl::4vec-concat csize1 (sv::4vec-part-select start1 csize1 x)
                                    (svl::4vec-concat
                                     csize2 (sv::4vec-part-select start2
                                                                  csize2 x)
                                     other))
                  (svl::4vec-concat (+ csize1 csize2) (sv::4vec-part-select
                                                       start1 (+ csize1 csize2) x)
                                    other)))
  :hints (("Goal"
           :in-theory (e/d* (4VEC-PART-SELECT
                            4VEC-CONCAT
                            bitops::ihsext-recursive-redefs
                            bitops::ihsext-inductions
                            4VEC-RSH
                            4VEC-SHIFT-CORE)
                           (logapp-of-logapp
                            ;;SV::2VEC-P$INLINE
                            sv::4vec-p
                            sv::4vec)))))


(defthm logapp-same-var-merge-with-lognot
  (implies (and (natp csize1)
                (natp csize2)
                (natp start1))
           (equal (logapp csize1 (lognot (logtail start1 x))
                          (loghead csize2
                                   (lognot (logtail (+ csize1 start1) x))))
                  (loghead (+ csize1 csize2)
                           (lognot (logtail start1 x)))))
  :hints (("goal"
           :use ((:instance lognot-of-logapp
                            (size csize1)
                            (x (lognot (logtail start1 x)))
                            (y (loghead csize2
                                        (lognot (logtail (+ csize1 start1)
                                                         x)))))
                 (:instance lognot-of-loghead
                            (size csize2)
                            (x (lognot (logtail (+ csize1 start1) x))))
                 (:instance lognot-of-loghead
                            (size (+ csize1 csize2))
                            (x (lognot (logtail start1 x)))))
           :in-theory (e/d* ()
                            (lognot-of-logapp
                             lognot-of-loghead
                             logapp-of-logapp)))))

(defthm 4vec-concat-same-var-merge-with-bitnot
  (implies (and (natp csize1)
                (natp csize2)
                (natp start1)
                (natp start2)
                (integerp x)
                (equal start2 (+ start1 csize1)))
           (equal (svl::4vec-concat csize1 (svl::4vec-bitnot$ csize1 (sv::4vec-part-select start1 csize1 x))
                                     (svl::4vec-concat
                                      csize2 (svl::4vec-bitnot$ csize2 (sv::4vec-part-select start2
                                                                                             csize2 x))
                                      other))
                  (svl::4vec-concat (+ csize1 csize2) (svl::4vec-bitnot$
                                                        (+ csize1 csize2)
                                                        (sv::4vec-part-select
                                                         start1 (+ csize1 csize2) x))
                                     other)))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d* (4VEC-PART-SELECT
                             4VEC-CONCAT
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             4VEC-RSH
                             4VEC-SHIFT-CORE
                             4VEC-BITNOT$
                             4VEC-BITNOT
                             SV::3VEC-BITNOT)
                            (logapp-of-logapp
                             ;;SV::2VEC-P$INLINE
                             sv::4vec-p
                             
                             sv::4vec))
           )))


(encapsulate nil
  
  (local
   (use-arithmetic-5 t))

  (def-rp-rule 4vec-lsh-to-4vec-concat$
    (implies (natp size)
             (equal (sv::4vec-lsh size x)
                    (svl::4vec-concat$ size 0 x)))
    :hints (("Goal"
             :in-theory (e/d (sv::4vec-lsh
                              4VEC-SHIFT-CORE
                              4VEC-CONCAT$
                              4VEC-CONCAT
                              SV::4VEC->LOWER
                              SV::4VEC->upper
                              ash
                              )
                             ())))))




(defthmd logtail-of-loghead-reverse
  (implies (and (natp m)
                (natp n))
           (equal (loghead m (logtail n x))
                  (logtail n (loghead (+ n m) x))))
  :hints (("goal"
           #|:cases ((natp n)
                   (natp m))|#
           :in-theory (e/d (BITOPS::LOGTAIL-OF-LOGHEAD)
                           (force
                            (:REWRITE ACL2::LOGTAIL-LOGHEAD))))))

(define 4vec-plus$ ((size natp)
                    (val1 4vec-p)
                    (val2 4vec-p))
  :returns (res 4vec-p)
  (4vec-part-select 0 size (4vec-plus val1 val2)))

(defthmd 4vec-part-select-of-4vec-plus-propagate
  (implies (and (natp start)
                (natp size)
                (integerp x)
                (integerp y))
           (equal (4vec-part-select start size (4vec-plus x y))
                   (4vec-part-select
                    start size
                    (4vec-plus$ (+ start size)
                                (4vec-part-select 0 (+ start size) x)
                                (4vec-part-select 0 (+ start size) y)))))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d (4vec-plus
                            4vec-plus$
                            logtail-of-loghead-reverse
                            4vec-part-select
                            4VEC-CONCAT
                            4VEC-ZERO-EXT
                            2VEC
                            4VEC-RSH
                            SV::4VEC->LOWER
                            4VEC-SHIFT-CORE
                            4vec)
                           (4VEC-ZERO-EXT-IS-4VEC-CONCAT
                            4VEC-WHEN-BOTH-ARE-SAME
                            (:e tau-system)
                            UNSIGNED-BYTE-P
                            BITOPS::LOGTAIL-OF-LOGHEAD
                            (:DEFINITION INTEGER-RANGE-P)
                            BITOPS::LOGTAIL-OF-LOGHEAD
                            (:REWRITE ACL2::LOGTAIL-LOGHEAD)
                            )))))

 
