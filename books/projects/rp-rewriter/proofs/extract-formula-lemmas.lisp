; RP-REWRITER

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
(include-book "../extract-formula")

(include-book "proof-functions")
(local (include-book "proof-function-lemmas"))
(local (include-book "aux-function-lemmas"))
(local (include-book "rp-equal-lemmas"))

(defthm remove-warning-from-rule-syntaxp
  (implies (syntaxp (not (equal warning ''nil)))
           (equal (rule-syntaxp rule :warning warning)
                  (rule-syntaxp rule :warning nil)))
  :hints (("Goal"
           :in-theory (e/d (rule-syntaxp) ()))))

(defthm is-rp-of-list
  (not (is-rp (cons 'list x)))
  :hints (("Goal"
           :in-theory (e/d (is-rp) ()))))

(defthm is-if-of-list
  (not (is-if (cons 'list x)))
  :hints (("Goal"
           :in-theory (e/d (is-if) ()))))



(defthm eval-and-all-nt-of-if-to-and-list
  (iff (eval-and-all-nt (if-to-and-list term) a)
       (rp-evl term a))
  :hints (("Goal"
           :induct (if-to-and-list term)
           :in-theory (e/d (if-to-and-list) ()))))

(defthm eval-and-all-of-if-to-and-list
  (iff (eval-and-all (if-to-and-list term) a)
       (rp-evlt term a))
  :hints (("Goal"
           :induct (if-to-and-list term)
           :in-theory (e/d (if-to-and-list) ()))))

(local
 ;;local funcitons for local lemmas
 (encapsulate
   nil

   (local
    (in-theory (disable (:definition rp-termp)
                        (:definition valid-sc-nt)
                        (:rewrite not-include-rp-means-valid-sc)
                        (:rewrite car-of-ex-from-rp-is-not-rp)
                        (:definition falist-consistent)
                        (:rewrite default-cdr)
;;                        (:rewrite acl2::o-p-o-infp-car)
                        (:rewrite is-if-rp-termp)
                        (:rewrite default-car)
                        (:rewrite rp-termp-caddr)
                        (:rewrite is-rp-pseudo-termp)
                        (:rewrite rp-termp-cadddr)
                        (:type-prescription o-p)
                        (:rewrite rp-evl-of-rp-equal2)
                        (:rewrite rp-evl-of-rp-equal-loose)
                        (:rewrite rp-evl-of-rp-equal)
;;                        (:rewrite acl2::o-p-def-o-finp-1)
                        (:rewrite rp-termp-cadr)
                        rule-syntaxp
                        rp-trans
                        ex-from-synp-lemma1
                        rp-trans-lst
                        evl-of-extract-from-rp-2
                        (:type-prescription is-rp$inline))))

   (defmacro valid-rulep-with-a (rule a)
     `(valid-rulep-sk-body ,rule ,a))

   (defun valid-rulesp-with-a (rules a)
     (if (atom rules)
         (equal rules nil)
       (and (rule-syntaxp (car rules))
            (valid-rulep-with-a (car rules) a)
            (valid-rulesp-with-a (cdr rules) a))))

   #|(local
   (defthm forced-rp-trans-is-term-when-list-is-absent
   (implies (force (not (include-fnc term 'list)))
   (equal (rp-evl (rp-trans term) a)
   (rp-evl term a)))))||#

   (local
    (in-theory (e/d (rule-syntaxp-implies rule-syntaxp)
                    (rp-hyp rp-lhs rp-rhs
                            formulas-to-rules
                            valid-rulesp-with-a
                            eval-and-all-nt
                            rp-trans
                            rp-trans-lst))))

   (defthm correctness-of-formulas-to-rules
     (implies (eval-and-all-nt formulas a)
              (valid-rulesp-with-a (formulas-to-rules rune rule-new-synp warning formulas) a))
     :hints (("Goal"
;:expand ((:free (warning x y) (rule-syntaxp-fn (cons x y) warning)))
              :in-theory (e/d (formulas-to-rules
                               valid-rulesp-with-a
                               eval-and-all-nt
                               rp-lhs rp-rhs rp-hyp)
                              (rule-syntaxp
                               RP-EVL-OF-VARIABLE
                               EX-FROM-RP-LEMMA1
                               (:TYPE-PRESCRIPTION IS-RP-LOOSE$INLINE)))
              )))

   (defun-sk eval-and-all-sk ( formulas)
     (forall a
             (eval-and-all-nt formulas a)))

   (defun valid-rulesp-induct (x)
     (if (atom x)
         nil
       (cons (car x) (valid-rulesp-induct (cdr x)))))

   (defun-sk valid-formula-sk (formula)
     (forall a
             (rp-evl formula a)))

   (defun-sk valid-rulesp-sk (rules)
     (forall a
             (valid-rulesp-with-a rules a)))))

(encapsulate
  nil

  (local
   (defthm rp-evl-lst-not-to-equal-nil-list
     (equal (eval-and-all-nt (not-to-equal-nil-list new-terms) a)
            (eval-and-all-nt new-terms a))
     :hints (("Goal"
              :in-theory (e/d (not-to-equal-nil-list) ())))))

  (local
   (defthm rp-evl-lst-of-if-to-and-list
     (implies (rp-evl term a)
              (eval-and-all-nt (if-to-and-list term) a))
     :hints (("Goal"
              :in-theory (e/d (if-to-and-list) ())))))

  (local
   (defthm consp-if-to-and-list
     (implies t;term
              (consp (if-to-and-list term)))
     :hints (("Goal"
              :in-theory (e/d (if-to-and-list) ())))))

  (local
   (defthm consp-not-to-equal-nil-list
     (implies (consp x)
              (consp (not-to-equal-nil-list x)))
     :hints (("Goal"
              :in-theory (e/d (not-to-equal-nil-list) ())))))

  (local
   (defthm make-rule-better-aux1-lemma1
     (implies (and (eval-and-all-nt qs a))
              (eval-and-all-nt (make-rule-better-aux1 p qs) a))))

  (local
   (defthm make-rule-better-aux1-lemma2
     (implies (and (not (rp-evl p a))
                   (consp qs))
              (eval-and-all-nt (make-rule-better-aux1 p qs) a))))

  (defthm
    rp-evl-of-beta-search-reduce
    (implies
     (pseudo-termp term)
     (equal (rp-evl (beta-search-reduce term limit) a)
            (rp-evl term a)))
    :hints (("Goal"
             :use ((:functional-instance
                    eval-of-beta-search-reduce
                    (acl2::beta-eval rp-evl)
                    (acl2::beta-eval-list rp-evl-lst)))
             :in-theory (e/d (rp-evl-of-fncall-args) ()))))

  (defthm correctness-of-make-formula-better
    (implies (and (pseudo-termp formula)
                  (rp-evl formula a))
             (eval-and-all-nt (make-formula-better formula) a))
    :hints (("Goal"
             :do-not-induct t
             :use ((:instance rp-evl-of-beta-search-reduce
                              (term formula)
                              (limit *big-number*)))
             :in-theory (e/d ()
                             (beta-search-reduce
                              rp-evl-of-beta-search-reduce))))
    :otf-flg t))

(local
 (encapsulate
   nil
   (local
    (defthm lemma201
      (IMPLIES (AND (CONSP RULES)
                    (NOT (RULE-SYNTAXP (CAR RULES))))
               (NOT (VALID-RULESP-SK RULES)))
      :hints (("Goal"
               :in-theory (e/d (VALID-RULESP-SK) (RULE-SYNTAXP))))))

   (local
    (defthm lemma202
      (IMPLIES (NOT RULES)
               (VALID-RULESP-SK RULES))))

   (local
    (defthm lemma203
      (IMPLIES (AND (CONSP RULES)
                    (NOT (VALID-RULEP-SK (CAR RULES))))
               (NOT (VALID-RULESP-SK RULES)))
      :hints (("Goal"
               :use ((:instance VALID-RULESP-SK-necc
                                (a (VALID-RULEP-SK-WITNESS (CAR RULES)))))
               :in-theory (e/d (VALID-RULEP-SK ) (
                                                  VALID-RULESP-SK
                                                  VALID-RULEP-SK-body
                                                  VALID-RULEP-SK-necc))))))

   (local
    (defthm lemma204
      (IMPLIES (AND (CONSP RULES)
                    (NOT (VALID-RULESP-SK (CDR RULES))))
               (NOT (VALID-RULESP-SK RULES)))
      :hints (("Goal"
               :expand (VALID-RULESP-SK (CDR RULES))
               :use ((:instance VALID-RULESP-SK-necc
                                (a (VALID-RULEsP-SK-WITNESS (CDR RULES)))))
               :in-theory (e/d ( )
                               (VALID-RULESP-SK

                                VALID-RULESP-SK-necc
                                rule-syntaxp
                                VALID-RULEP-SK-body
                                VALID-RULEP-SK-necc))))))

   (local
    (defthm lemma205
      (IMPLIES (AND (CONSP RULES)
                    (RULE-SYNTAXP (CAR RULES))
                    (VALID-RULEP-SK (CAR RULES))
                    (VALID-RULESP (CDR RULES))
                    (VALID-RULESP-SK (CDR RULES)))
               (VALID-RULESP-SK RULES))
      :hints (("Goal"
               :expand ((VALID-RULESP-SK rules)
                        )
               :use ((:instance VALID-RULESP-SK-necc
                                (a (VALID-RULEsP-SK-WITNESS rules))
                                (rules (cdr rules)))
                     (:instance VALID-RULEP-SK-necc
                                (a (VALID-RULEsP-SK-WITNESS rules))
                                (rule (car rules))))
               :in-theory (e/d ( )
                               (VALID-RULESP-SK
                                VALID-RULEP-SK

                                VALID-RULESP-SK-necc
                                rule-syntaxp
                                VALID-RULEP-SK-body
                                VALID-RULEP-SK-necc))))))

   (defthmd valid-rulesp-alt-def
     (implies (true-listp rules)
              (iff (valid-rulesp rules)
                   (valid-rulesp-sk rules)))
     :hints (("Goal"
              :use ()
              :in-theory (e/d (valid-rulesp)
                              (rp-lhs
                               (:ELIM CAR-CDR-ELIM)
                               valid-rulep-sk
                               valid-rulep-sk-body
                               valid-rulesp-sk
                               valid-rulep-sk-necc
                               rp-rhs
                               RP-IFF-FLAG
                               rp-hyp
                               rule-syntaxp)))))))

(local
 (encapsulate nil
   (make-flag insert-iff-to-force :defthm-macro-name
              defthm-insert-iff-to-force)

   (defthm-insert-iff-to-force
     (defthm rp-evl-of-insert-off-to-force-lemma
       (if iff-flg
           (iff (rp-evl (insert-iff-to-force term rule-name iff-flg in-hyps) a)
                (rp-evl term a))
         (equal (rp-evl (insert-iff-to-force term rule-name iff-flg in-hyps) a)
                (rp-evl term a)))
       :flag insert-iff-to-force)
     (defthm rp-evl-lst-of-insert-off-to-force-lst
       (equal (rp-evl-lst (insert-iff-to-force-lst lst rule-name in-hyps) a)
              (rp-evl-lst lst a))
       :flag insert-iff-to-force-lst)
     :hints (("Goal"
              :in-theory (e/d (RP-EVL-OF-FNCALL-ARGS
                               force$)
                              ((:definition rp-termp)
                               (:definition falist-consistent)
                               (:rewrite rp-evl-of-rp-equal2)
                               (:definition falist-consistent-aux)
;;                               (:rewrite acl2::o-p-o-infp-car)
                               (:type-prescription insert-iff-to-force))))))

   (defthm rp-evl-of-insert-off-to-force
     (and (iff (rp-evl (insert-iff-to-force term rule-name t in-hyps) a)
               (rp-evl term a))
          (equal (rp-evl (insert-iff-to-force term rule-name nil in-hyps) a)
                 (rp-evl term a)))
     :hints (("Goal"
              :use ((:instance rp-evl-of-insert-off-to-force-lemma
                               (iff-flg t))
                    (:instance rp-evl-of-insert-off-to-force-lemma
                               (iff-flg nil)))
              :in-theory (e/d () ()))))))

(encapsulate
  nil

  (local
   (defthm correctness-of-formulas-to-rules2
     (implies (eval-and-all-sk formulas)
              (valid-rulesp-with-a
               (formulas-to-rules rune rule-new-synp warning formulas) a))
     :hints (("Goal"
              :use ((:instance correctness-of-formulas-to-rules)
                    (:instance eval-and-all-sk-necc))
              :in-theory (e/d (valid-rulesp
                               valid-rulesp-with-a)
                              (rule-syntaxp
                               formulas-to-rules
                               correctness-of-formulas-to-rules
                               eval-and-all-sk
                               ))))))

  (local
   (defthm lemma10
     (implies (eval-and-all-sk formulas)
              (eval-and-all-sk (cdr formulas)))
     :otf-flg t
     :hints (("Goal"
              :expand ((eval-and-all-sk NIL)
                       (eval-and-all-sk (cdr formulas)))
              :use ((:instance eval-and-all-sk-necc
                               (a (EVAL-AND-ALL-SK-WITNESS (CDR FORMULAS)))))
              :in-theory (e/d () (eval-and-all-sk-necc
                                  eval-and-all-sk))))))

  (local
   (defthm correctness-of-formulas-to-rules3
     (implies (eval-and-all-sk formulas)
              (valid-rulesp (formulas-to-rules rune rule-new-synp warning formulas)))
     :otf-flg t
     :hints (("Goal"
              :induct  (valid-rulesp-induct formulas)
              :in-theory (e/d (valid-rulesp
                               valid-rulesp-alt-def
                               valid-rulesp-with-a)
                              (rule-syntaxp
                               formulas-to-rules
                               correctness-of-formulas-to-rules
                               eval-and-all-sk))))))

  (defthm custom-rewrite-with-meta-extract-is-correct
    (implies (and ;(custom-rewrite-with-meta-extract rule-name state)
              (rp-evl-meta-extract-global-facts :state state))
             (valid-rulesp (custom-rewrite-with-meta-extract rule-name
                                                             rule-new-synp warning state)))
    :hints (("goal"
;:cases ((custom-rewrite-with-meta-extract rule-name state))
             :in-theory (e/d (valid-rulep-sk-necc
                              rp-evl-meta-extract-formula)
                             (formulas-to-rules
                              valid-rulesp
                              valid-rulesp-alt-def
                              make-formula-better
                              meta-extract-formula
                              get-rune-name
                              rule-syntaxp)))))

  (in-theory (disable custom-rewrite-with-meta-extract)))

(defthm valid-sc-nt-subtermsof-ex-from-rp
  (implies (valid-sc-nt term a)
           (valid-sc-nt (ex-from-rp term) a))
  :hints (("Goal"
;:induct (ex-from-rp-loose term)
           :induct (ex-from-rp term)
           :do-not-induct t
           :in-theory (e/d (valid-sc-nt
                            is-rp
                            is-if
                            ex-from-rp
                            ex-from-rp-loose
                            is-rp-loose)
                           ((:DEFINITION RP-TERMP))))))

(encapsulate
  nil
  (local
   (defthm valid-sc-nt-single-step-lemma
     (implies (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL)
                               A)
              (EQUAL (valid-sc-nt (EX-FROM-RP term) A)
                     (valid-sc-nt term A)))
     :hints (("Goal"
              :in-theory (e/d (is-if
                               is-rp) ())))))

  (local
   (defthm valid-sc-nt-single-step-lemma2
     (implies (and (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL) A)
                   (IS-RP TERM))
              (EVAL-AND-ALL-nt (CONTEXT-FROM-RP (CADDR TERM) NIL) A))
     :hints (("Goal"
              :in-theory (e/d (is-if
                               EVAL-AND-ALL-nt
                               context-from-rp
                               is-rp) ())))))

  (local
   (defthm valid-sc-nt-single-step-lemma3-lemma
     (implies (not (equal fnc 'quote))
              (equal (RP-EVL (LIST fnc (EX-FROM-RP term)) A)
                     (RP-EVL (LIST fnc term) A)))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (is-if
                               rp-evl-of-ex-from-rp
                               EVAL-AND-ALL-nt
                               rp-evl-of-fncall-args
                               is-rp) ())))))

  (local
   (defthm valid-sc-nt-single-step-lemma3
     (implies (and (IS-RP TERM)
                   (NOT (RP-EVL (LIST (CADR (CADR TERM)) (CADDR TERM)) A)))
              (not (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL) A)))
     :hints (("Goal"
              :do-not-induct t
              :expand (CONTEXT-FROM-RP TERM NIL)
              :in-theory (e/d (is-if
                               EVAL-AND-ALL-nt
                               rp-evl-of-fncall-args
                               is-rp)
                              (EX-FROM-RP-LEMMA1))))))

  (local
   (defthm valid-sc-nt-single-step-lemma4
     (implies (and (IS-RP TERM)
                   (NOT (RP-EVL (LIST (CADR (CADR TERM)) (CADDR TERM)) A)))
              (not (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL) A)))
     :hints (("Goal"
              :do-not-induct t
              :expand (CONTEXT-FROM-RP TERM NIL)
              :in-theory (e/d (is-if
                               rp-evl-of-fncall-args
                               EVAL-AND-ALL-nt
                               is-rp)
                              (EX-FROM-RP-LEMMA1))))))

  (local
   (defthm valid-sc-nt-single-step-lemma5
     (implies (and (RP-EVL (LIST (CADR (CADR TERM)) (CADDR TERM))
                           A)
                   (IS-RP TERM)
                   (NOT (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL)
                                         A)))
              (NOT (EVAL-AND-ALL-nt (CONTEXT-FROM-RP (caddr TERM) NIL)
                                    A)))
     :hints (("Goal"
              :in-theory (e/d (is-rp EVAL-AND-ALL-nt
                                     rp-evl-of-fncall-args
                                     context-from-rp)
                              (EX-FROM-RP-LEMMA1))))))

  (local
   (defthm valid-sc-nt-single-step-lemma6
     (implies (and (NOT (EVAL-AND-ALL-nt (CONTEXT-FROM-RP TERM NIL)
                                         A)))
              (NOT (valid-sc-nt term A)))
     :hints (("Goal"
              :in-theory (e/d (is-rp EVAL-AND-ALL-nt
                                     is-if
                                     context-from-rp) ())))))

  (defthmd valid-sc-nt-single-step
    (implies (and (rp-termp term)
                  (is-rp term))
             (equal (valid-sc-nt term a)
                    (and (RP-EVL `(,(cadr (cadr term)) ,(caddr term))  a)
                         (valid-sc-nt (caddr term) a))))
    :hints (("Goal"
             :do-not-induct t
             :expand ((valid-sc-nt TERM A))
             :in-theory (e/d (is-rp-implies-fc
                              is-if-implies-fc)
                             ())))))

(encapsulate
  nil

  (local
   (use-measure-lemmas t))

  (make-flag attach-sc :defthm-macro-name defthm-attach-sc)

  (defthm-attach-sc
    (defthm rp-evlt-of-attach-sc
      (equal (rp-evlt (attach-sc term sc-type sc-term) a)
             (rp-evlt term a))
      :flag attach-sc)
    (defthm rp-evlt-lst-of-attach-sc-lst
      (equal (rp-evlt-lst (attach-sc-lst lst sc-type sc-term) a)
             (rp-evlt-lst lst a))
      :flag attach-sc-lst)
    :otf-flg t
    :hints (("Goal"
             :expand ((rp-trans term)
                      (RP-TRANS SC-TERM))
             :in-theory (e/d (rp-evl-of-fncall-args
                              rp-trans
                              rp-trans-lst) ()))))

  (defthm-attach-sc
    (defthm rp-evl-of-attach-sc
      (equal (rp-evl (attach-sc term sc-type sc-term) a)
             (rp-evl term a))
      :flag attach-sc)
    (defthm rp-evl-lst-of-attach-sc-lst
      (equal (rp-evl-lst (attach-sc-lst lst sc-type sc-term) a)
             (rp-evl-lst lst a))
      :flag attach-sc-lst)
    :otf-flg t
    :hints (("Goal"
             :in-theory (e/d (rp-evl-of-fncall-args) ()))))

  (local
   (defthm is-rp-is-if-lemma1
     (implies (is-rp x)
              (not (is-if x)))
     :hints (("Goal"
              :in-theory (e/d (is-if is-rp) ())))))

  (local
   (defthm lemma1
     (IMPLIES (AND
               (NOT (CONSP SC-TERM))
               (not (equal sc-type 'list))
               (IS-RP (LIST 'RP
                            (LIST 'QUOTE SC-TYPE)
                            SC-TERM))
               (RP-EVL (LIST SC-TYPE SC-TERM) A))
              (valid-sc-nt (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                           A))
     :hints (("Goal"
              :in-theory (e/d (IS-RP-IMPLIES-FC
                               ;; rp-evl-constraint-0
                               CONTEXT-FROM-RP
                               eval-and-all-nt
                               ex-from-rp
                               is-rp
                               is-if)
                              (VALID-SC-EX-FROM-RP-2))))))

  (local
   (defthm lemma1-v2
     (IMPLIES (AND
               (NOT (CONSP SC-TERM))
               (not (equal sc-type 'list))
               (IS-RP (LIST 'RP
                            (LIST 'QUOTE SC-TYPE)
                            SC-TERM))
               (RP-EVLt (LIST SC-TYPE SC-TERM) A))
              (valid-sc (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                        A))
     :hints (("Goal"
              :in-theory (e/d (IS-RP-IMPLIES-FC
                               ;; rp-evl-constraint-0
                               CONTEXT-FROM-RP
                               eval-and-all-nt
                               ex-from-rp
                               is-rp
                               is-if)
                              (VALID-SC-EX-FROM-RP-2))))))

  (local
   (defthm is-if-lemma1
     (not (is-if (cons 'rp rest)))
     :hints (("Goal"
              :in-theory (e/d (is-if) ())))))

  (local
   (defthm is-rp-lemma2
     (implies (IS-RP (LIST 'RP
                           (LIST 'QUOTE SC-TYPE)
                           term1))
              (IS-RP (LIST 'RP
                           (LIST 'QUOTE SC-TYPE)
                           term2)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm ex-from-rp-lemma100
     (implies (and (rp-termp term)
                   (not (is-rp term)))
              (equal (ex-from-rp (cons (car term) rest))
                     (cons (car term) rest)))
     :hints (("Goal"
              :in-theory (e/d (ex-from-rp
                               is-rp) ())))))

  (local
   (defthm context-from-rp-lemma1
     (implies (and (rp-termp term)
                   (not (is-rp term)))
              (equal (context-from-rp (cons (car term) rest) context)
                     context))
     :hints (("Goal"
              :in-theory (e/d (context-from-rp
                               is-rp) ())))))
  (local
   (defthm lemma10
     (implies (and (rp-termp term)
                   (not (is-rp term)))
              (not (equal (car term) 'rp)))))

  (local
   (defthm lemma11
     (and (implies (not (is-if term))
                   (not (IS-IF (CONS (CAR TERM)
                                     (ATTACH-SC-LST (CDR TERM)
                                                    SC-TYPE SC-TERM)))))
          (implies (and (not (is-rp term))
                        (rp-termp term))
                   (not (IS-rp (CONS (CAR TERM)
                                     (ATTACH-SC-LST (CDR TERM)
                                                    SC-TYPE SC-TERM))))))
     :hints (("Goal"
              :expand ((ATTACH-SC-LST (CDR TERM)
                                      SC-TYPE SC-TERM)
                       (ATTACH-SC-LST (CDDR TERM)
                                      SC-TYPE SC-TERM)
                       (ATTACH-SC-LST (CDDDDR TERM)
                                      SC-TYPE SC-TERM)
                       (ATTACH-SC-LST (CDDdR TERM)
                                      SC-TYPE SC-TERM))
              :in-theory (e/d (is-if is-rp) ())))))

  (local
   (defthm lemma12
     (implies (IS-RP (LIST 'RP
                           (LIST 'QUOTE SC-TYPE)
                           SC-TERM))
              (AND (SYMBOLP SC-TYPE)
                   (NOT (BOOLEANP SC-TYPE))
                   (NOT (EQUAL SC-TYPE 'QUOTE))
                   (NOT (EQUAL SC-TYPE 'falist))
                   (NOT (EQUAL SC-TYPE 'RP))))
     :rule-classes :forward-chaining
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm lemma13
     (implies (and (eval-and-all-nt (context-from-rp term nil)
                                    a)
                   (is-rp term))
              (eval-and-all-nt (context-from-rp (caddr term) nil)
                               a))
     :hints (("goal"
              :in-theory (e/d (is-rp
                               context-from-rp)
                              (ex-from-rp-lemma1))))))

  (local
   (defthm lemma13-v2
     (implies (and (eval-and-all (context-from-rp term nil)
                                 a)
                   (is-rp term))
              (eval-and-all (context-from-rp (caddr term) nil)
                            a))
     :hints (("goal"
              :in-theory (e/d (is-rp
                               context-from-rp)
                              (ex-from-rp-lemma1))))))

  (defthm valid-sc-nt-cadddr
    (IMPLIES (AND
              (CONSP term)
              (Not (EQUAL (CAR term) 'if))
              (Not (EQUAL (CAR term) 'rp))
              (Not (EQUAL (CAR term) 'quote))
              (CONSP (CDR term))
              (CONSP (CDdR term))
              (CONSP (CDddR term))
              (VALID-SC-nt TERM A))
             (VALID-SC-nt (CAdDdR term) A))
    :hints (("Goal"
             :do-not-induct t
             :expand ((VALID-SC-nt TERM A))
             :in-theory (e/d (is-if
                              is-rp)
                             ((:REWRITE LEMMA10)
                              (:DEFINITION RP-TERMP)
                              (:DEFINITION INCLUDE-FNC)
                              (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC-NT))))))
  (local
   (defthm lemma14-v2
     (implies (and (valid-sc term a)
                   (consp term)
                   (rp-termp term)
                   (not (eq (car term) 'quote))
                   (not (is-if term)))
              (valid-sc-subterms (cdr term) a))
     :hints (("goal"
              :do-not-induct t
              :expand (VALID-SC TERM A)
              :cases ((is-rp term))
              :in-theory (e/d (is-rp
                               valid-sc-single-step)
                              (ex-from-rp-lemma1
                               rp-termp))))))

  (local
   (defthm lemma14
     (implies (and (valid-sc-nt term a)
                   (consp term)
                   (rp-termp term)
                   (not (eq (car term) 'quote))
                   (not (is-if term)))
              (valid-sc-nt-subterms (cdr term) a))
     :hints (("goal"
              :do-not-induct t
              :cases ((is-rp term))
              :expand (VALID-SC-NT TERM A)
              :in-theory (e/d (is-rp
                               valid-sc-nt-single-step)
                              (EX-FROM-RP-LEMMA1))))))

  

  #|(local
  (defthm lemma15
  (implies (and (RP-SYNTAXP TERM)
  (NOT (EQUAL (CAR TERM) 'QUOTE)))
  (RP-SYNTAXP-LST (CDR TERM)))
  :hints (("Goal"
  :cases ((is-rp term))
  :in-theory (e/d (is-rp) ())))))||#

  (local
   (defthm lemma16
     (implies (valid-sc-nt term a)
              (valid-sc-nt (EX-FROM-RP TERM) A))
     :rule-classes :forward-chaining
     :hints (("Goal"
              :in-theory (e/d (VALID-SC-EX-FROM-RP-2) ())))))

  (local
   (defthm lemma16-v2
     (implies (valid-sc term a)
              (valid-sc (EX-FROM-RP TERM) A))
     :rule-classes :forward-chaining
     :hints (("Goal"
              :in-theory (e/d (VALID-SC-EX-FROM-RP-2) ())))))

  (local
   (defthm is-rp-implies-lemma
     (implies (IS-RP (LIST 'RP
                           (LIST 'QUOTE SC-TYPE)
                           SC-TERM))
              (not (equal sc-type 'list)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm is-rp-of-if
     (not (is-rp (cons 'if x)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm is-rp-of-rp
     (NOT (IS-RP (LIST 'RP
                       (LIST 'RP
                             x
                             y)
                       z)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm lemma17
     (implies (and (eval-and-all-nt (context-from-rp term nil) a)
                   (rp-termp term)
                   (not (is-rp sc-term))
                   (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM))
                   (rp-evl `(,sc-type ,sc-term) a))
              (eval-and-all-nt (context-from-rp (attach-sc term sc-type sc-term)
                                                nil)
                               a))
     :hints (("Goal"
              :expand ((ATTACH-SC SC-TERM SC-TYPE SC-TERM)
                       (ATTACH-SC TERM SC-TYPE SC-TERM)

                       )
              :cases ((equal term sc-term)
                      (is-rp term)
                      (consp term))
              :in-theory (e/d (eval-and-all-nt
                               rp-evl-of-fncall-args
                               is-rp-implies
                               is-rp-implies-fc
                               attach-sc
                               context-from-rp)
                              (
                               EX-FROM-RP-LEMMA1
                               include-fnc))))))
  (local
   (defthm lemma18
     (IMPLIES (AND (ACL2::FLAG-IS 'ATTACH-SC)
                   (CONSP TERM)
                   (case-split (is-rp term))
                   (NOT (EQUAL (CAR TERM) 'quote))
                   (not (EQUAL TERM SC-TERM))
                   (valid-sc-nt-subterms (ATTACH-SC-LST (CDR TERM)
                                                        SC-TYPE SC-TERM)
                                         A)
                   (valid-sc-nt TERM A)
                   (not (is-rp sc-term))
                   (rp-termp TERM)
;   (NOT (EQUAL (CAR TERM) 'IF))
;  (NOT (INCLUDE-FNC-SUBTERMS (CDR TERM) 'IF))
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE SC-TYPE)
                                SC-TERM))
                   (RP-EVL (LIST SC-TYPE SC-TERM) A))
              (valid-sc-nt (CONS (CAR TERM)
                                 (ATTACH-SC-LST (CDR TERM)
                                                SC-TYPE SC-TERM))
                           A))
;:otf-flg t
     :hints (("Goal"
              :expand ((valid-sc-nt TERM A)
                       (ATTACH-SC-LST (CDDR TERM)
                                      SC-TYPE SC-TERM)
                       (ATTACH-SC-LST (CDR TERM)
                                      SC-TYPE SC-TERM)
                       (EX-FROM-RP (LIST 'RP
                                         (CADR TERM)
                                         (ATTACH-SC (CADDR TERM)
                                                    SC-TYPE SC-TERM)))
                       (valid-sc-nt (LIST 'RP
                                          (CADR TERM)
                                          (ATTACH-SC (CADDR TERM)
                                                     SC-TYPE SC-TERM))
                                    A))
              :in-theory (e/d (IS-RP-IMPLIES-FC
                               is-if
                               ;;is-rp
                               eval-and-all-nt
                               rp-evl-of-fncall-args
                               RP-EVL-lst-of-cons
                               CONTEXT-FROM-RP)
                              (VALID-SC-EX-FROM-RP-2
                               EX-FROM-RP-LEMMA1
                               valid-sc-nt))))))

  (local
   (defthm lemma19
     (IMPLIES (AND
               (CONSP SC-TERM)
;(case-split (NOT (EQUAL (CAR SC-TERM) 'QUOTE)))
               (valid-sc-nt-subterms (ATTACH-SC-LST (CDR SC-TERM)
                                                    SC-TYPE SC-TERM)
                                     A)
               (valid-sc-nt SC-TERM A)
               (rp-termp SC-TERM)
;   (NOT (EQUAL (CAR SC-TERM) 'IF))
;   (NOT (INCLUDE-FNC-SUBTERMS (CDR SC-TERM)
;                             'IF))
               (case-split (is-rp sc-term))
               (not (is-rp sc-term))
               (IS-RP (LIST 'RP
                            (LIST 'QUOTE SC-TYPE)
                            SC-TERM))
               (RP-EVL (LIST SC-TYPE SC-TERM) A))
              (valid-sc-nt (LIST 'RP
                                 (LIST 'QUOTE SC-TYPE)
                                 (CONS (CAR SC-TERM)
                                       (ATTACH-SC-LST (CDR SC-TERM)
                                                      SC-TYPE SC-TERM)))
                           A))
     :hints (("Goal"
              :expand ((valid-sc-nt (LIST 'RP
                                          (LIST 'QUOTE SC-TYPE)
                                          (LIST 'RP
                                                (CADR SC-TERM)
                                                (ATTACH-SC (CADDR SC-TERM)
                                                           SC-TYPE SC-TERM)))
                                    A)

                       (ATTACH-SC-LST (CDR SC-TERM)
                                      SC-TYPE SC-TERM)
                       (valid-sc-nt (LIST 'RP
                                          (CADR SC-TERM)
                                          (ATTACH-SC (CADDR SC-TERM)
                                                     SC-TYPE SC-TERM))
                                    A)
                       (valid-sc-nt SC-TERM A)
                       (EX-FROM-RP (LIST 'RP
                                         (LIST 'QUOTE SC-TYPE)
                                         (LIST 'RP
                                               (CADR SC-TERM)
                                               (ATTACH-SC (CADDR SC-TERM)
                                                          SC-TYPE SC-TERM))))
                       (EX-FROM-RP (LIST 'RP
                                         (CADR SC-TERM)
                                         (ATTACH-SC (CADDR SC-TERM)
                                                    SC-TYPE SC-TERM))))
              :in-theory (e/d (IS-RP-IMPLIES-FC
                               is-if

                               eval-and-all-nt
                               rp-evl-of-fncall-args
                               RP-EVL-lst-of-cons
                               CONTEXT-FROM-RP)
                              (VALID-SC-EX-FROM-RP-2
                               EX-FROM-RP-LEMMA1
                               is-rp
                               valid-sc-nt))))))

  (local
   (defthm rp-evlt-lemma20
     (implies (and (equal (rp-evlt-lst lst1 a)
                          (rp-evlt-lst lst2 a))
                   (not (equal fn 'quote)))
              (equal (rp-evlt (cons fn lst1) a)
                     (rp-evlt (cons fn lst2) a)))
     :hints (("Goal"
              :expand ((RP-TRANS (CONS FN LST1))
                       (RP-TRANS (CONS FN LST2)))
              :in-theory (e/d (rp-evl-of-fncall-args) ())))))

  (local
   (defthm rp-evl-lemma20
     (implies (and (equal (rp-evl-lst lst1 a)
                          (rp-evl-lst lst2 a))
                   (not (equal fn 'quote))
                   )
              (equal (rp-evl (cons fn lst1) a)
                     (rp-evl (cons fn lst2) a)))
     :hints (("Goal"
              :expand ((RP-TRANS (CONS FN LST1))
                       (RP-TRANS (CONS FN LST2)))
              :in-theory (e/d (rp-evl-of-fncall-args) ())))))

  (local
   (defthm lemma20
     (IMPLIES (AND
               (CONSP SC-TERM)
               (case-split (NOT (EQUAL (CAR SC-TERM) 'QUOTE)))
               (valid-sc-nt-subterms (ATTACH-SC-LST (CDR SC-TERM)
                                                    SC-TYPE SC-TERM)
                                     A)
               (valid-sc-nt SC-TERM A)
               (rp-termp SC-TERM)
               (case-split (NOT (is-if sc-term)))
; (NOT (INCLUDE-FNC-SUBTERMS (CDR SC-TERM)
;                           'IF))
               (not (is-rp sc-term))
               (IS-RP (LIST 'RP
                            (LIST 'QUOTE SC-TYPE)
                            SC-TERM))
               (RP-EVL (LIST SC-TYPE SC-TERM) A))
              (valid-sc-nt (LIST 'RP
                                 (LIST 'QUOTE SC-TYPE)
                                 (CONS (CAR SC-TERM)
                                       (ATTACH-SC-LST (CDR SC-TERM)
                                                      SC-TYPE SC-TERM)))
                           A))
     :hints (("Goal"
              :expand ((valid-sc-nt (LIST 'RP
                                          (LIST 'QUOTE SC-TYPE)
                                          (CONS (CAR SC-TERM)
                                                (ATTACH-SC-LST (CDR SC-TERM)
                                                               SC-TYPE SC-TERM)))
                                    A)
                       (valid-sc-nt (CONS (CAR SC-TERM)
                                          (ATTACH-SC-LST (CDR SC-TERM)
                                                         SC-TYPE SC-TERM))
                                    A)
                       (VALID-SC-NT (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                                    A)
                       (EX-FROM-RP (LIST 'RP
                                         (LIST 'QUOTE SC-TYPE)
                                         SC-TERM))
                       (EX-FROM-RP (LIST 'RP
                                         (LIST 'QUOTE SC-TYPE)
                                         (CONS (CAR SC-TERM)
                                               (ATTACH-SC-LST (CDR SC-TERM)
                                                              SC-TYPE
                                                              SC-TERM)))))
              :cases ((EQUAL (CAR SC-TERM) 'QUOTE))
              :use ((:instance rp-evl-lemma20
                               (fn (CAR SC-TERM))
                               (lst1 (ATTACH-SC-LST (CDR SC-TERM)
                                                    SC-TYPE SC-TERM))
                               (lst2 (cdr sc-term))))
              :in-theory (e/d (IS-RP-IMPLIES-FC
                               ;;is-if

                               eval-and-all-nt
                               rp-evl-of-fncall-args
                               RP-EVL-lst-of-cons
                               rp-evl-of-fncall-args
                               CONTEXT-FROM-RP)
                              (VALID-SC-EX-FROM-RP-2
                               EX-FROM-RP-LEMMA1
                               rp-evl-lemma20
                               rp-termp
                               is-rp
                               valid-sc-nt))))))

  #|(skip-proofs
  (local
  (defthm lemma20-v2
  (IMPLIES (AND
  (CONSP SC-TERM)
  (NOT (EQUAL (CAR SC-TERM) 'QUOTE))
  (valid-sc-subterms (ATTACH-SC-LST (CDR SC-TERM)
  SC-TYPE SC-TERM)
  A)
  (valid-sc SC-TERM A)
  (rp-termp SC-TERM)
  (NOT (EQUAL (CAR SC-TERM) 'IF))
; (NOT (INCLUDE-FNC-SUBTERMS (CDR SC-TERM) ; ; ; ; ; ; ;
;                           'IF)) ; ; ; ; ; ; ;
  (not (is-rp sc-term))
  (IS-RP (LIST 'RP
  (LIST 'QUOTE SC-TYPE)
  SC-TERM))
  (RP-EVLt (LIST SC-TYPE SC-TERM) A))
  (valid-sc (LIST 'RP
  (LIST 'QUOTE SC-TYPE)
  (CONS (CAR SC-TERM)
  (ATTACH-SC-LST (CDR SC-TERM)
  SC-TYPE SC-TERM)))
  A))
  :hints (("Goal"
  :expand ((valid-sc (LIST 'RP
  (LIST 'QUOTE SC-TYPE)
  (CONS (CAR SC-TERM)
  (ATTACH-SC-LST (CDR SC-TERM)
  SC-TYPE SC-TERM)))
  A)
  (valid-sc (CONS (CAR SC-TERM)
  (ATTACH-SC-LST (CDR SC-TERM)
  SC-TYPE SC-TERM))
  A)
  (EX-FROM-RP (LIST 'RP
  (LIST 'QUOTE SC-TYPE)
  (CONS (CAR SC-TERM)
  (ATTACH-SC-LST (CDR SC-TERM)
  SC-TYPE SC-TERM)))))
  :in-theory (e/d (IS-RP-IMPLIES-FC
  is-if

  eval-and-all-nt
  rp-evl-of-fncall-args
  RP-EVL-lst-of-cons
  CONTEXT-FROM-RP
  rp-evl-of-fncall-args)
  (VALID-SC-EX-FROM-RP-2
  EX-FROM-RP-LEMMA1
  is-rp
  valid-sc-nt)))))))||#

  (local
   (defthm lemma21
     (IMPLIES (AND (CONSP SC-TERM)
                   ;;(EQUAL (CAR SC-TERM) 'IF)
                   (valid-sc-nt SC-TERM A)
                   (rp-termp SC-TERM)
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE SC-TYPE)
                                SC-TERM))
                   (NOT (IS-RP SC-TERM))
                   (RP-EVL (LIST SC-TYPE SC-TERM) A))
              (valid-sc-nt (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                           A))
     :otf-flg t
     :hints (("Goal"
              :expand ((valid-sc-nt (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                                    A))
              :in-theory (e/d (CONTEXT-FROM-RP
                               EX-FROM-RP
                               )
                              (is-rp IS-IF-LEMMA1
                                     IS-RP-LEMMA2
                                     VALID-SC-EX-FROM-RP-2
                                     ))))))

  (local
   (defthm lemma21-v2
     (IMPLIES (AND (CONSP SC-TERM)
                   ;;(EQUAL (CAR SC-TERM) 'IF)
                   (valid-sc SC-TERM A)
                   (rp-termp SC-TERM)
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE SC-TYPE)
                                SC-TERM))
                   (NOT (IS-RP SC-TERM))
                   (RP-EVLt (LIST SC-TYPE SC-TERM) A))
              (valid-sc (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                        A))
     :otf-flg t
     :hints (("Goal"
              :expand ((valid-sc (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)
                                 A))
              :in-theory (e/d (CONTEXT-FROM-RP
                               EX-FROM-RP
                               )
                              (is-rp IS-IF-LEMMA1
                                     IS-RP-LEMMA2
                                     VALID-SC-EX-FROM-RP-2
                                     ))))))

  (local
   (defthm is-rp-lemma-18
     (implies (IS-RP TERM)
              (is-rp (LIST 'RP
                           (CADR TERM)
                           other)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm lemma18-v2
     (IMPLIES (AND (CONSP TERM)
                   (NOT (EQUAL (CAR TERM) 'QUOTE))
                   (case-split (NOT (is-if term)))
                   (NOT (EQUAL TERM SC-TERM))
                   (VALID-SC-SUBTERMS (ATTACH-SC-LST (CDR TERM)
                                                     SC-TYPE SC-TERM)
                                      A)
                   (VALID-SC TERM A)
                   (RP-TERMP TERM)
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE SC-TYPE)
                                SC-TERM))
                   (NOT (IS-RP SC-TERM))
                   (RP-EVL (LIST SC-TYPE (RP-TRANS SC-TERM))
                           A))
              (VALID-SC (CONS (CAR TERM)
                              (ATTACH-SC-LST (CDR TERM)
                                             SC-TYPE SC-TERM))
                        A))
     :otf-flg t
     :hints (("Goal"
              :do-not-induct t
              :cases ((is-rp term))
              :expand ((VALID-SC TERM A)
                       (VALID-SC (CONS (CAR TERM)
                                       (ATTACH-SC-LST (CDR TERM)
                                                      SC-TYPE SC-TERM))
                                 A)
                       (:free (x)
                              (valid-sc (cons 'equals x) a)))
              :in-theory (e/d (
                               valid-sc-single-step
                               is-rp-implies-fc
                               rp-evl-of-fncall-args)
                              (is-rp
                               is-if
                               rp-termp
                               ))))))

  (local
   (defthm lemma20-v2
     (IMPLIES (AND (CONSP SC-TERM)
                   (NOT (EQUAL (CAR SC-TERM) 'QUOTE))
; (NOT (EQUAL (CAR SC-TERM) 'IF))
                   (VALID-SC-SUBTERMS (ATTACH-SC-LST (CDR SC-TERM)
                                                     SC-TYPE SC-TERM)
                                      A)
                   (VALID-SC-SUBTERMS (CDR SC-TERM) A)
                   (RP-TERMP SC-TERM)
                   (case-split (NOT (is-if sc-term)))
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE SC-TYPE)
                                SC-TERM))
                   (NOT (IS-RP SC-TERM))
                   (RP-EVL (LIST SC-TYPE (RP-TRANS SC-TERM))
                           A))
              (VALID-SC (LIST 'RP
                              (LIST 'QUOTE SC-TYPE)
                              (CONS (CAR SC-TERM)
                                    (ATTACH-SC-LST (CDR SC-TERM)
                                                   SC-TYPE SC-TERM)))
                        A))
     :hints (("Goal"
              :do-not-induct t
               :expand ((VALID-SC (CONS (CAR SC-TERM)
                                       (ATTACH-SC-LST (CDR SC-TERM)
                                                      SC-TYPE SC-TERM))
                                 A)
                       (VALID-SC (CONS 'LIST
                                       (ATTACH-SC-LST (CDR SC-TERM)
                                                      SC-TYPE SC-TERM))
                                 A))
              :use ((:instance rp-evlt-lemma20
                               (fn (CAR SC-TERM))
                               (lst1 (cdr SC-TERM))
                               (lst2 (ATTACH-SC-LST (CDR SC-TERM)
                                                    SC-TYPE SC-TERM))))
              ;; :expand ((RP-TRANS (CONS (CAR SC-TERM)
              ;;                          (ATTACH-SC-LST (CDR SC-TERM)
              ;;                                         SC-TYPE SC-TERM))))
              :in-theory (e/d (valid-sc-single-step
                               rp-evl-of-fncall-args
                               )
                              (rp-evlt-lemma20
                               is-if))))))

  ;; (skip-proofs
  ;;  (local
  ;;   (defthm lemma22-lemma
  ;;     (implies (and (equal (len (cdr term)) (len sublist))
  ;;                   (is-if term)
  ;;                   (consp term))
  ;;              (is-if (CONS 'if sublist)))
  ;;     :rule-classes :forward-chaining
  ;;     :hints (("Goal"
  ;;              :do-not-induct t
  ;;              :in-theory (e/d (is-if) ()))))))

  ;; (local
  ;;  (defthm lemma22
  ;;    (implies (and (rp-termp term)
  ;;                  ;(rp-term-listp sublist)
  ;;                  (if (rp-evl (car sublist) a)
  ;;                      (valid-sc-nt (cadr sublist) a)
  ;;                    (valid-sc-nt (caddr sublist) a))
  ;;                  (valid-sc-nt (car sublist) a)
  ;;                  (equal (rp-evl (cadr term) a)
  ;;                         (rp-evl (car sublist) a))
  ;;                  (consp term)
  ;;                  (case-split (is-if term))
  ;;                  (equal (len (cdr term)) (len sublist))
  ;;                  (valid-sc-nt term a))
  ;;             (VALID-SC-NT (CONS (CAR TERM) sublist)
  ;;                          A))
  ;;    :hints (("Goal"
  ;;             :do-not-induct t
  ;;             :expand ((VALID-SC-NT (CONS 'IF SUBLIST) A))
  ;;             :in-theory (e/d (VALID-SC-NT
  ;;                              is-rp)
  ;;                             (rp-termp
  ;;                              len
  ;;                              rp-term-listp))))))

  ;; (local
  ;;  (defthm lemma23
  ;;    (EQUAL (LEN (ATTACH-SC-LST subterms
  ;;                               SC-TYPE SC-TERM))
  ;;           (LEN subterms))
  ;;    :hints (("Goal"
  ;;             :induct (LEN subterms)
  ;;             :do-not-induct t
  ;;             :in-theory (e/d (ATTACH-SC-LST) ())))))

  #|(local
  (defthm-attach-sc
  (defthm valid-sc-nt-attach-sc-when-quoted
  (implies (and (valid-sc-nt term a)
  (rp-termp term)
  (quotep sc-term)
  (is-rp (list 'rp (list 'quote sc-type) sc-term))
  (not (is-rp sc-term))
  (rp-evl `(,sc-type ,sc-term) a))
  (valid-sc-nt (attach-sc term sc-type sc-term) a))
  :flag attach-sc)

  (defthm valid-sc-nt-subterms-attach-sc-lst
  (implies (and (valid-sc-nt-subterms lst a)
  (NOT (EQUAL (CAR SC-TERM) 'QUOTE))
  (rp-term-listp lst)
  (is-rp (list 'rp (list 'quote sc-type) sc-term))
  (not (is-rp sc-term))
  (rp-evl `(,sc-type ,sc-term) a))
  (valid-sc-nt-subterms (attach-sc-lst lst sc-type sc-term) a))
  :flag attach-sc-lst)
  :hints (("goal"
  ;;:cases ((is-rp term))
  :in-theory (e/d (is-rp-implies-fc
  is-if
  ;;rp-evl-constraint-0
  eval-and-all-nt
  context-from-rp
  valid-sc-nt-single-step)
  (valid-sc-ex-from-rp-2
  (:rewrite lemma10)
  (:definition falist-consistent)
  (:rewrite measure-lemma1)
  (:rewrite measure-lemma1-2)
  (:rewrite default-cdr)
  (:rewrite default-car)
  rp-evl-lst-of-cons))))))||#
  (local
   (defthm not-consp-implies-not-is-rp
     (implies (Not (consp x))
              (not (is-rp x)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm is-if-lemma
     (is-if (list 'if x y z))
     :hints (("Goal"
              :in-theory (e/d (is-if) ())))))

  (local
   (defthm rp-evl-lst-of-list
     (equal (rp-evl-lst (list x) a)
            (list (rp-evl x a)))))

  (local
   (defthm when-rp-termp-and-not-is-rp
     (implies (and (not (is-rp term))
                   (rp-termp term))
              (not (equal (car term) 'rp)))
     :rule-classes :forward-chaining))

  (defthm-attach-sc
    (defthm valid-sc-nt-attach-sc
      (implies (and (valid-sc-nt term a)
                    (NOT (quotep sc-term))
                    (rp-termp term)
;          (not (include-fnc term 'if)) ;; rhs should not have any if
                    (is-rp (list 'rp (list 'quote sc-type) sc-term))
                    (not (is-rp sc-term))
                    (rp-evl `(,sc-type ,sc-term) a))
               (valid-sc-nt (attach-sc term sc-type sc-term) a))
      :flag attach-sc)

    (defthm valid-sc-nt-subterms-attach-sc-lst
      (implies (and (valid-sc-nt-subterms lst a)
                    (NOT (quotep sc-term))
                    (NOT (EQUAL (CAR SC-TERM) 'QUOTE))
                    (rp-term-listp lst)
;         (not (include-fnc-subterms lst 'if))
                    (is-rp (list 'rp (list 'quote sc-type) sc-term))
                    (not (is-rp sc-term))
                    (rp-evl `(,sc-type ,sc-term) a))
               (valid-sc-nt-subterms (attach-sc-lst lst sc-type sc-term) a))
      :flag attach-sc-lst)
    :hints (("goal"
             ;;:cases ((is-rp term))
             :in-theory (e/d (is-rp-implies-fc
; is-if
                              ;;rp-evl-constraint-0
                              eval-and-all-nt
                              context-from-rp
                              valid-sc-nt-single-step)
                             (valid-sc-ex-from-rp-2
                              (:rewrite lemma10)
                              (:definition falist-consistent)
                              (:rewrite measure-lemma1)
                              (:rewrite measure-lemma1-2)
                              (:rewrite default-cdr)
                              (:rewrite default-car)
                              rp-evl-lst-of-cons)))))

  (local
   (defthm valid-sc-attach-sc-lemma
     (implies (and (is-rp term)
                   (consp other)
                   (not (cdr other)))
              (is-rp (list* 'rp (cadr term) other)))
     :hints (("Goal"
              :in-theory (e/d (is-rp) ())))))

  (defthm-attach-sc
    (defthm valid-sc-attach-sc
      (implies (and (valid-sc term a)
                    (rp-termp term)
                    (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM))
                    (not (is-rp sc-term))
                    (rp-evlt `(,sc-type ,sc-term) a))
               (valid-sc (attach-sc term sc-type sc-term) a))
      :flag attach-sc)

    (defthm valid-sc-subterms-attach-sc-lst
      (implies (and (valid-sc-subterms lst a)
                    (rp-term-listp lst)
                    (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM))
                    (not (is-rp sc-term))
                    (rp-evlt `(,sc-type ,sc-term) a))
               (valid-sc-subterms (attach-sc-lst lst sc-type sc-term) a))
      :flag attach-sc-lst)
    :otf-flg t
    :hints (
            ("Subgoal *1/3"
             :use ((:instance rp-evlt-lemma20
                              (fn (car sc-term))
                              (lst1 (cdr sc-term))
                              (lst2 (attach-sc-lst (cdr sc-term) sc-type sc-term)))))
            ("Goal"
             :do-not-induct t
             :expand ((IS-RP (LIST* (CAR TERM)
                            (ATTACH-SC (CADR TERM) SC-TYPE SC-TERM)
                            (CDDR TERM)))
                      (:free (x y z k) (is-rp (list* x y z k))) 
                      (VALID-SC TERM A)
                      (ATTACH-SC-LST (CDDDDR TERM)
                                           SC-TYPE SC-TERM)
                      (ATTACH-SC-LST (CDDDR TERM)
                                     SC-TYPE SC-TERM)
                      (ATTACH-SC-LST (CDDR TERM)
                                     SC-TYPE SC-TERM)
                      (ATTACH-SC-LST (CDR TERM)
                                     SC-TYPE SC-TERM))
             ;;:cases ((Is-rp term))
             :in-theory (e/d (;;is-rp
                              IS-RP-IMPLIES-FC
                              ;;is-if
                              ;;rp-evl-constraint-0
                              eval-and-all
                              CONTEXT-FROM-RP
                              rp-trans
                              rp-evl-of-fncall-args
                              valid-sc-single-step)
                             (VALID-SC-EX-FROM-RP-2
                              RP-EVL-LEMMA20
                              rp-evlt-lemma20
                              NOT-INCLUDE-RP-MEANS-VALID-SC
                              not-include-rp-means-valid-sc-lst
                              RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT
                              RP-TERMP
                              (:REWRITE LEMMA10)
                              (:DEFINITION FALIST-CONSISTENT)
                              (:REWRITE MEASURE-LEMMA1)
                              (:REWRITE MEASURE-LEMMA1-2)
                              (:REWRITE DEFAULT-CDR)
                              (:REWRITE DEFAULT-CAR)
                              RP-EVL-lst-of-cons)))))

  )

(defthm-attach-sc
  (defthm not-include-ATTACH-SC
    (implies (and (not (include-fnc term fn))
                  (not (equal fn 'rp)))
             (not (include-fnc (attach-sc term sc-type sc-term)
                               fn)))
    :flag attach-sc)
  (defthm not-include-ATTACH-SC-lst
    (implies (and (not (include-fnc-subterms lst fn))
                  (not (equal fn 'rp)))
             (not (include-fnc-subterms
                   (attach-sc-lst lst sc-type sc-term) fn)))
    :flag attach-sc-lst))
#|
(defthm-attach-sc
  (defthm rp-syntaxp-attach-sc
    (implies (and (rp-syntaxp term)
                  (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)))
             (rp-syntaxp (attach-sc term sc-type sc-term)))
    :flag attach-sc)
  (defthm rp-syntaxp-lst-attach-sc-lst
    (implies (and (rp-syntaxp-lst lst)
                  (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)))
             (rp-syntaxp-lst (attach-sc-lst lst sc-type sc-term)))
    :flag attach-sc-lst)
  :hints (("Goal"
           :expand  ((ATTACH-SC-LST (CDR TERM)
                                    SC-TYPE SC-TERM)
                     (ATTACH-SC SC-TERM SC-TYPE SC-TERM)
                     (ATTACH-SC TERM SC-TYPE SC-TERM)
                     (ATTACH-SC-LST (CDR SC-TERM)
                                    SC-TYPE SC-TERM)
                     (ATTACH-SC-LST (CDDR SC-TERM)
                                    SC-TYPE SC-TERM)
                     (ATTACH-SC-LST (CDDR TERM)
                                    SC-TYPE SC-TERM))
           :in-theory (e/d (is-rp) ()))))||#

(defthm dummy-is-rp-lemma
  (implies (IS-RP (LIST 'RP (LIST 'QUOTE SC-TYPE) sc-term))
           (IS-RP (LIST 'RP (LIST 'QUOTE SC-TYPE) y)))
  :hints (("Goal"
           :in-theory (e/d (is-rp) ()))))

(defthm-rp-termp
  (defthm rp-termp-attach-sc
    (implies (and (rp-termp term)
                  (not (include-fnc term 'falist))
                  (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)))
             (rp-termp (attach-sc term sc-type sc-term)))
    :flag rp-termp)
  (defthm rp-term-listp-attach-sc-lst
    (implies (and (rp-term-listp lst)
                  (not (include-fnc-subterms lst 'falist))
                  (is-rp (LIST 'RP (LIST 'QUOTE SC-TYPE) SC-TERM)))
             (rp-term-listp (attach-sc-lst lst sc-type sc-term)))
    :flag rp-term-listp)
  :otf-flg t
  :hints (("Goal"
           :expand ((ATTACH-SC TERM SC-TYPE SC-TERM)
                    (ATTACH-SC-LST NIL SC-TYPE SC-TERM)
                    (ATTACH-SC SC-TERM SC-TYPE SC-TERM)
                    (ATTACH-SC-LST LST SC-TYPE SC-TERM))
           :in-theory (e/d (is-rp)
                           ((:REWRITE RP-TERMP-IMPLIES-CDR-LISTP)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:REWRITE DEFAULT-CDR)
                            (:REWRITE DEFAULT-CAR)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
;;                            (:REWRITE ACL2::O-P-O-INFP-CAR)
                            (:REWRITE IS-IF-RP-TERMP))))))

(make-flag get-vars1 :defthm-macro-name defthm-get-vars)

(defthm-get-vars
  (defthm get-vars1-attach-sc
    (equal (get-vars1 (attach-sc q sc-type sc-term) acc)
           (get-vars1 q acc))
    :flag get-vars1)
  (defthm get-vars1-attach-sc-lst
    (equal (get-vars-subterms (attach-sc-lst subterms sc-type sc-term) acc)
           (get-vars-subterms subterms acc))
    :flag get-vars-subterms)
  :hints (("Goal"
           :expand (ATTACH-SC Q SC-TYPE SC-TERM)
           :in-theory (e/d ()
                           ((:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            rp-termp
                            true-listp
                            rp-term-listp)))))

(encapsulate
  nil

  (defthm rp-evl-of-attach-sc-list-to-rhs
    (equal (rp-evl (attach-sc-list-to-rhs rhs sc-list) a)
           (rp-evl rhs a)))

  (local
   (defthm lemma1
     (implies (not (include-fnc-subterms sc-list 'rp))
              (not (include-fnc-subterms (cdr sc-list) 'RP)))
     :rule-classes :forward-chaining))

  (local
   (defthm lemma2
     (implies (eval-and-all-nt sc-list a)
              (eval-and-all-nt (cdr sc-list) a))
     :rule-classes :forward-chaining))

  (local
   (defthm lemma3
     (implies (and (NOT (INCLUDE-FNC-SUBTERMS SC-LIST 'RP))
                   (IS-RP (LIST 'RP
                                (LIST 'QUOTE (CAR (CAR SC-LIST)))
                                (CADR (CAR SC-LIST)))))
              (NOT (IS-RP (CADR (CAR SC-LIST)))))
     :hints (("Goal"
              :Expand ((INCLUDE-FNC-SUBTERMS SC-LIST 'RP))
              :in-theory (e/d (is-rp) ())))))

  (local
   (defthm lemma4
     (implies (AND (CONSP (CAR SC-LIST))
                   (eval-and-all-nt SC-LIST A)
                   (CONSP (CDR (CAR SC-LIST)))
                   (EQ (CDDR (CAR SC-LIST)) NIL))
              (RP-EVL (LIST (CAR (CAR SC-LIST))
                            (CADR (CAR SC-LIST)))
                      A))))

  (defthm valid-sc-of-attach-sc-list-to-rhs
    (implies (and (not (include-fnc-subterms sc-list 'rp))
                  (eval-and-all-nt sc-list a)
                  (rp-termp rhs)
                  (not (include-fnc rhs 'falist))
                  (valid-sc-nt rhs a))
             (valid-sc-nt (attach-sc-list-to-rhs rhs sc-list) a)))

  (defthm not-include-fnc-attach-sc-list-to-rhs
    (implies (and (not (include-fnc rhs fn))
                  (not (equal fn 'rp)))
             (not (include-fnc (attach-sc-list-to-rhs rhs sc-list)
                               fn))))

  (defthm rp-termp-attach-sc-list-to-rhs
    (implies (and (rp-termp rhs)
                  (not (include-fnc rhs 'falist)))
             (rp-termp (attach-sc-list-to-rhs rhs sc-list))))

  (defthm get-vars1-attach-sc-list-to-rhs
    (equal (get-vars1 (attach-sc-list-to-rhs rhs sc-list) acc)
           (get-vars1 rhs acc))))

(encapsulate
  nil
  (defthm not-include-fnc-subterms-if-to-and-list
    (implies (not (include-fnc term fn))
             (not (include-fnc-subterms (IF-TO-AND-LIST term) fn)))
    :hints (("Goal"
             :in-theory (e/d (if-to-and-list) ()))))

  (defthm eval-and-all-if-to-and-list
    (iff (eval-and-all-nt (if-to-and-list term) a)
         (rp-evl term a))
    :hints (("Goal"
             :in-theory (e/d (if-to-and-list) ()))))

  (defthm eval-and-all-if-to-and-list2
    (implies (rp-evl term a)
             (eval-and-all-nt (if-to-and-list term) a))
    :hints (("Goal"
             :in-theory (e/d (if-to-and-list) ()))))

  (defthm rp-evl-of-extract-from-force
    (and #|(iff (rp-evlt (extract-from-force term) a)
     (rp-evlt term a))||#
     (iff (rp-evl (extract-from-force term) a)
          (rp-evl term a)))
    :hints (("Goal"
             :do-not-induct t
             :induct (extract-from-force term)
             :expand ((:free (x y z)
                             (rp-trans `(IF ,X ,Y ,z)))
                      (:free (x)
                             (is-falist `(if . ,x))))
             :in-theory (e/d (extract-from-force)
                             (rp-termp
                              (:REWRITE EX-FROM-SYNP-LEMMA1)
;;                              (:REWRITE ACL2::O-P-O-INFP-CAR)
                              (:DEFINITION IS-SYNP$INLINE)
                              (:TYPE-PRESCRIPTION TRANS-LIST)
                              (:DEFINITION TRANS-LIST)
                              (:REWRITE RP-EVL-OF-FALIST-CALL)
                              (:DEFINITION IS-FALIST)
                              (:REWRITE
                               RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT)
                              (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                              (:DEFINITION RP-TRANS))))))

  (defthm rp-evl-lst-of-extract-from-force-lst
    (and #|(iff (rp-evlt (extract-from-force term) a)
     (rp-evlt term a))||#
     (iff (rp-evl-lst (extract-from-force-lst lst) a)
          (rp-evl-lst lst a)))
    :hints (("Goal"
             :do-not-induct t
             :induct (extract-from-force-lst lst)
             :expand ()
             :in-theory (e/d (extract-from-force-lst)
                             (rp-termp
                              (:REWRITE EX-FROM-SYNP-LEMMA1)
;;                              (:REWRITE ACL2::O-P-O-INFP-CAR)
                              (:DEFINITION IS-SYNP$INLINE)
                              (:TYPE-PRESCRIPTION TRANS-LIST)
                              (:DEFINITION TRANS-LIST)
                              (:REWRITE RP-EVL-OF-FALIST-CALL)
                              (:DEFINITION IS-FALIST)
                              (:REWRITE
                               RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT)
                              (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                              (:DEFINITION RP-TRANS))))))

  (defthm eval-and-all-of-extract-from-force-lst
    (and #|(iff (rp-evlt (extract-from-force term) a)
     (rp-evlt term a))||#
     (iff (eval-and-all-nt (extract-from-force-lst lst) a)
          (eval-and-all-nt lst a)))
    :hints (("Goal"
             :do-not-induct t
             :induct (extract-from-force-lst lst)
             :expand ()
             :in-theory (e/d (extract-from-force-lst)
                             (rp-termp
                              (:REWRITE EX-FROM-SYNP-LEMMA1)
;;                              (:REWRITE ACL2::O-P-O-INFP-CAR)
                              (:DEFINITION IS-SYNP$INLINE)
                              (:TYPE-PRESCRIPTION TRANS-LIST)
                              (:DEFINITION TRANS-LIST)
                              (:REWRITE RP-EVL-OF-FALIST-CALL)
                              (:DEFINITION IS-FALIST)
                              (:REWRITE
                               RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT)
                              (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                              (:DEFINITION RP-TRANS))))))

  (defthm not-include-fnc-extract-from-force
    (implies (not (include-fnc term fn))
             (not (include-fnc (extract-from-force term) fn)))
    :hints (("Goal"
             :in-theory (e/d (extract-from-force) ()))))

  (defthm not-include-fnc-subterms-extract-from-force
    (implies (not (include-fnc-subterms lst fn))
             (not (include-fnc-subterms (extract-from-force-lst lst) fn)))
    :hints (("Goal"
             :in-theory (e/d (extract-from-force-lst) ())))))

(local
 (encapsulate
   nil

   (local
    (in-theory (enable rule-syntaxp)))

   (defthm rule-sytanxp-attach-sc-to-rule
     (implies (AND (rule-syntaxp rule)
                   (rp-rule-rwp rule))
              (rule-syntaxp (attach-sc-to-rule rule sc-formula)))
     :hints (("Goal"
              :in-theory (e/d (NO-FREE-VARIABLEP) (get-vars1
                                                   RP-TERM-LISTP
                                                   IS-RP-PSEUDO-TERMP
                                                   RP-TERM-LISTP-IS-TRUE-LISTP
                                                   RP-TERMP-IMPLIES-CDR-LISTP
                                                   RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS
                                                   DEFAULT-CAR
                                                   NOT-INCLUDE-RP
                                                   DEFAULT-CDR
                                                   TRUE-LISTP
                                                   (:DEFINITION ALWAYS$)
                                                   (:DEFINITION SUBSETP-EQUAL)
                                                   (:DEFINITION MEMBER-EQUAL)
;;                                                   (:REWRITE ACL2::PLAIN-UQI-INTEGER-LISTP)
                                                   (:REWRITE ACL2::APPLY$-SYMBOL-ARITY-1)
                                                   (:DEFINITION ACL2::APPLY$-BADGEP)
                                                   (:REWRITE
                                                    ACL2::INTEGER-LISTP-IMPLIES-ALWAYS$-INTEGERP)
                                                   (:DEFINITION INTEGER-LISTP)
                                                   IS-IF-RP-TERMP)))))

   (local
    (defthm rule-syntaxp-implies-m
      (implies (and (rule-syntaxp rule)
                    (rp-rule-rwp rule))
               (AND (WEAK-CUSTOM-REWRITE-RULE-P RULE)
                    (rp-term-listp (RP-HYPm RULE))
                    (RP-TERMP (RP-LHSm RULE))
                    (RP-TERMP (RP-RHSm RULE))
                    (NOT (INCLUDE-FNC (RP-LHSm RULE) 'RP))
                    (NOT (include-fnc-subterms (RP-HYPm RULE) 'RP))
                    (rp-termp (RP-RHSm RULE))
                    (NOT (INCLUDE-FNC (RP-RHSm RULE) 'FALIST))
                    (NOT (include-fnc-subterms (RP-HYPm RULE) 'FALIST))
                    ;;(NOT (INCLUDE-FNC (RP-LHSm RULE) 'IF))
                    (NOT (INCLUDE-FNC (RP-LHSm RULE) 'SYNP))
                    #|(NO-FREE-VARIABLEP RULE)|#))
      :rule-classes :forward-chaining
      :hints (("Goal"
               :in-theory '(rule-syntaxp quotep
                                         rp-rule-rwp
                                         RP-HYP
                                         RP-LHS
                                         RP-RHS)))))

   (local
    (defthm rp-evl-and-eval-and-all
      (implies (and (subsetp x y)
                    (eval-and-all-nt y a))
               (eval-and-all-nt x a))
      :hints (("Goal"
               :in-theory (e/d ()
                               ((:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                                (:DEFINITION TRUE-LISTP)
;;                                (:REWRITE ACL2::PLAIN-UQI-TRUE-LIST-LISTP)
                                (:DEFINITION ALWAYS$)
                                (:REWRITE RP-TERMP-IMPLIES-CDR-LISTP)
                                (:DEFINITION RP-TERMP)
                                (:REWRITE
                                 ACL2::TRUE-LIST-LISTP-IMPLIES-ALWAYS$-TRUE-LISTP)
                                (:DEFINITION TRUE-LIST-LISTP)
                                (:DEFINITION FALIST-CONSISTENT)
                                (:DEFINITION FALIST-CONSISTENT-AUX)))))))

   (local
    (defthm rp-evl-and-subset-if-to-and-lists
      (implies (and (subsetp (if-to-and-list x)
                             (if-to-and-list y))
                    (rp-evl y a))
               (rp-evl x a))
      :hints (("Goal"
               :use ((:instance rp-evl-and-eval-and-all
                                (x (if-to-and-list x))
                                (y (if-to-and-list y))))
               :in-theory (e/d ()
                               (rp-evl-and-eval-and-all))))))

   (local
    (defthm rp-evl-and-subset-if-to-and-lists-2
      (implies (and (subsetp (if-to-and-list x)
                             y)
                    (eval-and-all-nt y a))
               (rp-evl x a))
      :hints (("Goal"
               :use ((:instance rp-evl-and-eval-and-all
                                (x (if-to-and-list x))
                                (y y)))
               :in-theory (e/d ()
                               (rp-evl-and-eval-and-all))))))

   (local
    (defthm rp-evl-and-subset-if-to-and-lists-EXTRACT-FROM-FORCE
      (implies (and (subsetp (if-to-and-list (EXTRACT-FROM-FORCE x))
                             (if-to-and-list (EXTRACT-FROM-FORCE y)))
                    (rp-evl y a))
               (rp-evl x a))
      :hints (("Goal"
               :use ((:instance rp-evl-and-eval-and-all
                                (x (if-to-and-list (EXTRACT-FROM-FORCE x)))
                                (y (if-to-and-list (EXTRACT-FROM-FORCE y)))))
               :in-theory (e/d ()
                               (rp-evl-and-eval-and-all))))))

   (local
    (defthm rp-evl-and-subset-if-to-and-lists-EXTRACT-FROM-FORCE-2
      (implies (and (subsetp (if-to-and-list (EXTRACT-FROM-FORCE x))
                             (extract-from-force-lst y))
                    (eval-and-all-nt y a))
               (rp-evl x a))
      :hints (("Goal"
               :use ((:instance rp-evl-and-subset-if-to-and-lists-2
                                (x (EXTRACT-FROM-FORCE x))
                                (y (extract-from-force-lst y))))
               :in-theory (e/d ()
                               (rp-evl-and-eval-and-all))))))

   (defthm valid-rulep-attach-sc-to-rule-lemma1
     (implies (and (valid-rulep-with-a rule a)
                   (rule-syntaxp rule)
                   (rp-rule-rwp rule)
                   (not (include-fnc sc-formula 'rp))
                   (rp-evl sc-formula a))
              (valid-rulep-with-a (attach-sc-to-rule rule sc-formula) a))
     :hints (("Goal"
              :in-theory (e/d (IF-TO-AND-LIST
                               not-include-rp-means-valid-sc
                               not-include-rp-means-valid-sc-nt
                               rule-syntaxp-implies
                               rule-syntaxp-implies-m
                               rule-syntaxp-implies-2
                               valid-sc-nt-is-valid-sc)
                              (rule-syntaxp
                               rp-rule-rwp
                               rp-rule-metap
                               (:REWRITE DEFAULT-CDR)
                               (:REWRITE EX-FROM-SYNP-LEMMA1)
                               IS-SYNP
                               (:DEFINITION RP-EQUAL)
                               (:REWRITE RP-EQUAL-IMPLIES-RP-EQUAL2)
                               (:TYPE-PRESCRIPTION INCLUDE-FNC)
                               EX-FROM-RP
                               (:REWRITE RP-EQUAL-IMPLIES-RP-EQUAL2)
                               (:DEFINITION RP-TERMP)
                               (:DEFINITION eval-and-all-nt)
                               get-vars1
                               (:DEFINITION SUBSETP-EQUAL)
;;                               (:REWRITE ACL2::PLAIN-UQI-TRUE-LIST-LISTP)
                               (:DEFINITION MEMBER-EQUAL)
                               (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
;;                               (:REWRITE ACL2::O-P-O-INFP-CAR)
                               (:DEFINITION TRUE-LISTP)
                               (:DEFINITION RP-TERM-LISTP)
                               (:REWRITE
                                ACL2::TRUE-LIST-LISTP-IMPLIES-ALWAYS$-TRUE-LISTP)
                               (:DEFINITION TRUE-LIST-LISTP)
                               (:REWRITE ACL2::APPLY$-SYMBOL-ARITY-1)
                               (:DEFINITION ACL2::APPLY$-BADGEP)
                               (:REWRITE ACL2::APPLY$-PRIMITIVE)
                               (:REWRITE EVL-OF-EXTRACT-FROM-RP-2)
                               (:REWRITE DEFAULT-CAR)
                               (:DEFINITION valid-sc-nt)
                               (:META ACL2::APPLY$-PRIM-META-FN-CORRECT))))))))

(local
 (defthm valid-rulep-attach-sc-to-rule
   (implies (and (valid-rulep rule)
                 (rule-syntaxp rule)
                 (rp-rule-rwp rule)
                 (not (include-fnc sc-formula 'rp))
                 (valid-formula-sk sc-formula))
            (valid-rulep (attach-sc-to-rule rule sc-formula)))
   :hints (("goal"
            :do-not-induct t
            :use ((:instance valid-rulep-sk-necc
                             (a (valid-rulep-sk-witness (attach-sc-to-rule rule
                                                                           sc-formula))))
                  (:instance valid-formula-sk-necc
                             (a (valid-rulep-sk-witness (attach-sc-to-rule rule
                                                                           sc-formula)))
                             (formula sc-formula)))
            :expand ((valid-rulep-sk (attach-sc-to-rule rule sc-formula)))
            :in-theory (e/d (valid-rulep)
                            (rule-syntaxp
                             valid-formula-sk-necc
                             valid-rulep-sk-necc
                             valid-formula-sk
                             valid-rulep-sk
                             attach-sc-to-rule
                             valid-rulep-sk-body))))))

(local
 (defthm RP-RULE-RWP-of-ATTACH-SC-TO-RULE
   (implies (rp-rule-rwp rule)
            (rp-rule-rwp (ATTACH-SC-TO-RULE rule sc-formula)))))

(local
 (encapsulate
   nil

   (local
    (defthm rule-syntaxp-update-rule-with-sc-aux
      (implies (and (rule-syntaxp rule))
               (rule-syntaxp (update-rule-with-sc-aux rule sc-rule-names state)))
      :hints (("Goal"
               :in-theory (e/d (update-rule-with-sc-aux)
                               (INCLUDE-FNC
                                rule-syntaxp))))))

   (local
    (defthm valid-formula-sk-of-meta-extract-formula
      (implies (rp-evl-meta-extract-global-facts :state state)
               (valid-formula-sk (meta-extract-formula name state)))))

   #|(skip-proofs (local ;; this is true and can be proved easily
   (defthm valid-formula-sk-beta-search-reduce
   (implies (and (pseudo-termp formula)
   (valid-formula-sk formula))
   (valid-formula-sk (beta-search-reduce formula limit)))
   :hints (("Goal"
   :in-theory (e/d (valid-formula-sk-necc) (valid-formula-sk)))))))||#

   (local
    (defthm valid-rulep-update-rule-with-sc-aux
      (implies (and (rule-syntaxp rule)
                    (rp-rule-rwp rule)
                    (rp-evl-meta-extract-global-facts :state state)
                    (valid-rulep rule))
               (valid-rulep (update-rule-with-sc-aux rule sc-rule-names state)))
      :hints (("Goal"
               :in-theory (e/d () (valid-rulep
                                   rp-rule-rwp
                                   attach-sc-to-rule
                                   rule-syntaxp))))))

   (defthm valid-rulep-update-rule-with-sc
     (implies (and (rule-syntaxp rule)
                   (rp-rule-rwp rule)
                   (rp-evl-meta-extract-global-facts :state state)
                   (valid-rulep rule))
              (valid-rulep (update-rule-with-sc rule sc-alist state)))
     :hints (("Goal"
              :in-theory (e/d () (valid-rulep
                                  rp-rule-rwp
                                  update-rule-with-sc-aux
                                  attach-sc-to-rule
                                  rule-syntaxp)))))))

(defthm VALID-RULEP-implies
  (implies (valid-rulep rule)
           (AND (RULE-SYNTAXP RULE)
                (VALID-RULEP-SK RULE)))
  :rule-classes :forward-chaining)

(defthm valid-rulep-update-rules-with-sc
  (implies (and (valid-rulesp rules)
                (rp-rule-rw-listp rules)
                (rp-evl-meta-extract-global-facts :state state))
           (valid-rulesp (update-rules-with-sc rules sc-alist state)))
  :hints (("Goal"
           ;; :use ((:instance valid-rulep-update-rule-with-sc
           ;;                  (rule (car rules))))
           :in-theory (e/d ()
                           (update-rule-with-sc
                            ;;(:e tau-system)
;valid-rulep-update-rule-with-sc
                            valid-rulep-sk
                            valid-rulep
                            valid-rulep-sk-body
                            rule-syntaxp)))))

(local
 (defthm append-valid-rulesp
   (implies (and (valid-rulesp rules1)
                 (valid-rulesp rules2))
            (valid-rulesp (append rules1 rules2)))
   :hints (("Goal"
            :in-theory (e/d ()
                            (rule-syntaxp
                             valid-rulep))))))

;; (progn
;;   (local
;;    (defthm valid-rulesp-try-to-add-rule-fnc-lemma-1
;;      (equal (valid-rulep-sk-body (change custom-rewrite-rule
;;                                          rule
;;                                          :rule-fnc x)
;;                                  a)
;;             (valid-rulep-sk-body rule a))))

;;   (local
;;    (defthm valid-rulesp-try-to-add-rule-fnc-lemma-2
;;      (implies (valid-rulep-sk rule)
;;               (valid-rulep-sk (change custom-rewrite-rule
;;                                       rule
;;                                       :rule-fnc x)))
;;      :otf-flg t
;;      :hints (("goal"
;;               :expand (valid-rulep-sk (list* (car rule)
;;                                              (cadr rule)
;;                                              x (cdddr rule)))
;;               :use ((:instance valid-rulep-sk-necc
;;                                (a (list* (car rule)
;;                                          (cadr rule)
;;                                          x (cdddr rule)))))
;;               :in-theory (e/d ()
;;                               (rule-syntaxp
;;                                valid-rulep-sk
;;                                valid-rulep-sk-body))))))

;;   (local
;;    (defthm valid-rulesp-try-to-add-rule-fnc-lemma-3
;;      (implies (valid-rulep rule)
;;               (valid-rulep (change custom-rewrite-rule
;;                                    rule
;;                                    :rule-fnc x)))
;;      :otf-flg t
;;      :hints (("goal"
;;               :in-theory (e/d (valid-rulep-sk-necc
;;                                NO-FREE-VARIABLEP
;;                                rule-syntaxp)
;;                               (valid-rulep-sk))))))

;;   (defthm valid-rulesp-try-to-add-rule-fnc
;;     (implies (valid-rulesp rules)
;;              (valid-rulesp (try-to-add-rule-fnc rules rule-fnc-alist)))
;;     :hints (("goal"
;;              :in-theory (e/d (try-to-add-rule-fnc
;;                               len)
;;                              (rule-syntaxp
;;                               weak-custom-rewrite-rule-p
;;                               valid-rulep
;;                               check-if-def-rule-should-be-saved
;;                               custom-rewrite-with-meta-extract
;;                               update-rules-with-sc))))))

(defthm RULE-SYNTAXP-of-make-custom-rule-for-meta
  (implies (meta-rune-p rune)
           (rule-syntaxp (make-custom-rule-for-meta rune)))
  :hints (("Goal"
           :in-theory (e/d (make-custom-rule-for-meta
                            RULE-SYNTAXP)
                           ()))))

(defthm rp-rule-rw-listp-of-FORMULAS-TO-RULES
  (RP-RULE-RW-LISTP (FORMULAS-TO-RULES RUNE RULE-NEW-SYNP WARNING FORMULAS))
  :hints (("Goal"
           :in-theory (e/d (FORMULAS-TO-RULES) ()))))

(DEFTHM RP-RULE-RW-LISTP-of-CUSTOM-REWRITE-WITH-META-EXTRACT
  (RP-RULE-RW-LISTP (CUSTOM-REWRITE-WITH-META-EXTRACT RULE-NAME RULE-NEW-SYNP
                                                      WARNING STATE))
  :hints (("Goal"
           :in-theory (e/d (CUSTOM-REWRITE-WITH-META-EXTRACT)
                           (RP-RULE-RW-LISTP)))))

(defthm VALID-RULEP-MAKE-CUSTOM-RULE-FOR-META
  (implies  (META-RUNE-P rune)
            (VALID-RULEP (MAKE-CUSTOM-RULE-FOR-META rune)))
  :hints (("Goal"
           :in-theory (e/d (VALID-RULEP
                            META-RUNE-P
                            RULE-SYNTAXP
                            MAKE-CUSTOM-RULE-FOR-META) ()))))

(defthm valid-rulesp-get-rules
  (implies (rp-evl-meta-extract-global-facts :state state)
           (valid-rulesp (get-rule-list runes sc-alist new-synps warning
                                        state)))
  :hints (("Goal"
           :do-not-induct t
           :induct (get-rule-list runes sc-alist new-synps warning
                                  state)
           :expand ((:free (x y) (VALID-RULESP (cons x y))))
           :in-theory (e/d ()
                           (rule-syntaxp
                            RP-HYP$INLINE
                            RP-IFF-FLAG$INLINE
                            RP-LHS$INLINE
                            RP-RHS$INLINE
                            VALID-RULEP
                            VALID-RULESP
                            VALID-RULEP-SK-BODY
                            VALID-RULEP-SK
                            META-RUNE-P
                            WEAK-CUSTOM-REWRITE-RULE-P
                            ACL2::EQUAL-LEN-1
                            check-if-def-rule-should-be-saved
                            custom-rewrite-with-meta-extract
                            update-rules-with-sc)))))

#|(defun add-to-fast-alist (key val alist)
  (b* ((entry (hons-get key alist))
       ((when (atom entry))
        (hons-acons key (cons val nil) alist)))
    (hons-acons key (cons val (cdr entry)) alist)))||#

#|(defun rule-list-to-alist-aux (rules)
  (if (atom rules)
      nil
    (b* ((rule (car rules))
         (rune (rp-rune rule))
         (rule-name (case-match rune ((& name . &) name) (& rune)))
         (rest (rule-list-to-alist-aux (cdr rules))))
      (add-to-fast-alist rule-name rule rest))))||#
;;here
(defthm valid-rules-alistp-add-rule-to-alist
  (implies (and (valid-rules-alistp alist)
                (valid-rulep rule))
           (valid-rules-alistp (add-rule-to-alist alist rule)))
  :hints (("Goal"
           :in-theory (e/d ()
                           (rule-syntaxp
                            (:REWRITE VALID-RULES-SUBSETP)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
                            (:DEFINITION TRUE-LISTP)
                            (:DEFINITION RP-TERM-LISTP)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            valid-rulep)))))

(defthm to-fasts-alist-def
  (equal (to-fast-alist alist)
         alist))

(defthm valid-rules-alistp-rule-list-to-alist
  (implies (valid-rulesp rules)
           (valid-rules-alistp (rule-list-to-alist rules)))
  :hints (("Goal"
           :in-theory (e/d (rule-list-to-alist)
                           (add-rule-to-alist

                            valid-rulep)))))

(defthm valid-rules-alistp-get-rules
  (implies (rp-evl-meta-extract-global-facts :state state)
           (valid-rules-alistp (get-rules runes state :new-synps new-synps)))
  :hints (("Goal"
           :in-theory (e/d (get-rules)
                           (to-fast-alist
                            rule-list-to-alist
                            get-rule-list
                            table-alist)))))

(defthm symbol-listp-get-disabled-exc-rules-from-table
  (symbol-listp (get-disabled-exc-rules-from-table x))
  :hints (("Goal"
           :in-theory (e/d (get-disabled-exc-rules-from-table) ()))))

(defthm true-listp-get-enabled-rules-from-table-aux
  (b* (((mv rules-rw rules-rw-oi)
        (get-enabled-rules-from-table-aux rp-rules)))
    (and (true-listp rules-rw)
         (true-listp rules-rw-oi)))
  :hints (("Goal"
           :in-theory (e/d (get-enabled-rules-from-table-aux)
                           ((:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION TRUE-LISTP)
                            (:DEFINITION RP-TERM-LISTP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
                            (:REWRITE RP-TERMP-IMPLIES-CDR-LISTP)
                            (:DEFINITION RP-TERMP)
                            (:REWRITE DEFAULT-CDR)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION ACL2::APPLY$-BADGEP))))))

(defthm symbol-listp-get-enabled-rules-from-table
  (symbol-listp (mv-nth 2 (get-enabled-rules-from-table state :ruleset ruleset)))
  :otf-flg t
  :hints (("Goal"
           :in-theory (e/d (get-enabled-rules-from-table) ()))))

;; here prove that rp-state-init-rules returns valid-rp-statep and
;; valid-rp-state-syntaxp

;; Syntax check:

(in-theory (disable rules-alist-inside-out-put
                    rules-alist-outside-in-put
                    disabled-exc-rules-put

                    rules-alist-inside-out-get
                    rules-alist-outside-in-get
                    disabled-exc-rules-get

                    rules-alist-inside-out-boundp
                    rules-alist-outside-in-boundp
                    disabled-exc-rules-boundp

                    disabled-exc-rules-init
                    rules-alist-inside-out-init
                    rules-alist-outside-in-init
                    ))

(in-theory (disable RULES-ALIST-INSIDE-OUTP
                    RULES-ALIST-OUTSIDE-INP
                    DISABLED-EXC-RULESP

                    SHOW-USED-RULES-FLGP
                    COUNT-USED-RULES-FLGP
                    RULES-USEDP
                    RP-BRRP
                    RW-STACK-SIZEP
                    RW-STACKP
                    RULE-FRAME-CNTSP
                    RW-STEP-LIMITP
                    NOT-SIMPLIFIED-ACTIONP))

(defthm rp-statep-of-rp-state-functions
  (implies (and (rp-statep rp-state))
           (and (rp-statep (rules-alist-inside-out-put k v rp-state))
                (rp-statep (rules-alist-outside-in-put k v rp-state))
                (rp-statep (disabled-exc-rules-put k v rp-state))

                (rp-statep (disabled-exc-rules-init x y z rp-state))
                (rp-statep (rules-alist-inside-out-init x y z rp-state))
                (rp-statep (rules-alist-outside-in-init x y z rp-state))
                ))
  :hints (("Goal"
           :in-theory (e/d (rules-alist-inside-out-put
                            rules-alist-outside-in-put
                            disabled-exc-rules-init
                            rules-alist-inside-out-init
                            rules-alist-outside-in-init
                            rp-statep
                            disabled-exc-rules-put)
                           ()))))

(defthm rp-statep-of-rp-state-init-rules-aux
  (implies (rp-statep rp-state)
           (rp-statep (rp-state-init-rules-aux rules-alist flg rp-state)))
  :hints (("Goal"
           :in-theory (e/d (rp-state-init-rules-aux)
                           (RULES-ALIST-INSIDE-OUT-PUT
                            RULES-ALIST-OUTSIDE-IN-PUT)))))

(defthm rp-statep-of-rp-state-init-rules
  (implies (rp-statep rp-state)
           (and
            (rp-statep (rp-state-init-rules runes-inside-out
                                            runes-outside-in
                                            new-synps
                                            rp-state
                                            state
                                            :ruleset ruleset))))
  :hints (("Goal"
           :in-theory (e/d (rp-state-init-rules) ()))))

(defthm rp-state-put-and-get
  (implies (rp-statep rp-state)
           (and (equal (rules-alist-inside-out-get
                        K
                        (RULES-ALIST-INSIDE-OUT-PUT K V RP-STATE))
                       v)
                (equal (rules-alist-outside-in-get
                        K
                        (rules-alist-outside-in-put K V RP-STATE))
                       v)))
  :hints (("Goal"
           :in-theory (e/d (RULES-ALIST-INSIDE-OUT-PUT
                            rules-alist-inside-out-get
                            rules-alist-outside-in-put
                            rules-alist-outside-in-get
                            )
                           ()))))

(defthm rp-state-put-and-get-with-casesplit
  (implies
   (rp-statep rp-state)
   (and (equal (rules-alist-inside-out-get k1
                                           (rules-alist-inside-out-put k2 v rp-state))
               (if (equal k1 k2) v (rules-alist-inside-out-get k1 rp-state)))

        (equal (rules-alist-outside-in-get K1
                                           (rules-alist-outside-in-put K2 V
                                                                       RP-STATE))
               (if (equal k1 k2) v (rules-alist-outside-in-get k1 rp-state)))

        (equal (disabled-exc-rules-get K1
                                       (disabled-exc-rules-put k2 v
                                                               rp-state))
               (if (equal k1 k2) v (disabled-exc-rules-get k1 rp-state)))))
  :hints (("Goal"
           :in-theory (e/d (RULES-ALIST-INSIDE-OUT-PUT
                            rules-alist-inside-out-get
                            rules-alist-outside-in-put
                            rules-alist-outside-in-get
                            disabled-exc-rules-get
                            disabled-exc-rules-put)
                           ()))))

(defthm rp-state-put-and-get-cancel
  (implies (rp-statep rp-state)
           (and (equal (rules-alist-outside-in-get k1
                                                   (rules-alist-inside-out-put k2 v2
                                                                               rp-state))
                       (rules-alist-outside-in-get k1 rp-state))
                (equal (rules-alist-inside-out-get k1
                                                   (rules-alist-outside-in-put k2 v2
                                                                               rp-state))
                       (rules-alist-inside-out-get k1 rp-state))))
  :hints (("goal"
           :in-theory (e/d (rules-alist-inside-out-put
                            rules-alist-inside-out-get
                            rules-alist-outside-in-put
                            rules-alist-outside-in-get)
                           ()))))

(defthm valid-rp-statep-of-rp-state-functions
  (implies (and (valid-rp-statep rp-state))
           (and
            (implies (and (symbolp k)
                          (VALID-RULESP v))
                     (valid-rp-statep (rules-alist-inside-out-put k v rp-state)))
            (implies (and (symbolp k)
                          (VALID-RULESP v))
                     (valid-rp-statep (rules-alist-outside-in-put k v rp-state)))
            (valid-rp-statep (disabled-exc-rules-put k v rp-state))

            (valid-rp-statep (disabled-exc-rules-init x y z rp-state))
            (valid-rp-statep (rules-alist-inside-out-init x y z rp-state))
            (valid-rp-statep (rules-alist-outside-in-init x y z rp-state))
            ))
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (RULES-ALIST-INSIDE-OUT-PUT K V RP-STATE)))
                            )
                 (:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (RULES-ALIST-OUTSIDE-IN-PUT K V RP-STATE)))
                            )
                 (:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (DISABLED-EXC-RULES-PUT K V RP-STATE)))
                            )
                 (:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (disabled-exc-rules-init x y z rp-state)))
                            )
                 (:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (rules-alist-inside-out-init x y z rp-state)))
                            )
                 (:instance valid-rp-statep-necc
                            (key (valid-rp-statep-WITNESS
                                  (rules-alist-outside-in-init x y z rp-state)))
                            ))
           :in-theory (e/d (valid-rp-state-syntaxp
                            valid-rp-statep
                            rules-alist-inside-out-put
                            rules-alist-inside-out-get
                            rules-alist-outside-in-put
                            rules-alist-outside-in-get
                            disabled-exc-rules-get
                            disabled-exc-rules-put
                            disabled-exc-rules-init
                            rules-alist-inside-out-init
                            rules-alist-outside-in-init
                            rp-statep)
                           (;;valid-rp-statep
                            (:DEFINITION UPDATE-NTH)
                            (:REWRITE VALID-RULES-SUBSETP)
                            (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL)
                            (:TYPE-PRESCRIPTION VALID-RULESP)
                            (:TYPE-PRESCRIPTION TRUE-LISTP)
;;                            (:REWRITE
;;                             ACL2::TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP)
                            (:REWRITE DEFAULT-CAR)
;;                            (:REWRITE ACL2::O-P-O-INFP-CAR)
                            (:TYPE-PRESCRIPTION O-P)
                            (:REWRITE ACL2::NTH-WHEN-PREFIXP)
;;                            (:REWRITE ACL2::O-P-DEF-O-FINP-1)
                            (:REWRITE DEFAULT-CDR)
                            (:TYPE-PRESCRIPTION SHOW-USED-RULES-FLGP)
                            (:TYPE-PRESCRIPTION RULE-LIST-SYNTAXP)
                            (:TYPE-PRESCRIPTION RW-STACK-SIZEP)
                            (:TYPE-PRESCRIPTION RULES-USEDP)
                            (:TYPE-PRESCRIPTION RULE-FRAME-CNTSP)
                            (:TYPE-PRESCRIPTION RP-BRRP)

                            (:TYPE-PRESCRIPTION RW-STACKP)
                            (:TYPE-PRESCRIPTION
                             valid-rp-statep)
                            (:TYPE-PRESCRIPTION RW-STEP-LIMITP)
                            ;;(:DEFINITION HONS-ASSOC-EQUAL)
                            ;;(:DEFINITION LENGTH)
                            ;;(:DEFINITION NOT)
                            (:DEFINITION NTH)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION RP-TERM-LISTP)
                            (:DEFINITION TRUE-LISTP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
                            (:REWRITE
                             VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION VALID-RULEP)
                            (:DEFINITION VALID-RULEP-SK)
                            (:DEFINITION VALID-RULEP-SK-BODY)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION VALID-SC-NT)
                            (:DEFINITION RULE-LIST-SYNTAXP)
                            (:DEFINITION RP-TERMP)
                            (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC-NT))))))

(defthm valid-rp-state-syntaxp-of-rp-state-functions
  (implies (and (VALID-RP-STATE-SYNTAXP rp-state))
           (and
            (implies (and (symbolp k)
                          (rule-list-syntaxp v))
                     (valid-rp-state-syntaxp (rules-alist-inside-out-put k v rp-state)))
            (implies (and (symbolp k)
                          (rule-list-syntaxp v))
                     (valid-rp-state-syntaxp (rules-alist-outside-in-put k v rp-state)))
            (valid-rp-state-syntaxp (disabled-exc-rules-put k v rp-state))

            (valid-rp-state-syntaxp (disabled-exc-rules-init x y z rp-state))
            (valid-rp-state-syntaxp (rules-alist-inside-out-init x y z rp-state))
            (valid-rp-state-syntaxp (rules-alist-outside-in-init x y z rp-state))
            ))
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (RULES-ALIST-INSIDE-OUT-PUT K V RP-STATE)))
                            )
                 (:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (RULES-ALIST-OUTSIDE-IN-PUT K V RP-STATE)))
                            )
                 (:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (DISABLED-EXC-RULES-PUT K V RP-STATE)))
                            )
                 (:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (disabled-exc-rules-init x y z rp-state)))
                            )
                 (:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (rules-alist-inside-out-init x y z rp-state)))
                            )
                 (:instance VALID-RP-STATE-SYNTAXP-AUX-necc
                            (key (VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                  (rules-alist-outside-in-init x y z rp-state)))
                            ))
           :in-theory (e/d (VALID-RP-STATE-SYNTAXP
                            VALID-RP-STATE-SYNTAXP-AUX

                            RULES-ALIST-INSIDE-OUT-PUT
                            rules-alist-inside-out-get
                            rules-alist-outside-in-put
                            rules-alist-outside-in-get
                            disabled-exc-rules-get
                            disabled-exc-rules-put
                            disabled-exc-rules-init
                            rules-alist-inside-out-init
                            rules-alist-outside-in-init
                            rp-statep

                            )
                           (;;VALID-RP-STATE-SYNTAXP-AUX
                            (:DEFINITION UPDATE-NTH)
                            (:REWRITE DEFAULT-CDR)
                            (:TYPE-PRESCRIPTION SHOW-USED-RULES-FLGP)
                            (:TYPE-PRESCRIPTION RULE-LIST-SYNTAXP)
                            (:TYPE-PRESCRIPTION RW-STACK-SIZEP)
                            (:TYPE-PRESCRIPTION RULES-USEDP)
                            (:TYPE-PRESCRIPTION RULE-FRAME-CNTSP)
                            (:TYPE-PRESCRIPTION RP-BRRP)

                            (:TYPE-PRESCRIPTION RW-STACKP)
                            (:TYPE-PRESCRIPTION
                             VALID-RP-STATE-SYNTAXP-AUX)
                            (:TYPE-PRESCRIPTION RW-STEP-LIMITP)
                            ;;(:DEFINITION HONS-ASSOC-EQUAL)
                            ;;(:DEFINITION LENGTH)
                            ;;(:DEFINITION NOT)
                            (:DEFINITION NTH)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION RP-TERM-LISTP)
                            (:DEFINITION TRUE-LISTP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
                            (:REWRITE
                             VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION VALID-RULEP)
                            (:DEFINITION VALID-RULEP-SK)
                            (:DEFINITION VALID-RULEP-SK-BODY)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION VALID-SC-NT)
                            (:DEFINITION RULE-LIST-SYNTAXP)
                            (:DEFINITION RP-TERMP)
                            ;;(:TYPE-PRESCRIPTION RP-STATEP)
                            (:TYPE-PRESCRIPTION NOT-SIMPLIFIED-ACTIONP)
                            (:TYPE-PRESCRIPTION COUNT-USED-RULES-FLGP)
                            (:TYPE-PRESCRIPTION O<)
                            (:REWRITE ACL2::NTH-WHEN-PREFIXP)
                            (:REWRITE DEFAULT-CAR)
                            ;;(:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH)
                            (:REWRITE NOT-INCLUDE-RP-MEANS-VALID-SC-NT))))))

(defthm valid-rp-statep-after-init
  (implies (rp-statep rp-state)
           (and (valid-rp-statep
                 (rules-alist-inside-out-init
                  x y z
                  (rules-alist-outside-in-init x2 y2 z2 rp-state)))

                (valid-rp-statep
                 (rules-alist-outside-in-init
                  x y z
                  (rules-alist-inside-out-init x2 y2 z2 rp-state)))
                (valid-rp-state-syntaxp
                 (rules-alist-inside-out-init
                  x y z
                  (rules-alist-outside-in-init x2 y2 z2 rp-state)))

                (valid-rp-state-syntaxp
                 (rules-alist-outside-in-init
                  x y z
                  (rules-alist-inside-out-init x2 y2 z2 rp-state)))
                ))
  :hints (("Goal"
           :expand ((UPDATE-NTH *RULES-ALIST-OUTSIDE-IN-GET*
                                NIL RP-STATE))
           :in-theory (e/d (rules-alist-inside-out-init
                            VALID-RP-STATE-SYNTAXP
                            rules-alist-outside-in-init
                            rp-statep
                            VALID-RP-STATE-SYNTAXP-aux-necc
                            RULES-ALIST-OUTSIDE-IN-GET
                            RULES-ALIST-INSIDE-OUT-GET
                            )
                           (;; VALID-RP-STATE-SYNTAXP-AUx
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
                            (:DEFINITION RP-TERM-LISTP)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
                            (:REWRITE DEFAULT-CDR)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 2)
                            )))))

(defthm valid-rp-statep-of-rp-state-init-rules-aux
  (implies (and (valid-rp-statep rp-state))
           (and (implies (and (valid-rules-alistp rules-alist)
                              (or (equal flg :inside-out)
                                  (equal flg :outside-in)))
                         (valid-rp-statep (rp-state-init-rules-aux rules-alist
                                                                   flg
                                                                   rp-state)))
                (implies (Not (or (equal flg :inside-out)
                                  (equal flg :outside-in)))
                         (valid-rp-statep (rp-state-init-rules-aux rules-alist
                                                                   flg
                                                                   rp-state)))))
  :otf-flg nil
  :hints (("Goal"
           :do-not-induct t
           :induct (rp-state-init-rules-aux rules-alist
                                            flg
                                            rp-state)
           :in-theory (e/d (rp-state-init-rules-aux)
                           ((:DEFINITION VALID-RULESP)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:REWRITE VALID-RULES-SUBSETP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION TRUE-LISTP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION MEMBER-EQUAL)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION RP-TERM-LISTP)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            )))))

(defthm valid-rp-statep-rp-state-init-rules
  (implies (and (rp-statep rp-state)
                (rp-evl-meta-extract-global-facts :state state))
           (valid-rp-statep (rp-state-init-rules runes-inside-out
                                                 runes-outside-in
                                                 new-synps
                                                 rp-state
                                                 state
                                                 :ruleset ruleset)))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d (rp-state-init-rules)
                           (valid-rp-statep)))))

(defun rules-alistp2 (alist)
  (if (atom alist)
      (equal alist nil)
    (and (symbolp (caar alist))
         (RULE-LIST-SYNTAXP (cdar alist))
         (rules-alistp2 (cdr alist)))))

(defthm rule-list-syntaxp-of-append
  (implies (and (RULE-LIST-SYNTAXP a1)
                (RULE-LIST-SYNTAXP a2))
           (RULE-LIST-SYNTAXP (append a1 a2)))
  :hints (("Goal"
           :in-theory '((:DEFINITION BINARY-APPEND)
                        (:DEFINITION ENDP)
                        (:DEFINITION NOT)
                        (:DEFINITION RULE-LIST-SYNTAXP)
                        (:EXECUTABLE-COUNTERPART CONSP)
                        (:INDUCTION BINARY-APPEND)
                        (:INDUCTION RULE-LIST-SYNTAXP)
                        (:REWRITE ACL2::APPEND-WHEN-NOT-CONSP)
                        (:REWRITE CAR-CONS)
                        (:REWRITE CDR-CONS)
                        (:TYPE-PRESCRIPTION RULE-LIST-SYNTAXP)
                        (:TYPE-PRESCRIPTION RULE-SYNTAXP-FN)))))

(defthm rule-list-syntaxp-get-rule-list
  (rule-list-syntaxp (get-rule-list runes sc-alist new-synps warning
                                    state))
  :hints (("Goal"
           :induct (get-rule-list runes sc-alist new-synps warning
                                  state)
           :do-not-induct t
           :in-theory (e/d ()
                           (rule-syntaxp
                            CUSTOM-REWRITE-WITH-META-EXTRACT
                            MAKE-CUSTOM-RULE-FOR-META
                            (:REWRITE
                             VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION VALID-RULEP)
                            (:DEFINITION VALID-RULEP-SK)
                            (:DEFINITION VALID-RULEP-SK-BODY)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION ACL2::APPLY$-BADGEP))))))

(defthm rule-alistp2-of-ADD-RULE-TO-ALIST
  (implies (and (rules-alistp2 alist)
                (rule-syntaxp rule))
           (rules-alistp2 (ADD-RULE-TO-ALIST ALIST RULE)))
  :hints (("Goal"
           :in-theory (e/d () ((:DEFINITION GET-RULE-LIST)
                               (:REWRITE
                                VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                               (:DEFINITION VALID-RULESP)
                               (:DEFINITION VALID-RULEP)
                               (:DEFINITION VALID-RULEP-SK)
                               (:DEFINITION VALID-RULEP-SK-BODY)
                               (:DEFINITION INCLUDE-FNC)
                               (:DEFINITION SUBSETP-EQUAL)
                               (:DEFINITION MEMBER-EQUAL))))))

(defthm rule-alistp2-of-RULE-LIST-TO-ALIST
  (implies (and (rule-list-syntaxp RULE-list))
           (rules-alistp2 (RULE-LIST-TO-ALIST RULE-list)))
  :hints (("Goal"
           :do-not-induct t
           :induct (RULE-LIST-TO-ALIST RULE-list)
           :in-theory (e/d (RULE-LIST-TO-ALIST
                            RULE-LIST-SYNTAXP)
                           ((:DEFINITION GET-RULE-LIST)
                            ADD-RULE-TO-ALIST
                            rule-syntaxp
                            (:REWRITE
                             VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION VALID-RULEP)
                            (:DEFINITION VALID-RULEP-SK)
                            (:DEFINITION VALID-RULEP-SK-BODY)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL))))))

(defthm rules-alistp2-of-get-rules
  (rules-alistp2 (get-rules runes state :new-synps new-synps))
  :hints (("Goal"
           :in-theory (e/d (get-rules)
                           ((:DEFINITION GET-RULE-LIST)
                            (:REWRITE
                             VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION VALID-RULEP)
                            (:DEFINITION VALID-RULEP-SK)
                            (:DEFINITION VALID-RULEP-SK-BODY)
                            (:DEFINITION INCLUDE-FNC)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL))))))

(defthm valid-rp-state-syntaxp-of-rp-state-init-rules-aux
  (implies (valid-rp-state-syntaxp rp-state)
           (and (implies (and (rules-alistp2 rules-alist)
                              (or (equal flg :inside-out)
                                  (equal flg :outside-in)))
                         (valid-rp-state-syntaxp (rp-state-init-rules-aux rules-alist
                                                                          flg
                                                                          rp-state)))
                (implies (Not (or (equal flg :inside-out)
                                  (equal flg :outside-in)))
                         (valid-rp-state-syntaxp (rp-state-init-rules-aux rules-alist
                                                                          flg
                                                                          rp-state)))))
  :otf-flg nil
  :hints (("Goal"
           :do-not-induct t
           :induct (rp-state-init-rules-aux rules-alist
                                            flg
                                            rp-state)
           :in-theory (e/d (rp-state-init-rules-aux)
                           ((:DEFINITION VALID-RULESP)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:REWRITE VALID-RULES-SUBSETP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION TRUE-LISTP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION MEMBER-EQUAL)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:DEFINITION RP-TERM-LISTP)
                            (:REWRITE
                             ACL2::MEMBER-EQUAL-NEWVAR-COMPONENTS-1)
;;                            (:REWRITE ACL2::SUBSETP-REFLEXIVE-LEMMA)
                            )))))

(defthmd valid-rp-statep-implies-valid-rp-state-syntaxp
  (implies (and (rp-statep rp-state)
                (valid-rp-statep rp-state))
           (valid-rp-state-syntaxp rp-state))
  :otf-flg nil
  :hints (("Goal"
           :use ((:instance valid-rp-statep-necc
                            (key (valid-rp-state-syntaxp-aux-witness RP-STATE))))
           :in-theory (e/d (VALID-RP-STATE-SYNTAXP)
                           ()))))

(defthm valid-rp-state-syntaxp-rp-state-init-rules
  (implies (and (rp-statep rp-state))
           (valid-rp-state-syntaxp (rp-state-init-rules runes-inside-out
                                                        runes-outside-in
                                                        new-synps
                                                        rp-state
                                                        state
                                                        :ruleset ruleset)))
  :hints (("Goal"
           :do-not-induct t
           :in-theory (e/d (rp-state-init-rules)
                           (valid-rp-state-syntaxp
                            (:DEFINITION VALID-RP-STATEP)
                            (:DEFINITION VALID-RULESP)
                            (:DEFINITION ACL2::APPLY$-BADGEP)
                            (:DEFINITION SUBSETP-EQUAL)
                            (:DEFINITION MEMBER-EQUAL)
                            (:LINEAR ACL2::APPLY$-BADGEP-PROPERTIES . 1)
                            (:REWRITE RP-TERM-LISTP-IS-TRUE-LISTP)
                            (:REWRITE VALID-RULES-SUBSETP)
                            (:REWRITE RP-TERMP-IMPLIES-SUBTERMS)
                            (:DEFINITION QUOTEP)
                            (:DEFINITION VALID-RULEP))))))
