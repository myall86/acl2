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

(in-package "RP")

(include-book "fnc-defs")

(include-book "pp-flatten-meta-fncs")

(local
 (include-book "lemmas"))

(local
 (include-book "projects/rp-rewriter/proofs/aux-function-lemmas" :dir :system))

(local
 (include-book "projects/rp-rewriter/proofs/eval-functions-lemmas" :dir :system))

(local
 (include-book "projects/rp-rewriter/proofs/rp-equal-lemmas" :dir :system))

(local
 (fetch-new-events
  (include-book "arithmetic-5/top" :dir :system)
  use-arith-5
  :disabled t))

(local
 (in-theory (enable pp)))

(local
 (in-theory (e/d (sum-comm-1-loop-stopper
                  sum-comm-2-loop-stopper)
                 (sum-comm-1
                  sum-comm-2))))

(local
 (defthmd rp-evl-of-ex-from-rp-reverse
   (implies (syntaxp (atom x))
            (equal (rp-evlt x a)
                   (rp-evlt (ex-from-rp x) a)))
   :hints (("goal"
            :in-theory (e/d (ex-from-rp
                             is-rp) ())))))

(local
 (defthm when-ex-from-rp-is-1
   (implies (equal (ex-from-rp term) ''1)
            (equal (rp-evlt term a)
                   1))
   :hints (("goal"
            :in-theory (e/d (ex-from-rp is-rp)
                            (ex-from-rp-lemma1))))))

(local
 (defthm when-ex-from-rp-is-0
   (implies (equal (ex-from-rp term) ''0)
            (equal (rp-evlt term a)
                   0))
   :hints (("goal"
            :in-theory (e/d (ex-from-rp is-rp)
                            (ex-from-rp-lemma1))))))

;; valid-sc

(defun valid-sc-subterms-lst (lst a)
  (if (atom lst)
      (eq lst nil)
    (and (valid-sc-subterms (car lst) a)
         (valid-sc-subterms-lst (cdr lst) a))))

(local
 (encapsulate
   nil

   (local
    (use-arith-5 t))

   (defthm floor-len-is-less-than-len
     (implies (and (natp len))
              (<= (floor len 2) len)))

   (defthm natp-len
     (natp (len x)))

   (defthmd dummy-arith-lemma-1
     (implies (NOT (CONSP LST))
              (equal (len lst) 0)))

   (defthmd dummy-arith-lemma-2
     (implies (and (<= SIZE (LEN LST))
                   (consp lst))
              (equal (< (LEN (CDR LST)) (+ -1 SIZE)) nil)))))

(local
 (defthm valid-sc-subterms-cut-list-by-half
   (implies (and (valid-sc-subterms lst a)
                 (<= size (len lst)))
            (and (valid-sc-subterms (mv-nth 0 (cut-list-by-half lst size)) a)
                 (valid-sc-subterms (mv-nth 1 (cut-list-by-half lst size)) a)))
   :hints (("Goal"
            ;;          :do-not-induct t
            ;;            :induct (cut-list-by-half lst size)
            :in-theory (e/d (cut-list-by-half
                             dummy-arith-lemma-2
                             )
                            (+-IS-SUM))))))

(local
 (defthm valid-sc-subterms-lst-cut-list-by-half
   (implies (and (valid-sc-subterms-lst lst a)
                 (<= size (len lst)))
            (and (valid-sc-subterms-lst (mv-nth 0 (cut-list-by-half lst size)) a)
                 (valid-sc-subterms-lst (mv-nth 1 (cut-list-by-half lst size)) a)))
   :hints (("Goal"
            :do-not-induct t
            :induct (cut-list-by-half lst size)
            :in-theory (e/d (cut-list-by-half)
                            (+-IS-SUM))))))

(local
 (defthm valid-sc-subterms-lst-cut-list-by-half-2
   (implies (and (valid-sc-subterms-lst (strip-cdrs lst) a)
                 (<= size (len lst)))
            (and (valid-sc-subterms-lst
                  (strip-cdrs (mv-nth 0 (cut-list-by-half lst size)))
                  a)
                 (valid-sc-subterms-lst
                  (strip-cdrs (mv-nth 1 (cut-list-by-half lst size)))
                  a)))
   :hints (("Goal"
            :do-not-induct t
            :induct (cut-list-by-half lst size)
            :in-theory (e/d (cut-list-by-half
                             dummy-arith-lemma-1)
                            (+-IS-SUM))))))

(defthm valid-sc-subterms-merge-sorted-and$-lists
  (implies (and (valid-sc-subterms lst1 a)
                (valid-sc-subterms lst2 a))
           (valid-sc-subterms (merge-sorted-and$-lists lst1 lst2) a))
  :hints (("Goal"
           :induct (merge-sorted-and$-lists lst1 lst2)
           :in-theory (e/d (merge-sorted-and$-lists) ()))))

(encapsulate nil
  (local
   (use-arith-5 t))

  (defthm valid-sc-subterms-sort-and$-list
    (implies (valid-sc-subterms lst a)
             (valid-sc-subterms (sort-and$-list lst len) a))
    :hints (("Goal"
             :induct (sort-and$-list lst len)
             :do-not-induct t
             :in-theory (e/d (sort-and$-list)
                             (+-IS-SUM)))))

  (defthm valid-sc-subterms-lst-merge-sorted-pp-lists
    (implies (and (valid-sc-subterms-lst (strip-cdrs lst1) a)
                  (valid-sc-subterms-lst (strip-cdrs lst2) a))
             (valid-sc-subterms-lst
              (strip-cdrs
               (merge-sorted-pp-lists lst1 lst2))
              a))
    :hints (("Goal"
             :induct (merge-sorted-pp-lists lst1 lst2)
             :in-theory (e/d (merge-sorted-pp-lists) ()))))

  (defthm valid-sc-subterms-lst-sort-pp-lists
    (implies (valid-sc-subterms-lst (strip-cdrs lst1) a)
             (valid-sc-subterms-lst (strip-cdrs
                                     (sort-pp-lists lst1 len))
                                    a))
    :hints (("Goal"
             ;;:induct (sort-pp-lists lst1 len)
             ;;:do-not-induct t
             :in-theory (e/d (sort-pp-lists) ())))))

(local
 (defthm valid-sc-subterms-lst-and$-pp-lists-aux
   (implies (and (valid-sc-subterms cur a)
                 (valid-sc-subterms-lst (strip-cdrs lst2) a)
                 (valid-sc-subterms-lst (strip-cdrs acc) a))
            (valid-sc-subterms-lst (strip-cdrs (and$-pp-lists-aux cur lst2 acc
                                                                  sign))
                                   a))
   :hints (("Goal"
            :in-theory (e/d (and$-pp-lists-aux) ())))))

(defthm valid-sc-subterms-lst-and$-pp-lists
  (implies (and (valid-sc-subterms-lst (strip-cdrs lst1) a)
                (valid-sc-subterms-lst (strip-cdrs lst2) a)
                (valid-sc-subterms-lst (strip-cdrs acc) a))
           (valid-sc-subterms-lst (strip-cdrs (and$-pp-lists lst1 lst2 acc
                                                             sign))
                                  a))
  :hints (("Goal"
           :in-theory (e/d (and$-pp-lists) ()))))

(defthm valid-sc-subterms-lst-pp-term-to-pp-lists
  (implies (valid-sc term a)
           (valid-sc-subterms-lst (strip-cdrs (pp-term-to-pp-lists term sign))
                                  a))
  :hints (("Goal"
           :in-theory (e/d (pp-term-to-pp-lists) ()))))

(defthm valid-sc-pp-lists-to-term-p+
  (implies (valid-sc-subterms-lst (strip-cdrs lst) a)
           (valid-sc-subterms (pp-lists-to-term-pp-lst lst) a))
  :hints (("Goal"
           :in-theory (e/d (pp-lists-to-term-pp-lst
                            CREATE-AND-LIST-INSTANCE
                            is-if
                            is-rp) ()))))

(defret valid-sc-of-pp-remove-extraneous-sc
  (implies (force (valid-sc term a))
           (valid-sc res-term a))
  :fn pp-remove-extraneous-sc
  :hints (("Goal"
           :do-not-induct t
           :induct (pp-remove-extraneous-sc term)
           :expand ((:free (x y) (is-rp (cons x y))))
           :in-theory (e/d (pp-remove-extraneous-sc)
                           ((:REWRITE CAR-OF-EX-FROM-RP-IS-NOT-RP)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION RP-TERMP)
                            (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC)
                            (:REWRITE RP-TERMP-OF-PP-REMOVE-EXTRANEOUS-SC)
                            (:DEFINITION FALIST-CONSISTENT)
                            (:DEFINITION FALIST-CONSISTENT-AUX)
                            rp-termp)))))

(defthm valid-sc-subterms-append-wog
  (implies (and (force (valid-sc-subterms lst1 a))
                (force (valid-sc-subterms lst2 a)))
           (valid-sc-subterms (append-wog lst1 lst2) a))
  :hints (("Goal"
           :induct (append-wog lst1 lst2)
           :do-not-induct t
           :in-theory (e/d (append-wog) ()))))

(defthm valid-sc-subterms-list-to-lst
  (implies (valid-sc term a)
           (valid-sc-subterms (list-to-lst term) a))
  :hints (("Goal"
           :in-theory (e/d (list-to-lst
                            valid-sc
                            is-rp
                            is-if)
                           ()))))


(defret pp-flatten-returns-valid-sc
  (implies (force (valid-sc term a))
           (VALID-SC-SUBTERMS pp-lst a))
  :fn pp-flatten
  :hints (("Goal"
           :in-theory (e/d (pp-flatten
                            create-and-list-instance
                            is-if is-rp) ()))))

(defthm valid-sc-subterms-of-cdr
  (implies (or (valid-sc-subterms lst a)
               (and (valid-sc lst a)
                    (not (equal (car lst) 'rp))
                    (not (equal (car lst) 'quote))
                    (not (equal (car lst) 'if))))
           (valid-sc-subterms (cdr lst) a))
  :hints (("Goal"
           :in-theory (e/d (is-rp
                            is-if)
                           ()))))

(local
 (defret valid-sc-of-<fn>
   (implies (and (valid-sc cur a)
                 valid)
            (VALID-SC-SUBTERMS (cdr pp-list-entry) a))
   :fn SORT-SUM-META-AUX-AUX
   :hints (("Goal"
            :in-theory (e/d (SORT-SUM-META-AUX-AUX
                             is-rp is-if)
                            ((:DEFINITION EVAL-AND-ALL)
                             (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC)
                             (:DEFINITION INCLUDE-FNC)
                             (:REWRITE CAR-OF-EX-FROM-RP-IS-NOT-RP)

                             (:DEFINITION RP-TERMP)
                             (:DEFINITION FALIST-CONSISTENT)
                             (:REWRITE DEFAULT-CDR)
                             (:DEFINITION FALIST-CONSISTENT-AUX)
                             rp-trans
                             (:TYPE-PRESCRIPTION O<)
                             (:TYPE-PRESCRIPTION INCLUDE-FNC)
                             (:TYPE-PRESCRIPTION VALID-SC-SUBTERMS)
                             (:REWRITE DEFAULT-CAR)
                             (:DEFINITION INCLUDE-FNC-SUBTERMS)
                             (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC-LST)
                             (:TYPE-PRESCRIPTION VALID-SC)
                             (:TYPE-PRESCRIPTION O-P)
                             (:TYPE-PRESCRIPTION INCLUDE-FNC-SUBTERMS)
                             (:REWRITE VALID-SC-OF-EX-FROM-RP)
                             (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                             (:definition rp-termp)))))))

(local
 (defthm sort-sum-meta-aux-returns-valid-sc
   (implies (valid-sc term a)
            (valid-sc-subterms-lst
             (strip-cdrs (mv-nth 1 (sort-sum-meta-aux term)))
             a))
   :hints (("goal"
            :in-theory (e/d (sort-sum-meta-aux
                             )
                            ((:definition valid-sc)
                             (:DEFINITION EVAL-AND-ALL)
                             (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC)
                             (:DEFINITION INCLUDE-FNC)
                             (:REWRITE CAR-OF-EX-FROM-RP-IS-NOT-RP)

                             (:DEFINITION RP-TERMP)
                             (:DEFINITION FALIST-CONSISTENT)
                             (:REWRITE DEFAULT-CDR)
                             (:DEFINITION FALIST-CONSISTENT-AUX)
                             rp-trans
                             (:definition rp-termp)
                             (:rewrite car-of-ex-from-rp-is-not-rp)
                             (:definition rp-term-listp)
                             (:rewrite not-include-rp-means-valid-sc)
                             (:definition include-fnc)
                             (:rewrite rp-termp-implies-subterms)
                             (:definition quotep)))))))

(local
 (defthm sort-sum-meta-aux2-returns-valid-sc
   (implies (valid-sc term a)
            (valid-sc-subterms-lst
             (strip-cdrs (mv-nth 1 (sort-sum-meta-aux2 term)))
             a))
   :hints (("goal"
            :in-theory (e/d (sort-sum-meta-aux2
                             )
                            ((:definition valid-sc)
                             (:DEFINITION EVAL-AND-ALL)
                             (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC)
                             (:DEFINITION INCLUDE-FNC)
                             (:REWRITE CAR-OF-EX-FROM-RP-IS-NOT-RP)

                             (:DEFINITION RP-TERMP)
                             (:DEFINITION FALIST-CONSISTENT)
                             (:REWRITE DEFAULT-CDR)
                             (:DEFINITION FALIST-CONSISTENT-AUX)
                             rp-trans
                             (:definition rp-termp)
                             (:rewrite car-of-ex-from-rp-is-not-rp)
                             (:definition rp-term-listp)
                             (:rewrite not-include-rp-means-valid-sc)
                             (:definition include-fnc)
                             (:rewrite rp-termp-implies-subterms)
                             (:definition quotep)))))))

(defthm sort-sum-meta-returns-valid-sc
  (implies (valid-sc term a)
           (valid-sc (mv-nth 0 (sort-sum-meta term)) a))
  :hints (("Goal"
           :in-theory (e/d (sort-sum-meta
                            CREATE-LIST-INSTANCE
                            is-rp
                            is-if) ()))))

;;;;;;;;;;;;;;;;
;; EVAL LEMMAS

(progn
  (local
   (defthmd eval-of-binary-not-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'binary-not)
                   (consp term)
                   (consp (cdr term))
                   (not (cddr term)))
              (equal (rp-evlt term a)
                     (binary-not (rp-evlt (cadr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-binary-not
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'binary-not)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (not (cddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (binary-not (rp-evlt (cadr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-binary-not-1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of---1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          '--)
                   (consp term)
                   (consp (cdr term))
                   (not (cddr term)))
              (equal (rp-evlt term a)
                     (-- (rp-evlt (cadr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of----
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          '--)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (not (cddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (-- (rp-evlt (cadr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of---1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of-bit-of-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'bit-of)
                   (consp term)
                   (consp (cdr term))
                   (consp (cddr term))
                   (not (cdddr term)))
              (equal (rp-evlt term a)
                     (bit-of (rp-evlt (cadr term) a)
                             (rp-evlt (caddr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-bit-of
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'bit-of)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (consp (cddr (ex-from-rp term)))
                   (not (cdddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (bit-of (rp-evlt (cadr (ex-from-rp term)) a)
                             (rp-evlt (caddr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-bit-of-1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of-binary-?-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'binary-?)
                   (consp term)
                   (consp (cdr term))
                   (consp (cddr term))
                   (consp (cdddr term))
                   (not (cddddr term)))
              (equal (rp-evlt term a)
                     (binary-? (rp-evlt (cadr term) a)
                               (rp-evlt (caddr term) a)
                               (rp-evlt (cadddr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-binary-?
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'binary-?)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (consp (cddr (ex-from-rp term)))
                   (consp (cdddr (ex-from-rp term)))
                   (not (cddddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (binary-? (rp-evlt (cadr (ex-from-rp term)) a)
                               (rp-evlt (caddr (ex-from-rp term)) a)
                               (rp-evlt (cadddr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-binary-?-1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of-binary-or-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'binary-or)
                   (consp term)
                   (consp (cdr term))
                   (consp (cddr term))
                   (not (cdddr term)))
              (equal (rp-evlt term a)
                     (binary-or (rp-evlt (cadr term) a)
                                (rp-evlt (caddr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-binary-or
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'binary-or)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (consp (cddr (ex-from-rp term)))
                   (not (cdddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (binary-or (rp-evlt (cadr (ex-from-rp term)) a)
                                (rp-evlt (caddr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-binary-or-1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of-binary-xor-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'binary-xor)
                   (consp term)
                   (consp (cdr term))
                   (consp (cddr term))
                   (not (cdddr term)))
              (equal (rp-evlt term a)
                     (binary-xor (rp-evlt (cadr term) a)
                                 (rp-evlt (caddr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-binary-xor
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'binary-xor)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (consp (cddr (ex-from-rp term)))
                   (not (cdddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (binary-xor (rp-evlt (cadr (ex-from-rp term)) a)
                                 (rp-evlt (caddr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-binary-xor-1)
                              (evl-of-extract-from-rp)))))))

(progn
  (local
   (defthmd eval-of-binary-and-1
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car term)
                          'binary-and)
                   (consp term)
                   (consp (cdr term))
                   (consp (cddr term))
                   (not (cdddr term)))
              (equal (rp-evlt term a)
                     (binary-and (rp-evlt (cadr term) a)
                                 (rp-evlt (caddr term) a))))
     :hints (("goal"
              :in-theory (e/d ()
                              (evl-of-extract-from-rp))))))

  (local
   (defthm eval-of-binary-and
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (equal (car (ex-from-rp term))
                          'binary-and)
                   (consp (ex-from-rp term))
                   (consp (cdr (ex-from-rp term)))
                   (consp (cddr (ex-from-rp term)))
                   (not (cdddr (ex-from-rp term))))
              (equal (rp-evlt term a)
                     (binary-and (rp-evlt (cadr (ex-from-rp term)) a)
                                 (rp-evlt (caddr (ex-from-rp term)) a))))
     :hints (("goal"
              :in-theory (e/d (rp-evl-of-ex-from-rp-reverse
                               eval-of-binary-and-1)
                              (evl-of-extract-from-rp)))))))

(local
 (defthmd not$-to-pp-sum
   (implies (bitp a)
            (equal (not$ a)
                   (sum 1 (-- a))))))

(progn
  (local
   (defthmd has-bitp-rp-implies-lemma
     (implies (and (has-bitp-rp term)
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (eval-and-all (context-from-rp term nil) a))
              (bitp (rp-evlt term a)))
     :hints (("goal"
              :induct (has-bitp-rp term)
              :do-not-induct t
              :in-theory (e/d (has-bitp-rp
                               is-rp
                               is-if
                               eval-and-all
                               context-from-rp)
                              (bitp
                               ex-from-rp-lemma1
                               valid-sc))))))

  (defthm pp-has-bitp-rp-implies
    (implies (and (has-bitp-rp term)
                  (mult-formula-checks state)
                  (rp-evl-meta-extract-global-facts)
                  (valid-sc term a))
             (and (bitp (rp-evlt term a))
                  (bitp (rp-evlt (ex-from-rp term) a))))
    :hints (("goal"
             :induct (has-bitp-rp term)
             :expand ((valid-sc term a))
             :do-not-induct t
             :in-theory (e/d (has-bitp-rp
                              has-bitp-rp-implies-lemma
                              is-rp
                              is-if)
                             (bitp
                              rp-trans
                              ex-from-rp-lemma1
                              context-from-rp
                              valid-sc-ex-from-rp-2
                              not-include-rp
                              rp-evl-of-rp-call
                              valid-sc
                              eval-and-all))))))

(defthmd rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
  (AND (IMPLIES (SYNTAXP (or (ATOM TERM)
                             (and (equal (car term) 'car)
                                  (not (include-fnc term 'ex-from-rp )))))
                (EQUAL (RP-EVL (RP-TRANS TERM) A)
                       (RP-EVL (RP-TRANS (EX-FROM-RP TERM))
                               A)))
       (IMPLIES (SYNTAXP (not (or (ATOM TERM)
                                  (and (equal (car term) 'car)
                                       (not (include-fnc term 'ex-from-rp ))))))
                (EQUAL (RP-EVL (RP-TRANS (EX-FROM-RP TERM)) A)
                       (RP-EVL (RP-TRANS TERM) A)))))

(create-regular-eval-lemma pp 1 mult-formula-checks)

(defthm pp-term-p-is-bitp
  (implies (and (pp-term-p term)
                (mult-formula-checks state)
                (rp-evl-meta-extract-global-facts)
                (valid-sc term a))
           (bitp (rp-evlt term a)))
  :hints (("goal"
           :do-not-induct t
           :induct (pp-term-p term)
           :in-theory (e/d* (;;rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                             (:REWRITE
                              REGULAR-RP-EVL-OF_PP_WHEN_MULT-FORMULA-CHECKS_WITH-EX-FROM-RP))
                            (valid-sc
                             bitp
                             RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT
                             rp-trans
                             ;;rp-evlt-of-ex-from-rp
                             sum
                             not$-to-pp-sum)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ARITH LEMMAS

(local
 (in-theory (disable rp-evlt-of-ex-from-rp)))

(local
 (encapsulate
   nil
   (local
    (in-theory (disable +-IS-SUM)))
   (local
    (use-arith-5 t))
   (defthm floor-of-two-is-less
     (implies (and (> x 2)
                   (integerp x))
              (< (floor x 2)
                 x)))

   (defthm floor-of-len-is-less-than-lst
     (implies (and (consp lst)
                   (consp (cdr lst)))
              (< (FLOOR (LEN LST) 2) (LEN LST)))
     :hints (("Goal"
              :in-theory (e/d (len) ()))))

   (defthm fix-less-than-with-smm
     (implies (consp lst)
              (< 2 (+ 2 (LEN lst)))))))

(progn
  (local
   (in-theory (enable bit-listp)))

  (local
   (defun bit-list-listp (lst)
     (if (atom lst)
         (equal lst nil)
       (and (bit-listp (car lst))
            (bit-list-listp (cdr lst))))))

  (local
   (defun rp-evlt-lst-lst (lst a)
     (if (atom lst)
         nil
       (cons (rp-evlt-lst (car lst) a)
             (rp-evlt-lst-lst (cdr lst) a)))))

  (local
   (define times$ (x y)
     :verify-guards nil
     (b* ((x (ifix x))
          (y (ifix y)))
       (* x y)))))

(local
 (defthm times$-of-1-and-0
   (and (equal (times$ 1 x)
               (ifix x))
        (equal (times$ x 1)
               (ifix x))
        (equal (times$ x 0)
               0)
        (equal (times$ 0 x)
               0))
   :hints (("goal"
            :in-theory (e/d (times$ and$) ())))))

(local
 (defthm len-equals-2
   (implies (and (integerp x)
                 (integerp y))
            (equal (EQUAL (+ x (len lst)) y)
                   (equal (len lst) (- y x))))
   :hints (("Goal"
            :in-theory (e/d () (+-IS-SUM))))))

(progn (local
        (defthm bit-listp-lemma
          (implies (bit-listp (rp-evlt-lst lst a))
                   (bit-listp (rp-evlt-lst (cdr lst) a)))))

       (local
        (defthm bit-listp-lemma-2
          (implies (and (bit-listp (rp-evlt-lst lst a))
                        (consp lst))
                   (bitp (rp-evlt (car lst) a))))))

(progn
  (local
   (defthmd or$-to-pp-sum
     (implies (and (bitp x)
                   (bitp y))
              (equal (or$ x y)
                     (sum x y (-- (and$ x y)))))
     :hints (("goal"
              :in-theory (e/d (bitp) ())))))

  (local
   (defthmd binary-xor-to-pp-sum
     (implies (and (bitp x)
                   (bitp y))
              (equal (binary-xor  x y)
                     (sum x y
                          (-- (and$ x y))
                          (-- (and$ x y)))))))

  (local
   (defthmd binary-?-to-pp-sum
     (implies (and (bitp x)
                   (bitp test)
                   (bitp y))
              (equal (binary-? test  x y)
                     (sum y (and$ test x)
                          (-- (and$ test y)))))))

  (local
   (defthm ---of-pp-sum
     (implies t
              (equal (-- (sum x y))
                     (sum (-- x) (-- y))))
     :hints (("goal"
              :in-theory (e/d (bitp sum --)
                              (+-IS-SUM))))))

  (local
   (defthm --of--
     (equal (-- (-- x))
            (ifix x))
     :hints (("Goal"
              :in-theory (e/d (--) ())))))

  (local
   (defthm type-fix-of-fncs
     (and (equal (ifix (and$ a b))
                 (and$ a b))
          (equal (ifix (sum a b))
                 (sum a b)))
     :hints (("goal"
              :in-theory (e/d (and$ ifix) ())))))

  (local
   (defthm type-fix-of--
     (equal (ifix (-- x))
            (-- x))))

  (local
   (defthm type-fix-when-integerp
     (implies (integerp x)
              (equal (ifix x)
                     x))))

  (local
   (defthm type-fix-when-bitp
     (implies (bitp x)
              (equal (ifix x)
                     x))))

  (local
   (defthm integerp-of-fncs
     (and (integerp (sum x y))
          (integerp (-- x))
          (integerp (and$ x y))
          (integerp (or$ x y))
          (integerp (not$ x)))))

  (local
   (defthm bitp-implies-integerp
     (implies (bitp x)
              (integerp x))))

  (local
   (defthm when-minus-of-x-is-zero
     (implies (and (integerp x)
                   (equal (- x) 0))
              (equal x 0))
     :rule-classes :forward-chaining))

  (local
   (defthm when-minus-of-x-is-1
     (implies (and (integerp x)
                   (equal (- x) 1))
              (equal x -1))
     :rule-classes :forward-chaining))

  (local
   (defthm binar-and-abs-is-and$-2-lemma
     (equal (EQUAL (- (IFIX X)) 0)
            (equal (ifix x) 0))))

  (local
   (defthm binar-and-abs-is-and$-2-lemma-2
     (equal (EQUAL (- (IFIX X)) 1)
            (equal (ifix x) -1))))

  (local
   (defthm binar-and-abs-is-and$-2
     (and (implies (and (bitp x)
                        (bitp y))
                   (equal (times$ x y)
                          (and$ x y)))
          (implies (and (bitp x)
                        (bitp (-- y)))
                   (equal (times$ x y)
                          (-- (and$ x (-- y)))))
          (implies (and (bitp (-- x))
                        (bitp y))
                   (equal (times$ x y)
                          (-- (and$ (-- x) y))))
          (implies (and (bitp (-- x))
                        (bitp (-- y)))
                   (equal (times$ x y)
                          (and$ (-- x) (-- y)))))
     :hints (("goal"
              :in-theory (e/d (times$
                               bit-fix --
                               and$) ())))))
  (local
   (defthm pp-sum-equals
     (equal (equal (sum a x)
                   (sum a y))
            (equal (ifix x)
                   (ifix y)))))

  (local
   (defthm --of--equals
     (equal (equal (-- x)
                   (-- y))
            (equal (ifix x)
                   (ifix y)))
     :hints (("Goal"
              :in-theory (e/d (--) ())))))

  (local
   (defthm and$-of-1-0
     (implies t
              (and (equal (and$ x 1)
                          (bit-fix x))
                   (equal (and$ 1 x)
                          (bit-fix x))
                   (equal (and$ 0 x)
                          0)
                   (equal (and$ x 0)
                          0)))
     :hints (("goal"
              :in-theory (e/d (and$) ())))))

  (local
   (defthm pp-sum-of-negated-sum
     (and (equal (sum a (-- a) b)
                 (ifix b))
          (equal (sum a (-- a))
                 0)
          (equal (sum (-- a) a b)
                 (ifix b))
          (equal (sum (-- a) a)
                 0))
     :hints (("goal"
              :in-theory (e/d (sum
                               --
                               ifix)
                              (+-IS-SUM))))))

  (local
   (defthm and$-assoc
     (equal (and$ (and$ a b) c)
            (and$ a b c))
     :hints (("goal"
              :in-theory (e/d (and$) ())))))

  (local
   (defthm and$-comm-loop=stopper
     (and (equal (and$ b a c)
                 (and$ a b c))
          (equal (and$ b a)
                 (and$ a b)))
     :hints (("goal"
              :in-theory (e/d (and$) ()))))))

(local
 (encapsulate
   nil

   (local
    (use-arith-5 t))

   (defthmd and$-is-times
     (implies (and (bitp x)
                   (bitp y))
              (equal (and$ x y)
                     (times$ x y))))

   (defthm type-fix-of-times
     (equal (ifix (times$ a b))
            (times$ a b))
     :hints (("goal"
              :in-theory (e/d (times$ ifix) ()))))

   (defthm times$-of---
     (and (equal (times$ a (-- b))
                 (-- (times$ a b)))
          (equal (times$ (-- a) b)
                 (-- (times$ a b))))
     :hints (("goal"
              :in-theory (e/d (-- times$ ifix) ()))))

   (defthm times$-distribute-over-pp-sum
     (and (equal (times$ x (sum a b))
                 (sum (times$ x a)
                      (times$ x b)))
          (equal (times$ (sum a b) x)
                 (sum (times$ x a)
                      (times$ x b))))
     :hints (("goal"
              :in-theory (e/d (times$ sum
                                      ifix)
                              (+-IS-SUM)))))

   (defthm times$-comm
     (and (equal (times$ b (times$ a c))
                 (times$ a (times$ b c)))
          (equal (times$ b a)
                 (times$ a b)))
     :hints (("goal"
              :in-theory (e/d (times$) ()))))

   (defthm times$-reoder
     (equal (times$ (times$ a b) c)
            (times$ a (times$ b c)))
     :hints (("goal"
              :in-theory (e/d (times$) ()))))))

(local
 (defthm and$-of-repeated-vars
   (and (equal (and$ a a b)
               (and$ a b))
        (equal (and$ a a)
               (bit-fix a)))
   :hints (("Goal"
            :in-theory (e/d (and$) ())))))

(local
 (progn
   (defthm len-to-consp
     (implies (not (zp size))
              (equal (equal (len x) size)
                     (and (consp x)
                          (equal (len (cdr x)) (1- size)))))
     :hints (("Goal"
              :in-theory (e/d (len) ()))))

   (defthm len-to-consp-when-o
     (equal (equal (len x) 0)
            (atom x)))

   (defthm len-to-consp-when-less-than-2
     (equal (< (LEN X) 2)
            (not (and (consp x)
                      (consp (cdr x)))))
     :hints (("Goal"
              :in-theory (e/d (len) (+-IS-SUM)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pp-lists-to-term lemmas

(local
 (progn
   (defthm append-returns-bit-list-listp
     (implies (and (mult-formula-checks state)
                   (booleanp sign)
                   (bit-list-listp (rp-evlt-lst-lst lst1 a))
                   (bit-list-listp (rp-evlt-lst-lst lst2 a))
                   (rp-evl-meta-extract-global-facts))
              (bit-list-listp
               (rp-evlt-lst-lst (append lst1 lst2)
                                a)))
     :hints (("goal"
              :in-theory (e/d (rp-evlt-lst-lst
                               and$-pp-lists
                               and$-pp-lists-aux
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))

   (defthm append-returns-bit-list-listp-with-strip-cdrs
     (implies (and (mult-formula-checks state)
                   (booleanp sign)
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                   (rp-evl-meta-extract-global-facts))
              (bit-list-listp
               (rp-evlt-lst-lst (strip-cdrs (append lst1 lst2))
                                a)))
     :hints (("goal"
              :in-theory (e/d (rp-evlt-lst-lst
                               and$-pp-lists
                               and$-pp-lists-aux
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))

   (defthm append-returns-bit-listp
     (implies (and (mult-formula-checks state)
                   (booleanp sign)
                   (bit-listp (rp-evlt-lst lst1 a))
                   (bit-listp (rp-evlt-lst lst2 a))
                   (rp-evl-meta-extract-global-facts))
              (bit-listp
               (rp-evlt-lst (append lst1 lst2)
                            a)))
     :hints (("goal"
              :in-theory (e/d (rp-evlt-lst-lst
                               and$-pp-lists
                               and$-pp-lists-aux
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))))

(local
 (defthm append-equal
   (and (equal (equal (append a x) (append a y))
               (equal x y))
        (implies (and (true-listp x)
                      (true-listp y))
                 (equal (equal (append x a) (append y a))
                        (equal x y))))))

(local
 (defthm append-equal2
   (implies (and (force (equal x k))
                 (force (equal y l)))
            (equal (equal (append x y a) (append k l a))
                   t))))

(progn
  (define pp-lists-to-term-and$ ((cur true-listp))
    (cond ((atom cur)
           ''1)
          #|((atom (cdr cur))
          `(binary-and ,(car cur) '1))||#
          (t
           `(binary-and ,(car cur)
                        ,(pp-lists-to-term-and$ (cdr cur))))))

  (define pp-lists-to-term-p+ ((lst pp-lists-p))
    (cond ((atom lst)
           ''0)
          ((atom (cdr lst))
           (b* ((cur (pp-lists-to-term-and$ (cdar lst))))
             (if (caar lst)
                 `(-- ,cur)
               `(ifix ,cur))))
          (t
           (b* ((cur (pp-lists-to-term-and$ (cdar lst))))
             (if (caar lst)
                 `(binary-sum (-- ,cur) ,(pp-lists-to-term-p+ (cdr lst)))
               `(binary-sum ,cur ,(pp-lists-to-term-p+ (cdr lst))))))))

  ;; auxilary function used only in the local lemmas for correctness proofs.
  (local
   (define apply-sign-to-pp-lists (lst sign)
     :returns (res pp-lists-p
                   :hyp (pp-lists-p lst))
     :verify-guards nil
     (if (atom lst)
         nil
       (acons (xor sign (caar lst))
              (cdar lst)
              (apply-sign-to-pp-lists (cdr lst) sign))))))

(progn
  (local
   (defthm bitp-of-eval-of-pp-lists-to-term-aux
     (implies (and (bit-listp (rp-evlt-lst lst a))
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts))
              (bitp (rp-evlt (pp-lists-to-term-and$ lst) a)))
     :hints (("goal"
              :in-theory (e/d (pp-lists-to-term-and$) ())))))

  (local
   (defthm eval-of-append-of-pp-lists-to-term-aux
     (implies  (and (mult-formula-checks state)
                    (rp-evl-meta-extract-global-facts)
                    (bit-listp (rp-evlt-lst cur a))
                    (bit-listp (rp-evlt-lst cur2 a)))
               (equal (rp-evlt (pp-lists-to-term-and$ (append cur cur2)) a)
                      (and$ (rp-evlt (pp-lists-to-term-and$ cur) a)
                            (rp-evlt (pp-lists-to-term-and$ cur2) a))))
     :hints (("goal"
              :do-not-induct t
              :induct (pp-lists-to-term-and$ cur)
              :in-theory (e/d (pp-lists-to-term-and$)
                              (bitp
                               rp-evl-lst-of-cons
                               (:rewrite acl2::consp-of-append)
                               bit-listp))))))

  (local
   (defthm integerp-of-eval-of-pp-lists-to-term-aux
     (implies (and (integer-listp (rp-evlt-lst lst a))
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts))
              (integerp (rp-evlt (pp-lists-to-term-and$ lst) a)))
     :hints (("goal"
              :in-theory (e/d (pp-lists-to-term-and$) ())))))

  (local
   (defthm integerp-of-eval-of-pp-lists-to-term
     (implies (and (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a))
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts))
              (integerp (rp-evlt (pp-lists-to-term-p+ lst) a)))
     :hints (("goal"
              :do-not-induct t
              :induct (pp-lists-to-term-p+ lst)
              :in-theory (e/d (pp-lists-to-term-p+)
                              (sum --
                                   and$
                                   bitp
                                   ifix))))))

  (local
   (defthm integerp-of-eval-of-pp-lists-to-term-forward-chaining
     (implies (and (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a)))
              (integerp (rp-evlt (pp-lists-to-term-p+ lst) a)))
     :rule-classes :forward-chaining
     :hints (("goal"
              :in-theory (e/d (pp-lists-to-term-p+) ()))))))

(local
 (defthm pp-lists-to-term-of-apply-sign-to-pp-lists
   (implies (and (mult-formula-checks state)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a))
                 (rp-evl-meta-extract-global-facts))
            (equal (rp-evlt (pp-lists-to-term-p+ (apply-sign-to-pp-lists lst t)) a)
                   (-- (rp-evlt (pp-lists-to-term-p+ lst) a))))
   :hints (("goal"
            :do-not-induct t
            :induct (pp-lists-to-term-p+ lst)
            :in-theory (e/d (pp-lists-to-term-p+
                             APPLY-SIGN-TO-PP-LISTS)
                            (--
                             sum
                             ifix
                             integerp))))))

(local
 (defthm pp-lists-to-term-of-append
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a)))
            (equal (rp-evlt (pp-lists-to-term-p+ (append lst1 lst2)) a)
                   (sum (rp-evlt (pp-lists-to-term-p+ lst1) a)
                        (rp-evlt (pp-lists-to-term-p+ lst2) a))))
   :hints (("goal"
            :induct (pp-lists-to-term-p+ lst1)
            :do-not-induct t
            :in-theory (e/d (pp-lists-to-term-p+)
                            (sum
                             --
                             ifix))))))

(local
 (defthm apply-sign-to-pp-lists-of-sign=nil
   (implies (pp-lists-p lst)
            (equal (apply-sign-to-pp-lists lst nil)
                   lst))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists) ())))))

(local
 (defthm apply-sign-to-pp-lists-of-append
   (implies t
            (equal (apply-sign-to-pp-lists (append x1 x2) sign)
                   (append (apply-sign-to-pp-lists x1 sign)
                           (apply-sign-to-pp-lists x2 sign))))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists) ())))))

(local
 (defthm apply-sign-to-pp-lists-of-apply-sign-to-pp-lists
   (equal (apply-sign-to-pp-lists (apply-sign-to-pp-lists lst s1) s2)
          (apply-sign-to-pp-lists lst (xor s1 s2)))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists) ())))))

(local
 (defthm bit-list-listp-of-apply-sign-to-pp-lists
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a)))
            (bit-list-listp
             (rp-evlt-lst-lst
              (strip-cdrs (apply-sign-to-pp-lists lst1
                                                  sign))
              a)))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists) ())))))

(local
 (defthmd sign-convert-apply-sign-to-pp-lists
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a)))
            (equal (rp-evlt (pp-lists-to-term-p+
                             (apply-sign-to-pp-lists lst t))
                            a)
                   (-- (rp-evlt (pp-lists-to-term-p+
                                 (apply-sign-to-pp-lists lst nil))
                                a))))
   :hints (("goal"
            :do-not-induct t
            :induct (apply-sign-to-pp-lists lst sign)
            :in-theory (e/d (pp-term-to-pp-lists
                             and$-pp-lists
                             apply-sign-to-pp-lists
                             and$-pp-lists-aux
                             pp-lists-to-term-p+)
                            (--
                             sum
                             and$))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sorting lemmas

(local
 (defthm bit-list-p-with-constants-1
   (equal (bit-listp (cons 1 rest))
          (bit-listp rest))))

(local
 (defthm bit-list-p-def
   (equal (bit-listp (cons x rest))
          (and (bitp x)
               (bit-listp rest)))))

(progn
  (local
   (defthm PP-LISTS-TO-TERM-AND$-def-1
     (implies (consp rest)
              (equal (pp-lists-to-term-and$ (cons x rest))
                     `(binary-and ,x ,(PP-LISTS-TO-TERM-AND$ rest))))
     :hints (("Goal"
              :in-theory (e/d (pp-lists-to-term-and$) ())))))

  (local
   (defthm PP-LISTS-TO-TERM-AND$-def-2
     (implies (atom rest)
              (equal (PP-LISTS-TO-TERM-AND$ (cons x rest))
                     `(binary-and ,x '1)))
     :hints (("Goal"
              :in-theory (e/d (pp-lists-to-term-and$) ())))))

  (local
   (defthm PP-LISTS-TO-TERM-AND$-def
     (implies t
              (equal (PP-LISTS-TO-TERM-AND$ (cons x rest))
                     `(binary-and ,x ,(PP-LISTS-TO-TERM-AND$ rest))))
     :hints (("Goal"
              :in-theory (e/d (pp-lists-to-term-and$) ()))))))

(progn
  (local
   (defthm PP-LISTS-TO-TERM-p+-def
     (implies t
              (equal (pp-lists-to-term-p+ (cons x rest))
                     (COND
                      ((ATOM rest)
                       (B* ((CUR (PP-LISTS-TO-TERM-AND$ (cdr x))))
                         (IF (car x)
                             (CONS '-- (CONS CUR 'NIL))
                             `(ifix ,CUR))))
                      (T
                       (B*
                           ((CUR (PP-LISTS-TO-TERM-AND$ (CDR x))))
                         (IF (car x)
                             (CONS 'binary-sum
                                   (CONS (CONS '-- (CONS CUR 'NIL))
                                         (CONS (PP-LISTS-TO-TERM-P+ rest)
                                               'NIL)))
                             (CONS 'binary-sum
                                   (CONS CUR
                                         (CONS (PP-LISTS-TO-TERM-P+ rest)
                                               'NIL)))))))))
     :hints (("Goal"
              :in-theory (e/d (pp-lists-to-term-p+) ()))))))

(local
 (encapsulate
   nil

   (defthm atom-merge-sorted-and$-lists
     (equal (CONSP (MERGE-SORTED-AND$-LISTS LST1 lst2))
            (not (and (atom lst1)
                      (atom lst2))))
     :hints (("Goal"
              :in-theory (e/d (merge-sorted-and$-lists) ()))))

   (local
    (defthm dummy-lemma1
      (implies (equal x (and$ a b))
               (equal (equal x
                             (and$ a x))
                      t))))

   (defthm eval-of-list-to-term-of-merge-sorted-and$-list
     (implies (and (mult-formula-checks state)
                   (force (bit-listp (rp-evlt-lst lst1 a)))
                   (force (bit-listp (rp-evlt-lst lst2 a)))
                   (force (true-listp lst1))
                   (force (true-listp lst2))
                   (rp-evl-meta-extract-global-facts))
              (equal (rp-evlt
                      (pp-lists-to-term-and$
                       (merge-sorted-and$-lists lst1 lst2))
                      a)
                     (and$ (rp-evlt (pp-lists-to-term-and$ lst1) a)
                           (rp-evlt (pp-lists-to-term-and$ lst2) a))))
     :hints (("Goal"
              :induct (MERGE-SORTED-AND$-LISTS lst1 lst2)
              :do-not-induct t
              :in-theory (e/d (;;pp-lists-to-term-and$
                               ;; for soem reason when this is enabled, the proof
                               ;; does too many case-splits.
                               MERGE-SORTED-AND$-LISTS)
                              (len
                               sum valid-sc
                               --
                               and$ or$
                               bitp
                               bit-listp
                               true-listp)))
             ("Subgoal *1/6"
              :expand ((PP-LISTS-TO-TERM-AND$ LST2)))
             ("Subgoal *1/5"
              :expand ((PP-LISTS-TO-TERM-AND$ LST1)))
             ("Subgoal *1/4"
              :do-not-induct t
              :expand ((PP-LISTS-TO-TERM-AND$ LST2)
                       (PP-LISTS-TO-TERM-AND$ LST1)))))

   (defthm bit-listp-of-merge-sorted-and$-lists
     (implies (and (bit-listp (rp-evlt-lst lst1 a))
                   (bit-listp (rp-evlt-lst lst2 a)))
              (bit-listp (rp-evlt-lst (MERGE-SORTED-AND$-LISTS LST1 lst2)
                                      a)))
     :hints (("Goal"
              :do-not-induct t
              :induct (MERGE-SORTED-AND$-LISTS LST1 lst2)
              :in-theory (e/d (bit-listp
                               merge-sorted-and$-lists)
                              (bitp
                               floor)))))))

(local
 (encapsulate
   nil

   (local
    (defthm bitp-bitlistp-lemma
      (IMPLIES (AND (consp lst)
                    (BIT-LISTP (RP-EVLT-LST LST A)))
               (BITP (RP-EVLT (CAR LST) A)))
      :hints (("Goal"
               :in-theory (e/d (bitp bit-listp) ())))))

   (local
    (defthm consp-bit-listp-lemma
      (IMPLIES (AND (NOT (ZP SIZE))
                    (< SIZE (LEN LST)))
               (consp lst))
      :rule-classes :forward-chaining
      :hints (("Goal"
               :in-theory (e/d (len bitp bit-listp) ())))))

   (defthm bit-listp-of-CUT-LIST-BY-HALF
     (implies (and (bit-listp (rp-evlt-lst lst a))
                   (< size (len lst)))
              (and (bit-listp (rp-evlt-lst (MV-NTH 0
                                                   (CUT-LIST-BY-HALF LST size))
                                           a))
                   (bit-listp (rp-evlt-lst (MV-NTH 1
                                                   (CUT-LIST-BY-HALF LST size))
                                           a))))
     :hints (("Goal"
              :do-not-induct t
              :induct (CUT-LIST-BY-HALF LST size)
              :in-theory (e/d (bit-listp
                               cut-list-by-half)
                              (bitp
                               +-IS-SUM)))))

   (defthm bit-list-listp-of-CUT-LIST-BY-HALF
     (implies (and (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a))
                   (< size (len lst)))
              (and (bit-list-listp (rp-evlt-lst-lst (strip-cdrs
                                                     (MV-NTH 0
                                                             (CUT-LIST-BY-HALF LST size)))
                                                    a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs (MV-NTH 1
                                                                        (CUT-LIST-BY-HALF LST size)))
                                                    a))))
     :hints (("Goal"
              :do-not-induct t
              :induct (CUT-LIST-BY-HALF LST size)
              :in-theory (e/d (
                               bit-list-listp
                               cut-list-by-half)
                              (bitp
                               +-IS-SUM
                               bit-listp)))))

   (local
    (defthm lemma1
      (implies (NOT (CONSP (MV-NTH 0 (CUT-LIST-BY-HALF lst size))))
               (equal (MV-NTH 1 (CUT-LIST-BY-HALF lst size))
                      lst))
      :hints (("Goal"
               :in-theory (e/d (cut-list-by-half) ())))))

   (defthm eval-of-CUT-LIST-BY-HALF
     (implies (and (mult-formula-checks state)
                   (force (bit-listp (rp-evlt-lst lst a)))
                   (force (true-listp lst))
                   (force (< size (len lst)))
                   (rp-evl-meta-extract-global-facts))
              (equal (AND$ (RP-EVLT (PP-LISTS-TO-TERM-AND$
                                     (MV-NTH 0
                                             (CUT-LIST-BY-HALF LST size)))
                                    A)
                           (RP-EVLT (PP-LISTS-TO-TERM-AND$
                                     (MV-NTH 1
                                             (CUT-LIST-BY-HALF LST size)))
                                    A))
                     (RP-EVLT (PP-LISTS-TO-TERM-AND$
                               lst)
                              A)))
     :hints (("Goal"
              :do-not-induct t
              :induct (CUT-LIST-BY-HALF LST size)
              :expand ((PP-LISTS-TO-TERM-AND$ LST))
              :in-theory (e/d (cut-list-by-half)
                              (bitp len
                                    true-listp
                                    +-IS-SUM)))))

   (local
    (defthm PP-LISTS-TO-TERM-P+-when-not-consp
      (implies (atom x)
               (equal (PP-LISTS-TO-TERM-P+ x)
                      ''0))
      :hints (("Goal"
               :in-theory (e/d (PP-LISTS-TO-TERM-P+) ())))))

   (defthm eval-of-CUT-LIST-BY-HALF-with-pp-sum
     (implies (and (mult-formula-checks state)
                   (force (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a)))
                   (force (pp-lists-p lst))
                   (force (< size (len lst)))
                   (rp-evl-meta-extract-global-facts))
              (equal (sum (RP-EVLT (PP-LISTS-TO-TERM-p+
                                    (MV-NTH 0
                                            (CUT-LIST-BY-HALF LST size)))
                                   A)
                          (RP-EVLT (PP-LISTS-TO-TERM-p+
                                    (MV-NTH 1
                                            (CUT-LIST-BY-HALF LST size)))
                                   A))
                     (RP-EVLT (PP-LISTS-TO-TERM-p+
                               lst)
                              A)))
     :hints (("Goal"
              :do-not-induct t
              :induct (CUT-LIST-BY-HALF LST size)
              :expand ((PP-LISTS-TO-TERM-p+ LST))
              :in-theory (e/d (cut-list-by-half)
                              (bitp
                               sum
                               --
                               +-IS-SUM
                               len
                               true-listp)))))))

(local
 (defthm pos-len-implies-fc
   (implies (< 0 (LEN LST))
            (consp lst))
   :rule-classes :forward-chaining
   :hints (("Goal"
            :in-theory (e/d (len) ())))))

(local
 (defthmd pp-lists-p-implies-true-listp
   (implies (pp-lists-p x)
            (true-listp x))))

(local
 (defthm bit-listp-of-sort-and$-list
   (implies (force (bit-listp (rp-evlt-lst lst a)))
            (and (bit-listp (rp-evlt-lst (sort-and$-list LST size)
                                         a))))
   :hints (("Goal"
            :do-not-induct t
            :induct (sort-and$-list LST size)
            :in-theory (e/d (bit-listp
                             sort-and$-list
                             pp-lists-p-implies-true-listp
                             )
                            (bitp
                             +-IS-SUM
                             FLOOR2-IF-F2
                             floor))))))

;; MAIN LEMMA 2: sort-and$-list-is-correct
(local
 (defthm eval-of-list-to-term-of-sort-and$-list
   (implies (and (mult-formula-checks state)
                 (bit-listp (rp-evlt-lst lst a))
                 (true-listp lst)
                 (rp-evl-meta-extract-global-facts))
            (equal (rp-evlt
                    (pp-lists-to-term-and$
                     (sort-and$-list lst len))
                    a)
                   (rp-evlt (pp-lists-to-term-and$ lst) a)))
   :hints (("Goal"
            :do-not-induct t
            :induct (sort-and$-list lst len)
            :in-theory (e/d (sort-and$-list
                             )
                            (floor
                             +-IS-SUM
                             FLOOR2-IF-F2
                             (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                             (:DEFINITION TRUE-LISTP)
                             (:DEFINITION RP-TERMP)
                             (:DEFINITION RP-TERM-LISTP)
                             (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                             (:REWRITE PP-LISTS-P-IMPLIES-TRUE-LISTP)
                             (:DEFINITION PP-LISTS-P)
                             (:DEFINITION ACL2::APPLY$-BADGEP)
                             (:REWRITE RP-TERMP-IMPLIES-CDR-LISTP)
                             (:REWRITE IS-IF-RP-TERMP)
                             (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                             (:DEFINITION SUBSETP-EQUAL)
                             (:DEFINITION MEMBER-EQUAL)
                             (:REWRITE DEFAULT-CDR)
                             (:REWRITE RP-TERMP-CADR)
                             (:REWRITE IS-RP-PSEUDO-TERMP)
                             (:REWRITE RP-TERMP-CADDR)
                             (:REWRITE ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
                             (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 2)
                             (:REWRITE DEFAULT-CAR)
;;                             (:REWRITE ACL2::O-P-O-INFP-CAR)
                             (:TYPE-PRESCRIPTION RP-TERM-LISTP)
                             (:DEFINITION NATP)
                             (:REWRITE ACL2::APPLY$-BADGEP-PROPERTIES . 3)
                             (:TYPE-PRESCRIPTION MEMBER-EQUAL)
                             (:TYPE-PRESCRIPTION PP-LISTS-P)
                             len))))))

;; proofs with merge-sorted-pp-lists-simple are easier to work with
#|(local
 (define merge-sorted-pp-lists-simple
   ((first pp-lists-p)
    (second pp-lists-p))
   :measure
   (+ (acl2-count first)
      (acl2-count second))
   :returns
   (res pp-lists-p
        :hyp (and (pp-lists-p first)
                  (pp-lists-p second)))
   :verify-guards nil
   (cond
    ((atom first) second)
    ((atom second) first)
    (t
     (b*
         ((sign1 (caar first))
          (term1 (cdar first))
;(term1 (sort-and$-list term1 (len term1)))
          (sign2 (caar second))
          (term2 (cdar second))
          #|(term2 (sort-and$-list term2 (len term2)))||#)
       (cond
        ((and (not (equal sign1 sign2))
              (equal term1 term2))
         (merge-sorted-pp-lists-simple (cdr first) (cdr second)))
        ((pp-list-order term1 term2)
         (acons sign1 term1
                (merge-sorted-pp-lists-simple (cdr first) second)))
        (t (acons sign2 term2
                  (merge-sorted-pp-lists-simple first (cdr second))))))))
   ///

   (local
    (defthm lemma1
      (implies (consp first)
               (equal (merge-sorted-pp-lists
                       first
                       (cdr (car first)) #|(sort-and$-list (cdr (car first)) (len (cdr (car first))))||#
                       second sim2)
                      (merge-sorted-pp-lists first nil second sim2)))
      :hints (("goal"
               :do-not-induct t
               :expand ((merge-sorted-pp-lists
                         first
                         (cdr (car first)) #|(sort-and$-list (cdr (car first)) (len (cdr (car first))))||#
                         second sim2)
                        (merge-sorted-pp-lists first nil second sim2))
               :in-theory (e/d () ())))))

   (local
    (defthm lemma2
      (implies (consp second)
               (equal (merge-sorted-pp-lists
                       first
                       sim1
                       second
                       (cdr (car second)) #|(sort-and$-list (cdr (car second)) (len (cdr (car second))))||#)
                      (merge-sorted-pp-lists first sim1 second nil)))
      :hints (("goal"
               :do-not-induct t
               :expand ((merge-sorted-pp-lists
                         first
                         sim1
                         second
                         (cdr (car second)) #|(sort-and$-list (cdr (car second)) (len (cdr (car second))))||#)
                        (merge-sorted-pp-lists first sim1 second nil))
               :in-theory (e/d () ())))))

   (defthm merge-sorted-pp-lists_to_merge-sorted-pp-lists-simple
     (implies t
              (equal (merge-sorted-pp-lists first nil second nil)
                     (merge-sorted-pp-lists-simple first second)))
     :hints (("goal"
              :induct (merge-sorted-pp-lists-simple first second)
              :in-theory (e/d (merge-sorted-pp-lists
                               merge-sorted-pp-lists-simple
                               ) ()))))))||#

(value-triple (hons-clear t))

(local
 (encapsulate
   nil

   (define two-pp-list-cancel-each-other (lst1 lst2)
     :enabled t
     :hints (("Goal"
              :in-theory (e/d () (+-IS-SUM))))
     :verify-guards nil
     (if (or (atom lst1)
             (atom lst2))
         (and (atom lst1)
              (atom lst2))
       (and (not (equal (caar lst1)
                        (caar lst2)))
            (equal (cdar lst1) ;(SORT-AND$-LIST (cdar lst1) (len (cdar lst1)))
                   (cdar lst2) ;(SORT-AND$-LIST (cdar lst2) (len (cdar lst2)))
                   )
            (two-pp-list-cancel-each-other (cdr lst1)
                                           (cdr lst2)))))

   (defthm when-SORT-AND$-LIST-is-equal-with-opposite-signs
     (implies (and #|(EQUAL (SORT-AND$-LIST lst1 size1)
               (SORT-AND$-LIST lst2 size2))||#
               (equal lst1 lst2)
               (mult-formula-checks state)
               (rp-evl-meta-extract-global-facts)
               (bit-listp (rp-evlt-lst lst1 a))
               (bit-listp (rp-evlt-lst lst2 a))
               (true-listp lst1)
               (true-listp lst2))
              (and (equal (sum (RP-EVLT (pp-lists-to-term-and$ LST1)
                                        A)
                               (-- (RP-EVLT (pp-lists-to-term-and$ LST2)
                                            A)))
                          0)
                   (equal (sum (-- (RP-EVLT (pp-lists-to-term-and$ LST1)
                                            A))
                               (RP-EVLT (pp-lists-to-term-and$ LST2)
                                        A))
                          0)))
     :hints (("Goal"
              :do-not-induct t
              :use ((:instance eval-of-list-to-term-of-sort-and$-list
                               (lst lst1)
                               (len size1))
                    (:instance eval-of-list-to-term-of-sort-and$-list
                               (lst lst2)
                               (len size2)))
              :in-theory (e/d ()
                              (sum
                               eval-of-list-to-term-of-sort-and$-list
                               --)))))

   (defthm two-pp-list-cancel-each-other-implies
     (implies (and (two-pp-list-cancel-each-other lst1 lst2)
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                   (pp-lists-p lst1)
                   (pp-lists-p lst2))
              (equal (sum (RP-EVLT (PP-LISTS-TO-TERM-P+ LST1)
                                   A)
                          (RP-EVLT (PP-LISTS-TO-TERM-P+ LST2)
                                   A))
                     0))
     :hints (("Goal"
              :induct (two-pp-list-cancel-each-other lst1 lst2)
              :in-theory (e/d (PP-LISTS-TO-TERM-P+)
                              (sum
                               --)))))

   (defthm two-pp-list-cancel-each-other-implies-2
     (implies (and (two-pp-list-cancel-each-other lst1 lst2)
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts)
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                   (pp-lists-p lst1)
                   (pp-lists-p lst2))
              (equal (RP-EVLT (PP-LISTS-TO-TERM-P+
                               (merge-sorted-pp-lists
                                lst1 LST2))
                              A)
                     0))
     :hints (("Goal"
              :do-not-induct t
              :induct (two-pp-list-cancel-each-other lst1 lst2)
              :in-theory (e/d (PP-LISTS-TO-TERM-P+
                               merge-sorted-pp-lists)
                              (sum
                               --)))))

   (defthm atom-merge-sorted-pp-lists
     (equal (CONSP (merge-sorted-pp-lists LST1 lst2))
            (not (two-pp-list-cancel-each-other lst1 lst2)))
     :hints (("Goal"
              :do-not-induct t
              :induct (merge-sorted-pp-lists LST1 lst2)
              :in-theory (e/d (merge-sorted-pp-lists)
                              ()))))

   (defthm pp-sum-equals-2
     (implies (integerp a)
              (equal (equal a (sum x y a))
                     (equal (sum x y) 0)))
     :hints (("Goal"
              :in-theory (e/d (sum ifix)
                              (+-IS-SUM)))))

   (defthm eval-of-list-to-term-of-merge-sorted-pp-lists
     (implies (and (mult-formula-checks state)
                   (force (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a)))
                   (force (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a)))
                   (force (pp-lists-p lst1))
                   (force (pp-lists-p lst2))
                   (rp-evl-meta-extract-global-facts))
              (equal (rp-evlt
                      (pp-lists-to-term-p+
                       (merge-sorted-pp-lists lst1 lst2))
                      a)
                     (sum (rp-evlt (pp-lists-to-term-p+ lst1) a)
                          (rp-evlt (pp-lists-to-term-p+ lst2) a))))
     :hints (("Goal"
              :induct (merge-sorted-pp-lists lst1 lst2)
              :do-not-induct t
              :in-theory (e/d (;;pp-lists-to-term-and$
                               ;; for soem reason when this is enabled, the proof
                               ;; does too many case-splits.
                               merge-sorted-pp-lists)
                              (len
                               sum valid-sc
                               --
                               and$ or$
                               TWO-PP-LIST-CANCEL-EACH-OTHER
                               bitp
                               bit-listp
                               ;;PP-LISTS-P
;BIT-LIST-LISTP
                               true-listp)))
             ("Subgoal *1/5"
              :expand ((PP-LISTS-TO-TERM-P+ LST2)))
             ("Subgoal *1/4"
              :expand ((PP-LISTS-TO-TERM-P+ LST1)
                       (TWO-PP-LIST-CANCEL-EACH-OTHER NIL LST2)))
             ("Subgoal *1/3"
              :expand ((PP-LISTS-TO-TERM-P+ LST1)
                       (PP-LISTS-TO-TERM-P+ LST2)))))

   (defthm bit-list-list-of-merge-sorted-pp-lists
     (implies (and (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a)))
              (bit-list-listp (rp-evlt-lst-lst (strip-cdrs (merge-sorted-pp-lists LST1 lst2))
                                               a)))
     :hints (("Goal"
              :do-not-induct t
              :induct (merge-sorted-pp-lists LST1 lst2)
              :in-theory (e/d (bit-listp
                               bit-list-listp
                               merge-sorted-pp-lists)
                              (bitp
                               floor)))))))

(local
 (defthm cut-list-by-half-returns-pp-lists
   (implies (and (pp-lists-p lst)
                 (< size (len lst)))
            (and (pp-lists-p (mv-nth 0 (cut-list-by-half lst size)))
                 (pp-lists-p (mv-nth 1 (cut-list-by-half lst size)))))
   :hints (("Goal"
            :in-theory (e/d (cut-list-by-half) (+-IS-SUM))))))

(local
 (defthm bit-list-listp-of-sort-pp-lists
   (implies (and (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a))
                 (pp-lists-p lst))
            (bit-list-listp (rp-evlt-lst-lst (strip-cdrs (sort-pp-lists lst
                                                                        size))
                                             a)))
   :hints (("Goal"
            :do-not-induct t
            :induct (sort-pp-lists lst size)
            :in-theory (e/d (sort-pp-lists)
                            (floor
                             +-IS-SUM
                             FLOOR2-IF-F2))))))

(local
 (defthm eval-of-sort-pp-lists-is-correct
   (implies (and (mult-formula-checks state)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst) a))
                 (pp-lists-p lst)
                 (rp-evl-meta-extract-global-facts))
            (equal (rp-evlt (pp-lists-to-term-p+ (sort-pp-lists lst size)) a)
                   (rp-evlt (pp-lists-to-term-p+ lst) a)))
   :hints (("Goal"
            :do-not-induct t
            :induct (sort-pp-lists lst size)
            :in-theory (e/d (sort-pp-lists
                             len
                             PP-LISTS-TO-TERM-P+)
                            (floor
                             bitp
                             --
                             +-IS-SUM
                             FLOOR2-IF-F2
                             sum))))))

(local
 (defthm consp-of-apply-sign
   (equal (consp (apply-sign-to-pp-lists lst sign))
          (consp lst))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists) ())))))

(local
 (defthm len-of-apply-sign
   (equal (len (apply-sign-to-pp-lists lst sign))
          (len lst))
   :hints (("Goal"
            :in-theory (e/d (apply-sign-to-pp-lists len) ())))))

(local
 (defthm merge-sorted-pp-lists-simple-of-apply-sign
   (implies (and (pp-lists-p lst1)
                 (pp-lists-p lst2))
            (equal (merge-sorted-pp-lists (apply-sign-to-pp-lists lst1 sign)
                                          (apply-sign-to-pp-lists lst2 sign))
                   (apply-sign-to-pp-lists (merge-sorted-pp-lists lst1 lst2)
                                           sign)))
   :hints (("Goal"
            :induct (merge-sorted-pp-lists lst1 lst2)
            :do-not-induct t
            :in-theory (e/d (apply-sign-to-pp-lists
                             merge-sorted-pp-lists) ())))))

(local
 (defthmd merge-sorted-pp-lists-simple-of-apply-sign-reverse
   (implies (and (pp-lists-p lst1)
                 (pp-lists-p lst2))
            (equal (apply-sign-to-pp-lists (merge-sorted-pp-lists lst1 lst2)
                                           sign)
                   (merge-sorted-pp-lists (apply-sign-to-pp-lists lst1 sign)
                                          (apply-sign-to-pp-lists lst2 sign))))
   :hints (("Goal"
            :do-not-induct t
            :in-theory (e/d () ())))))

(local
 (defthm merge-sorted-pp-lists-simple-of-apply-sign-2
   (implies (and (pp-lists-p lst1)
                 (pp-lists-p lst2)
                 (syntaxp (or (atom lst2)
                              (not (equal (car lst2) 'apply-sign-to-pp-lists)))))
            (equal (merge-sorted-pp-lists (apply-sign-to-pp-lists lst1 sign)
                                          lst2)
                   (apply-sign-to-pp-lists (merge-sorted-pp-lists
                                            lst1
                                            (apply-sign-to-pp-lists lst2 sign))
                                           sign)))
   :hints (("Goal"
;:induct (merge-sorted-pp-lists-simple lst1 lst2)
            :do-not-induct t
            :in-theory (e/d (merge-sorted-pp-lists-simple-of-apply-sign-reverse)
                            (merge-sorted-pp-lists-simple-of-apply-sign))))))

(local
 (defthm cut-list-by-half-of-signed-pp-lists-0
   (implies (and (pp-lists-p lst)
                 (< size (len lst)))
            (equal (mv-nth
                    0
                    (cut-list-by-half (apply-sign-to-pp-lists lst sign) size))
                   (apply-sign-to-pp-lists
                    (mv-nth 0
                            (cut-list-by-half lst size))
                    sign)))
   :hints (("Goal"
            :in-theory (e/d (cut-list-by-half
                             apply-sign-to-pp-lists)
                            (+-IS-SUM))))))

(local
 (defthm cut-list-by-half-of-signed-pp-lists-1
   (implies (and (pp-lists-p lst)
                 (< size (len lst)))
            (equal (mv-nth
                    1
                    (cut-list-by-half (apply-sign-to-pp-lists lst sign) size))
                   (apply-sign-to-pp-lists
                    (mv-nth 1
                            (cut-list-by-half lst size))
                    sign)))
   :hints (("Goal"
            :in-theory (e/d (cut-list-by-half
                             apply-sign-to-pp-lists)
                            (+-IS-SUM))))))

(local
 (defthm PP-LISTS-P-implies-fc
   (implies (PP-LISTS-P x)
            (IF (ATOM X)
                (EQ X NIL)
                (AND (CONSP (CAR X))
                     (BOOLEANP (CAAR X))
                     (TRUE-LISTP (CDAR X))
                     (PP-LISTS-P (CDR X)))))
   :rule-classes :forward-chaining))

(local
 (defthmd pos-len-is
   (equal (< 0 (LEN LST))
          (consp lst))
   :hints (("Goal"
            :in-theory (e/d (len)
                            (+-IS-SUM))))))

(local
 (encapsulate
   nil
   (local
    (defthm sort-pp-lists-of-apply-sign-dummy-lemma1
      (IMPLIES (AND (CONSP LST)
                    (CONSP (CDR LST))
                    (NOT (CONSP (CDDR LST)))
                    (PP-LISTS-P LST)
                    (CONSP (CADR LST))
                    (CAR (CADR LST)))
               (equal (EQUAL (CADR LST)
                             (CONS T (CDR (CADR LST))))
                      t))))

   (local
    (defthm sort-pp-lists-of-apply-sign-dummy-lemma2
      (IMPLIES (AND (CONSP (CDR LST))
                    (PP-LISTS-P LST)
                    (CAR (CADR LST)))
               (equal (EQUAL T (CAR (CADR LST)))
                      t))))

   (local
    (defthm sort-pp-lists-of-apply-sign-dummy-lemma3
      (IMPLIES (AND (CONSP LST)
                    (CONSP (CDR LST))
                    (PP-LISTS-P LST)
                    (NOT (CAR (CADR LST))))
               (equal (EQUAL (CADR LST)
                             (CONS NIL (CDR (CADR LST))))
                      t))))

   (local
    (defthm sort-pp-lists-of-apply-sign-dummy-lemma4
      (IMPLIES (AND (CONSP LST)
                    (CONSP (CDR LST))
                    (PP-LISTS-P LST)
                    (CAR (CADR LST)))
               (equal (EQUAL (CADR LST)
                             (CONS t (CDR (CADR LST))))
                      t))))

   (local
    (defthm  sort-pp-lists-of-apply-sign-dummy-lemma5
      (implies (and (consp lst)
                    (consp (cdr lst))
                    (not (consp (cddr lst)))
                    (equal (car (car lst)) (car (cadr lst)))
                    (pp-lists-p lst))
               (equal
                (equal (cadr lst)
                       (cons (car (car lst))
                             (cdr (cadr lst))))
                t))))

   (defthm sort-pp-lists-of-apply-sign
     (implies (and (pp-lists-p lst))
              (equal (sort-pp-lists (apply-sign-to-pp-lists lst sign) size)
                     (apply-sign-to-pp-lists (sort-pp-lists lst size)
                                             sign)))
     :otf-flg t
     :hints (("Goal"
              :induct (sort-pp-lists lst size)
              :do-not-induct t
              :in-theory (e/d (apply-sign-to-pp-lists
                               sort-pp-lists
                               pos-len-is)
                              (pp-lists-p
                               +-IS-SUM
                               floor
;xor
                               floor2-if-f2
                               merge-sorted-pp-lists-simple-of-apply-sign-2)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FLATTEN LEMMAS

(local
 (progn
   (defthm and$-pp-lists-aux-returns-bit-list-listp
     (implies (and (mult-formula-checks state)
                   (booleanp sign)
                   (bit-listp (rp-evlt-lst cur a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs acc) a))
                   (rp-evl-meta-extract-global-facts))
              (bit-list-listp
               (rp-evlt-lst-lst (strip-cdrs (and$-pp-lists-aux cur lst2 acc sign))
                                a)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists-aux cur lst2 acc sign)
              :in-theory (e/d (rp-evlt-lst-lst
                               and$-pp-lists
                               and$-pp-lists-aux
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))

   (defthm and$-pp-lists-returns-bit-list-listp
     (implies (and (mult-formula-checks state)
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                   (bit-list-listp (rp-evlt-lst-lst (strip-cdrs acc) a))
                   (rp-evl-meta-extract-global-facts))
              (bit-list-listp
               (rp-evlt-lst-lst (strip-cdrs (and$-pp-lists lst1 lst2 acc sign))
                                a)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists lst1 lst2 acc sign)
              :in-theory (e/d (rp-evlt-lst-lst
                               and$-pp-lists
                               and$-pp-lists-aux
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))

   (defthm pp-term-to-pp-lists-returns-bit-list-listp
     (implies (and (mult-formula-checks state)
                   (pp-term-p term)
                   (booleanp sign)
                   (valid-sc term a)
                   (rp-evl-meta-extract-global-facts))
              (bit-list-listp
               (rp-evlt-lst-lst (strip-cdrs (pp-term-to-pp-lists term sign))
                                a)))
     :hints (("goal"
              :do-not-induct t
              :induct (pp-term-to-pp-lists term sign)
              :in-theory (e/d (rp-evlt-lst-lst
                               pp-term-to-pp-lists
                               bit-list-listp) ()))))))

(progn
  (local
   (defthm and$-pp-lists-aux-extract-acc
     (implies (and (syntaxp (not (equal acc ''nil))))
              (equal (and$-pp-lists-aux cur lst2 acc sign)
                     (append (and$-pp-lists-aux cur lst2 nil sign)
                             acc)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists-aux cur lst2 acc sign)
              :in-theory (e/d (and$-pp-lists-aux
                               and$-pp-lists)
                              (sum
                               --
                               ifix))))))

  (local
   (defthm and$-pp-lists-extract-acc
     (implies (and (syntaxp (not (equal acc ''nil)))
                   (mult-formula-checks state)
                   (rp-evl-meta-extract-global-facts))
              (equal (and$-pp-lists lst1 lst2 acc sign)
                     (append (and$-pp-lists lst1 lst2 nil sign)
                             acc)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists lst1 lst2 acc sign)
              :in-theory (e/d (pp-lists-to-term-p+
                               and$-pp-lists)
                              (sum
                               --
                               ifix))))))

  (local
   (defthm and$-pp-lists-aux-extract-sign-and-acc
     (implies (and (syntaxp (not (and (equal acc ''nil)
                                      (equal sign ''nil)))))
              (equal (and$-pp-lists-aux cur lst2 acc sign)
                     (append (apply-sign-to-pp-lists
                              (and$-pp-lists-aux cur lst2 nil nil)
                              sign)
                             acc)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists-aux cur lst2 acc sign)
              :in-theory (e/d (and$-pp-lists-aux
                               and$-pp-lists
                               APPLY-SIGN-TO-PP-LISTS)
                              (sum
                               --
                               ifix))))))

  (local
   (defthm and$-pp-lists-extract-sign-and-acc
     (implies (syntaxp (not (and (equal acc ''nil)
                                 (equal sign ''nil))))
              (equal (and$-pp-lists lst1 lst2 acc sign)
                     (append (apply-sign-to-pp-lists
                              (and$-pp-lists lst1 lst2 nil nil)
                              sign)
                             acc)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists lst1 lst2 acc sign)
              :in-theory (e/d (pp-lists-to-term-p+
                               APPLY-SIGN-TO-PP-LISTS
                               and$-pp-lists)
                              (sum
                               --
                               ifix))))))

  (local
   (defthm true-list-fix-of-apply-sign-to-pp-lists
     (equal (true-list-fix (apply-sign-to-pp-lists lst sign))
            (apply-sign-to-pp-lists lst sign))
     :hints (("Goal"
              :in-theory (e/d (apply-sign-to-pp-lists) ())))))

  (local
   (defthm and$-pp-lists-aux-of-applied-sign
     (implies (booleanp sign)
              (equal (and$-pp-lists-aux cur
                                        (apply-sign-to-pp-lists lst2 sign)
                                        acc cur-sign)
                     (append (apply-sign-to-pp-lists
                              (and$-pp-lists-aux cur lst2 nil cur-sign)
                              sign)
                             acc)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists-aux cur lst2 acc cur-sign)
              :in-theory (e/d (and$-pp-lists-aux
                               APPLY-SIGN-TO-PP-LISTS) ())))))

  (local
   (defthm and$-pp-lists-of-applied-with-same-sign
     (implies (booleanp sign)
              (equal (and$-pp-lists (apply-sign-to-pp-lists lst1 sign)
                                    (apply-sign-to-pp-lists lst2 sign)
                                    acc main-sign)
                     (and$-pp-lists lst1
                                    lst2
                                    acc main-sign)))
     :hints (("goal"
              :do-not-induct t
              :induct (and$-pp-lists lst1
                                     lst2
                                     acc main-sign)
              :in-theory (e/d (and$-pp-lists
                               APPLY-SIGN-TO-PP-LISTS)
                              ())))))

  (local
   (defthm pp-term-to-pp-lists-extract-sign-lemma-dummy-lemma
     (implies (and (EQUAL (APPLY-SIGN-TO-PP-LISTS x T) z)
                   (EQUAL (APPLY-SIGN-TO-PP-LISTS k T) m))
              (equal (and$-pp-lists z m acc main-sign)
                     (and$-pp-lists x
                                    k
                                    acc main-sign)))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (APPLY-SIGN-TO-PP-LISTS)
                              (and$-pp-lists
                               apply-sign-to-pp-lists
                               AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC))))))

  (local
   (defthm pp-term-to-pp-lists-extract-sign-lemma-dummy-lemma-2
     (implies (and (EQUAL (PP-TERM-TO-PP-LISTS (cadr x) T)
                          (APPLY-SIGN-TO-PP-LISTS a T))
                   (EQUAL (PP-TERM-TO-PP-LISTS (caddr z) T)
                          (APPLY-SIGN-TO-PP-LISTS b T))
                   (pp-lists-p a)
                   (pp-lists-p b)
                   (pp-lists-p lst-x))
              (EQUAL
               (merge-sorted-pp-lists
                (merge-sorted-pp-lists (PP-TERM-TO-PP-LISTS (cadr x) T)
                                       (PP-TERM-TO-PP-LISTS (caddr z) T))
                lst-x)
               (APPLY-SIGN-TO-PP-LISTS
                (merge-sorted-pp-lists
                 (merge-sorted-pp-lists
                  a b)
                 (APPLY-SIGN-TO-PP-LISTS lst-x T))
                T)))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d ()
                              (and$-pp-lists
                               apply-sign-to-pp-lists
                               AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC))))))

  (local
   (defthm pp-term-to-pp-lists-extract-sign-lemma-dummy-lemma-3
     (implies (and (EQUAL (PP-TERM-TO-PP-LISTS (cadr x) T)
                          (APPLY-SIGN-TO-PP-LISTS a T))
                   (pp-lists-p a)
                   (booleanp sign))
              (EQUAL
               (merge-sorted-pp-lists `((,sign '1))
                                      (PP-TERM-TO-PP-LISTS (CADR x) T))
               (APPLY-SIGN-TO-PP-LISTS (merge-sorted-pp-lists
                                        `((,(not sign) '1))
                                        a)
                                       T)))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (merge-sorted-pp-lists-simple-of-apply-sign-reverse)
                              (and$-pp-lists
                               merge-sorted-pp-lists-simple-of-apply-sign
                               apply-sign-to-pp-lists
                               AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC))))))

  (local
   (defthm pp-term-to-pp-lists-extract-sign-lemma-dummy-lemma-4
     (implies (and (EQUAL (PP-TERM-TO-PP-LISTS (cadr x) nil)
                          (APPLY-SIGN-TO-PP-LISTS a T))
                   (pp-lists-p a))
              (EQUAL
               (merge-sorted-pp-lists `((t '1))
                                      (PP-TERM-TO-PP-LISTS (CADR x) nil))
               (APPLY-SIGN-TO-PP-LISTS (merge-sorted-pp-lists
                                        `((nil '1))
                                        a)
                                       T)))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (merge-sorted-pp-lists-simple-of-apply-sign-reverse)
                              (and$-pp-lists
                               merge-sorted-pp-lists-simple-of-apply-sign
                               apply-sign-to-pp-lists
                               AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC))))))

  (local
   (defthmd pp-term-to-pp-lists-extract-sign-lemma
     (implies (and (booleanp sign)
                   (booleanp s2))
              (equal (pp-term-to-pp-lists term sign)
                     (apply-sign-to-pp-lists
                      (pp-term-to-pp-lists term (xor s2 sign))
                      s2)))
     :otf-flg t
     :hints (("goal"
              :do-not-induct t
              :induct (pp-term-to-pp-lists term sign)
              :in-theory (e/d (pp-term-to-pp-lists
                               APPLY-SIGN-TO-PP-LISTS)
                              (sum
                               --
                               ifix)))
             ("subgoal *1/2"
              :in-theory (e/d (pp-term-to-pp-lists)
                              (sum
                               and$-pp-lists-of-applied-with-same-sign
                               --
                               ifix))
              :use ((:instance and$-pp-lists-of-applied-with-same-sign
                               (lst1 (pp-term-to-pp-lists (cadr (ex-from-rp term))
                                                          t))
                               (lst2 (pp-term-to-pp-lists (caddr (ex-from-rp term))
                                                          t))
                               (sign t)
                               (acc nil)
                               (main-sign nil)))))))

  (local
   (defthm pp-term-to-pp-lists-extract-sign
     (implies (and (syntaxp (not (and (equal sign ''nil))))
                   (booleanp sign))
              (equal (pp-term-to-pp-lists term sign)
                     (apply-sign-to-pp-lists
                      (pp-term-to-pp-lists term nil)
                      sign)))
     :otf-flg t
     :hints (("goal"
              :do-not-induct t
              :use ((:instance pp-term-to-pp-lists-extract-sign-lemma
                               (s2 t)))
              :in-theory (e/d (APPLY-SIGN-TO-PP-LISTS)
                              (sum
                               --
                               ifix)))))))

(local
 (defthm and$-pp-lists-aux-is-correct-lemma-2
   (implies (and (bitp x)
                 (bitp (sum (-- x) y))
                 (not (bitp y))
                 (integerp y))
            (and (equal x 1)
                 (equal y 2)))
   :hints (("Goal"
            :in-theory (e/d (sum)
                            (+-IS-SUM))))
   :rule-classes :forward-chaining))

(local
 (defthm and$-pp-lists-aux-is-correct
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts)
                 (pp-lists-p lst2)
                 (bit-listp (rp-evlt-lst cur a))
                 (true-listp cur)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a)))
            (equal (rp-evlt (pp-lists-to-term-p+ (and$-pp-lists-aux cur lst2 nil nil)) a)
                   (times$ (rp-evlt (pp-lists-to-term-and$ cur) a)
                           (rp-evlt (pp-lists-to-term-p+ lst2) a))))
   :hints (("goal"
            :induct (and$-pp-lists-aux cur lst2 nil nil)
            :do-not-induct t
            :expand (#|(pp-lists-to-term (cons (cons (car (car lst2))
                     (append cur (cdr (car lst2))))
                     (and$-pp-lists-aux cur (cdr lst2)
                     nil nil)))||#)
            :in-theory (e/d (and$-pp-lists-aux
                             pp-lists-to-term-p+
                             and$-is-times
                             pp-lists-to-term-and$)
                            (sum
                             binar-and-abs-is-and$-2
                             and$
                             times$
                             --
                             sum
                             ifix
                             bitp
                             true-listp))))))

(local
 (defthm and$-pp-lists-is-correct
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts)
                 (pp-lists-p lst1)
                 (pp-lists-p lst2)
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst2) a))
                 (bit-list-listp (rp-evlt-lst-lst (strip-cdrs lst1) a)))
            (equal (rp-evlt (pp-lists-to-term-p+ (and$-pp-lists lst1 lst2 nil nil)) a)
                   (times$ (rp-evlt (pp-lists-to-term-p+ lst1) a)
                           (rp-evlt (pp-lists-to-term-p+ lst2) a))))
   :hints (("goal"
            :induct (and$-pp-lists lst1 lst2 nil nol)
            :do-not-induct t
            :in-theory (e/d (pp-lists-to-term-p+
                             and$-is-times
                             pp-lists-to-term-and$
                             and$-pp-lists)
                            (sum
                             times$
                             binar-and-abs-is-and$-2
                             and$
                             --
                             bitp
                             true-listp))))))

(value-triple (hons-clear t))

;; MAIN LEMMA1.
(defthm rp-evlt_of_pp-lists-to-term_of_pp-term-to-pp-lists
  (implies (and (mult-formula-checks state)
                (pp-term-p term)
                (booleanp sign)
                (valid-sc term a)
                (rp-evl-meta-extract-global-facts))
           (equal (rp-evlt (pp-lists-to-term-p+
                            (pp-term-to-pp-lists term sign))
                           a)
                  (if sign
                      (-- (rp-evlt term a))
                    (rp-evlt term a))))
  :hints (("goal"
           :do-not-induct t
           :induct (pp-term-to-pp-lists term sign)
           :in-theory (e/d* (pp-term-to-pp-lists
                             not$-to-pp-sum
                             or$-to-pp-sum
                             binary-xor-to-pp-sum
                             binary-?-to-pp-sum
                             ---of-pp-sum
                             pp-lists-to-term-and$
                             pp-lists-to-term-p+
                             APPLY-SIGN-TO-PP-LISTS
                             regular-eval-lemmas
                             len)
                            (--
                             sum
                             valid-sc
                             and$
                             bitp
                             or$
                             ifix
                             (:REWRITE VALID-SC-EX-FROM-RP-2)
                             (:DEFINITION EVAL-AND-ALL)
                             valid-sc
;;                             (:REWRITE ACL2::O-P-O-INFP-CAR)
                             (:REWRITE DEFAULT-CDR)
                             (:DEFINITION RP-TERMP)
                             (:TYPE-PRESCRIPTION VALID-SC)
                             (:META ACL2::MV-NTH-CONS-META)
                             (:REWRITE PP-LISTS-P-IMPLIES-TRUE-LISTP)
                             (:REWRITE DEFAULT-CAR)
                             integerp)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; :i-am-here

(local
 (in-theory (disable RP-EVL-LST-OF-CONS)))

(local
 (progn
   (create-regular-eval-lemma -- 1 mult-formula-checks)
   (create-regular-eval-lemma bit-of 2 mult-formula-checks)
   (create-regular-eval-lemma BINARY-? 3 mult-formula-checks)
   (create-regular-eval-lemma BINARY-and 2 mult-formula-checks)
   (create-regular-eval-lemma BINARY-or 2 mult-formula-checks)
   (create-regular-eval-lemma BINARY-xor 2 mult-formula-checks)
   (create-regular-eval-lemma BINARY-NOT 1 mult-formula-checks)))

(local
 (defthm RP-EVL-LST-OF-CONS-with-syntaxp
   (IMPLIES (and (CONSP ACL2::X-LST)
                 (syntaxp (and (consp ACL2::X-LST)
                               (or (equal (car ACL2::X-LST)
                                          'cons)
                                   (equal (car ACL2::X-LST)
                                          'quote)))))
            (EQUAL (RP-EVL-LST ACL2::X-LST ACL2::A)
                   (CONS (RP-EVL (CAR ACL2::X-LST) ACL2::A)
                         (RP-EVL-LST (CDR ACL2::X-LST)
                                     ACL2::A))))
   :hints (("Goal"
            :in-theory (e/d (RP-EVL-LST-OF-CONS) ())))))

(local
 (defthm PP-LISTS-TO-TERM-AND$-redef
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts))
            (equal (rp-evlt (PP-LISTS-TO-TERM-AND$ lst) a)
                   (and-list 0 (rp-evlt `(list . ,lst) a))))
   :hints (("Goal"
            :induct (PP-LISTS-TO-TERM-AND$ lst)
            :do-not-induct t
            :in-theory (e/d (PP-LISTS-TO-TERM-AND$
                             and-list)
                            ())))))

(defthm and-list-remove-hash
  (implies (syntaxp (not (equal hash ''0)))
           (equal (and-list hash lst)
                  (and-list 0 lst)))
  :hints (("Goal"
           :in-theory (e/d (and-list) ()))))


(defthm rp-evlt-of-create-and-list-instance
  (implies (and (rp-evl-meta-extract-global-facts)
                (mult-formula-checks state)
                (valid-sc-subterms lst a))
           (equal (rp-evlt (create-and-list-instance lst) a)
                  (and-list 0 (rp-evlt-lst lst A))))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d (create-and-list-instance
                            regular-rp-evl-of_bit-of_when_mult-formula-checks
                            and-list)
                           ()))))

(local
 (defthm pp-lists-to-term-p+-to-pp-lists-to-term-pp-lst
   (implies (and (mult-formula-checks state)
                 (pp-lists-p lst)
                 (rp-evl-meta-extract-global-facts)
                 (valid-sc-subterms-lst (strip-cdrs lst) a))
            (equal (rp-evlt (pp-lists-to-term-p+ lst) a)
                   (sum-list (rp-evlt-lst (pp-lists-to-term-pp-lst lst)  a))))
   :hints (("Goal"
            :do-not-induct t
            :expand ((:free (x y hash) (and-list hash (cons x y))))
            :induct (pp-lists-to-term-p+ lst)
            :in-theory (e/d (pp-lists-to-term-p+
                             regular-rp-evl-of_bit-of_when_mult-formula-checks
                             pp-lists-to-term-pp-lst)
                            ())))))

(local
 (defthm valid-sc-and-apply-sign-to-pp-lists
   (implies (and ;;(true-listp pp-lists)
                 (valid-sc-subterms-lst (strip-cdrs pp-lists) a))
            (valid-sc-subterms-lst (strip-cdrs (apply-sign-to-pp-lists pp-lists sign)) a))
   :hints (("goal"
            :in-theory (e/d (valid-sc-subterms-lst
                             apply-sign-to-pp-lists)
                            (valid-sc-subterms))))))

(local
 (defthm pp-lists-to-term-pp-lst_of_pp-term-to-pp-lists
   (implies (and (mult-formula-checks state)
                 (pp-term-p term)
                 (booleanp sign)
                 (valid-sc term a)
                 (rp-evl-meta-extract-global-facts))
            (equal (sum-list (rp-evlt-lst (pp-lists-to-term-pp-lst
                                           (pp-term-to-pp-lists term sign))
                                          a))
                   (if sign
                       (-- (rp-evlt term a))
                     (rp-evlt term a))))
   :hints (("goal"
            :do-not-induct t
            :use ((:instance rp-evlt_of_pp-lists-to-term_of_pp-term-to-pp-lists))
            :in-theory (e/d ()
                            (--
                             rp-evlt_of_pp-lists-to-term_of_pp-term-to-pp-lists
                             
                             sum
                             valid-sc
                             and$
                             bitp
                             or$
                             ifix
                             (:REWRITE VALID-SC-EX-FROM-RP-2)
                             (:DEFINITION EVAL-AND-ALL)
                             valid-sc
;;                             (:REWRITE ACL2::O-P-O-INFP-CAR)
                             (:REWRITE DEFAULT-CDR)
                             (:DEFINITION RP-TERMP)
                             (:TYPE-PRESCRIPTION VALID-SC)
                             (:META ACL2::MV-NTH-CONS-META)
                             (:REWRITE PP-LISTS-P-IMPLIES-TRUE-LISTP)
                             (:REWRITE DEFAULT-CAR)
                             integerp))))))

#|(RP-EVL-OF-TRANS-LIST (RP-TRANS-LST LST)
                                        A)||#

;; (local
;;  (defthm ...
;;    (RP-EVL-OF-TRANS-LIST (LIST (LIST '-- term)) A)



(local
 (defthmd and-list-to-binary-and
   (equal (and-list 0 (list a b))
          (and$ a b))
   :hints (("Goal"
            :in-theory (e/d (and-list
                             and$) ())))))

(defret pp-remove-extraneous-sc-correct
  (implies (and (rp-evl-meta-extract-global-facts)
                (mult-formula-checks state))
           (equal (rp-evlt res-term a)
                  (rp-evlt term a)))
  :fn pp-remove-extraneous-sc
  :hints (("Goal"
           :do-not-induct t
           :induct (pp-remove-extraneous-sc term)
           :expand ((:free (term) (nth 3 term)))
           :in-theory (e/d* (pp-remove-extraneous-sc
                             rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                             regular-eval-lemmas)
                            (rp-trans
                             rp-termp
                             rp-evlt-of-ex-from-rp
                             (:DEFINITION EX-FROM-RP)
                             (:DEFINITION INCLUDE-FNC)
                             (:REWRITE NOT-INCLUDE-RP)
                             (:DEFINITION INCLUDE-FNC-SUBTERMS)
                             (:DEFINITION RP-EQUAL)
                             (:REWRITE RP-EQUAL-IS-SYMMETRIC)
                             (:REWRITE RP-EVLT-OF-RP-EQUAL)
                             (:REWRITE WHEN-EX-FROM-RP-IS-1)
                             (:REWRITE WHEN-EX-FROM-RP-IS-0)
                             (:TYPE-PRESCRIPTION BINARY-?-P$INLINE)
                             )))))

(defret pp-remove-extraneous-sc-correct-2
  (implies (and (rp-evl-meta-extract-global-facts)
                (mult-formula-checks state))
           (and (equal (equal (ifix (rp-evlt res-term a))
                              (ifix (rp-evlt term a)))
                       t)
                (equal (equal (rp-evlt res-term a)
                              (rp-evlt term a))
                       t)))
  :fn pp-remove-extraneous-sc
  :hints (("Goal"
           :do-not-induct t
           )))

(defthm sum-list-of-append-wog
  (implies (and (mult-formula-checks state)
                (rp-evl-meta-extract-global-facts))
           (equal (sum-list (rp-evlt-lst (append-wog x y) a))
                  (sum (sum-list (rp-evlt-lst x a))
                       (sum-list (rp-evlt-lst y a)))))
  :hints (("Goal"
           :induct (append-wog x y)
           :do-not-induct t
           :in-theory (e/d (append-wog) ()))))

(local
 (create-regular-eval-lemma AND-LIST 2 mult-formula-checks))

(local
 (create-regular-eval-lemma sum-list 1 mult-formula-checks))

(local
 (create-regular-eval-lemma s-c-res 3 mult-formula-checks))

(local
 (defthm rp-evlt-lst-of-list-to-lst
   (implies (and (mult-formula-checks state)
                 (rp-evl-meta-extract-global-facts))
            (equal (sum-list (rp-evlt-lst (list-to-lst x) a))
                   (sum-list (rp-evlt x a))))
   :hints (("goal"
            :expand ((list-to-lst x))
            :in-theory (e/d* (regular-eval-lemmas)
                             ())))))

(defthm valid-sc-subterms-of-negate-lst
  (implies (valid-sc-subterms lst a)
           (valid-sc-subterms (negate-lst lst enabled) a))
  :hints (("Goal"
           :induct (NEGATE-LST-AUX LST)
           :in-theory (e/d (negate-lst
                            is-rp
                            is-if
                            NEGATE-LST-AUX)
                           ()))))


(defthm rp-evlt-lst-of-negate-lst
  (implies (and (mult-formula-checks state)
                (rp-evl-meta-extract-global-facts))
           (equal (sum-list (rp-evlt-lst (negate-lst lst enabled) a))
                  (if enabled
                      (-- (sum-list (rp-evlt-lst lst a)))
                    (sum-list (rp-evlt-lst lst a)))))
  :hints (("Goal"
           :induct (negate-lst-aux lst)
           :do-not-induct t
           :in-theory (e/d (NEGATE-LST
                            negate-lst-aux)
                           ()))))

#|(defthm sum-list-eval-of-append-wog
  (equal (sum-list-eval (append-wog x y) a)
         (sum (sum-list-eval x a)
              (sum-list-eval y a)))
  :hints (("Goal"
           :induct (append-wog x y)
           :do-not-induct t
           :in-theory (e/d (append-wog) ()))))|#



;; A MAIN LEMMA
(defret pp-flatten-correct-lemma
  (implies (and (mult-formula-checks state)
                (pp-term-p term)
                (booleanp sign)
                (valid-sc term a)
                (rp-evl-meta-extract-global-facts))
           (equal (sum-list (rp-evlt-lst pp-lst a))
                  (if sign
                      (-- (rp-evlt (pp-remove-extraneous-sc term) a))
                    (rp-evlt (pp-remove-extraneous-sc term) a))))
  :fn pp-flatten
  :hints (("goal"
           :do-not-induct t
           :in-theory (e/d* (pp-flatten
                             regular-eval-lemmas
                             and-list-to-binary-and
                             )
                            (pp-term-p
                             rp-trans-is-term-when-list-is-absent
                             pp-remove-extraneous-sc-correct
                             ;;rp-evlt-of-ex-from-rp
                             ;;rp-trans
                             valid-sc
                             not-include-rp-means-valid-sc
                             rp-trans
                             (:rewrite ex-from-synp-lemma1)
;;                             (:rewrite acl2::o-p-o-infp-car)
                             (:definition is-synp$inline)
                             (:rewrite not-include-rp)
                             pp-term-to-pp-lists-extract-sign
                             (:definition rp-termp)

                             ;;rp-trans-lst
                             )))))

(defret pp-flatten-correct
  (implies (and (mult-formula-checks state)
                (pp-term-p term)
                (booleanp sign)
                (valid-sc term a)
                (rp-evl-meta-extract-global-facts))
           (equal (sum-list (rp-evlt-lst pp-lst a))
                  (if sign
                      (-- (rp-evlt term a))
                    (rp-evlt term a))))
  :fn pp-flatten
  :hints (("Goal"
           :do-not-induct t
; :use ((:instance pp-lists-to-term-pp-lst_of_pp-term-to-pp-lists))
           :in-theory (e/d* (;;rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                             regular-eval-lemmas
                             and-list-to-binary-and)
                            (;pp-lists-to-term-pp-lst_of_pp-term-to-pp-lists
                             PP-TERM-P
                             RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT
                             ;;rp-evlt-of-ex-from-rp
                             ;;RP-TRANS
                             VALID-SC
                             NOT-INCLUDE-RP-MEANS-VALID-SC
                             rp-trans
                             (:REWRITE EX-FROM-SYNP-LEMMA1)
;;                             (:REWRITE ACL2::O-P-O-INFP-CAR)
                             (:DEFINITION IS-SYNP$INLINE)
                             (:REWRITE NOT-INCLUDE-RP)
                             PP-TERM-TO-PP-LISTS-EXTRACT-SIGN
                             (:DEFINITION RP-TERMP)
                             ;;RP-TRANS-LST
                             )))))

(defthm rp-evl-to-of-create-list-instance
  (equal (sum-list (rp-evlt (create-list-instance lst) a))
         (sum-list (rp-evlt-lst lst a)))
  :hints (("Goal"
           :in-theory (e/d (create-list-instance
                            sum-list
;binary-sum
                            )
                           (SUM-OF-IFIX)))))

#|(defthmd RP-EVLt-LST-OF-CONS
  (implies (consp lst)
           (equal (rp-evlt-lst lst a)
                  (cons (rp-evlt (car lst) a)
                        (rp-evlt-lst (cdr lst) a))))
  :hints (("Goal"
;:expand (rp-evlt-lst lst a)
           :in-theory (e/d () ()))))||#

(defthm rp-evlt-of-list
  (equal (rp-evlt (cons 'list lst) a)
         (rp-evlt-lst lst a)))

(progn

  (create-regular-eval-lemma bit-of 2 mult-formula-checks)
  (create-regular-eval-lemma bitp 1 mult-formula-checks)
  (create-regular-eval-lemma ifix 1 mult-formula-checks)
  (create-regular-eval-lemma binary-and 2 mult-formula-checks)
  (create-regular-eval-lemma binary-sum 2 mult-formula-checks)

  (defthm valid-rp-bitp-lemma
    (implies (and (mult-formula-checks state)
                  (valid-sc term a)
                  (rp-evl-meta-extract-global-facts)
                  (case-match term (('rp ''bitp &) t)))
             (and (bitp (rp-evlt (caddr term) a))
                  (bitp (rp-evlt term a))))
    :hints (("Goal"
             :in-theory (e/d (is-rp
                              valid-sc-single-step
                              is-if)
                             (valid-sc)))))

  (defthm bitp-of-bits-of-term-with-ex-from-rp
    (implies (and (mult-formula-checks state)
                  (rp-evl-meta-extract-global-facts)
                  (b* ((term (ex-from-rp term)))
                    (case-match term (('bit-of & &) t))))
             (and (bitp (rp-evlt term a))
                  (bitp (rp-evl term a))))
    :hints (("Goal"
             :do-not-induct t
             :use ((:instance rp-evlt-of-ex-from-rp)
                   (:instance rp-evl-of-ex-from-rp))
             :in-theory (e/d* (is-rp
                               regular-eval-lemmas
                               is-if)
                              (valid-sc
                               rp-evl-of-ex-from-rp
                               EVL-OF-EXTRACT-FROM-RP
                               rp-evlt-of-ex-from-rp)))))

  (local
   (defthm bitp-valid-single-bitp
     (implies (and (mult-formula-checks state)
                   (valid-sc cur a)
                   (VALID-SINGLE-BITP cur)
                   (rp-evl-meta-extract-global-facts))
              (bitp (rp-evlt cur a)))
     :hints (("Goal"
              :in-theory (e/d (VALID-SINGLE-BITP
                               valid-sc-single-step
                               is-rp)
                              (bitp
                               valid-sc))))))

  (defthm rp-evlt-of-bitp
    (implies (and (mult-formula-checks state)
                  (rp-evl-meta-extract-global-facts))
             (equal (RP-EVLT (LIST 'BITP x) A)
                    (bitp (rp-evlt x a))))
    :hints (("Goal"
             :in-theory (e/d* (regular-eval-lemmas)
                              ()))))

  (local
   (defret sort-sum-meta-aux-aux-returns-bit-list-listp
     (implies (and valid
                   (mult-formula-checks state)
                   (valid-sc cur a)
                   (rp-evl-meta-extract-global-facts))
              (bit-listp (rp-evlt-lst (cdr pp-list-entry) a)))
     :fn SORT-SUM-META-AUX-AUX
     :hints (("Goal"
              :in-theory (e/d (sort-sum-meta-aux-aux
                               is-rp
                               valid-sc-single-step
                               RP-EVLt-LST-OF-CONS
                               rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                               )
                              (rp-evlt-of-ex-from-rp

                               (:EXECUTABLE-COUNTERPART RP-TRANS-LST)
                               (:REWRITE VALID-SC-EX-FROM-RP-2)
                               (:TYPE-PRESCRIPTION O<)
                               (:DEFINITION EVAL-AND-ALL)
                               (:REWRITE EVAL-OF-BIT-OF)
                               (:REWRITE DEFAULT-CDR)
                               (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                               ex-from-rp
                               valid-sc
                               RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT
                               EX-FROM-RP-LEMMA1
                               (:REWRITE DEFAULT-CAR)
                               RP-TRANS-LST
                               rp-termp
                               bitp
                               (:REWRITE RP-EVL-LST-OF-CONS-WITH-SYNTAXP)
                               (:TYPE-PRESCRIPTION VALID-SC)
                               (:TYPE-PRESCRIPTION MULT-FORMULA-CHECKS)
                               (:TYPE-PRESCRIPTION BIT-LISTP)
;;                               (:REWRITE ACL2::O-P-O-INFP-CAR)
                               (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                               (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC)
                               (:DEFINITION INCLUDE-FNC)
                               (:TYPE-PRESCRIPTION O-P)
                               rp-trans))))))

  (local
   (defthm SORT-SUM-META-AUX-returns-bit-list-listp
     (implies (and (MV-NTH 0 (SORT-SUM-META-AUX term))
                   (mult-formula-checks state)
                   (valid-sc term a)
                   (rp-evl-meta-extract-global-facts))
              (BIT-LIST-LISTP
               (RP-EVLT-LST-LST (STRIP-CDRS (MV-NTH 1 (SORT-SUM-META-AUX term)))
                                A)))
     :hints (("Goal"
              :induct (SORT-SUM-META-AUX term)
              :do-not-induct t
              :expand ((RP-TRANS-LST (CDR TERM))
                       (RP-TRANS-LST (CDdR TERM))
                       (RP-TRANS-LST (CDddR TERM)))
              :in-theory (e/d (SORT-SUM-META-AUX)
                              (bitp
                               valid-sc
                               rp-trans))))))

  (local
   (defthm SORT-SUM-META-AUX2-returns-bit-list-listp
     (implies (and (MV-NTH 0 (SORT-SUM-META-AUX2 term))
                   (mult-formula-checks state)
                   (valid-sc term a)
                   (rp-evl-meta-extract-global-facts))
              (BIT-LIST-LISTP
               (RP-EVLT-LST-LST (STRIP-CDRS (MV-NTH 1 (SORT-SUM-META-AUX2 term)))
                                A)))
     :hints (("Goal"
              :induct (SORT-SUM-META-AUX2 term)
              :do-not-induct t
              :expand ((RP-TRANS-LST (CDR TERM))
                       (RP-TRANS-LST (CDdR TERM))
                       (RP-TRANS-LST (CDddR TERM)))
              :in-theory (e/d (SORT-SUM-META-AUX2)
                              (bitp
                               valid-sc
                               rp-trans))))))

  (local
   (defthm valid-sort-sum-meta-aux-aux-is-integerp
     (implies (and (mult-formula-checks state)
                   (valid-sc term a)
                   (rp-evl-meta-extract-global-facts)
                   (MV-NTH 0 (SORT-SUM-META-AUX-aux term)))
              (and (integerp (rp-evlt term a))
                   (integerp (rp-evlt (ex-from-rp term) a))))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (SORT-SUM-META-AUX-aux
                               rp-evlt-of-ex-from-rp
                               valid-sc-single-step)
                              (valid-sc
                               EX-FROM-RP-LEMMA1
                               ))))))

  (local
   (defthm valid-sort-sum-meta-aux-is-integerp
     (implies (and (mult-formula-checks state)
                   (valid-sc term a)
                   (rp-evl-meta-extract-global-facts)
                   (MV-NTH 0 (SORT-SUM-META-AUX term)))
              (integerp (rp-evlt term a)))
     :hints (("Goal"
              :do-not-induct t
              :induct (SORT-SUM-META-AUX term)
              :in-theory (e/d* (SORT-SUM-META-AUX
                                regular-eval-lemmas
                                ;;rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                                valid-sc-single-step)
                               (is-rp
                                rp-trans
                                rp-trans-lst
                                RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT
                                rp-evlt-of-ex-from-rp)))
             ("Subgoal *1/1"
              :use ((:instance rp-evlt-of-ex-from-rp)))
             ("Subgoal *1/2"
              :use ((:instance rp-evlt-of-ex-from-rp))))))

  (defthm consp-ex-from-rp-implies
    (implies (consp (ex-from-rp x))
             (consp x))
    :rule-classes :forward-chaining)

  (local
   (std::defretd
    not-consp-SORT-SUM-META-AUX-AUX-means
    (implies (and valid)
             (and (implies (not (consp pp-list-entry))
                           (equal (rp-evlt cur a) 0))
                  (implies (not (quotep (ex-from-rp cur)))
                           (consp cur))
                  (implies (not (consp cur))
                           (quotep (ex-from-rp cur)))
                  (not (car pp-list-entry))
                  ))
    :fn SORT-SUM-META-AUX-AUX
    :hints (("Goal"
             :in-theory (e/d (SORT-SUM-META-AUX-AUX)
                             (rp-trans-lst
                              rp-trans
                              (:TYPE-PRESCRIPTION O<)
                              EX-FROM-RP
                              (:REWRITE NOT-INCLUDE-RP)
                              (:DEFINITION INCLUDE-FNC)
                              (:REWRITE DEFAULT-CDR)
                              (:REWRITE DEFAULT-CAR)
                              (:DEFINITION QUOTEP)
                              (:TYPE-PRESCRIPTION INCLUDE-FNC)
                              (:TYPE-PRESCRIPTION O-P)
                              (:TYPE-PRESCRIPTION IS-RP$INLINE)
;;                              (:REWRITE ACL2::O-P-O-INFP-CAR)
;;                              (:FORWARD-CHAINING
;;                               ACL2::|a <= b & b <= c  =>  a <= c|)
;;                              (:FORWARD-CHAINING
;;                               ACL2::|a <= b & b < c  =>  a < c|)
;;                              (:FORWARD-CHAINING
;;                               ACL2::|a <= b & ~(a = b)  =>  a < b|)
                              (:REWRITE
                               REGULAR-RP-EVL-OF_IFIX_WHEN_MULT-FORMULA-CHECKS)
                              (:TYPE-PRESCRIPTION INCLUDE-FNC-SUBTERMS)
                              ))))))

  (local
   (defthmd and-list-to-binary-and-2
     (equal (and-list 0 (cons a b))
            (binary-and a (and-list 0 b)))
     :hints (("Goal"
              :in-theory (e/d (and-list) ())))))

  (local
   (defthm SORT-SUM-META-AUX-AUX-correct-lemma
     (implies (equal (len lst) 2)
              (equal (AND-LIST 0
                               (RP-EVLT-LST (SORT-AND$-LIST lst 2)
                                            A))
                     (and-list 0 (rp-evlt-lst lst a))))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (SORT-AND$-LIST

                               and$
                               and-list-to-binary-and-2
                               and-list-to-binary-and)
                              ())))))

  (local
   (defret sort-sum-meta-aux-aux-correct
     (implies (and (mult-formula-checks state)
                   (valid-sc cur a)
                   (rp-evl-meta-extract-global-facts)
                   (consp pp-list-entry)
                   valid)
              (equal
               (rp-evlt
                (pp-lists-to-term-and$ (cdr (mv-nth 1 (sort-sum-meta-aux-aux cur))))
                a)
               (rp-evlt cur a)))
     :fn sort-sum-meta-aux-aux
     :hints (("goal"
              :do-not-induct t
              :in-theory (e/d* (sort-sum-meta-aux-aux
                                pp-lists-to-term-and$
                                regular-eval-lemmas
                                ;;sort-and$-list
                                and-list-to-binary-and
                                rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                                rp-evlt-lst-of-cons)
                               (ex-from-rp
                                (:type-prescription valid-sc)
                                (:type-prescription mult-formula-checks)
                                (:type-prescription binary-and)
                                (:rewrite eval-of-bit-of)

                                (:rewrite valid-sc-ex-from-rp-2)
                                (:definition eval-and-all)
                                (:rewrite
                                 regular-rp-evl-of_bitp_when_mult-formula-checks)
                                eval-of-list-to-term-of-sort-and$-list
                                rp-evlt-of-ex-from-rp
                                valid-sc
                                (:rewrite default-cdr)
                                (:type-prescription o<)
                                (:rewrite default-car)
;;                                (:rewrite acl2::o-p-o-infp-car)
                                include-fnc-subterms
                                include-fnc
                                (:rewrite ex-from-synp-lemma1)
                                ex-from-rp-lemma1
                                bitp
                                rp-trans
                                rp-trans-lst))))))

  (defthm PP-LISTS-TO-TERM-P+-SORT-SUM-META-AUX
    (implies (and (mult-formula-checks state)
                  (valid-sc term a)
                  (rp-evl-meta-extract-global-facts)
                  (MV-NTH 0 (SORT-SUM-META-AUX term)))
             (EQUAL
              (rp-evlt (pp-lists-to-term-p+ (mv-nth 1 (sort-sum-meta-aux term))) a)
              (rp-evlt term A)))
    :hints (("Goal"
             :induct (MV-NTH 1 (SORT-SUM-META-AUX term))
             :do-not-induct t
             :Expand ((true-listp (cdr term))
                      (RP-TRANS-LST (CDR TERM))
                      (RP-TRANS-LST (CDdR TERM)))
             :in-theory (e/d* (SORT-SUM-META-AUX
                               regular-eval-lemmas
                               rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                               not-consp-SORT-SUM-META-AUX-AUX-means
                               is-if is-rp context-from-rp eval-and-all
                               true-listp
                               ifix-opener
                               PP-LISTS-TO-TERM-P+)
                              (PP-LISTS-TO-TERM-AND$-REDEF
                               rp-evlt-of-ex-from-rp
                               rp-trans
                               rp-trans-lst
                               (:DEFINITION EX-FROM-RP)
;(:REWRITE VALID-SC-CADR)
;(:REWRITE VALID-SC-CADDR)
                               (:DEFINITION EVAL-AND-ALL)
                               (:REWRITE DEFAULT-CDR)
                               (:REWRITE DEFAULT-CAR)
;;                               (:REWRITE ACL2::O-P-O-INFP-CAR)
                               (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                               (:DEFINITION RP-TRANS)
                               (:REWRITE ATOM-RP-TERMP-IS-SYMBOLP)
                               (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                               (:REWRITE EVAL-OF-BIT-OF)
                               (:REWRITE EVAL-OF-BINARY-XOR)
                               (:REWRITE EVAL-OF-BINARY-OR)
                               (:DEFINITION INCLUDE-FNC)
                               (:DEFINITION RP-TERMP)
;VALID-SC-EX-FROM-RP-2
                               rp-evl-of-ex-from-rp-reverse
                               bitp
                               TYPE-FIX-WHEN-BITP
                               TYPE-FIX-WHEN-INTEGERP
                               PP-LISTS-TO-TERM-P+-TO-PP-LISTS-TO-TERM-PP-LST)))))

  (defthm PP-LISTS-TO-TERM-P+-SORT-SUM-META-AUX2
    (implies (and (mult-formula-checks state)
                  (valid-sc term a)
                  (rp-evl-meta-extract-global-facts)
                  (MV-NTH 0 (SORT-SUM-META-AUX2 term)))
             (EQUAL
              (rp-evlt (pp-lists-to-term-p+ (mv-nth 1 (sort-sum-meta-aux2 term))) a)
              (rp-evlt term A)))
    :hints (("Goal"
             :induct (MV-NTH 1 (SORT-SUM-META-AUX2 term))
             :do-not-induct t
             :Expand ((true-listp (cdr term))
                      (RP-TRANS-LST (CDR TERM))
                      (RP-TRANS-LST (CDdR TERM)))
             :in-theory (e/d* (SORT-SUM-META-AUX2
                               regular-eval-lemmas
                               rp-evlt-of-ex-from-rp-reverse-only-atom-and-car
                               not-consp-SORT-SUM-META-AUX-AUX-means
                               is-if is-rp context-from-rp eval-and-all
                               true-listp
                               ifix-opener
                               PP-LISTS-TO-TERM-P+)
                              (PP-LISTS-TO-TERM-AND$-REDEF
                               rp-evlt-of-ex-from-rp
                               rp-trans
                               rp-trans-lst
                               (:DEFINITION EX-FROM-RP)
;(:REWRITE VALID-SC-CADR)
;(:REWRITE VALID-SC-CADDR)
                               (:DEFINITION EVAL-AND-ALL)
                               (:REWRITE DEFAULT-CDR)
                               (:REWRITE DEFAULT-CAR)
;;                               (:REWRITE ACL2::O-P-O-INFP-CAR)
                               (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                               (:DEFINITION RP-TRANS)
                               (:REWRITE ATOM-RP-TERMP-IS-SYMBOLP)
                               (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                               (:REWRITE EVAL-OF-BIT-OF)
                               (:REWRITE EVAL-OF-BINARY-XOR)
                               (:REWRITE EVAL-OF-BINARY-OR)
                               (:DEFINITION INCLUDE-FNC)
                               (:DEFINITION RP-TERMP)
;VALID-SC-EX-FROM-RP-2
                               rp-evl-of-ex-from-rp-reverse
                               bitp
                               TYPE-FIX-WHEN-BITP
                               TYPE-FIX-WHEN-INTEGERP
                               PP-LISTS-TO-TERM-P+-TO-PP-LISTS-TO-TERM-PP-LST)))))

  ;; A MAIN LEMMA
  (defthm sort-sum-meta-correct
    (implies (and (mult-formula-checks state)
                  (rp-evl-meta-extract-global-facts)
                  (valid-sc term a))
             (equal (rp-evlt (mv-nth 0 (sort-sum-meta term)) a)
                    (rp-evlt term a)))
    :hints (("Goal"
             :do-not-induct t
             :use ((:instance pp-lists-to-term-p+-to-pp-lists-to-term-pp-lst
                              (lst (SORT-PP-LISTS (MV-NTH 1 (SORT-SUM-META-AUX2 (CADR TERM)))
                                                  (LEN (MV-NTH 1
                                                               (SORT-SUM-META-AUX2 (CADR TERM)))))))
                   (:instance EVAL-OF-SORT-PP-LISTS-IS-CORRECT
                              (lst (MV-NTH 1 (SORT-SUM-META-AUX2 (CADR TERM))))
                              (size (LEN (MV-NTH 1 (SORT-SUM-META-AUX2 (CADR TERM)))))))
             :in-theory (e/d (sort-sum-meta
                              SORT-SUM
                              )
                             (pp-lists-to-term-p+-to-pp-lists-to-term-pp-lst
                              PP-LISTS-TO-TERM-AND$-REDEF
                              EVAL-OF-SORT-PP-LISTS-IS-CORRECT)))))

  #|(defthm sort-sum-meta-valid-rp-meta-rulep-local
  (implies (and (rp-evl-meta-extract-global-facts :state state)
  (mult-formula-checks state))
  (let ((rule (make rp-meta-rule-rec
  :fnc 'sort-sum-meta
  :trig-fnc 'sort-sum
  :dont-rw t
  :valid-syntax t)))
  (and (valid-rp-meta-rulep rule state)
  (rp-meta-valid-syntaxp-sk rule state))))
  :otf-flg t
  :hints (("Goal"
  :in-theory (e/d (rp-meta-valid-syntaxp)
  (rp-termp
  rp-term-listp
  valid-sc)))))||#)
