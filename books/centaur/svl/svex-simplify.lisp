; SVL - Listener-based Hierachical Verilog Analysis Framework
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

;; A tool to apply existing rewrite rules about 4vec functions to simplify sv
;; expresions by wrappaing them with "svex-eval" and an environment with all
;; the variables in svex pointing to some automatically created free variables.

(in-package "SVL")

(include-book "meta/top")

(include-book "svex-simplify-rule-list")

(include-book "centaur/sv/svex/vars" :dir :system)

(include-book "std/lists/flatten" :dir :system)

(local
 (include-book "projects/rp-rewriter/proofs/rp-rw-lemmas" :dir :system))

(local
 (in-theory (disable bitp natp)))

(local
 (in-theory (disable (:definition rp::rp-rw))))

(local
 (in-theory (disable (:DEFINITION SET-DIFFERENCE-EQUAL)
                     (:DEFINITION MEMBER-EQUAL)
                     (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP)
                     (:DEFINITION ALWAYS$)
                     (:DEFINITION TRUE-LISTP)
;;                     (:REWRITE ACL2::PLAIN-UQI-TRUE-LIST-LISTP)
                     (:DEFINITION ACL2::APPLY$-BADGEP)
                     (:DEFINITION RP::RP-TERMP)
                     (:REWRITE
                      ACL2::TRUE-LIST-LISTP-IMPLIES-ALWAYS$-TRUE-LISTP)
                     (:DEFINITION TRUE-LIST-LISTP)
                     (:DEFINITION RP::RP-TERM-LISTP)
                     (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP)
                     (:REWRITE ACL2::APPLY$-SYMBOL-ARITY-1)
                     (:REWRITE ACL2::APPLY$-PRIMITIVE)
                     (:META ACL2::APPLY$-PRIM-META-FN-CORRECT)
                     (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))))

#|(defrec svex-simplify-preloaded
  (exc-rules rules rules-outside-in)
  t)||#

;; #!RP
;; (local
;;  (defthm simple-meta-rule-alistp-of-create-simple-meta-rules-alist-aux
;;    (and (simple-meta-rule-alistp (create-simple-meta-rules-alist-aux meta-rules disabled-meta-rules))
;;         )
;;    :hints (("Goal"
;;             :induct (create-simple-meta-rules-alist-aux meta-rules
;;                                                         disabled-meta-rules)
;;             :do-not-induct t
;;             :in-theory (e/d (create-simple-meta-rules-alist
;;                              SIMPLE-META-RULE-ALISTP
;;                              CREATE-SIMPLE-META-RULES-ALIST-AUX)
;;                             ())))))
;; #!RP
;; (local
;;  (defthm simple-meta-rule-alistp-of-create-simple-meta-rules-alist
;;    (and (simple-meta-rule-alistp (create-simple-meta-rules-alist state)))
;;    :hints (("Goal"
;;             :in-theory (e/d (create-simple-meta-rules-alist
;;                              SIMPLE-META-RULE-ALISTP)
;;                             ())))))

#|(progn
  (define svex-simplify-preload (&key (runes 'nil)
                                      (runes-outside-in 'nil)
                                      (state 'state))
    (declare (xargs :guard-hints (("Goal"
                                   :in-theory (e/d () (table-alist))))
                    :stobjs (state)))
    :parents (svex-simplify)
    :short "Create a special structure storing rules for svl::svex-simplify."
    :long "<p> Svex-simplify-preload either gets a list of rule-names (or runes)
  from the user or it uses the rule-set of @(see rp::rp-rewriter) to create a
  special structure that can be used by svl::svex-simplify. If you are writing a
  function that will call svl::svex-simplify many times for the same rules, creating this
  structure one time before may help with performance.</p>"
    (b* ((world (w state))
         (- (rp::check-if-clause-processor-up-to-date world))
         ;;(runes (if runes runes (current-theory :here)))

         ((mv runes runes-outside-in exc-rules)
          (if (or runes
                  runes-outside-in)
              (mv (acl2::append-without-guard
                   (rp::get-enabled-meta-rules-from-table nil state) runes)
                  (acl2::append-without-guard
                   (rp::get-enabled-meta-rules-from-table t state) runes-outside-in)
                  (rp::get-disabled-exc-rules-from-table
                   (table-alist 'rp::rp-exc-rules world)))
            (rp::get-enabled-rules-from-table state)))
         (rules-alist (rp::get-rules runes state :warning :err))
         (rules-alist-outside-in (rp::get-rules runes-outside-in state :warning :err))
         ;;(meta-rules (make-fast-alist (rp::create-simple-meta-rules-alist state)))
         #|(meta-rules-entry (hons-assoc-equal 'rp::meta-rules-list
                                             (table-alist 'rp::rp-rw world)))||#
         #|(meta-rules (if (consp meta-rules-entry)
                         (make-fast-alist
                          (cdr meta-rules-entry))
                       nil))||#)
      (make svex-simplify-preloaded
            :exc-rules exc-rules
            :rules-outside-in rules-alist-outside-in
            :rules rules-alist)))

  (define svex-simplify-preloaded-guard (svex-simplify-preloaded)
    ;(declare (xargs :stobjs (state)))
    :enabled t
    :parents (svex-simplify-preload)
    :short "Guard function for the special structure generated by @(see svl::svex-simplify-preload)"
    (or (not svex-simplify-preloaded)
        (and (weak-svex-simplify-preloaded-p svex-simplify-preloaded)
             (rp::rules-alistp (access svex-simplify-preloaded
                                       svex-simplify-preloaded
                                       :rules))
             (rp::rules-alistp (access svex-simplify-preloaded
                                       svex-simplify-preloaded
                                       :rules-outside-in))
             (symbol-alistp (access svex-simplify-preloaded
                                    svex-simplify-preloaded
                                    :exc-rules)))))

  (define svex-rw-free-preload (svex-simplify-preloaded )
    (declare (xargs  :guard (svex-simplify-preloaded-guard
                             svex-simplify-preloaded)))
    :parents (svex-simplify-preload)
    :short "Frees the fast-alists created by @(see svl::svex-simplify-preload)"
    (if svex-simplify-preloaded
        (progn$
         (fast-alist-free (access svex-simplify-preloaded
                                  svex-simplify-preloaded
                                  :rules))
         (fast-alist-free (access svex-simplify-preloaded
                                  svex-simplify-preloaded
                                  :rules-outside-in))
         (fast-alist-free (access svex-simplify-preloaded
                                  svex-simplify-preloaded
                                  :exc-rules))
         nil)
      nil)))||#

(local
 (defthm rp-statep-update-not-simplified-action
   (implies (and (force (rp::rp-statep rp::rp-state))
                 (force (symbolp flg)))
            (rp::rp-statep
             (rp::update-not-simplified-action flg rp::rp-state)))
   :hints (("Goal"
            :in-theory (e/d (rp::rp-statep) ())))))

(local
 (defthm rp-statep-rp-state-new-run
   (implies (and (force (rp::rp-statep rp::rp-state)))
            (rp::rp-statep
             (rp::rp-state-new-run rp::rp-state)))
   :hints (("goal"
            :in-theory (e/d (rp::rp-state-new-run
                             rp::rp-statep
                             RP::UPDATE-RW-CONTEXT-DISABLED)
                            ())))))

(local
 (defthm symbolp-not-simplified-action
   (implies (rp::rp-statep rp::rp-state)
            (symbolp (rp::not-simplified-action rp::rp-state)))
   :hints (("Goal"
            :in-theory (e/d (rp::rp-statep) ())))))

(define to-svex-fnc (term)
  :prepwork
  ((local
    (in-theory (enable svex-p
                       svexl-node-p
                       svexl-nodelist-p
                       svexlist-p))))
  :returns (mv
            (err)
            (res svex-p :hyp (or (atom term) (svexlist-p (cdr term)))))
  (case-match term

    ;; (('svl::4vec-bitor$ size x y)   `(partsel 0 ,size (sv::bitor ,x ,y)))
    ;; (('svl::4vec-bitand$ size x y)  `(partsel 0 ,size (sv::bitand ,x ,y)))
    ;; (('svl::4vec-bitxor$ size x y)  `(partsel 0 ,size (sv::bitxor ,x ,y)))
    (('svl::4vec-bitnot$ size x)  (mv nil (hons-list 'sv::partsel 0 size
                                                     (hons-list 'sv::bitnot x))))
    (('svl::4vec-plus$ size x y)  (mv nil (hons-list 'sv::partsel 0 size
                                                     (hons-list '+ x y))))
    (('svl::bits val s w)         (mv nil (hons-list 'sv::partsel s w val)))
    (('svl::sbits s w new old)    (mv nil (hons-list 'sv::partinst s w old new)))
    (('svl::4vec-concat$ & & &)   (mv nil (hons 'sv::concat   (cdr term))))
    (('sv::4vec-fix$inline &)     (mv nil (hons 'id            (cdr term))))
    (('svl::4vec-fix-wog &)       (mv nil (hons 'id           (cdr term))))
    (('sv::4vec-bit-extract & &)  (mv nil (hons 'sv::bitsel   (cdr term))))
    (('sv::3vec-fix &)            (mv nil (hons 'sv::unfloat  (cdr term))))
    (('4vec-bitnot &)             (mv nil (hons 'sv::bitnot   (cdr term))))
    (('4vec-bitand & &)           (mv nil (hons 'sv::bitand   (cdr term))))
    (('4vec-bitor & &)            (mv nil (hons 'sv::bitor    (cdr term))))
    (('sv::4vec-bitxor & &)       (mv nil (hons 'sv::bitxor   (cdr term))))
    (('sv::4vec-res & &)          (mv nil (hons 'sv::res      (cdr term))))
    (('sv::4vec-resand & &)       (mv nil (hons 'sv::resand   (cdr term))))
    (('sv::4vec-resor & &)        (mv nil (hons 'sv::resor    (cdr term))))
    (('sv::4vec-override & &)     (mv nil (hons 'sv::override (cdr term))))
    (('sv::4vec-onset &)          (mv nil (hons 'sv::onp      (cdr term))))
    (('sv::4vec-offset &)         (mv nil (hons 'sv::offp     (cdr term))))
    (('sv::4vec-reduction-and &)  (mv nil (hons 'sv::uand     (cdr term))))
    (('sv::4vec-reduction-or &)   (mv nil (hons 'sv::uor      (cdr term))))
    (('4vec-parity &)             (mv nil (hons 'sv::uxor     (cdr term))))
    (('4vec-zero-ext & &)         (mv nil (hons 'sv::zerox    (cdr term))))
    (('sv::4vec-sign-ext & &)     (mv nil (hons 'sv::signx    (cdr term))))
    (('4vec-concat & & &)         (mv nil (hons 'concat       (cdr term))))
    (('sv::4vec-rev-blocks & & &) (mv nil (hons 'sv::blkrev   (cdr term))))
    (('4vec-rsh & &)              (mv nil (hons 'sv::rsh      (cdr term))))
    (('4vec-lsh & &)              (mv nil (hons 'sv::lsh      (cdr term))))
    (('4vec-plus & &)             (mv nil (hons '+            (cdr term))))
    (('sv::4vec-minus & &)        (mv nil (hons 'sv::b-       (cdr term))))
    (('sv::4vec-uminus &)         (mv nil (hons 'sv::u-       (cdr term))))
    (('sv::4vec-times & &)        (mv nil (hons '*            (cdr term))))
    (('sv::4vec-quotient & &)     (mv nil (hons '/            (cdr term))))
    (('sv::4vec-remainder & &)    (mv nil (hons 'sv::%        (cdr term))))
    (('sv::4vec-xdet &)           (mv nil (hons 'sv::xdet     (cdr term))))
    (('sv::4vec-countones &)      (mv nil (hons 'sv::countones(cdr term))))
    (('sv::4vec-onehot &)         (mv nil (hons 'sv::onehot   (cdr term))))
    (('sv::4vec-onehot0 &)        (mv nil (hons 'sv::onehot0  (cdr term))))
    (('sv::4vec-< & &)            (mv nil (hons '<            (cdr term))))
    (('4vec-== & &)               (mv nil (hons 'sv::==       (cdr term))))
    (('sv::4vec-=== & &)          (mv nil (hons 'sv::===      (cdr term))))
    (('sv::4vec-wildeq & &)       (mv nil (hons 'sv::==?      (cdr term))))
    (('sv::4vec-wildeq-safe & &)  (mv nil (hons 'sv::safer-==?(cdr term))))
    (('sv::4vec-symwildeq & &)    (mv nil (hons 'sv::==??     (cdr term))))
    (('sv::4vec-clog2 &)          (mv nil (hons 'sv::clog2    (cdr term))))
    (('sv::4vec-pow & &)          (mv nil (hons 'sv::pow      (cdr term))))
    (('4vec-? & & &)              (mv nil (hons 'sv::?        (cdr term))))
    (('4vec-?* & & &)             (mv nil (hons 'sv::?*       (cdr term))))
    (('4vec-?! & & &)             (mv nil (hons 'sv::?!       (cdr term))))
    (('4vec-?-raw & & &)          (mv nil (hons 'sv::?        (cdr term))))
    (('4vec-?*-raw & & &)         (mv nil (hons 'sv::?*       (cdr term))))
    (('4vec-?!-raw & & &)         (mv nil (hons 'sv::?!       (cdr term))))
    (('sv::4vec-bit? & & &)       (mv nil (hons 'sv::bit?     (cdr term))))
    (('4vec-part-select & & &)    (mv nil (hons 'partsel      (cdr term))))
    (('4vec-part-install & & & &) (mv nil (hons 'sv::partinst (cdr term))))
    (('sv::4vec-bit?! & & &)      (mv nil (hons 'sv::bit?!    (cdr term))))
    (('SV::4VEC-===* & &)         (mv nil (hons 'sv::===*     (cdr term))))
    (('svex-env-fastlookup-wog & &)  (mv nil (cadr term)))
    (& (progn$
        (cw "ATTENTION! Cannot match ~p0 with ~p1 arguments to any ~
  svex function. If you think this is a bug, consider changing ~
  svl::to-svex-fnc. ~%"
            (if (consp term) (car term) term)
            (1- (len term)))
        (mv t '0))))
  ///
  (local
   (in-theory (disable svex-p-implies-svexl-node-p
                       svexlist-p-implies-svexl-nodelist-p)))
  (std::more-returns
   (res svexl-node-p :hyp (or (atom term) (svexl-nodelist-p (cdr term))))))

(acl2::defines
 4vec-to-svex

 :short "Try to convert a term composed of 4vec functions to its equivalent
 svex representation."
 :parents (svex-simplify)
 :prepwork
 ((local
   (in-theory (e/d (svexl-node-p
                    svex-p
                    assoc-equal
                    sv::svar-p
                    sv::svex-kind
                    rp::measure-lemmas)
                   ((:rewrite rp::measure-lemma1)
                    (:rewrite rp::measure-lemma1-2)
                    (:rewrite sv::svexlist-p-when-subsetp-equal)
                    (:definition subsetp-equal)
                    (:rewrite
                     acl2::member-equal-newvar-components-1)
                    (:definition acl2::loop$-as)
                    (:definition member-equal)
                    (:rewrite
                     sv::svexlist-p-of-cdr-when-svexlist-p)

                    (:definition rp::rp-termp)))))

  (local
   (include-book "projects/rp-rewriter/proofs/aux-function-lemmas" :dir :system))

  (local
   (defthm ex-from-rp-is-nonnil
     (implies (and (rp::rp-termp rp::term))
              (rp::ex-from-rp rp::term))
     :hints (("goal"
              :induct (rp::ex-from-rp rp::term)
              :in-theory (e/d (rp::ex-from-rp
                               rp::is-rp) ())))))

  (local
   (defthm svex-p-to-svex-fnc-quote
     (svex-p
      (to-svex-fnc (cons 'quote x)))
     :hints (("goal"
              :in-theory (e/d (to-svex-fnc) ()))))))

 (define 4vec-to-svex (term svexl-node-flg memoize-flg)
   :guard t
   :measure (rp::cons-count term)
   :returns (mv (err)
                (res))
   (declare (ignorable memoize-flg))
   (b* ((term (rp::ex-from-rp term)))
     (cond ((atom term)
            (if (svex-p term)
                (mv nil term)
              (progn$ (cw "ATTENTION! unexpected term ~p0 this atom does not ~
              satisfy svex-p ~%" term)
                      (mv t 0))))
           ((and (quotep term)
                 (consp (cdr term)))
            (b* ((ud (unquote term))
                 ((mv err res)
                  (cond ((and (atom ud)
                              (svexl-node-p ud))
                         (mv nil ud))
                        ((4vec-p ud)
                         (mv nil (sv::svex-quote ud)))
                        ((svex-p term)
                         (mv nil term))
                        (t
                         (progn$
                          (cw "ATTENTION! unexpected term ~p0. This quoted term
   does not satisfy svex-p ~%" term)
                          (mv t 0)))))
                 (res (hons-copy res)))
              (mv err res)))
           ((case-match term
              (('svex-env-fastlookup-wog ('quote var) env)
               (and (sv::svar-p var)
                    (equal (rp::ex-from-rp env) 'svex-env)))
              (('sv::svex-env-fastlookup ('quote var) env)
               (and (sv::svar-p var)
                    (equal (rp::ex-from-rp env) 'svex-env))))
            (mv nil (hons-copy (unquote (cadr term)))))
           ((case-match term
              (('if ('equal & ''0) & &)
               t
               #|(case-match x
                 (('rp ''bitp &) t)
                 (('rp ''integerp &) t))|#))
            (b* (((mv err1 test) (4vec-to-svex (cadr (cadr term)) svexl-node-flg memoize-flg))
                 ((mv err2 else) (4vec-to-svex (caddr term) svexl-node-flg memoize-flg))
                 ((mv err3 then) (4vec-to-svex (cadddr term) svexl-node-flg
                                               memoize-flg))
                 ((mv err4 fin) (to-svex-fnc (hons-list 'sv::4vec-?* test then else))))
              (mv (or err1 err2 err3 err4) fin)))
           ((and svexl-node-flg
                 (case-match term
                   (('svex-env-fastlookup-wog ('quote var) env)
                    (and (natp var)
                         (equal (rp::ex-from-rp env) 'node-env)))
                   (('sv::svex-env-fastlookup ('quote var) env)
                    (and (natp var)
                         (equal (rp::ex-from-rp env) 'node-env)))))
            (mv nil (hons-list ':node (hons-copy (unquote (cadr term))))))
           (t (b* ((fnc (car term))
                   ((mv err1 args) (4vec-to-svex-lst (cdr term) svexl-node-flg
                                                     memoize-flg))
                   ((mv err2 res) (to-svex-fnc (cons fnc args))))
                (mv (or err1 err2)
                    res))))))

 (define 4vec-to-svex-lst (lst svexl-node-flg memoize-flg)
   :measure (rp::cons-count lst)
   :returns (mv (err)
                (res-lst))
   (declare (ignorable memoize-flg))
   (if (atom lst)
       (mv nil nil)
     (b* (((mv err1 res1) (4vec-to-svex (car lst) svexl-node-flg memoize-flg))
          ((mv err2 res2) (4vec-to-svex-lst (cdr lst) svexl-node-flg memoize-flg)))
       (mv (or err1 err2)
           (hons res1 res2)))))

 ///

 (memoize '4vec-to-svex :condition 'memoize-flg)

 (std::defret-mutual
  svexl-node-p-of-4vec-to-svex
  (std::defret svexl-node-p-of-4vec-to-svex
               (and (svexl-node-p res)
                    (implies (not svexl-node-flg)
                             (svex-p res)))
               :fn 4vec-to-svex)
  (std::defret svexl-nodelist-p-of-4vec-to-svex-lst
               (and (svexl-nodelist-p res-lst)
                    (implies (not svexl-node-flg)
                             (svexlist-p res-lst)))
               :fn 4vec-to-svex-lst)
  :hints (("goal"
           :expand ((4vec-to-svex-lst lst svexl-node-flg memoize-flg)
                    (4vec-to-svex term svexl-node-flg memoize-flg)
                    (4vec-to-svex term nil memoize-flg))
           :in-theory
           (e/d (
                 )
                (4vec-to-svex-lst
                 4vec-to-svex

                 (:rewrite default-cdr)
                 (:rewrite bitp-implies-natp)
                 (:type-prescription lognot)
                 (:type-prescription bitp)
                 (:rewrite default-<-2)
                 (:rewrite rp::atom-rp-termp-is-symbolp)
                 (:definition lognot)
                 (:rewrite rp::rp-termp-cadr)
                 (:type-prescription rp::rp-termp)
                 (:rewrite integerp-implies-4vecp)
                 (:rewrite rp::rp-termp-ex-from-rp)
                 (:rewrite sv::svar-p-of-car-when-svarlist-p)
                 (:rewrite natp-implies-integerp)
;;                 (:rewrite acl2::o-p-o-infp-car)
                 (:rewrite rp::rp-termp-extract-from-rp)

                 (:rewrite sv::4vec-p-of-car-when-4veclist-p)
                 (:rewrite
                  svexl-nodelist-p-of-cdr-when-svexl-nodelist-p)
                 (:rewrite
                  sv::4veclist-p-of-cdr-when-4veclist-p)

                 (:definition rp::ex-from-rp)
                 (:rewrite sv::svex-p-when-maybe-svex-p)

                 (:rewrite default-car)))))))

(progn
  (define 4vec-to-svex-termlist-quote (lst)
    :prepwork
    ((local
      (in-theory (enable SVEXL-NODE-P
                         4VEC-P
                         svex-p

                         SVEXL-NODELIST-P))))
    :returns (mv (err)
                 (res svexl-nodelist-p))
    (cond ((equal lst nil)
           (mv nil nil))
          ((atom lst)
           (mv t nil))
          (t
           (b* (((mv err rest) (4vec-to-svex-termlist-quote (cdr lst))))
             (cond ((integerp (car lst))
                    (mv err (cons (car lst) rest)))
                   ((4vec-p (car lst))
                    (mv err
                        (cons (car lst)
                              rest)))
                   (t
                    (mv t nil))))))
    ///
    (std::defret svexlist-p-of-4vec-to-svex-termlist-quote
                 (implies (not svexl-node-flg)
                          (svexlist-p res))))

  (define 4vec-to-svex-termlist (term svexl-node-flg memoize-flg)
    :returns (mv (err)
                 (res svexl-nodelist-p))
    (case-match term
      (('cons x rest)
       (b* (((mv err1 res1) (4vec-to-svex x svexl-node-flg memoize-flg))
            ((mv err2 res2) (4vec-to-svex-termlist rest svexl-node-flg memoize-flg)))
         (mv (or err1 err2)
             (cons res1 res2))))
      (('quote a)
       (4vec-to-svex-termlist-quote a))
      (&
       (mv t nil)))
    ///
    (std::defret svexlist-p-of-4vec-to-svex-termlist
                 (implies (not svexl-node-flg)
                          (svexlist-p res)))))

(local
 (defthm natp-rp-rw-step-limit
   (implies (rp::rp-statep rp::rp-state)
            (natp (RP::RW-STEP-LIMIT RP::RP-STATE)))
   :hints (("Goal"
            :in-theory (e/d (RP::RW-STEP-LIMIT
                             rp::rp-statep) ())))
   :rule-classes :type-prescription))

(local
 (defthm unsigned-byte-p-rw-step-limit
   (implies (rp::rp-statep rp::rp-state)
            (unsigned-byte-p 58 (rp::rw-step-limit rp::rp-state)))
   :hints (("Goal"
            :in-theory (e/d (RP::RW-STEP-LIMIT
                             rp::rp-statep) ())))
   :rule-classes :rewrite))

(defwarrant rp::cons-count)
(verify-guards rp::cons-count)

(progn
  (local
   (in-theory (disable ;;acl2::remove-duplicates-equal-of-append
               remove-duplicates-equal)))

  (local
   (defthm integer-listp-remove-duplicates
     (implies (integer-listp x)
              (integer-listp (remove-duplicates x)))))

  (local
   (defthm integer-listp-remove-duplicates-equal
     (implies (integer-listp x)
              (integer-listp (remove-duplicates-equal x)))
     :hints (("Goal"
              :in-theory (e/d (remove-duplicates-equal) ())))))

  (local
   (defthm integer-listp-append
     (implies (and (integer-listp x)
                   (integer-listp y))
              (integer-listp (append x y)))))

  (local
   (defthm eqlable-listp-when-integer-listp
     (implies (integer-listp x)
              (eqlable-listp x))))

  (local
   (defthm integer-listp-SET-DIFFERENCE-EQUAL
     (implies (integer-listp x)
              (integer-listp (set-difference-equal x y)))
     :hints (("Goal"
              :in-theory (e/d (set-difference-equal) ())))))

  (local
   (in-theory (disable RP::APPLY$-CONS-COUNT)))

  (local
   (defthm
     rp::apply$-cons-count-2
     (implies (rp::apply$-warrant-cons-count)
              (and (equal (badge 'cons-count)
                          '(acl2::apply$-badge 1 1 . t))
                   (equal (apply$ 'cons-count args)
                          (cons-count (car args)))))
     :hints
     (("goal"
       :use rp::apply$-warrant-cons-count-necc
       :expand ((:free (acl2::x)
                       (hide (badge acl2::x))))
       :in-theory (e/d (badge apply$)
                       (rp::apply$-warrant-cons-count-necc)))))))



(defthm svl::svex-env-fastlookup-wog-hons-acons-opener-2
  (implies (syntaxp (and (or (quotep x)
                             (integerp x))
                         (or (quotep y)
                             (integerp y))))
           (equal (svex-env-fastlookup-wog x (hons-acons y val rest))
                  (if (equal x y)
                      val
                    (svex-env-fastlookup-wog x rest))))
  :hints (("Goal"
           :expand (svex-env-fastlookup-wog x (hons-acons y val rest))
           :in-theory (e/d (SVEX-ENV-FASTLOOKUP-WOG) ()))))

(rp::add-rp-rule svl::svex-env-fastlookup-wog-hons-acons-opener-2)
(add-svex-simplify-rule svl::svex-env-fastlookup-wog-hons-acons-opener-2)

(define cons-count-compare ((term)
                            (cnt natp))
  :returns (rem natp :hyp (natp cnt))
  (cond ((zp cnt) cnt)
        ((atom term)
         (- cnt 1))
        (t
         (b* ((cnt (cons-count-compare (car term) cnt))
              ((when (zp cnt)) cnt)
              (cnt (cons-count-compare (cdr term) cnt)))
           cnt)))
  ///
  (defret integerp-cons-count-compare
    (implies (integerp cnt)
             (integerp rem))))

(progn
  (defines svexl-node-get-all-node-references
    :verify-guards nil

    (define svexl-node-get-all-node-references ((x svexl-node-p))
      :measure (SVEXL-NODE-COUNT X)
      :returns (res integer-listp)
      (SVEXL-NODE-CASE
       x
       :VAR nil
       :QUOTE nil
       :NODE (list X.NODE-ID)
       :CALL (svexl-nodelist-get-all-node-references X.ARGS)))
    (define svexl-nodelist-get-all-node-references ((lst SVEXL-NODELIST-P))
      :measure (SVEXL-NODELIST-COUNT lst)
      :returns (res integer-listp)
      (if (atom lst)
          nil
        (b* ((res1 (svexl-node-get-all-node-references (car lst)))
             (res2 (svexl-nodelist-get-all-node-references (cdr lst))))
          (append res1 res2))))
    ///
    (verify-guards svexl-node-get-all-node-references))

  (defwarrant SVEXL-NODE-GET-ALL-NODE-REFERENCES)

  (define svexl-node-simplify-add-integerp-to-context
    ((node svexl-node-p)
     (subnodeids integer-listp)
     (node-integerp-alist alistp)
     (node-array svexl-node-array-p)
     (context))

    :verify-guards nil
    :prepwork
    (
     (local
      (defthm rp-term-listp-of-append
        (implies (and (rp::rp-term-listp x)
                      (rp::rp-term-listp y))
                 (rp::rp-term-listp (append x y)))
        :hints (("Goal"
                 :do-not-induct t
                 :induct (append x y)
                 :in-theory (e/d (rp::rp-term-listp
                                  append)
                                 ())))))
     (in-theory (disable apply$-svexl-node-get-all-node-references))
     (defthm
       apply$-svexl-node-get-all-node-references-2
       (implies
        (apply$-warrant-svexl-node-get-all-node-references)
        (and
         (equal (badge 'svexl-node-get-all-node-references)
                '(acl2::apply$-badge 1 1 . t))
         (equal (apply$ 'svexl-node-get-all-node-references
                        args)
                (svexl-node-get-all-node-references (car args)))))
       :hints
       (("goal"
         :use apply$-warrant-svexl-node-get-all-node-references-necc
         :expand ((:free (acl2::x)
                         (hide (badge acl2::x))))
         :in-theory (e/d (badge apply$)
                         (apply$-warrant-svexl-node-get-all-node-references-necc)))))

     (local
      (defthm rp-term-listp-of-collect$+
        (implies t
                 (rp::rp-term-listp (collect$+ (LAMBDA$ (ACL2::LOOP$-GVARS ACL2::LOOP$-IVARS)
                                                        (LIST 'INTEGERP
                                                              (LIST* 'SVEX-ENV-FASTLOOKUP-WOG
                                                                     (LIST 'QUOTE (CAR ACL2::LOOP$-IVARS))
                                                                     '(NODE-ENV))))
                                               nil something)))
        :hints (("Goal"
                 :in-theory (e/d (rp::rp-term-listp
                                  rp::RP-TERMP)
                                 ())))))

     (local
      (in-theory (disable (:REWRITE ACL2::BETA-REDUCTION)
                          (:DEFINITION ACL2::APPLY$-BADGEP)
                          (:DEFINITION ALWAYS$)
                          (:DEFINITION WHEN$+)
                          (:REWRITE ACL2::APPLY$-PRIMITIVE)
                          (:META ACL2::APPLY$-PRIM-META-FN-CORRECT)
                          ACL2::APPLY$-SYMBOL-ARITY-1)))
     )
    :returns
    (res rp::rp-term-listp :hyp (rp::rp-term-listp context))
    (b* ((node-references1 (remove-duplicates
                            (svexl-node-get-all-node-references node)))
         (node-references1 (set-difference$ node-references1 subnodeids))

         (node-references2
          (loop$ for id in subnodeids collect
                 :guard (or (not (hons-get id node-array))
                            (svexl-node-p (cdr (hons-get id node-array))))
                 (b* ((entry (hons-get id node-array)))
                   (and entry
                        (svexl-node-get-all-node-references (cdr entry))))))
         (node-references2 (acl2::flatten node-references2))
         (node-references2 (and (integer-listp node-references2)
                                node-references2))

         (node-references (remove-duplicates
                           (append node-references1
                                   node-references2)))

         (new-context
          (loop$ for x in node-references
                 when (let ((entry (hons-get x node-integerp-alist)))
                        (and entry (cdr entry)))
                 collect
                 `(integerp (svex-env-fastlookup-wog ',x node-env))))
         (context (append new-context context)))
      context)
    ///

    (verify-guards svexl-node-simplify-add-integerp-to-context
      :hints (("Goal"
               :do-not-induct t
               :in-theory (e/d (TRUE-LIST-LISTP) ())))))

  (define svexl-node-simplify-get-subnode-ids-aux ((node-ids integer-listp)
                                                   (complete-node-array
                                                    svexl-node-array-p)
                                                   (cons-count-limit natp))
    :measure (acl2-count node-ids)
    :returns (mv (node-references integer-listp
                                  :hyp (integer-listp node-ids))
                 (rem-cons-count-limit natp
                                       :hyp (natp cons-count-limit)))
    (if (atom node-ids)
        (mv nil cons-count-limit)
      (b* ((entry (hons-get (car node-ids) complete-node-array))
           ((unless entry) (mv nil cons-count-limit))
           (cons-count-limit (cons-count-compare (cdr entry) cons-count-limit))
           ((when (zp cons-count-limit))
            (mv (list (car node-ids)) cons-count-limit))
           ((mv rest cons-count-limit)
            (svexl-node-simplify-get-subnode-ids-aux
             (cdr node-ids)
             complete-node-array
             cons-count-limit)))
        (mv (cons (car node-ids)
                  rest)
            cons-count-limit))))

  #|(define svexl-node-simplify-get-subnode-ids-sumaux ((node-ids integer-listp)
  (complete-node-array svexl-node-array-p))
  :returns (res natp)

  (nfix
  (loop$ for x in node-ids sum
  (b* ((cnode (hons-get x complete-node-array)))
  (if cnode (rp::cons-count (cdr cnode)) 0)))))|#

  (defines svexl-node-simplify-get-subnode-ids
    (define svexl-node-simplify-get-subnode-ids ((node svexl-node-p)
                                                 (added-node-ids
                                                  integer-listp)
                                                 &key
                                                 ((complete-node-array
                                                   svexl-node-array-p)
                                                  'complete-node-array)
                                                 ((cons-count-limit natp)
                                                  'cons-count-limit)
                                                 ((counter natp)
                                                  '(1- counter)))
      :verify-guards nil
      :measure (nfix counter)
      :returns (mv (node-references integer-listp
                                    :hyp (integer-listp added-node-ids))
                   (rem-cons-count-limit natp
                                         :hyp (natp cons-count-limit)))

      (b* (((when (zp counter)) (mv added-node-ids 0))
           ((when (zp cons-count-limit)) (mv added-node-ids 0))
           (node-references (remove-duplicates
                             (svexl-node-get-all-node-references node)))
           (node-references (set-difference$ node-references
                                             added-node-ids))
           ;;(cons-count-limit (cons-count-compare node cons-count-limit))
           ((when (zp cons-count-limit)) (mv added-node-ids 0))

           ((mv node-references cons-count-limit)
            (svexl-node-simplify-get-subnode-ids-aux node-references
                                                     complete-node-array
                                                     cons-count-limit))
           (added-node-ids (append node-references added-node-ids))
           ((when (zp cons-count-limit)) (mv added-node-ids 0))
           ((mv rest-node-refs cons-count-limit)
            (svexl-nodelist-simplify-get-subnode-ids node-references
                                                     added-node-ids)))
        (mv (remove-duplicates (append added-node-ids
                                       rest-node-refs))
            cons-count-limit)))
    (define svexl-nodelist-simplify-get-subnode-ids ((node-ids integer-listp)
                                                     (added-node-ids integer-listp)
                                                     &key
                                                     ((complete-node-array
                                                       svexl-node-array-p)
                                                      'complete-node-array)
                                                     ((cons-count-limit natp)
                                                      'cons-count-limit)
                                                     ((counter natp)
                                                      '(1- counter)))
      :measure (nfix counter)
      :returns (mv (node-references integer-listp :hyp (integer-listp added-node-ids))
                   (rem-cons-count-limit natp
                                         :hyp (natp cons-count-limit)))
      (b* (((when (zp counter)) (mv added-node-ids cons-count-limit))
           ((when (atom node-ids)) (mv added-node-ids cons-count-limit))
           (cnode (hons-get (car node-ids) complete-node-array))
           ((unless cnode) (mv added-node-ids cons-count-limit))
           (cnode (cdr cnode))
           ((mv node-refs1 cons-count-limit)
            (svexl-node-simplify-get-subnode-ids cnode
                                                 added-node-ids))
           ((when (zp cons-count-limit)) (mv node-refs1 cons-count-limit))
           ((mv node-refs2 cons-count-limit)
            (svexl-nodelist-simplify-get-subnode-ids (cdr node-ids)
                                                     node-refs1)))
        (mv node-refs2
            cons-count-limit)))
    ///
    (local
     (defthm dummy-guard-lemma
       (implies (and (integer-listp x)
                     (integer-listp y))
                (not (stringp (append x y))))))
    (verify-guards svexl-nodelist-simplify-get-subnode-ids-fn
      :otf-flg t
      :hints (("Goal"
               :do-not-induct t
               :in-theory (e/d ()
                               ((:FORWARD-CHAINING ACL2::ACL2-NUMBER-LISTP-FORWARD-TO-TRUE-LISTP)
                                (:FORWARD-CHAINING INTEGER-LISTP-FORWARD-TO-RATIONAL-LISTP)
                                (:FORWARD-CHAINING ACL2::RATIONAL-LISTP-FORWARD-TO-ACL2-NUMBER-LISTP)
                                (:FORWARD-CHAINING CHARACTER-LISTP-COERCE)
                                (:FORWARD-CHAINING CHARACTER-LISTP-FORWARD-TO-EQLABLE-LISTP)
                                STR::COERCE-TO-LIST-REMOVAL
                                STR::COERCE-TO-STRING-REMOVAL))))))

  (define svexl-node-simplify ((node svexl-node-p)
                               (context)
                               (node-integerp-alist alistp)
                               &key
                               (state 'state)
                               ((cons-count-limit natp)
                                'cons-count-limit)
                               ((complete-node-array svexl-node-array-p)
                                'complete-node-array)
                               (rp::rp-state 'rp::rp-state))
    (declare (ignorable complete-node-array))
    :guard (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                (rp::context-syntaxp context))
    :returns (mv (node-new svexl-node-p)
                 (integerp booleanp)
                 (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP :hyp (RP::VALID-RP-STATE-SYNTAXP
                                                                    rp::rp-state)))
    :prepwork
    ((local
      (in-theory (e/d (rp::rp-termp
                       RP::RP-TERM-LISTP)
                      (rp::rp-statep
                       unsigned-byte-p
                       rp::rw-step-limit
                       rp::preprocess-then-rp-rw))))
     (local
      (include-book "projects/rp-rewriter/proofs/rp-correct" :dir :system))

     (local
      (include-book "projects/rp-rewriter/proofs/rp-rw-lemmas" :dir :system))

     (local
      (defthm integer-listp-of-MERGE-LEXORDER
        (implies (and (integer-listp x)
                      (integer-listp y)
                      (integer-listp acc))
                 (integer-listp (acl2::MERGE-LEXORDER x y acc)))))

     (local
      (defthm integer-listp-evens
        (implies (integer-listp x)
                 (integer-listp (evens x)))
        :hints (("Goal"
                 :induct (evens x)
                 :in-theory (e/d (evens) ())))))

     (defthm integer-listp-of-MERGE-SORT-LEXORDER
       (implies (integer-listp x)
                (integer-listp (acl2::MERGE-SORT-LEXORDER x))))

     (local
      (defthm dummy-guard-lemma
        (implies (integer-listp x)
                 (not (stringp x))))))

    (b* (((mv subnodeids &)
          (svexl-node-simplify-get-subnode-ids node
                                               nil
                                               :counter (expt 2 30)))
         (subnodeids (acl2::merge-sort-lexorder (remove-duplicates subnodeids)))

         ;;(- (and (not subnodeids)
         ;;        (cw "no subnodeid node: ~p0 ~%" node)))

         ;;(- (cw "subnodeids: ~p0 ~%" subnodeids))

         (context (svexl-node-simplify-add-integerp-to-context node
                                                               subnodeids
                                                               node-integerp-alist
                                                               complete-node-array
                                                               context))

         (term `(svexl-node-eval-wog ',node
                                     (svexl-nodeids-eval-wog
                                      ',subnodeids
                                      ',complete-node-array
                                      (rp::rp 'node-env-p node-env)
                                      (rp::rp 'sv::svex-env-p svex-env))
                                     (rp::rp 'sv::svex-env-p svex-env)))


         ((mv rw rp::rp-state)
          (rp::rp-rw
           term nil context nil  (rp::rw-step-limit rp::rp-state)
           rp::rp-state state))

         #|((mv rw rp::rp-state)
          (rp::rp-rw
           rw nil context nil nil (rp::rw-step-limit rp::rp-state) rp::rp-state
           state))|#
         
         ((mv integerp rp::rp-state)
          (rp::rp-rw
           `(integerp ,rw) `(nil t) context t  (rp::rw-step-limit rp::rp-state)
           rp::rp-state state))

         ;; (- (cw "node: ~p0 ~%" node))
         ;; (- (cw "subnodeids : ~p0 ~%" subnodeids))
         ;; (- (fmt-to-comment-window "input-term : ~p0 ~%"
         ;;                           (pairlis2 acl2::*base-10-chars* (list term))
         ;;                           0 '(nil 5 6 nil) nil))
         ;; (- (FMT-TO-COMMENT-WINDOW "rewritten-term : ~p0 ~%"
         ;;                           (PAIRLIS2 ACL2::*BASE-10-CHARS* (LIST RW))
         ;;                           0 '(nil 5 6 nil) NIL))
         ;; (- (and (> (len subnodeids) 10)
         ;;         (hard-error 'dsdsdsd "" nil)))
         ;; (- (cw "~%~%"))

         (integerp (and (quotep integerp) (not (equal integerp ''nil))))
         (- (clear-memoize-table '4vec-to-svex))
         ((mv err node-new) (4vec-to-svex rw t nil))
         (- (and err
                 (hard-error
                  'svexl-node-simplify
                  "4vec-to-svex returned an error for the term: ~p0 ~%"
                  (list (cons #\0 rw)))))

         )
      (mv node-new integerp rp::rp-state)))

  (define svexl-nodelist-simplify ((nodelist svexl-nodelist-p)
                                   (context)
                                   &key
                                   (state 'state)
                                   (rp::rp-state 'rp::rp-state))
    :guard (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                (rp::context-syntaxp context))
    :returns (mv (node-new svexl-nodelist-p)
                 (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP :hyp (RP::VALID-RP-STATE-SYNTAXP
                                                                    rp::rp-state)))
    :prepwork
    ((local
      (include-book "projects/rp-rewriter/proofs/rp-correct" :dir :system))

     (local
      (include-book "projects/rp-rewriter/proofs/rp-rw-lemmas" :dir :system))

     (local
      (in-theory (e/d (RP::RP-TERMP
                       RP::RP-TERM-LISTP)
                      (rp::rp-statep
                       unsigned-byte-p
                       rp::rw-step-limit
                       rp::preprocess-then-rp-rw
                       (:DEFINITION RP::RULES-ALISTP)
                       RP::RULE-SYNTAXP)))))

    (b* ((term `(svexl-nodelist-eval-wog ',nodelist
                                         (rp::rp 'node-env-p node-env)
                                         (rp::rp 'sv::svex-env-p svex-env)))
         ((mv rw rp::rp-state)
          (rp::rp-rw
           term nil context nil (rp::rw-step-limit rp::rp-state) rp::rp-state state))
         ((mv err node-new) (4vec-to-svex-termlist rw t nil))
         (- (and err
                 (hard-error
                  'svexl-nodelist-simplify
                  "4vec-to-svex returned an error for the term: ~p0 ~%"
                  (list (cons #\0 rw))))))
      (mv node-new rp::rp-state)))

  (define svex-simplify-linearize-aux ((svexl-node-array svexl-node-array-p)
                                       (context)
                                       &key
                                       ((verbose booleanp)
                                        'verbose)
                                       ((cons-count-limit natp)
                                        'cons-count-limit)
                                       ((complete-node-array
                                         svexl-node-array-p)
                                        'complete-node-array)
                                       (state 'state)
                                       (rp::rp-state 'rp::rp-state))
    :returns (mv (svexl-new svexl-node-array-p :hyp (svexl-node-array-p
                                                     svexl-node-array))
                 (integerp-alist alistp)
                 (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP :hyp (RP::VALID-RP-STATE-SYNTAXP
                                                                    rp::rp-state)))
    :verify-guards nil
    :guard (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                (rp::context-syntaxp context)
                )
    :prepwork
    ((local
      (in-theory (e/d (svexl-p)
                      (rp::rp-statep
                       rp::preprocess-then-rp-rw)))))
    (if (atom svexl-node-array)
        (mv nil nil rp::rp-state)
      (b* (((mv rest rest-integerp rp::rp-state)
            (svex-simplify-linearize-aux (cdr svexl-node-array)  context))

           (node-id (caar svexl-node-array))
           (- (b* (((unless verbose) nil)
                   (total-size (nfix (and complete-node-array
                                          (caar complete-node-array))))
                   (i (floor total-size 20))
                   ((when (< i 2)) nil)
                   (j (mod node-id i)))
                (and (eql j 0)
                     (cw "SVL::svex-simplify-linearize progress: ~p0\% ~%" (* 5 (floor node-id i))))))

           (node (cdar svexl-node-array))
           ((mv node integerp rp::rp-state)
            (svexl-node-simplify node context rest-integerp)))

        (mv (acons node-id node rest)
            (hons-acons node-id integerp rest-integerp)
            rp::rp-state)))
    ///
    (local
     (defthm lemma1
       (implies (svexl-node-array-p svexl-node-array)
                (alistp svexl-node-array))))
    (verify-guards svex-simplify-linearize-aux-fn
      :hints (("Goal"
               :in-theory (e/d ()
                               (mod
                                floor))))))

  (define svex-simplify-linearize ((svex svex-p)
                                   (context)
                                   &key
                                   ((verbose booleanp)
                                    'verbose)
                                   ((cons-count-limit natp)
                                    'cons-count-limit)
                                   (state 'state)
                                   (rp::rp-state 'rp::rp-state))
    :guard (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                (rp::context-syntaxp context)
                )
    :returns (mv (svexl-new svexl-p :hyp (svex-p svex))
                 (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP :hyp (RP::VALID-RP-STATE-SYNTAXP
                                                                    rp::rp-state)))
    (b* ((svexl (svex-to-svexl svex))
         (- (and verbose (cw "There are ~p0 nodes ~%"
                             (if (and (consp (svexl->node-array svexl))
                                      (consp (car (svexl->node-array svexl))))
                                 (caar (svexl->node-array svexl))
                               0))))
         (node-array (svexl->node-array svexl))
         (?complete-node-array (make-fast-alist node-array))
         ((mv node-array ?integerp-alist rp::rp-state)
          (svex-simplify-linearize-aux node-array context))
         #|(- (cw "integerp-alist: ~p0 ~%" integerp-alist))|#
         (top-node (svexl->top-node svexl))
         ((mv top-node & rp::rp-state)
          (svexl-node-simplify top-node context integerp-alist))
         (- (fast-alist-clean complete-node-array))
         (- (fast-alist-clean integerp-alist)))
      (mv (make-svexl
           :node-array node-array
           :top-node top-node)
          rp::rp-state)))

  (define svexlist-simplify-linearize ((svexlist svexlist-p)
                                       (context)
                                       &key
                                       ((verbose booleanp)
                                        'verbose)
                                       ((cons-count-limit natp)
                                        'cons-count-limit)
                                       (state 'state)
                                       (rp::rp-state 'rp::rp-state))
    :guard (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                (rp::context-syntaxp context)
                )
    :returns (mv (svexllist-new svexllist-p :hyp (svexlist-p svexlist))
                 (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP :hyp (RP::VALID-RP-STATE-SYNTAXP
                                                                    rp::rp-state)))
    (b* ((svexllist (svexlist-to-svexllist svexlist))
         (node-array (svexllist->node-array svexllist))
         (?complete-node-array (make-fast-alist node-array))
         (top-node (svexllist->top-nodelist svexllist))
         ((mv node-array & rp::rp-state)
          (svex-simplify-linearize-aux node-array  context))
         ((mv top-node rp::rp-state)
          (svexl-nodelist-simplify top-node  context))
         (- (fast-alist-clean complete-node-array)))
      (mv (make-svexllist
           :node-array node-array
           :top-nodelist top-node)
          rp::rp-state))))

(local
 (defthm RP::rp-statep-of-UPDATE-NOT-SIMPLIFIED-ACTION
   (implies (and (rp::rp-statep RP::RP-STATE)
                 (symbolp x))
            (rp::rp-statep
             (RP::UPDATE-NOT-SIMPLIFIED-ACTION x RP::RP-STATE)))
   :hints (("Goal"
            :do-not-induct t
            :in-theory (e/d (rp::rp-statep
                             RP::UPDATE-NOT-SIMPLIFIED-ACTION)
                            ())))))

(local
 (defthm RP::VALID-RP-STATE-SYNTAXP-of-UPDATE-NOT-SIMPLIFIED-ACTION
   (implies (and (RP::VALID-RP-STATE-SYNTAXP RP::RP-STATE)
                 (symbolp x))
            (RP::VALID-RP-STATE-SYNTAXP
             (RP::UPDATE-NOT-SIMPLIFIED-ACTION x RP::RP-STATE)))
   :hints (("Goal"
            :do-not-induct t
            :use ((:instance RP::rp-statep-of-UPDATE-NOT-SIMPLIFIED-ACTION)
                  (:instance RP::VALID-RP-STATE-SYNTAXP-AUX-necc
                             (key (RP::VALID-RP-STATE-SYNTAXP-AUX-WITNESS
                                   (RP::UPDATE-NOT-SIMPLIFIED-ACTION x RP::RP-STATE)))))
            :in-theory (e/d (RP::VALID-RP-STATE-SYNTAXP
                             RP::RULES-ALIST-OUTSIDE-IN-GET
                             RP::RULES-ALIST-INSIDE-OUT-GET
                             RP::UPDATE-NOT-SIMPLIFIED-ACTION)
                            (rp::rp-statep
                             (:REWRITE
                              RP::VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP)
                             (:DEFINITION RP::VALID-RULESP)
                             (:DEFINITION
                              RP::VALID-RULEP)
                             (:DEFINITION RP::VALID-RULEP-SK)))))))

#!RP
(local
 (defthm UNSIGNED-BYTE-P-and-natp-of-rw-step-limit
   (implies (rp-statep rp-state)
            (and (UNSIGNED-BYTE-P 58 (RW-STEP-LIMIT RP-STATE))
                 (NATP (RW-STEP-LIMIT RP-STATE))))
   :hints (("Goal"
            :in-theory (e/d (rp-statep
                             rw-step-limitp)
                            ())))))

#!RP
(local
 (defthm VALID-RP-STATE-SYNTAXP-implies-rp-statep
   (implies (VALID-RP-STATE-SYNTAXP rp-state)
            (rp-statep rp-state))
   :hints (("Goal"
            :in-theory (e/d (VALID-RP-STATE-SYNTAXP)
                            ())))))

(define svex-simplify-to-4vec ((svex svex-p)
                               &key
                               (state 'state)
                               (rp::rp-state 'rp::rp-state)
                               (context 'nil)
                               (linearize ':auto)
                               (runes 'nil)
                               (runes-outside-in 'nil)
                               (reload-rules 't)
                               (only-local 'nil)
                               (vars-are-integer 'nil)
                               ((verbose booleanp)
                                'nil))

  :stobjs (state rp::rp-state)
  :returns (mv (rw)
               (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP
                                 :hyp
                                 (if reload-rules
                                     (rp::rp-statep rp::rp-state)
                                   (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))))
  :prepwork
  ((local
    (include-book "projects/rp-rewriter/proofs/rp-correct" :dir :system))
   (local
    (include-book "projects/rp-rewriter/proofs/rp-rw-lemmas" :dir :system))
   (local
    (include-book "projects/rp-rewriter/proofs/extract-formula-lemmas" :dir :system))
   (local
    (in-theory (e/d (rp::rp-termp
                     TRUE-LIST-LISTP
                     rp::rp-term-listp)
                    (rp::rules-alistp
                     state-p
                     rp::rp-statep
                     rp::not-simplified-action
                     rp::update-not-simplified-action
                     rp::preprocess-then-rp-rw
                     ;;rp::rp-meta-rule-recs-p
                     rp::rw-step-limit
                     table-alist
                     (:type-prescription natp-rp-rw-step-limit)
                     INTEGER-RANGE-P
                     (:definition rp::rp-rw-subterms)
                     (:rewrite
                      rp::valid-rules-alistp-implies-rules-alistp)
                     (:definition rp::valid-rules-alistp)
                     (:definition rp::valid-rulesp)
                     (:definition rp::valid-rulep))))))

  :guard (and
          (or reload-rules
              (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))
          (or (rp::context-syntaxp context)
              (cw "ATTENTION! Given context must satisfy rp::context-syntaxp ~%")))

  (b* ((- (and reload-rules (rp::check-if-clause-processor-up-to-date (w state))))
       (linearize (or only-local
                      (if (eq linearize ':auto)
                          (zp (cons-count-compare svex 2048))
                        linearize)))

       ;; do not let rp-rewriter complain when simplified term is not ''t
       (tmp-rp-not-simplified-action (rp::not-simplified-action rp::rp-state))
       (rp::rp-state (rp::update-not-simplified-action :none rp::rp-state))
       (rp::rp-state (if reload-rules (rp::rp-state-new-run rp::rp-state)
                       rp::rp-state))
       ((mv runes runes-outside-in)
        (if (or runes runes-outside-in)
            (mv (acl2::append-without-guard
                 *svex-simplify-meta-rules* runes)
                (acl2::append-without-guard
                 *svex-simplify-meta-rules-outside-in*
                 runes-outside-in))
          (mv nil nil)))

       (rp::rp-state (if reload-rules
                         (rp::rp-state-init-rules runes runes-outside-in nil
                                                  rp::rp-state state
                                                  :ruleset 'svex-simplify-rules)
                       rp::rp-state))

       (svex-env `(rp::rp 'sv::svex-env-p svex-env))

       (term `(svex-eval-wog ',svex ,svex-env))

       (context (if vars-are-integer
                    (b* ((vars (sv::svex-vars svex)))
                      (append
                       context
                       (loop$ for var in vars collect
                              `(integerp (svex-env-fastlookup-wog ',var
                                                                  ,svex-env)))))
                  context))
       (context (if (rp::context-syntaxp context) context nil))
       ((mv context rp::rp-state)
        (rp::rp-rw-subterms
         context nil nil  (rp::rw-step-limit rp::rp-state)  rp::rp-state state))
       (context (if (rp::context-syntaxp context) context nil))

       ((mv svexl rp::rp-state)
        (if linearize
            (svex-simplify-linearize svex context
                                     :cons-count-limit
                                     (nfix only-local))
          (mv nil rp::rp-state)))
       (term (if linearize
                 `(svexl-eval-wog ',svexl ,svex-env)
               term))

       ((mv rw rp::rp-state)
        (if only-local
            (mv term rp::rp-state)
          (rp::rp-rw
           term nil context nil  (rp::rw-step-limit rp::rp-state) rp::rp-state state)))

       ;; restore rp-state setting
       (rp::rp-state (rp::update-not-simplified-action
                      tmp-rp-not-simplified-action rp::rp-state))

       )
    (mv rw rp::rp-state)))

(define svexlist-simplify-to-4vec ((svexlist svexlist-p)
                                   &key
                                   (state 'state)
                                   (rp::rp-state 'rp::rp-state)
                                   (context 'nil)
                                   (linearize ':auto)
                                   (reload-rules 't)
                                   (runes 'nil)
                                   (runes-outside-in 'nil)
                                   (only-local 'nil)
                                   (vars-are-integer 'nil)
                                   ((verbose booleanp)
                                    'nil))

  :stobjs (state rp::rp-state)
  :returns (mv (rw)
               (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP
                                 :hyp
                                 (if reload-rules
                                     (rp::rp-statep rp::rp-state)
                                   (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))))
  :prepwork
  ((local
    (include-book "projects/rp-rewriter/proofs/rp-correct" :dir :system))
   (local
    (include-book "projects/rp-rewriter/proofs/rp-rw-lemmas" :dir :system))
   (local
    (include-book "projects/rp-rewriter/proofs/extract-formula-lemmas" :dir :system))
   (local
    (in-theory (e/d (rp::rp-termp
                     TRUE-LIST-LISTP
                     rp::rp-term-listp)
                    (rp::rules-alistp
                     state-p
                     rp::rp-statep
                     rp::not-simplified-action
                     rp::update-not-simplified-action
                     rp::preprocess-then-rp-rw

                     rp::rw-step-limit
                     table-alist
                     (:type-prescription natp-rp-rw-step-limit)

                     (:definition rp::rp-rw-subterms)
                     (:rewrite
                      rp::valid-rules-alistp-implies-rules-alistp)
                     (:definition rp::valid-rules-alistp)
                     (:definition rp::valid-rulesp)
                     (:definition rp::valid-rulep))))))

  :guard (and (or reload-rules
                  (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))
              (or (rp::context-syntaxp context)
                  (cw "WARNING!  Given context must satisfy rp::context-syntaxp ~%")))

  (b* ((- (and reload-rules (rp::check-if-clause-processor-up-to-date (w state))))
       (linearize (or only-local
                      (if (eq linearize ':auto)
                          (zp (cons-count-compare svexlist 2048))
                        linearize)))

       ;; do not let rp-rewriter complain when simplified term is not ''t
       (tmp-rp-not-simplified-action (rp::not-simplified-action rp::rp-state))
       (rp::rp-state (rp::update-not-simplified-action :none rp::rp-state))

       ((mv runes runes-outside-in)
        (if (or runes runes-outside-in)
            (mv (acl2::append-without-guard
                 *svex-simplify-meta-rules* runes)
                (acl2::append-without-guard
                 *svex-simplify-meta-rules-outside-in*
                 runes-outside-in))
          (mv nil nil)))

       (rp::rp-state (if reload-rules (rp::rp-state-new-run rp::rp-state) rp::rp-state))
       (rp::rp-state (if reload-rules (rp::rp-state-init-rules runes runes-outside-in nil
                                                               rp::rp-state
                                                               state
                                                               :ruleset 'svex-simplify-rules)
                       rp::rp-state))

       (svex-env `(rp::rp 'sv::svex-env-p svex-env))

       (term `(svexlist-eval-wog ',svexlist ,svex-env))

       (context (if vars-are-integer
                    (b* ((vars (sv::svexlist-vars svexlist)))
                      (append
                       context
                       (loop$ for var in vars collect
                              `(integerp (svex-env-fastlookup-wog ',var
                                                                  ,svex-env)))))
                  context))
       ;; for guards:
       (context (if (rp::context-syntaxp context) context nil))

       ((mv context rp::rp-state)
        (rp::rp-rw-subterms
         context nil nil (rp::rw-step-limit rp::rp-state)
         rp::rp-state state))

       (context (if (rp::context-syntaxp context) context nil))

       ((mv svexllist rp::rp-state)
        (if linearize
            (svexlist-simplify-linearize svexlist context
                                         :cons-count-limit (nfix only-local))
          (mv nil rp::rp-state)))
       (term (if linearize
                 `(svexllist-eval-wog ',svexllist ,svex-env)
               term))

       ((mv rw rp::rp-state)
        (if only-local
            (mv term rp::rp-state)
          (rp::rp-rw
           term nil context  nil  (rp::rw-step-limit rp::rp-state) rp::rp-state state)))

       ;; restore rp-state setting
       (rp::rp-state (rp::update-not-simplified-action
                      tmp-rp-not-simplified-action rp::rp-state))

       )
    (mv rw rp::rp-state)))

(define locally-simplified-to-svex (term)
  ;; :guard (case-match term
  ;;          (('svexl-eval-wog ('quote svexl) &)
  ;;           (svexl-p svexl))
  ;;          (('svexllist-eval-wog ('quote svexllist) &)
  ;;           (svexllist-p svexllist)))
  :returns (mv (err)
               (res svex-p))
  (case-match term
    (('svexl-eval-wog ('quote svexl) &)
     (if (svexl-p svexl)
         (mv nil (svexl-to-svex svexl))
       (progn$ (hard-error 'locally-simplified-to-svex
                           "ATTENTION! The locally simplification yielded something ~
other than svexl-p~%"
                           (list (cons #\0 term)))
               (mv t 0))))
    (&
     (progn$ (hard-error 'locally-simplified-to-svex
                         "ATTENTION! Something is wrong with the only locally ~
simplified term ~%"
                         (list (cons #\0 term)))
             (mv t 0)))))

(define locally-simplified-to-svexlist (term)
  ;; :guard (case-match term
  ;;          (('svexl-eval-wog ('quote svexl) &)
  ;;           (svexl-p svexl))
  ;;          (('svexllist-eval-wog ('quote svexllist) &)
  ;;           (svexllist-p svexllist)))
  :returns (mv (err)
               (res svexlist-p))
  (case-match term
    (('svexllist-eval-wog ('quote svexllist) &)
     (if (svexllist-p svexllist)
         (mv nil (svexllist-to-svexlist svexllist))
       (progn$ (hard-error 'locally-simplified-to-svex
                           "ATTENTION! The locally simplification yielded something ~
other than svexllist-p~%"
                           (list (cons #\0 term)))
               (mv t nil))))
    (&
     (progn$ (hard-error 'locally-simplified-to-svexlist
                         "ATTENTION! Something is wrong with the only locally ~
simplified term ~%"
                         (list (cons #\0 term)))
             (mv t nil)))))

(define svex-simplify ((svex svex-p)
                       &KEY
                       (state 'state)
                       (rp::rp-state 'rp::rp-state)
                       (context 'nil) ;; "Have more context for variables."
                       (runes 'nil)
                       (reload-rules 't)
                       (linearize ':auto)
                       (only-local 'nil)
                       (vars-are-integer 'nil)
                       ((verbose booleanp)
                        'nil)
                       )
  :parents (acl2::svl rp::rp-rewriter/applications)
  :short "Try to simplify an sv::svex structure with @(see rp::rp-rewriter) using
                           regular rewrite rules about 4vec functions."
  :long "

<p>A given @(see sv::SVEX) is converted to its equivalent representation with 4vec
functions, and they are rewrittern with existing rewrite rules using
RP-Rewrtier. Finally, the resulting term is converted back to its equivalent
SVEX form. Including this book already comes with a library of rewrite rules to
simplify 4vec-functions. Users may choose to change this rewriting scheme by
adding or disabling rewrite rules. The arguments of svex-simplify are:</p>

<p>context: a list of known facts. The terms should be tanslated. The variables
                       in the given svex will appear in the term as
                       (svl::svex-env-fastlookup-wog 'var svl::svex-env).
</p>

<p>runes: List of rune names that will be used to rewrite 4vec functions. If
nil, RP-Rewriter's rule-set will be used.
</p>

<p>linearize: It can be either t, nil or :auto (default value). For very big
SVEX structures with a lot of shared structures, we may use this linearize
option to prevent repeated rewriting of the same structure. Linearize uses
@(see svl::svexl) structure to convert svexes to svexl, and rewrite this
smaller structure. It also performs local simplification of the nodes in svexl
that may also prove additional performance benefits for some aggressive
rules. The :auto setting will enable linearize if SVEX is bigger than a certain
size.
</p>

<p>only-local: this option is only relevant when SVEX is linearized. Only the
local nodes in SVEXL will be simplified.
</p>

<p>
</p>

<p> Example Use: </p>
@({
(defconst *test-svex*
   '(sv::partsel 0 3
     (sv::zerox 4
       (sv::concat 3 (sv::concat 2 (sv::concat 1 x y) z) k))))

;; This call will return an equivalent expression for *test-svex*
(svl::svex-simplify *test-svex*)

;; Returned value:
'(CONCAT 1 (PARTSEL 0 1 X)
         (CONCAT 1 (PARTSEL 0 1 Y)
                 (PARTSEL 0 1 Z)))

;; If you would like to see from what 4vec term this SVEX is generated, you may
;; also run svl::svex-simplify-to-4vec
(svl::svex-simplify-to-4vec *test-svex*)

;; Returned value
'(4VEC-CONCAT$
      '1
      (BITS (SVEX-ENV-FASTLOOKUP-WOG 'X
                                     (RP 'SVEX-ENV-P SVEX-ENV))
            '0
            '1)
      (4VEC-CONCAT$ '1
                    (BITS (SVEX-ENV-FASTLOOKUP-WOG 'Y
                                                   (RP 'SVEX-ENV-P SVEX-ENV))
                          '0
                          '1)
                    (BITS (SVEX-ENV-FASTLOOKUP-WOG 'Z
                                                   (RP 'SVEX-ENV-P SVEX-ENV))
                          '0
                          '1)))

})

"
  :stobjs (state rp::rp-state)
  :returns (mv (res svex-p)
               (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP
                                 :hyp
                                 (if reload-rules
                                     (rp::rp-statep rp::rp-state)
                                   (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))))
  :guard (and (or reload-rules
                  (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))
              (or (rp::context-syntaxp context)
                  (cw "ATTENTION!  Given context must satisfy rp::context-syntaxp ~%")))
  (b* ((linearize (if (eq linearize ':auto)
                      (zp (cons-count-compare svex 2048))
                    linearize))
       ((mv rw rp::rp-state)
        (svex-simplify-to-4vec svex
                               :state state
                               :context context
                               :runes runes
                               :reload-rules reload-rules
                               :linearize linearize
                               :only-local only-local
                               :vars-are-integer vars-are-integer
                               :verbose verbose))
       (- (clear-memoize-table '4vec-to-svex))
       ((mv err svex-res)
        (if only-local
            (locally-simplified-to-svex rw)
          (4vec-to-svex rw nil linearize)))
       (- (and err
               (hard-error
                'svex-simplify
                "There was a problem while converting the term below to its ~
svex equivalent. Read above for the printed messages. ~p0 ~%"
                (list (cons #\0 rw))))))
    (mv svex-res rp::rp-state)))

(define svexlist-simplify ((svexlist svexlist-p)
                           &KEY
                           (state 'state)
                           (rp::rp-state 'rp::rp-state)
                           (context 'nil) ;; "Have more context for variables."
                           (runes 'nil)
                           ;; "if need to work with only certain rules other than current-theory"
                           (reload-rules 't)
                           (linearize ':auto)
                           (only-local 'nil)
                           (vars-are-integer 'nil)
                           ((verbose booleanp)
                            'nil)
                           )
  :parents (svex-simplify)
  :short "Try to simplify an sv::svexlist structure with rp::RP-Rewriter using
                           regular rewrite rules about 4vec functions."
  :long "Arguments of svexlist-simplify are the same as @(see svl::svex-simplify)"
  :stobjs (state rp::rp-state)
  :returns (mv (res svexlist-p)
               (rp::rp-state-res RP::VALID-RP-STATE-SYNTAXP
                                 :hyp
                                 (if reload-rules
                                     (rp::rp-statep rp::rp-state)
                                   (RP::VALID-RP-STATE-SYNTAXP rp::rp-state))))
  :guard (and (or reload-rules
                  (rp::valid-rp-state-syntaxp rp::rp-state))
              (or (rp::context-syntaxp context)
                  (cw "ATTENTION!  Given context must satisfy rp::context-syntaxp ~%")))
  (b* ((linearize (if (eq linearize ':auto)
                      (zp (cons-count-compare svexlist 2048))
                    linearize))
       ((mv rw rp::rp-state)
        (svexlist-simplify-to-4vec svexlist
                                   :state state
                                   :context context
                                   :runes runes
                                   :reload-rules reload-rules
                                   :linearize linearize
                                   :only-local only-local
                                   :vars-are-integer vars-are-integer
                                   :verbose verbose))
       ((mv err svexlist-res)
        (if only-local
            (locally-simplified-to-svexlist rw)
          (4vec-to-svex-termlist rw nil linearize)))
       (- (and err
               (hard-error
                'svexlist-simplify
                "There was a problem while converting the term below to its ~
svex equivalent. Read above for the printed messages. ~p0 ~%"
                (list (cons #\0 rw))))))
    (mv svexlist-res rp::rp-state)))

#|(acl2::defxdoc svex-simplify
:parents (projects/svl)
:short "Using proved rewrite rules for svex-eval and 4vec
functions, rewrites an @('sv::svex')."
:long "<p> SVEX-SIMPLIFY wraps an sv expression with an @('sv::svex-eval'),
attaches some optional hypotheses for extra context and runs the main
rp-rewriter function to perform rewriting, and then it converts the resulting
term back to an equivalent sv expression. If you want to avoid converting back
to svex expression but get the rewritten term you may use SVEX-SIMPLIFY-TO-4VEC
</p>

<p> Example Use: </p>

@({
(defconst *test-svex*
'(sv::partsel 0 3
(sv::zerox 4
(sv::concat 3 (sv::concat 2 (sv::concat 1 x y) z) k))))

;; This call will return an equivalent expression for *test-svex*
(svl::svex-simplify *test-svex*)

;; Returned value:
'(CONCAT 1 (PARTSEL 0 1 X)
(CONCAT 1 (PARTSEL 0 1 Y)
(PARTSEL 0 1 Z)))

;; This call will what the term is rewritten to before trying to convert it
;; back to svex format.
(svl::svex-simplify-to-4vec *test-svex*)

;; Returned value
'(4VEC-CONCAT$
'1
(BITS (SVEX-ENV-FASTLOOKUP-WOG 'X
(RP 'SVEX-ENV-P SVEX-ENV))
'0
'1)
(4VEC-CONCAT$ '1
(BITS (SVEX-ENV-FASTLOOKUP-WOG 'Y
(RP 'SVEX-ENV-P SVEX-ENV))
'0
'1)
(BITS (SVEX-ENV-FASTLOOKUP-WOG 'Z
(RP 'SVEX-ENV-P SVEX-ENV))
'0
'1)))
})

<p> Users may also add more rewrite rules to have a different rewriting scheme than the
one that comes with this book. Should these new rewrite rules need more context
about the variables, you may pass an extra hyp argument (should be a translated term) to
SVEX-SIMPLIFY-TO-4VEC or SVEX-SIMPLIFY. Note: the functions assume that even without any
hypothesis, the functions assume the dummy svex environment satisfy SV::SVEX-ENV-P .</p>

<p> If you anticipate to call svl::svex-simplify or svl::rw-svex-to-4vec many
times for the same set of rules, you may want to use
(svl::svex-simplify-preload). This function call will return a structure and can
be passed to SVEX-SIMPLIFY. and SVEX-SIMPLIFY-TO-4VEC with the key
:preloded-rules. This avoids the repeated processing of rules from the
world. When you are finished, it is advisable to execute (svex-rw-free-preload
svex-rw-free-preloaded state) in order to free the fast-alists created. </p>

")||#

;; (trace$ (svex-simplify-linearize-fn :entry (car acl2::arglist)))

;; (svex-simplify  #!SV'(bitor (bitand (bitor a b) (bitor (bitor a b)
;;                                                        (bitor a b)))
;;                             (bitor (bitor a b)
;;                                    (bitor a b))))

;; (svex-simplify  #!SV'(bitor (bitand (bitor a b) (bitor (bitor a b)
;;                                                        (bitor a b)))
;;                             (bitor (bitor a b)
;;                                    (bitor a b)))
;;                 :linearize t)
