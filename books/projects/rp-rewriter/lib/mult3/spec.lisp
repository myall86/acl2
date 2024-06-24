; Note: The license below is based on the template at:
; http://opensource.org/licenses/BSD-3-Clause

; Copyright (C) 2019, Regents of the University of Texas
; All rights reserved.
; Copyright (C) 2022 Intel Corporation

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:

; o Redistributions of source code must retain the above copyright
;   notice, this list of conditions and the following disclaimer.

; o Redistributions in binary form must reproduce the above copyright
;   notice, this list of conditions and the following disclaimer in the
;   documentation and/or other materials provided with the distribution.

; o Neither the name of the copyright holders nor the names of its
;   contributors may be used to endorse or promote products derived
;   from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Original Author(s):
; Mertcan Temel         <mert@utexas.edu>

;; Specs and lemmas for multiplier proofs.
;; Main lemmas:
;; 1. mult-simple-spec-is-* (disabled)
;; 2. mult-byrow-spec-is-mult-simple-spec (disabled)
;; 3. mult-bycol-spec-is-mult-byrow-spec (disabled)

(in-package "RP")

(include-book "ihs/basic-definitions" :dir :system)

(include-book "fnc-defs")

(include-book "projects/rp-rewriter/top" :dir :system)

;(include-book "mult-defs")

(local
 (fetch-new-events
  (include-book "arithmetic-5/top" :dir :system)
  use-arithmetic-5
  :disabled t))

(local
 (fetch-new-events
  (include-book "ihs/quotient-remainder-lemmas" :dir :system)
  use-qr
  :disabled t))

(local
 (rp::fetch-new-events
  (include-book "ihs/logops-lemmas" :dir :system)
  use-ihs-logops-lemmas
  :disabled t))

(local
 (rp::fetch-new-events
  (include-book "centaur/bitops/ihs-extensions" :dir :system)
  use-ihs-extensions
  :disabled t))

(define mult-simple-spec-aux ((mult integerp)
                              (mcand integerp)
                              (out-size natp))
  :verify-guards nil
  :returns (res integerp :hyp (and (integerp mult)
                                   (integerp mcand)))
  (if (zp out-size)
      0
    (+ (* (logbit 0 mult) mcand)
       (ash (mult-simple-spec-aux (ash mult -1) mcand (1- out-size))
            1))))

(defmacro mult-simple-spec (mult mcand out-size)
  `(loghead ,out-size (mult-simple-spec-aux ,mult ,mcand ,out-size)))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  ;; arithmetic-5 libary proves this in 2 seconds.
  (defthmd mult-simple-spec-is-*
    (implies (and (integerp mult)
                  (integerp mcand))
             (equal (mult-simple-spec mult mcand out-size)
                    (loghead out-size (* mult mcand))))
    :hints (("Goal"
             :induct (mult-simple-spec-aux mult mcand out-size)
             :do-not-induct t
             :in-theory (e/d (mult-simple-spec-aux)
                             ((:type-prescription acl2::not-integerp-4b)
                              (:type-prescription acl2::not-integerp-1b)
                              (:type-prescription acl2::not-integerp-3b)
                              INTEGERP-OF-MULT-SIMPLE-SPEC-AUX ;;weirdly this
                              ;;causes the theorem to fail...
                              (:type-prescription acl2::not-integerp-2b)
                              (:rewrite acl2::|(* 1/2 (floor x y))| . 1)
                              (:type-prescription acl2::mod-zero . 4)
                              (:type-prescription acl2::not-integerp-4a)
                              (:rewrite acl2::default-times-1)
                              (:rewrite acl2::mod-x-y-=-x-y . 1)
                              (:rewrite acl2::mod-x-y-=-x-y . 2)
                              (:rewrite acl2::default-times-2)
                              (:rewrite acl2::cancel-floor-+)
                              (:type-prescription acl2::floor-positive . 1)
                              (:type-prescription acl2::floor-zero . 2)
                              (:type-prescription acl2::floor-negative . 1)
                              (:type-prescription
                               acl2::floor-nonpositive . 1)
                              (:type-prescription
                               acl2::floor-nonnegative . 1)
                              (:rewrite acl2::mod-zero . 3)
                              (:rewrite acl2::ugly-unhide-hack-thm-1)
                              (:rewrite acl2::default-floor-ratio)
                              (:rewrite acl2::mod-x-y-=-x . 4)
                              (:rewrite acl2::mod-x-y-=-x+y . 2)
                              (:rewrite acl2::mod-zero . 4)
                              (:rewrite acl2::default-plus-2)
                              (:rewrite acl2::default-mod-ratio)
                              (:rewrite acl2::mod-x-y-=-x+y . 1)
                              (:type-prescription acl2::floor-zero . 4)
                              (:type-prescription acl2::floor-zero . 3)
                              (:type-prescription acl2::floor-positive . 3)
                              (:type-prescription acl2::floor-positive . 2)
                              (:type-prescription acl2::floor-negative . 3)
                              (:type-prescription acl2::floor-negative . 2)
                              (:type-prescription acl2::floor-zero . 1)
                              (:type-prescription
                               acl2::floor-nonpositive . 3)
                              (:type-prescription
                               acl2::floor-nonpositive . 2)
                              (:type-prescription
                               acl2::floor-nonnegative . 3)
                              (:type-prescription
                               acl2::floor-nonnegative . 2)
                              (:rewrite acl2::the-floor-above)
                              (:rewrite acl2::default-plus-1)
                              (:type-prescription acl2::mod-zero . 3)
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
                              (:type-prescription acl2::integerp-/-expt-2)
                              (:type-prescription acl2::integerp-/-expt-1)
                              (:meta acl2::meta-integerp-correct)
                              (:type-prescription acl2::mod-zero . 1)
                              (:type-prescription acl2::mod-positive . 2)
                              (:type-prescription acl2::mod-negative . 2)
                              (:rewrite acl2::|(integerp (expt x n))|)
                              (:rewrite acl2::|(mod (+ x (mod a b)) y)|)
                              (:rewrite acl2::|(mod (+ x (- (mod a b))) y)|)
                              (:type-prescription
                               acl2::not-integerp-4b-expt)
                              (:linear acl2::mod-bounds-3)
                              (:rewrite acl2::integerp-minus-x)
                              (:rewrite acl2::default-minus)
                              (:rewrite acl2::floor-zero . 3)
                              (:rewrite acl2::mod-x-y-=-x . 2)
                              (:rewrite acl2::prefer-positive-addends-<)
                              (:rewrite acl2::mod-x-y-=-x-y . 3)
                              (:rewrite acl2::mod-x-y-=-x+y . 3)
                              (:rewrite acl2::|(floor (floor x y) z)| . 1)
                              (:rewrite acl2::floor-zero . 5)
                              (:rewrite acl2::floor-zero . 4)
                              (:rewrite acl2::|(equal (if a b c) x)|)
                              (:rewrite acl2::|(floor x 2)| . 1)
                              (:rewrite acl2::|(* (if a b c) x)|)
                              (:rewrite acl2::|(+ (if a b c) x)|)
                              (:rewrite acl2::|(equal x (if a b c))|)))))))

(encapsulate
  nil
  (define create-pps ((mult integerp)
                      (mcand integerp)
                      (out-size natp)
                      (shift-amount natp))
    (if (zp out-size)
        nil
      (cons (ash (* (logbit 0 mult) mcand) shift-amount)
            (create-pps (ash mult -1) mcand (1- out-size) (1+ shift-amount))))
    :returns (pps integer-listp :hyp (and (natp shift-amount)
                                          (natp out-size)
                                          (integerp mult)
                                          (integerp mcand))))

  (define sum-pps-by-row ((pps integer-listp))
    (if (atom pps)
        0
      (+ (car pps)
         (sum-pps-by-row (cdr pps))))
    :returns (res integerp :hyp (integer-listp pps)))

  (define mult-byrow-spec ((mult integerp)
                           (mcand integerp)
                           (out-size natp))
    (loghead out-size (sum-pps-by-row (create-pps mult mcand out-size 0)))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (local
   (defthm ash-of-0
     (equal (ash x 0)
            (ifix x))))

  (defthmd mult-byrow-spec-is-mult-simple-spec-lemma
    (implies (and (integerp mult)
                  (integerp mcand)
                  (natp shift-amount))
             (equal (sum-pps-by-row (create-pps mult mcand out-size shift-amount))
                    (ash (mult-simple-spec-aux mult mcand out-size) shift-amount)))
    :hints (("Goal"
             :expand (create-pps mult mcand out-size 0)
             :in-theory (e/d (mult-simple-spec-aux
                              create-pps
                              sum-pps-by-row)
                             ((:REWRITE ACL2::|(equal (if a b c) x)|)
                              (:REWRITE ACL2::|(floor x 2)| . 1)
                              INTEGERP-OF-MULT-SIMPLE-SPEC-AUX)))))
  (local
   (use-arithmetic-5 nil))

  (defthmd mult-byrow-spec-is-mult-simple-spec
    (implies (and (integerp mult)
                  (integerp mcand))
             (equal (mult-byrow-spec mult mcand out-size)
                    (mult-simple-spec mult mcand out-size)))
    :hints (("Goal"
             :in-theory (e/d (mult-byrow-spec
                              mult-byrow-spec-is-mult-simple-spec-lemma)
                             (fix floor nfix not mod loghead
                                  ash))))))

;;;;;;

(encapsulate
  nil

  (define sum-lst ((lst integer-listp))
    (if (atom lst)
        0
      (+ (car lst)
         (sum-lst (cdr lst))))
    :returns (res integerp :hyp (and (integer-listp lst))))

  (define strip-logcars ((pps integer-listp))
    (if (atom pps)
        nil
      (cons (acl2::logcar (car pps))
            (strip-logcars (cdr pps))))
    :returns (res integer-listp :hyp (and (integer-listp pps))))

  (define strip-logbits ((index natp)
                         (pps integer-listp))
    (if (atom pps)
        nil
      (cons (logbit index (car pps))
            (strip-logbits index (cdr pps))))
    :returns (res integer-listp :hyp (and (integer-listp pps))))

  (define strip-logcdrs ((pps integer-listp))
    (if (atom pps)
        nil
      (cons (acl2::logcdr (car pps))
            (strip-logcdrs (cdr pps))))
    :returns (res integer-listp :hyp (and (integer-listp pps))))

  (define strip-logtail ((amount natp)
                         (pps integer-listp))
    (if (atom pps)
        nil
      (cons (logtail amount (car pps))
            (strip-logtail amount (cdr pps) )))
    :returns (res integer-listp :hyp (and (integer-listp pps))))

  (define sum-pps-by-col ((pps integer-listp)
                          (size natp)
                          (carry-in integerp))
    (if (zp size)
        0
      (b* ((col (strip-logcars pps))
           (rest-pps (strip-logcdrs pps))
           (col-sum (+ carry-in (sum-lst col))))
        (logapp 1 (acl2::logcar col-sum)
                (sum-pps-by-col rest-pps
                                (1- size)
                                (acl2::logcdr col-sum)))))
    :prepwork
    ((local
      (defthm lemma1
        (implies (and (integerp x)
                      (integerp y))
                 (integerp (+ x y)))))
     (local
      (use-ihs-logops-lemmas t))
     (local
      (use-ihs-extensions t)))
    :returns (res integerp :hyp (and (integer-listp pps)
                                     (natp size)
                                     (integerp carry-in))))

  (define mult-bycol-spec ((mult integerp)
                           (mcand integerp)
                           (out-size natp))
    (b* ((carry-in 0)
         (shift-amount 0)
         (pps (create-pps mult mcand out-size shift-amount))
         (col-sums (sum-pps-by-col pps out-size carry-in)))
      col-sums)))


(def-rp-rule nfix-of-binary-*
    (implies (and (natp x)
                  (natp y))
             (and (natp (* x y))
                  (equal (nfix (* x y))
                         (* x y)))))

(def-rp-rule bfix-opener
    (implies (bitp x)
             (equal (ACL2::BFIX x)
                    x)))


(local
 (defthm loghead-of-0
   (equal (loghead 0 x)
          0)))

(local
 (use-ihs-logops-lemmas t))

(local
 (use-ihs-extensions t))

(defthm append-of-repeat-0
  (equal (append (repeat size 0) '(0))
         (cons 0 (repeat size 0)))
  :hints (("Goal"
           :in-theory (e/d (repeat) ()))))

(defthmd floor-is-logcdr
  (implies (integerp x)
           (equal (floor x 2)
                  (acl2::logcdr x)))
  :hints (("Goal"
           :in-theory (e/d (floor acl2::logcdr) ()))))

(defthmd mod-is-logcar
  (implies (integerp x)
           (equal (mod x 2)
                  (acl2::logcar x)))
  :hints (("Goal"
           :in-theory (e/d (mod acl2::logcar) ()))))

(local
 (defthm integer-listp-implies
   (implies (and (INTEGER-LISTP PPS))
            (INTEGER-LISTP (CDR PPS)))
   :rule-classes :forward-chaining))

(encapsulate
  nil

  (local
   (encapsulate
     nil

     (local
      (use-arithmetic-5 t))

     (local
      (defthm lemma1-lemma
        (Implies (and (integerp x)
                      (integerp y))
                 (equal (mod (+ (mod x 2) y) 2)
                        (mod (+ x y) 2)))))

     (local
      (defthm lemma1-lemma2
        (implies (and (integerp x)
                      (integerp y))
                 (equal         (ifix (+ x y ))
                                (+ x y)))
        :hints (("Goal"
                 :in-theory (e/d (ifix) ())))))

     (local
      (defthm lemma1-lemma3
        (implies (and (integerp x)
                      (integerp y)
                      (integerp a)
                      (equal (mod x 2)
                             (mod y 2)))
                 (equal (equal (mod (+ a x) 2)
                               (mod (+ a y) 2))
                        t))))

     (local
      (defthm lemma1-lemma4
        (implies (integerp x)
                 (integerp (mod x 2)))))

     (local
      (use-arithmetic-5 nil))

     (defthm lemma1
       (implies (integer-listp pps)
                (equal (acl2::logcar (sum-lst (strip-logcars pps)))
                       (acl2::logcar (sum-pps-by-row pps))))
       :hints (("goal"
                :do-not-induct t
                :induct (sum-pps-by-row pps)
                :in-theory (e/d* (sum-lst
                                  acl2::logcar
                                  strip-logcars
                                  bitops::ihsext-inductions
                                  bitops::ihsext-recursive-redefs
                                  sum-lst
                                  sum-pps-by-row)
                                 (floor
                                  mod)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (local
   (encapsulate
     nil

     (local
      (use-arithmetic-5 t))

     (local
      (defthm lemma2-lemma1
        (implies (integerp num)
                 (equal num
                        (+
                         (acl2::logcar num)
                         (* 2 (acl2::logcdr num)))))
        :rule-classes nil
        :hints (("Goal"
                 :in-theory (e/d (acl2::logcdr acl2::logcar logapp) ())))))

     (local
      (defthm lemma2-lemma2
        (implies (and (integer-listp pps)
                      (syntaxp (atom pps)))
                 (equal (SUM-PPS-BY-ROW PPS)
                        (+ (sum-pps-by-row (STRIP-LOGCARS PPS))
                           (* 2 (sum-pps-by-row (STRIP-LOGCDRS PPS))))))
        :rule-classes :rewrite
        :hints (("Goal"
                 :use ((:instance lemma2-lemma1
                                  (num (car pps))))
                 :in-theory (e/d (acl2::logcdr
                                  acl2::logcar
                                  STRIP-LOGCARS
                                  STRIP-LOGCDRS
                                  sum-lst
                                  SUM-PPS-BY-ROW)
                                 (floor
                                  mod))))))
     (local
      (defthm lemma2-lemma3
        (implies (integer-listp pps)
                 (equal (SUM-LST (STRIP-LOGCARS PPS))
                        (SUM-PPS-BY-ROW (STRIP-LOGCARS PPS))))
        :hints (("Goal"
                 :in-theory (e/d (sum-lst
                                  sum-pps-by-row
                                  strip-logcars) ())))))

     (local
      (defthm lemma2-lemma4
        (implies (and (integerp x)
                      (integerp y))
                 (and (equal (acl2::logcdr (+ x (* 2 y)))
                             (+ y (acl2::logcdr x)))
                      (equal (floor (+ x (* 2 y)) 2)
                             (+ y (floor x 2)))))
        :hints (("Goal"
                 :in-theory (e/d (acl2::logcdr) ())))))

     (local
      (defthm lemma2-lemma5
        (implies (and (integerp x)
                      (integerp y))
                 (and (equal (ifix (+ x y))
                             (+ x y))
                      (equal (ifix (+ x (* 2 y)))
                             (+ x (* 2 y)))))))

     (local
      (use-arithmetic-5 nil))

     (defthm lemma2
       (implies (integer-listp pps)
                (equal (ACL2::LOGCDR (SUM-PPS-BY-ROW PPS))
                       (+ (ACL2::LOGCDR (SUM-LST (STRIP-LOGCARS PPS)))
                          (SUM-PPS-BY-ROW (STRIP-LOGCDRS PPS)))))
       :hints (("Goal"
                :do-not-induct t
                :in-theory (e/d (acl2::logcdr
                                 STRIP-LOGCARS
                                 STRIP-LOGCDRS
                                 sum-lst
                                 SUM-PPS-BY-ROW)
                                (floor)))))))

  (defthmd mult-bycol-spec-is-mult-byrow-spec-lemma
    (implies (and (integer-listp pps)
                  (natp out-size)
                  (integerp carry-in))
             (equal  (sum-pps-by-col pps out-size carry-in)
                     (loghead out-size (+ carry-in (sum-pps-by-row pps)))))
    :hints (("goal"
             :in-theory (e/d* (sum-pps-by-row
                               mod-is-logcar
                               floor-is-logcdr
                               sum-pps-by-col
                               strip-logcdrs
                               strip-logcars
                               sum-lst
                               bitops::ihsext-inductions
                               bitops::ihsext-recursive-redefs)
                              ((:rewrite acl2::|(equal (if a b c) x)|)
                               (:rewrite acl2::|(floor x 2)| . 1)
                               (:rewrite acl2::|(+ (if a b c) x)|)
                               (:rewrite acl2::|(mod (+ x y) z) where (<= 0 z)|
                                         . 1)
                               integer-listp
                               (:rewrite acl2::|(< (if a b c) x)|)
                               (:rewrite acl2::|(equal x (if a b c))|)
                               (:rewrite acl2::|(mod (if a b c) x)|)
                               (:definition floor)
                               (:definition mod)
                               (:rewrite acl2::|(* x (if a b c))|)
                               (:rewrite acl2::|(+ x (if a b c))|)
                               (:rewrite acl2::|(* (if a b c) x)|)
                               ))))))

(defthmd mult-bycol-spec-is-mult-byrow-spec
  (implies (and (integerp mult)
                (integerp mcand)
                (natp out-size))
           (equal (mult-bycol-spec mult mcand out-size)
                  (mult-byrow-spec mult mcand out-size)))
  :hints (("Goal"
           :in-theory (e/d (mult-byrow-spec
                            mult-bycol-spec-is-mult-byrow-spec-lemma
                            mult-bycol-spec) ()))))

(defthmd loghead-of-*-is-mult-bycol-spec
  (implies (and (integerp mult)
                (integerp mcand)
                (natp out-size))
           (equal (loghead out-size (* mult mcand))
                  (mult-bycol-spec mult mcand out-size)))
  :hints (("Goal"
           :in-theory (e/d (mult-simple-spec-is-*
                            mult-byrow-spec-is-mult-simple-spec
                            mult-bycol-spec-is-mult-byrow-spec)
                           ()))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(progn
  (define sum-col-bybit ((mult integerp)
                         (mcand integerp)
                         (col-index natp)
                         (out-size natp)
                         (shift-amount natp))
    :returns (res integerp :hyp (and (integerp mult)
                                     (integerp mcand)))
    :hints (("Goal"
             :in-theory (e/d () ())))
    (cond
     ((zp out-size)
      0)
     ((<=  shift-amount col-index)
      (+ (acl2::b-and (logbit 0 mult)
                      (logbit (- col-index shift-amount)
                              mcand))
         (sum-col-bybit (ash mult -1)
                        mcand
                        col-index
                        (1- out-size)
                        (1+ shift-amount))))
     (t 0)))

  (define sum-pps-bycol-bybit ((mult integerp)
                               (mcand integerp)
                               (carry-in integerp)
                               (out-size natp)
                               (col-index natp)
                               (shift-amount natp))
    :returns (res integerp :hyp (and (and (integerp mult)
                                          (integerp mcand)
                                          (integerp carry-in)
                                          (natp col-index))))
    :prepwork
    ((local
      (defthm lemma1
        (implies (and (integerp x)
                      (integerp y))
                 (integerp (mod (+ x y) 2)))
        :hints (("Goal"
                 :in-theory (e/d (mod) ()))))))
    :measure (nfix (- out-size col-index))
    :guard (<= col-index out-size)
    (if (zp (- out-size col-index))
        0
      (b* ((col-sum (sum-col-bybit mult mcand col-index out-size shift-amount))
           (col-sum (+ col-sum carry-in)))
        (logapp 1 (mod col-sum 2)
                (sum-pps-bycol-bybit mult mcand
                                     (floor col-sum 2)
                                     out-size
                                     (1+ col-index)
                                     shift-amount)))))

  (define mult-bycol-bybit-spec ((mult integerp)
                                 (mcand integerp)
                                 (out-size natp))
    (sum-pps-bycol-bybit mult mcand 0 out-size 0 0)))

(local
 (defthm logcar-is-logbit-0
   (implies (integerp x)
            (equal (acl2::logcar x)
                   (acl2::logbit 0 x)))))

(local
 (defthmd strip-log-cars-is-strip-logbits
   (implies (integer-listp pps)
            (equal (strip-logcars pps)
                   (strip-logbits 0 pps)))
   :hints (("Goal"
            :in-theory (e/d (strip-logbits
                             strip-logcars) ())))))

#|(local
 (defthmd lemma1-lemma
   (implies (and (integerp col-index)
                 (<= col-index 0))
            (equal (SUM-COL-BYBIT MULT MCAND 0 (1+ col-index))
                   (If (equal col-index 0)
                       (ACL2::B-AND (LOGBIT 0 MULT) (LOGBIT 0 MCAND))
                       0)))
   :hints (("Goal"
            :in-theory (e/d (sum-col-bybit
                             natp) ())))))||#
#|(local
 (defthm lemma1
   (IMPLIES (AND (integerp col-index)
                 (<= col-index 0)
                 (INTEGERP MULT)
                 (INTEGERP MCAND)
                 (integerp carry-in))
            (EQUAL (SUM-PPS-BYCOL-BYBIT MULT MCAND CARRY-IN 0 col-index)
                   0))
   :hints (("Goal"
            :in-theory (e/d (sum-pps-bycol-bybit zp natp
                                                 lemma1-lemma)
                            ())))))||#

(encapsulate
  nil

  (local
   (define get-col ((mult integerp)
                    (mcand integerp)
                    (col-index natp)
                    (out-size natp)
                    (shift-amount natp))
     (if (zp out-size)
         nil
       (cons (acl2::b-and (logbit 0 mult)
                          (if (<= shift-amount col-index)
                              (logbit (- col-index shift-amount)
                                      mcand)
                            0))
             (get-col (ash mult -1)
                      mcand
                      col-index
                      (1- out-size)
                      (1+ shift-amount))))))

  (local
   (encapsulate
     nil

     (local
      (use-ihs-extensions t))

     (defthmd strip-logbits-of-create-pps-is-get-col
       (implies (and (natp shift-amount)
                     (natp out-size)
                     (natp col-index)
                     (integerp mult)
                     (integerp mcand))
                (equal (get-col mult mcand col-index
                                out-size shift-amount)
                       (strip-logbits col-index
                                      (create-pps mult mcand out-size
                                                  shift-amount))))
       :hints (("Goal"
                :in-theory (e/d* (strip-logbits
                                  bitops::ihsext-inductions
                                  bitops::ihsext-recursive-redefs
                                  create-pps
                                  get-col) ()))))

     (local
      (defthm lemma1
        (IMPLIES (AND (< COL-INDEX SHIFT-AMOUNT)
                      (NATP SHIFT-AMOUNT)
                      (natp OUT-SIZE)
                      (NATP COL-INDEX)
                      (INTEGERP MULT)
                      (INTEGERP MCAND))
                 (EQUAL (GET-COL mult
                                 MCAND COL-INDEX out-size
                                 shift-amount)
                        (repeat out-size 0)))
        :hints (("Goal"
                 :expand ((GET-COL MULT MCAND COL-INDEX 1 SHIFT-AMOUNT))
                 :in-theory (e/d (sum-lst
                                  repeat
                                  get-col) ())))))

     (local
      (defthm lemma2
        (IMPLIES (AND (< COL-INDEX SHIFT-AMOUNT)
                      (NATP SHIFT-AMOUNT)
                      (natp OUT-SIZE)
                      (NATP COL-INDEX)
                      (INTEGERP MULT)
                      (INTEGERP MCAND))
                 (EQUAL (SUM-LST (REPEAT OUT-SIZE 0)) 0))
        :hints (("Goal"
                 :expand ((GET-COL MULT MCAND COL-INDEX 1 SHIFT-AMOUNT))
                 :in-theory (e/d (sum-lst
                                  repeat
                                  get-col) ())))))

     (defthmd sum-lst-of-get-col-is-sum-by-col
       (implies (and (natp shift-amount)
                     (natp out-size)
                     (natp col-index)
                     (integerp mult)
                     (integerp mcand))
                (equal (sum-col-bybit mult mcand col-index out-size shift-amount)
                       (sum-lst (get-col mult mcand col-index
                                         out-size shift-amount))))
       :hints (("Goal"
                :do-not-induct t
                :induct (get-col mult mcand col-index
                                 out-size shift-amount)
                :in-theory (e/d* (strip-logbits
                                  bitops::ihsext-inductions
                                  bitops::ihsext-recursive-redefs
                                  sum-col-bybit
                                  sum-lst
                                  get-col) ()))))))

  (local
   (define sum-pps-by-col2 ((pps integer-listp)
                            (size natp)
                            (carry-in integerp)
                            (col-index natp))
     :measure (nfix (- size col-index))
     :verify-guards nil
     (if (zp (- size col-index))
         0
       (b* ((col (strip-logbits col-index pps))
            (col-sum (+ carry-in (sum-lst col))))
         (logapp 1 (ACL2::LOGCAR COL-SUM)
                 (sum-pps-by-col2 pps size
                                  (ACL2::LOGCDR COL-SUM)
                                  (1+ col-index)))))))

  (encapsulate
    nil

    (local
     (use-ihs-extensions t))

    (defthm sum-pps-by-col-of-nil
      (implies (and (natp out-size)
                    (integerp carry-in))
               (equal (sum-pps-by-col nil out-size carry-in)
                      (loghead out-size carry-in)))
      :hints (("Goal"
               :in-theory (e/d* (sum-pps-by-col
                                 bitops::ihsext-inductions
                                 bitops::ihsext-recursive-redefs)
                                ()))))

    (defthm STRIP-LOGCARS-of-STRIP-LOGTAIL-is-strip-logbits
      (implies (and (natp col-index)
                    (integer-listp pps))
               (equal (STRIP-LOGCARS (strip-logtail col-INDEX PPS))
                      (strip-logbits col-index pps)))
      :hints (("Goal"
               :in-theory (e/d* (STRIP-LOGCARS
                                 STRIP-LOGTAIL
                                 strip-logbits
                                 bitops::ihsext-inductions
                                 bitops::ihsext-recursive-redefs)
                                ()))))

    (defthm STRIP-LOGCDRS-STRIP-LOGTAIL-is-strip-logtail
      (implies (and (integer-listp pps)
                    (natp col-index))
               (equal (STRIP-LOGCDRS (STRIP-LOGTAIL COL-INDEX PPS))
                      (STRIP-LOGTAIL (+ 1 COL-INDEX) PPS)))
      :hints (("Goal"
               :in-theory (e/d* (strip-logtail
                                 bitops::ihsext-inductions
                                 bitops::ihsext-recursive-redefs
                                 strip-logcdrs) ())))))

  (local
   (defthmd sum-pps-by-col2-is-sum-pps-by-col
     (implies (and (natp start)
                   (natp shift-amount)
                   (natp out-size)
                   (integer-listp pps)
                   (integerp carry-in)
                   (natp col-index))
              (equal
               (sum-pps-by-col2 pps out-size carry-in col-index)
               (sum-pps-by-col (strip-logtail col-index pps)
                               (- out-size col-index)
                               carry-in)))
     :otf-flg t
     :hints (("Goal"
              :induct (sum-pps-by-col2 pps out-size carry-in col-index)
              :do-not-induct t
              :in-theory (e/d* (sum-pps-by-col2
                                sum-pps-by-col)
                               ())))))

  #|(local
  (use-ihs-extensions t))||#

  (defthm stupid-lemma1
    (implies (and (integerp x)
                  (integerp y))
             (integerp (+ x y))))

  (local
   (defthmd sum-pps-bycol-bybit-is-sum-by-col-of-create-pps
     (implies (and (natp start)
                   (natp shift-amount)
                   (integerp carry-in)
                   (integerp mult)
                   (integerp mcand)
                   (natp out-size)
                   (natp col-index))
              (equal (sum-pps-bycol-bybit mult mcand carry-in out-size col-index
                                          shift-amount)
                     (sum-pps-by-col2 (create-pps mult mcand out-size shift-amount)
                                      out-size carry-in col-index)))
     :hints (("Goal"
              :do-not-induct t
              :induct (sum-pps-bycol-bybit mult mcand carry-in out-size col-index
                                           shift-amount)
              :expand (SUM-PPS-BY-COL2 (CREATE-PPS MULT MCAND OUT-SIZE SHIFT-AMOUNT)
                                       OUT-SIZE CARRY-IN COL-INDEX)
              :in-theory (e/d* (sum-pps-bycol-bybit
                                sum-pps-by-col2
                                mod-is-logcar
                                floor-is-logcdr
                                sum-lst-of-get-col-is-sum-by-col
                                strip-logbits-of-create-pps-is-get-col)
                               ((:rewrite bitops::logcar-of-+)
                                (:rewrite bitops::logcdr-of-+)))))))

  ;; final lemma:
  (defthmd sum-pps-bycol-bybit-is-sum-pps-by-col
    (implies (and (natp start)
                  (natp shift-amount)
                  (integerp carry-in)
                  (integerp mult)
                  (integerp mcand)
                  (natp out-size)
                  (natp col-index))
             (equal (sum-pps-bycol-bybit mult mcand carry-in out-size col-index
                                         shift-amount)
                    (sum-pps-by-col (strip-logtail col-index
                                                   (create-pps mult mcand out-size shift-amount))
                                    (- out-size col-index)
                                    carry-in)))
    :hints (("Goal"
             :in-theory (e/d (sum-pps-bycol-bybit-is-sum-by-col-of-create-pps
                              sum-pps-by-col2-is-sum-pps-by-col) ())))))

(defthm STRIP-LOGTAIL-of-0
  (implies (integer-listp pps)
           (equal (strip-logtail 0 pps)
                  pps))
  :hints (("Goal"
           :in-theory (e/d (strip-logtail) ()))))

(defthmd mult-bycol-bybit-spec-mult-bycol-spec
  (implies (and (integerp mult)
                (integerp mcand)
                (natp out-size))
           (equal (mult-bycol-bybit-spec mult mcand out-size)
                  (mult-bycol-spec mult mcand out-size)))
  :hints (("Goal"
           :in-theory (e/d (sum-pps-bycol-bybit-is-sum-pps-by-col
                            mult-bycol-bybit-spec
                            mult-bycol-spec) ()))))

(defthmd loghead-of-*-is-mult-bycol-bybit-spec
  ;; sanity check #2
  (implies (and (integerp mult)
                (integerp mcand)
                (natp out-size))
           (equal (loghead out-size (* mult mcand))
                  (mult-bycol-bybit-spec mult mcand out-size)))
  :hints (("Goal"
           :in-theory (e/d (mult-simple-spec-is-*
                            mult-bycol-bybit-spec-mult-bycol-spec
                            mult-byrow-spec-is-mult-simple-spec
                            mult-bycol-spec-is-mult-byrow-spec)
                           ()))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(progn
  (define sum-col-bybit-simple ((mult integerp)
                                (mcand integerp)
                                (col-index natp))
    "Same as sum-col-bybit but shift-amount is set to 0 and col-index < out-size"
    :returns
    (res integerp
         :hyp (and (integerp mult) (integerp mcand)))
    (cond ((zp col-index)
           (acl2::b-and (logbit 0 mult)
                        (logbit 0 mcand)))
          (t
           (+ (acl2::b-and (logbit 0 mult)
                           (logbit col-index mcand))
              (sum-col-bybit-simple (ash mult -1)
                                    mcand
                                    (1- col-index))))))

  (define sum-pps-bycol-bybit-simple ((mult integerp)
                                      (mcand integerp)
                                      (carry-in integerp)
                                      (out-size natp)
                                      (col-index natp))
    :returns (res integerp :hyp (and (and (integerp mult)
                                          (integerp mcand)
                                          (integerp carry-in)
                                          (natp col-index))))
    :measure (nfix (- out-size col-index))
    :guard (<= col-index out-size)
    (if (zp (- out-size col-index))
        0
      (b* ((col-sum (sum-col-bybit-simple mult mcand col-index))
           (col-sum (+ col-sum carry-in)))
        (logapp 1 (mod col-sum 2)
                (sum-pps-bycol-bybit-simple mult mcand
                                            (floor col-sum 2)
                                            out-size
                                            (1+ col-index))))))

  (define mult-final-spec ((mult integerp)
                           (mcand integerp)
                           (out-size natp))
    (sum-pps-bycol-bybit-simple mult mcand 0 out-size 0)))

(encapsulate
  nil

  (local
   (define sum-col-bybit2 ((mult integerp)
                           (mcand integerp)
                           (col-index integerp)
                           (out-size natp))
     "Same as sum-col-bybit but shift-amount is set to 0"
     :returns
     (res integerp
          :hyp (and (integerp mult) (integerp mcand)))
     :hints
     (("goal" :in-theory (e/d nil nil)))
     :measure (nfix out-size)
     (cond ((zp out-size) 0)
           ((<= 0 col-index)
            (+ (acl2::b-and (logbit 0 mult)
                            (logbit col-index mcand))
               (sum-col-bybit2 (ash mult -1)
                               mcand
                               (1- col-index)
                               (1- out-size))))
           (t 0))))

  (local
   (encapsulate
     nil

     (local
      (use-arithmetic-5 t))

     (defthm |(< (+ -1 col-index) (+ -1 shift-amount))|
       (implies (and (integerp col-index)
                     (integerp shift-amount))
                (equal (< (+ -1 col-index) (+ -1 shift-amount))
                       (< col-index shift-amount))))))

  (local
   (defthmd sum-col-bybit-shift-amount+1
     (implies (and (integerp col-index)
                   (integerp shift-amount))
              (equal (sum-col-bybit mult mcand (1- col-index) out-size (1- shift-amount))
                     (sum-col-bybit mult mcand col-index out-size shift-amount)))
     :hints (("goal"
              :induct (sum-col-bybit mult mcand col-index out-size shift-amount)
              :do-not-induct t
              :in-theory (e/d (sum-col-bybit) ())))))

  (local
   (defthm sum-col-bybit-is-sum-col-bybit2
     (implies (and (integerp mult)
                   (integerp mcand)
                   (integerp col-index)
                   (natp out-size))
              (equal (sum-col-bybit mult mcand col-index out-size 0)
                     (sum-col-bybit2 mult mcand col-index out-size)))
     :hints (("Subgoal *1/2"
              :use ((:instance
                     sum-col-bybit-shift-amount+1
                     (shift-amount 1)
                     (out-size (1- out-size))
                     (mult (LOGTAIL 1 MULT)))))
             ("Goal"
              :induct (sum-col-bybit2 mult mcand col-index out-size)
              :do-not-induct t
              :in-theory (e/d (sum-col-bybit2
                               SUM-COL-BYBIT-shift-amount+1
                               sum-col-bybit) ())))))

  (local
   (defthm sum-col-bybit2-is-sum-col-bybit-simple
     (implies (and (natp out-size)
                   (natp col-index)
                   (< col-index out-size)
                   (integerp mult)
                   (integerp mcand))
              (equal (sum-col-bybit2 mult mcand col-index out-size)
                     (sum-col-bybit-simple mult mcand col-index)))
     :hints (("Goal"
              :induct (sum-col-bybit2 mult mcand col-index out-size)
              :do-not-induct t
              :in-theory (e/d (sum-col-bybit2
                               sum-col-bybit-simple) ())))))

  (defthmd sum-pps-bycol-bybit-simple-is-sum-pps-bycol-bybit
    (implies (and (natp out-size)
                  (natp col-index)
                  (integerp mult)
                  (integerp mcand))
             (equal (sum-pps-bycol-bybit-simple mult mcand carry-in out-size
                                                col-index)
                    (sum-pps-bycol-bybit mult mcand carry-in out-size
                                         col-index 0)))
    :hints (("Goal"
             :induct (sum-pps-bycol-bybit-simple mult mcand carry-in out-size
                                                 col-index)
             :do-not-induct t
             :in-theory (e/d (sum-pps-bycol-bybit
                              sum-pps-bycol-bybit-simple) ()))))

  (defthmd mult-final-spec-mult-bycol-bybit-spec
    (implies (and (natp out-size)
                  (natp col-index)
                  (integerp mult)
                  (integerp mcand))
             (equal (mult-final-spec mult mcand out-size)
                    (mult-bycol-bybit-spec mult mcand out-size)))
    :hints (("Goal"
             :in-theory (e/d (mult-final-spec
                              sum-pps-bycol-bybit-simple-is-sum-pps-bycol-bybit
                              mult-bycol-bybit-spec) ())))))

(def-rp-rule loghead-of-*-is-mult-final-spec
  (implies (and (integerp mult)
                (integerp mcand)
                (natp out-size))
           (equal (loghead out-size (* mult mcand))
                  (mult-final-spec mult mcand out-size)))
  :hints (("Goal"
           :in-theory (e/d (mult-simple-spec-is-*
                            mult-final-spec-mult-bycol-bybit-spec
                            MULT-BYCOL-BYBIT-SPEC-MULT-BYCOL-SPEC
                            mult-byrow-spec-is-mult-simple-spec
                            mult-bycol-spec-is-mult-byrow-spec)
                           ()))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sign of multiplication when sign of operands are known

#|


#|(local
 (use-arithmetic-5 t))||#

#|(local
 (use-ihs-logops-lemmas t))||#

(defthm mult-of-known-signs-lemma-0
  (implies (and (integerp x)
                (integerp y))
           (and (implies (and (< x 0)
                              (< y 0))
                         (> (* x y) 0))
                (implies (and (>= x 0)
                              (>= y 0))
                         (>= (* x y) 0))
                (implies (and (< x 0)
                              (> y 0))
                         (< (* x y) 0))))) 

(skip-proofs
 (defthmd mult-of-known-signs-lemma-1
  (implies (posp size)
           (equal (EQUAL (LOGHEAD size IN) 0)
                  (and (equal (loghead (1- size) in) 0)
                       (not (logbitp (1- size) in))))) 
  :hints (("Goal"
           
           :in-theory (e/d* (logbitp
                             
                             bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions
                             )
                            (ACL2::LOGHEAD**))))))

(defthm mult-of-known-signs-lemma-2
  (implies (posp in-size)
           (and
            (implies (acl2::logbitp (1- in-size) in)
                     (< (acl2::logext in-size in) 0))
            (implies (not (acl2::logbitp (1- in-size) in))
                     (>= (acl2::logext in-size in) 0))
            (implies (and (not (acl2::logbitp (1- in-size) in))
                          (not (equal (loghead in-size in) 0))) ;
                     (> (acl2::logext in-size in) 0))))
  :hints (("Goal"
           :in-theory (e/d* (;;bitops::ihsext-recursive-redefs
                             ;;bitops::ihsext-inductions
                             mult-of-known-signs-lemma-1
                             acl2::logext)
                            ()))))

(defthmd size-of-multiplication
  (and (implies (and (unsigned-byte-p in1-size in1)
                     (unsigned-byte-p in2-size in2))
                (unsigned-byte-p (+ in1-size in2-size) (* in1 in2)))
       (implies (and (unsigned-byte-p in1-size in1)
                     (signed-byte-p in2-size in2))
                (signed-byte-p (+ in1-size in2-size) (* in1 in2)))
       (implies (and (signed-byte-p in1-size in1)
                     (unsigned-byte-p in2-size in2))
                (signed-byte-p (+ in1-size in2-size) (* in1 in2)))
       (implies (and (signed-byte-p in1-size in1)
                     (signed-byte-p in2-size in2))
                (unsigned-byte-p (+ in1-size in2-size) (* in1 in2))))
  :hints (("Goal"
           :in-theory (e/d* (bitops::ihsext-recursive-redefs
                             bitops::ihsext-inductions)
                           (LOGHEAD-OF-*-IS-MULT-FINAL-SPEC)))))

(defthm mult-of-signed-and-signed
  (implies (and (integerp in1)
                (integerp in2)
                (posp in1-size)
                (posp in2-size)
                (acl2::logbitp (1- in1-size) in1)
                (acl2::logbitp (1- in2-size) in2))
           (and (> (* (acl2::logext in1-size in1)
                      (acl2::logext in2-size in2))
                   0)
                (equal (logbit (+ -1 in1-size in2-sie)
                               (* (acl2::logext in1-size in1)
                                  (acl2::logext in2-size in2)))
                       0)))
  :hints (("Goal"
           :use ((:instance mult-of-known-signs-lemma-0
                            (x (acl2::logext in1-size in1))
                            (y (acl2::logext in2-size in2))))
           :in-theory (e/d* ()
                            (mult-of-known-signs-lemma-0)))))


|#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plus to 2vec-adder
(add-rp-rule ACL2::LOGHEAD-TYPE)

(def-rp-rule integerp-of-+
  (implies (and (integerp x)
                (integerp y))
           (integerp (+ x y))))

(encapsulate
  nil

  (local
   (include-book "lemmas"))

  (local
   (defthmd equal-of-loghead-logapp-1-lemma
     (implies (not (zp size))
              (equal (logapp 1 (bit-of x 0) (loghead (1- size) (ash x -1)))
                     (loghead size x)))
     :hints (("Goal"
              :in-theory (e/d* (bitops::ihsext-inductions
                                bit-of
                                bitops::ihsext-recursive-redefs)
                               ())))))

  (local
   (defthm equal-of-loghead-logapp-1
     (implies (not (zp size))
              (equal (equal (loghead size x)
                            (logapp 1 a b))
                     (equal (logapp 1 (bit-of x 0) (loghead (1- size) (ash x -1)))
                            (logapp 1 a b))))
     :hints (("Goal"
              :use ((:instance equal-of-loghead-logapp-1-lemma))
              :in-theory (e/d* ()
                               ())))))

  (local
   (defthm to-m2
     (equal (ACL2::BOOL->BIT (LOGBITP 0 X))
            (m2 x))
     :hints (("Goal"
              :in-theory (e/d (LOGBITP
                               floor
                               ifix
                               oddp
                               evenp
                               mod
                               m2
                               ACL2::BOOL->BIT
                               (:REWRITE ACL2::|(* (if a b c) x)|)
                               (:REWRITE ACL2::|(* 1 x)|)
                               (:REWRITE ACL2::|(* y x)|)
                               (:REWRITE ACL2::|(equal (if a b c) x)|)
                               (:REWRITE ACL2::|(mod (if a b c) x)|)
                               (:REWRITE ACL2::|(mod x 2)| . 1)
                               (:REWRITE ACL2::INTEGERP==>DENOMINATOR-=-1)
                               (:REWRITE ACL2::INTEGERP==>NUMERATOR-=-X))
                              (mod2-is-m2
                               +-is-sum
                               floor2-if-f2))))))

  (local
   (defthm logtail-to-floor
     (implies (integerp x)
              (equal
               (logtail 1 x)
               (floor x 2)))
     :hints (("Goal"
              :in-theory (e/d (floor
                               logtail)
                              ())))))

  (local
   (defthm logapp-of-the-same
     (equal (equal (logapp 1 x y)
                   (logapp 1 x z))
            (equal (ifix y) (ifix z)))
     :hints (("Goal"
              :in-theory (e/d (logapp
                               sum
                               ifix)
                              (+-is-sum))))))

  (local
   (encapsulate
     nil
     (local
      (use-arithmetic-5 t))
     (defthm f2-of-m2
       (and (equal (sum other (f2 (sum (m2 x) y)))
                   (sum other
                        (f2 (sum x y))
                        (-- (f2 x))))
            (equal (sum (f2 (sum (m2 x) y)) other)
                   (sum other
                        (f2 (sum x y))
                        (-- (f2 x)))))
       :hints (("Goal"
                :in-theory (e/d (f2
                                 m2
                                 sum --)
                                (+-is-sum
                                 floor2-if-f2
                                 mod2-is-m2)))))))

  (local
   (defthm bitp-of-f2
     (and (implies (and (bitp x)
                        (bitp y)
                        (bitp z))
                   (bitp (f2 (sum x y z))))
          (implies (and (bitp x)
                        (bitp y))
                   (bitp (f2 (sum x y)))))
     :hints (("Goal"
              :in-theory (e/d (bitp) ())))))

  (local
   (defthmd
     loghead-binary-+-of-loghead
     (implies (and (integerp x)
                   (integerp y))
              (equal (loghead size (+ (loghead size x) y))
                     (loghead size (+ x y))
                     ))
     :hints (("Goal"
              :in-theory (e/d* ((:REWRITE ACL2::|(* (expt c m) (expt d n))|)
                                (:REWRITE ACL2::|(* 1 x)|)
                                (:REWRITE ACL2::|(* x (- y))|)
                                (:REWRITE ACL2::|(+ x (- x))|)
                                (:REWRITE ACL2::|(+ y (+ x z))|)
                                (:REWRITE ACL2::|(+ y x)|)
                                (:REWRITE ACL2::|(/ (expt x n))|)
                                (:REWRITE ACL2::|(mod (+ x y) z) where (<= 0 z)|
                                          . 1)
                                (:REWRITE ACL2::BUBBLE-DOWN-*-MATCH-1)
                                (:REWRITE ACL2::BUBBLE-DOWN-+-MATCH-1)
                                (:DEFINITION ACL2::EXPT2$INLINE)
                                (:DEFINITION ACL2::IMOD$INLINE)
                                (:DEFINITION ACL2::LOGHEAD$INLINE)
                                (:REWRITE ACL2::SIMPLIFY-MOD-+-MOD)
                                ;;(:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP)
                                ;;(:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONZERO)
                                ;;(:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE)
                                (:TYPE-PRESCRIPTION IFIX)
                                (:TYPE-PRESCRIPTION ACL2::INTEGERP-MOD)
                                (:TYPE-PRESCRIPTION ACL2::MOD-TYPE . 4)
                                (:TYPE-PRESCRIPTION NFIX)
                                (:TYPE-PRESCRIPTION ACL2::RATIONALP-MOD)
                                (:REWRITE ACL2::NORMALIZE-ADDENDS)
                                (:REWRITE ACL2::NORMALIZE-FACTORS-GATHER-EXPONENTS)
                                (:REWRITE ACL2::SIMPLIFY-MOD-+-MOD)
                                (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE)
                                (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE)
                                (:TYPE-PRESCRIPTION ACL2::EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
                               (+-IS-SUM))))))

  (defthmd loghead-of-+-is-2vec-adder-lemma
     (implies (and (integerp x)
                   (integerp y)
                   (bitp carry))
              (and (equal (loghead size (+ x y carry))
                          (2vec-adder x y carry size))
                   (equal (loghead size (+ x carry y))
                          (2vec-adder x y carry size))
                   (equal (loghead size (+ carry x y))
                          (2vec-adder x y carry size))))
     :otf-flg t
     :hints (("Goal"
              :induct (2vec-adder x y carry size)
              :do-not-induct t
              :in-theory (e/d* (2vec-adder
                                s-spec
                                BITOPS::LOGCDR-OF-LOGHEAD
                                sum-list
                                BIT-OF
                                c-spec
                                bit-concat)
                               (D2-OF-MINUS
                                SUM-OF-F2S)))))

  (defthm loghead-of-+-is-2vec-adder
    (implies (and (integerp x)
                  (integerp y)
                  (bitp carry))
             (and (equal (loghead size (+ x y carry))
                         (2vec-adder (loghead size x) (loghead size y) carry size))
                  (equal (loghead size (+ x carry y))
                         (2vec-adder (loghead size x) (loghead size y) carry size))
                  (equal (loghead size (+ carry x y))
                         (2vec-adder (loghead size x) (loghead size y) carry size))))
    :otf-flg t
    :hints (("Goal"
             :do-not-induct t
             :in-theory (disable +-IS-SUM)
             ;;:in-theory (theory 'ground-zero)
             :use ((:instance loghead-of-+-is-2vec-adder-lemma
                              (x (loghead size x))
                              (y (loghead size y)))
                   (:instance loghead-binary-+-of-loghead
                              (x x)
                              (y (+ (loghead size y) carry))
                              )
                   (:instance loghead-binary-+-of-loghead
                              (x y)
                              (y (+ x carry))
                              ))
             )))

  (defthm loghead-of-+-is-2vec-adder-without-carry
    (implies (and (integerp x)
                  (integerp y))
             (equal (loghead size (+ x y))
                    (2vec-adder (loghead size x) (loghead size y) 0 size)))
    :otf-flg t
    :hints (("Goal"
             :use ((:instance loghead-of-+-is-2vec-adder
                              (carry 0)))
             :do-not-induct t
             :in-theory (e/d ()
                             (loghead-of-+-is-2vec-adder))))))

(add-rp-rule loghead-of-+-is-2vec-adder-without-carry)
(add-rp-rule loghead-of-+-is-2vec-adder)


(def-rp-rule integerp-of-if
  (implies (and (integerp then)
                (integerp else))
           (integerp (if test then else))))

(encapsulate
  nil
  (local
   (use-ihs-logops-lemmas t))
  (local
   (use-ihs-extensions t))


  (local
   (defthm dummy-measure-lemma
     (implies (and (<= x x2)
                   (< y y2))
              (and (< (+ x y)
                      (+ x2 y2))
                   (< (+ y x)
                      (+ y2 x2))))))


  (local
   (defthm natp-implies-logcdr-is-lte
     (implies (natp x)
              (<= (ACL2::LOGCDR X) X))
     :hints (("Goal"
              :cases ((equal x 0)
                      (logbitp 0 x))
              :expand ((ACL2::LOGCONS 0 (ACL2::LOGCDR X))
                       (ACL2::LOGCONS 1 (ACL2::LOGCDR X)))
              :use ((:instance BITOPS::LOGCONS-DESTRUCT
                               (acl2::x x)))
              :in-theory (e/d* (natp)
                               (BITOPS::LOGCONS-DESTRUCT
                                ACL2::EQUAL-LOGCONS))))))

  (local
   (defun +-recursive (x y carry-in)
     (declare (xargs :measure (+ (nfix x)
                                 (nfix y))))
     (if (or (not (natp x))
             (not (natp y)))
         carry-in
       (if (and (zp x)
                (zp y))
           carry-in
         (logapp 1 (m2 (sum
                        (acl2::logcar x)
                        (acl2::logcar y)
                        carry-in))
                 (+-recursive (acl2::logcdr x)
                              (acl2::logcdr y)
                              (f2 (sum
                                   (acl2::logcar x)
                                   (acl2::logcar y)
                                   carry-in))))))))

  (local
   (defun +-recursive-only-carry (x carry-in)
     (declare (xargs :measure (nfix x)))
     (if (zp x)
         carry-in
       (logapp 1 (m2 (sum (acl2::logcar x)
                          carry-in))
               (+-recursive-only-carry (acl2::logcdr x)
                                       (f2 (sum (acl2::logcar x)
                                                carry-in)))))))

  (local
   (defthm sum-of-0
     (and (equal (sum x 0)
                 (ifix x))
          (equal (sum 0 x)
                 (ifix x)))
     :hints (("Goal"
              :in-theory (e/d (sum)
                              ())))))

  (local
   (defthm sum-of-ifix
     (and (equal (sum (ifix x) other)
                 (sum x other))
          (equal (sum x (ifix other))
                 (sum x other)))
     :hints (("Goal"
              :in-theory (e/d (sum)
                              ())))))

  (local
   (defthm +-recursive-to-+-recursive-only-carry
     (and (equal (+-recursive x 0 carry-in)
                 (+-recursive-only-carry x carry-in))
          (equal (+-recursive 0 x carry-in)
                 (+-recursive-only-carry x carry-in)))
     :hints (("Goal"
              :expand ((+-RECURSIVE X 0 CARRY-IN))
              :induct (+-recursive-only-carry x carry-in)
              :in-theory (e/d () ())))))
           
  (local
   (defthmd m2-and-f2-to-logical-def
     (and (implies (and (bitp x)
                        (bitp y)
                        (bitp z))
                   (and (equal (m2 (sum x y z))
                               (binary-xor x (binary-xor y z)))
                        (equal (f2 (sum x y z))
                               (or$ (and$ x y)
                                    (and$ x z)
                                    (and$ y z)))))
          (implies (and (bitp x)
                        (bitp y))
                   (and (equal (m2 (sum x y))
                               (binary-xor x y))
                        (equal (f2 (sum x y))
                               (and$ x y)))))
     :hints (("Goal"
              :in-theory (e/d (bitp) ())))))

  (defthm logbitp-0-of-sum
    (implies (and (natp x)
                  (natp y))
             (equal (logbitp 0 (+ x y))
                    (not (equal (logbitp 0 x)
                                (logbitp 0 y)))))
    :hints (("Goal"
             :cases ((oddp x)
                     (oddp y))
             :in-theory (e/d (logbitp
                              (:REWRITE ACL2::IFIX-WHEN-INTEGERP)
                              (:REWRITE ACL2::SUM-IS-EVEN . 1)
                              (:REWRITE ACL2::|(* x (+ y z))|)
                              (:REWRITE ACL2::|(* y x)|)
                              (:REWRITE ACL2::|(floor x 1)|)
                              oddp natp evenp) ()))))
                   
  (local
   (defthmd +-to-+-recursive
     (implies (and (natp x)
                   (natp y)
                   (bitp carry-in))
              (equal (+ x y carry-in)
                     (+-recursive x y carry-in)))
     :hints (("Goal"
              :do-not-induct t
              :induct (+-recursive x y carry-in)
              :expand ((:free (x) (LOGAPP 1 1 x))
                       (:free (x) (ash x 1)))
              :in-theory (e/d (or$ binary-xor and$
                                   bitp
                                   m2-and-f2-to-logical-def)
                              ())))))

  (local
   (defthmd +-to-+-recursive-without-carry
     (implies (and (syntaxp (and (equal x 'x)
                                 (equal y 'y)))
                   (natp x)
                   (natp y))
              (equal (+ x y)
                     (+-recursive x y 0)))
     :hints (("Goal"
              :do-not-induct t
              :use ((:instance +-to-+-recursive
                               (carry-in 0)))
              :in-theory (e/d ()
                              ())))))


  (local
   (defthm natp-of-+-RECURSIVE
     (implies (and (natp x)
                   (natp y)
                   (bitp z))
              (and (natp (+-RECURSIVE X Y Z))
                   (integerp (+-RECURSIVE X Y Z))))
     :rule-classes (:rewrite :type-prescription)
     :hints (("Goal"
              :do-not-induct t
              :induct (+-RECURSIVE X Y Z)
              :in-theory (e/d (+-to-+-recursive
                               m2-and-f2-to-logical-def
                               or$ and$ binary-xor)
                              ())))))

  ;; (skip-proofs
  ;;  (defthmd logbitp-implies-deconstruct-var
  ;;   (implies (and (LOGBITP 0 Y)
  ;;                 (integerp y))
  ;;            (equal (acl2::logcdr y)
  ;;                   (/ (- y 1) 2)))
  ;;   :rule-classes :rewrite 
  ;;   :hints (("Goal"
  ;;            :in-theory (e/d () ())))))

  ;; (skip-proofs
  ;;  (defthmd not-logbitp-implies-deconstruct-var
  ;;   (implies (and (not (LOGBITP 0 Y))
  ;;                 (integerp y))
  ;;            (equal (acl2::logcdr y)
  ;;                   (/ y 2)))
  ;;   :rule-classes :rewrite 
  ;;   :hints (("Goal"
  ;;            :in-theory (e/d () ())))))

  (local
   (defthm dummy-logcdr-relations
     (implies (and (natp x)
                   (< x other))
              (< (acl2::logcdr x) other))
     :hints (("Goal"
              :cases ((logbitp 0 x))
              :expand ((ACL2::LOGCONS 0 (ACL2::LOGCDR X))
                       (ACL2::LOGCONS 1 (ACL2::LOGCDR X)))
              :use ((:instance BITOPS::LOGCONS-DESTRUCT
                               (acl2::x x)))
              :in-theory (e/d* (natp)
                               (BITOPS::LOGCONS-DESTRUCT
                                ACL2::EQUAL-LOGCONS))))))

  (local
   (defthm UNSIGNED-BYTE-P-implies-natp-size
     (implies (UNSIGNED-BYTE-P size x)
              (and (natp size)
                   (natp (1+ size))))))

  (local
   (defthm unsigned-byte-p-of-logcdr-lemma
     (implies (unsigned-byte-p size x)
              (unsigned-byte-p size (acl2::logcdr x)))))

  (local
   (defthm unsigned-byte-p-of-+-RECURSIVE-ONLY-CARRY
     (implies (and (unsigned-byte-p size x)
                   (bitp z))
              (UNSIGNED-BYTE-P (+ 1 SIZE)
                               (+-RECURSIVE-ONLY-CARRY x Z)))
     :otf-flg t
     :hints (("Goal"
              :expand ()
              :in-theory (e/d (ACL2::UNSIGNED-BYTE-P**
                               natp
                               ;;logbitp-implies-deconstruct-var
                               ;;not-logbitp-implies-deconstruct-var
                               m2-and-f2-to-logical-def
                               ;;or$ and$ binary-xor
                               )
                              (unsigned-byte-p))))))

  (local
   (defthm unsigned-byte-p-of-+-RECURSIVE-ONLY-CARRY-corol
     (implies (and (unsigned-byte-p (1- size) x)
                   (bitp z))
              (UNSIGNED-BYTE-P size
                               (+-RECURSIVE-ONLY-CARRY x Z)))
     :otf-flg t
     :hints (("Goal"
              :use ((:instance unsigned-byte-p-of-+-RECURSIVE-ONLY-CARRY
                               (size (1- size))))
              :in-theory (e/d (
                               ;;or$ and$ binary-xor
                               )
                              (unsigned-byte-p-of-+-RECURSIVE-ONLY-CARRY))))))

  (local
   (defun unsigned-byte-p-of-+-induct (x size1 y size2 carry-in)
     (declare (ignorable x size1 y size2 carry-in))
     (declare (xargs :measure (+ (nfix x)
                                 (nfix y))))
     (if (or (not (natp x))
             (not (natp y)))
         carry-in
       (IF (and (ZP x) (ZP y))
           carry-in
           (unsigned-byte-p-of-+-induct (ACL2::LOGCDR X)
                                        (1- size1)
                                        (ACL2::LOGCDR Y)
                                        (1- size2)
                                        (F2 (SUM (ACL2::LOGCAR X)
                                                 (ACL2::LOGCAR Y)
                                                 CARRY-IN)))))))

  (local
   (defthm unsigned-byte-p-of-+-RECURSIVE
     (implies (and (unsigned-byte-p size1 x)
                   (unsigned-byte-p size2 y)
                   (bitp z))
              (unsigned-byte-p (1+ (max size1 size2))
                               (+-RECURSIVE x y z)))
     :otf-flg t
     :hints (("Goal"
              :do-not-induct t
              :induct (unsigned-byte-p-of-+-induct X size1 Y size2 Z)
              :expand ((:free (x) (LOGAPP 1 1 x))
                       (:free (x) (acl2::logcons 0 x))
                       (:free (x) (acl2::logcons 1 x))
                       (:free (x) (ash x 1))
                       (+-RECURSIVE X Y Z))
              :in-theory (e/d (ACL2::UNSIGNED-BYTE-P**
                               natp
                               ;;logbitp-implies-deconstruct-var
                               ;;not-logbitp-implies-deconstruct-var
                               m2-and-f2-to-logical-def
                               ;;or$ and$ binary-xor
                               )
                              (unsigned-byte-p))))))

  (defthm unsigned-byte-p-of-+
    (implies (and (unsigned-byte-p size1 x)
                  (unsigned-byte-p size2 y)
                  (bitp z))
             (unsigned-byte-p (1+ (max size1 size2))
                              (+ x y z)))
    :otf-flg t
    :hints (("Goal"
             :do-not-induct t
             :in-theory (e/d (+-to-+-recursive
                              ;;or$ and$ binary-xor
                              )
                             (unsigned-byte-p
                              max)))))

  (defthm +-of-known-sized-vecs
    (and (Implies (and (unsigned-byte-p size1 x)
                       (unsigned-byte-p size2 y))
                  (equal (+ x y)
                         (2vec-adder x y 0 (1+ (max size1 size2)))))
         (Implies (and (unsigned-byte-p size1 x)
                       (unsigned-byte-p size2 y)
                       (unsigned-byte-p 1 z))
                  (equal (+ x y z)
                         (2vec-adder x y z (1+ (max size1 size2))))))
    :otf-flg t
    :hints (("Goal"
             :do-not-induct t
             :use ((:instance loghead-of-+-is-2vec-adder-without-carry
                              (size (1+ (max size1 size2))))
                   (:instance loghead-of-+-is-2vec-adder
                              (size (1+ (max size1 size2)))
                              (carry z))
                   (:instance unsigned-byte-p-of-+)
                   (:instance unsigned-byte-p-of-+
                              (z 0)))
             :in-theory (e/d () (loghead-of-+-is-2vec-adder-without-carry
                                 unsigned-byte-p
                                 unsigned-byte-p-of-+
                                 loghead-of-+-is-2vec-adder))))))
