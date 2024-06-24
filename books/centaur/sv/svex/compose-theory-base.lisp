; SV - Symbolic Vector Hardware Analysis Framework
; Copyright (C) 2014-2015 Centaur Technology
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
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
; Original author: Sol Swords <sswords@centtech.com>

(in-package "SV")
(include-book "svex-lattice")
(include-book "rewrite-base")
(include-book "alist-equiv")
(include-book "rsh-concat")
(include-book "std/basic/two-nats-measure" :dir :system)
(local (include-book "std/lists/acl2-count" :dir :system))
(local (include-book "std/basic/arith-equivs" :dir :system))
(local (include-book "std/lists/sets" :dir :system))
(local (include-book "arithmetic/top" :Dir :system))
(local (include-book "clause-processors/find-subterms" :dir :system))
(local (include-book "centaur/bitops/ihsext-basics" :dir :system))
(local (include-book "alist-thms"))
(local (std::add-default-post-define-hook :fix))


;; Theory for evaluation of not-necessarily-monotonic networks.

;; For networks of monotonic update functions, a least fixpoint is a sensible
;; spec for a complete network evaluation (neteval for short).  E.g., for
;; 4v-sexprs, which had strictly monotonic semantics, we had the half-lattice
;; relation x [ 1, x [ 0, x [ z, we said a complete neteval is a least
;; fixpoint: specifically, a valuation function v (a mapping from signals to
;; values) is a fixpoint if for any signal s with assignment function
;; f_s, v(s) = f_s(v).  It is a least fixpoint if for every fixpoint v', v [=
;; v' (pointwise).  Because of monotonicity we can show that there is always a
;; least fixpoint for every network of 4v-sexpr assignments.

;; For SV, we don't have monotonicity because we support nonmonotonic
;; SystemVerilog operators like ===.  As a consequence we can't show that we
;; have a unique least fixpoint.  In fact, there are simple networks that have
;; multiple equally valid least fixpoints.  E.g.:

;; assign a = (a === 1'bx) ?
;;                         (b === 1'bx) ?
;;                                       1'b0
;;                                       : b 
;;                         : a;
;; 
;; assign b = (b === 1'bx) ?
;;                         (a === 1'bx) ?
;;                                       1'b1
;;                                       : a 
;;                         : b;

;; We can usually reach a least fixpoint by starting all internal signals with
;; a value of X and evaluating assignments until a fixpoint is reached.
;; However, in this case the fixpoint we reach depends whether we evaluate the
;; assignment for a or b first.  If we evaluate a's assignment first, then both
;; signals become 0, and if we evaluate b's first, both signals become 1.

;; Therefore, for networks of SVEX assignments we use a weaker notion of an
;; neteval.  Namely:

;; A valuation of signals is a neteval if for each signal, each bit of its
;; value either is X or is the value of the corresponding bit of the signal's
;; assignment function applied to an(other) neteval of the signals.

;; A neteval may be a fixpoint, but isn't necessarily.  We can't ensure
;; that there exists a fixpoint neteval; e.g.
;;    assign a = (a === 1'b1) ? 1'b0 : 1'b1;
;; It may be possible to ensure that if there exists a fixpoint network
;; evaluation, then we find one; but at the moment we don't make that
;; guarantee.

;; We can't define a neteval directly because its definition involves a
;; recursion over an existential quantifier.  Instead we define a "neteval
;; ordering" as a specification for how signals are composed together, and
;; define a neteval as an assignment for which a neteval ordering exists.  In
;; fact, it turns out to be more practical to work with a definition of neteval
;; in terms of an intermediate relation we call a "netcomp" between sets of
;; assignments (svex-alists).  A svex-alist X is a netcomp of a svex-alist Y if
;; it can be derived (up to svex-alist-eval-equiv) from Y by composing signals
;; according to a neteval-ordering.  A valuation of signals is a neteval of a
;; network, then, iff it is an evaluation of a netcomp of that network under an
;; environment where all internal signals are bound to X.  One direction of
;; this iff (the more important one) is proved in neteval-p-of-netcomp-eval,
;; below; the other direction is pending.

;; It is much easier to reason about the netcomp relation than to reason about
;; netevals and neteval-orderings directly, especially once a few properties
;; are established.

;; Reflexivity -- (netcomp-p x x)
;; Transitivity -- (implies (and (netcomp-p x y) (netcomp-p y z)) (netcomp-p x z))
;; Union -- (implies (and (netcomp-p x z) (netcomp-p y z)) (netcomp-p (append x y) z))
;; Reduce -- (implies (netcomp-p x y) (netcomp-p (svex-alist-reduce keys x) y))
;; Compose -- (implies (and (netcomp-p x z) (netcomp-p y z)) (netcomp-p (svex-alist-compose x y) z))

;; With these properties we usually don't need to reason about the existence of
;; neteval-orderings anymore, just express our operations as combinations of
;; the above.
;; --------------------------------------------------------------------


(fty::deftypes neteval-ordering
  ;; A neteval-ordering is a mapping from variables (internal signals)
  ;; to sigorderings (specifications for how that signal should be composed).
  (fty::defmap neteval-ordering
    :key-type svar
    :val-type neteval-sigordering
    :true-listp t
    :measure (two-nats-measure (acl2-count x) 0))
  ;; A sigordering is a series of segments giving the instructions for
  ;; composing slices of a variable.  Each segment has a width and an
  ;; ordering-or-null, and the series ends with a remainder which gives an
  ;; ordering for the rest of the variable.
  (fty::deftagsum neteval-sigordering
    (:segment ((width posp :rule-classes :type-prescription)
               (ord neteval-ordering-or-null-p)
               (rest neteval-sigordering-p)))
    (:remainder ((ord neteval-ordering-or-null-p)))
    :measure (two-nats-measure (acl2-count x) 1)
    :base-case-override :remainder)
  ;; A neteval-ordering-or-null says either (null) don't compose this signal,
  ;; just leave it bound to itself, or (ordering) gives a neteval ordering to
  ;; be composed with its assignment.
  (fty::deftagsum neteval-ordering-or-null
    (:null ())
    (:ordering ((ord neteval-ordering-p)))
    :measure (two-nats-measure (acl2-count x) 0)
    :base-case-override :null))

(fty::deffixcong neteval-ordering-equiv neteval-ordering-equiv (append x y) x)
(fty::deffixcong neteval-ordering-equiv neteval-ordering-equiv (append x y) y)


;; (define svex-network-join-envs ((network svex-alist-p) ;; assignments for internal signals
;;                                 (internal-env svex-env-p)
;;                                 (input-env svex-env-p))
;;   :returns (env svex-env-p)
;;   (append (svex-env-extract (svex-alist-keys network) internal-env)
;;           (svex-env-fix input-env))
;;   ///
;;   (defret boundp-of-<fn>
;;     (iff (svex-env-boundp var env)
;;          (or (svex-lookup var network)
;;              (svex-env-boundp var input-env))))

;;   (defret lookup-of-fn
;;     (equal (svex-env-lookup var env)
;;            (if (svex-lookup var network)
;;                (svex-env-lookup var internal-env)
;;              (svex-env-lookup var input-env))))

;;   (defcong svex-envs-equivalent svex-envs-similar
;;     (svex-network-join-envs network internal-env input-env) 2)

;;   (defcong svex-envs-equivalent svex-envs-equivalent
;;     (svex-network-join-envs network internal-env input-env) 3)

;;   (defcong svex-envs-similar svex-envs-similar
;;     (svex-network-join-envs network internal-env input-env) 3)

;;   (defcong svex-alist-eval-equiv svex-envs-equivalent
;;     (svex-network-join-envs network internal-env input-env) 1))



;; (local
;;  (defsection svex-eval-of-append-extract
;;    (local
;;     (defthm svex-env-lookup-when-not-svex-env-boundp
;;       (implies (not (svex-env-boundp k x))
;;                (equal (svex-env-lookup k x)
;;                       (4vec-x)))
;;       :hints(("Goal" :in-theory (enable svex-env-lookup svex-env-boundp)))))


;;    (local
;;     (defthm svex-env-boundp-when-not-intersectp
;;       (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env)) vars))
;;                     (member-equal var vars)
;;                     (svarlist-p vars))
;;                (not (svex-env-boundp var env)))
;;       :hints(("Goal" :in-theory (enable svex-env-boundp svex-env-fix alist-keys)))))

;;    (local
;;     (defthm svex-env-boundp-when-subsetp
;;       (implies (and (subsetp (alist-keys (svex-env-fix env)) vars)
;;                     (not (member-equal (svar-fix var) vars))
;;                     (svarlist-p vars))
;;                (not (svex-env-boundp var env)))
;;       :hints(("Goal" :in-theory (enable svex-env-boundp svex-env-fix alist-keys)))))

;;    (local (in-theory (disable acl2::intersectp-equal-commute)))
   

;;    (std::defret-mutual svex-eval-of-append-extract
;;      (defret <fn>-of-append-extract
;;        :pre-bind ((env (append (svex-env-extract vars env1) env2)))
;;        (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env2))
;;                                             (svarlist-fix vars)))
;;                      (subsetp-equal (alist-keys (svex-env-fix env1))
;;                                     (svarlist-fix vars)))
;;                 (equal val
;;                        (svex-eval x (append env1 env2))))
;;        :hints ('(:expand ((:free (env) <call>)))
;;                ;; (and stable-under-simplificationp
;;                ;;      '(:in-theory (enable svex-env-boundp svex-env-lookup)))
;;                )
;;        :fn svex-eval)
;;      (defret <fn>-of-append-extract
;;        :pre-bind ((env (append (svex-env-extract vars env1) env2)))
;;        (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env2))
;;                                             (svarlist-fix vars)))
;;                      (subsetp-equal (alist-keys (svex-env-fix env1))
;;                                     (svarlist-fix vars)))
;;                 (equal vals
;;                        (svexlist-eval x (append env1 env2))))
;;        :hints ('(:expand ((:free (env) <call>))))
;;        :fn svexlist-eval)
;;      :mutual-recursion svex-eval)))

(define pair-keys ((keys true-listp) val)
  :returns (alist alistp)
  (if (atom keys)
      nil
    (cons (cons (car keys) val)
          (pair-keys (cdr keys) val)))
  ///
  (defret lookup-in-<fn>
    (equal (hons-assoc-equal key alist)
           (and (member-equal key keys)
                (cons key val)))))

(local (in-theory (enable svex-lookup-of-cons)))





(define svex-alist-compextract ((keys svarlist-p)
                            (alist svex-alist-p))
  :returns (sub-alist svex-alist-p)
  (if (atom keys)
      nil
    (let ((look (svex-compose-lookup (car keys) alist)))
      (cons (cons (svar-fix (car keys)) look)
            (svex-alist-compextract (cdr keys) alist))))
  ///

  (defret svex-alist-eval-of-svex-alist-compextract
    (equal (svex-alist-eval sub-alist env)
           (svex-env-extract keys (append (svex-alist-eval alist env)
                                          env)))
    :hints(("Goal" :in-theory (enable svex-env-extract
                                      svex-compose-lookup)
            :induct t
            :expand ((svex-alist-eval nil env)
                     (:free (var) (svex-eval (svex-var var) env))
                     (:free (a b) (svex-alist-eval (cons a b) env))))))

  (defret lookup-in-svex-alist-compextract
    (equal (svex-lookup v sub-alist)
           (and (member (svar-fix v) (svarlist-fix keys))
                (svex-compose-lookup v alist)))
    :hints(("Goal"
            :in-theory
            (e/d (svex-lookup hons-assoc-equal svarlist-fix)
                 (hons-assoc-equal-of-svex-alist-fix)))))

  (defret compose-lookup-in-svex-alist-compextract
    (equal (svex-compose-lookup v sub-alist)
           (if (member (svar-fix v) (svarlist-fix keys))
               (svex-compose-lookup v alist)
             (svex-var v)))
    :hints(("Goal"
            :in-theory
            (e/d (svex-compose-lookup hons-assoc-equal svarlist-fix)
                 (hons-assoc-equal-of-svex-alist-fix)))))

  (defcong svex-alist-compose-equiv svex-alist-eval-equiv (svex-alist-compextract keys alist) 2))


(defsection rsh-concat
  ;; theorems about svex-rsh and svex-concat needed in this book, but maybe generally applicable
  (defcong svex-eval-equiv svex-eval-equiv (svex-rsh n x) 2
    :hints((and stable-under-simplificationp
                `(:expand (,(car (last clause)))))))

  (defthm svex-rsh-of-0
    (svex-eval-equiv (svex-rsh 0 x) x)
    :hints(("Goal" :in-theory (enable svex-eval-equiv
                                      svex-apply))))

  (defthm svex-rsh-of-svex-rsh
    (svex-eval-equiv (svex-rsh n (svex-rsh m x))
                     (svex-rsh (+ (nfix n) (nfix m)) x))
    :hints(("Goal" :in-theory (enable svex-eval-equiv svex-apply))))

  (defcong svex-eval-equiv svex-eval-equiv (svex-concat n x y) 2
    :hints((and stable-under-simplificationp
                `(:expand (,(car (last clause)))))))

  (defcong svex-eval-equiv svex-eval-equiv (svex-concat n x y) 3
    :hints((and stable-under-simplificationp
                `(:expand (,(car (last clause)))))))

  (defthm svex-compose-of-svex-rsh-under-svex-eval-equiv
    (svex-eval-equiv (svex-compose (svex-rsh n x) a)
                     (svex-rsh n (svex-compose x a)))
    :hints(("Goal" :in-theory (enable svex-eval-equiv))))


  (defthm svex-concat-of-svex-rsh-under-svex-eval-equiv
    (svex-eval-equiv (svex-rsh m (svex-concat n x y))
                     (if (< (nfix m) (nfix n))
                         (svex-concat (- (nfix n) (nfix m))
                                      (svex-rsh m x) y)
                       (svex-rsh (- (nfix m) (nfix n)) y)))
    :hints(("Goal" :in-theory (enable svex-eval-equiv svex-apply))))

  (defthm svex-rsh-of-svex-rsh-under-svex-eval-equiv
    (svex-eval-equiv (svex-rsh m (svex-rsh n x))
                     (svex-rsh (+ (nfix m) (nfix n)) x))
    :hints(("Goal" :in-theory (enable svex-eval-equiv svex-apply)))))

;; Evaluate a neteval ordering with respect to a network of assignments.
;; Properly speaking, the environment here should not bind internal variables
;; (keys) of the network.  But we do look up internal variables in the env when
;; we come to an end point in the ordering, because we want to allow
;; composition with identity mappings.
(defines neteval-ordering-eval
  (define neteval-ordering-eval ((x neteval-ordering-p)
                                 (network svex-alist-p)
                                 (env svex-env-p))

    :verify-guards nil
    :measure (neteval-ordering-count x)
    :returns (neteval svex-env-p)
    ;; For each pair in the neteval-ordering, pair the signal to its
    ;; composition according to its sigordering.
    (b* ((x (neteval-ordering-fix x))
         ((when (atom x))
          nil)
         ((cons signal sigordering) (car x)))
      (cons (cons signal
                  (neteval-sigordering-eval sigordering
                                            signal 0 network env))
            (neteval-ordering-eval (cdr x) network env))))
  (define neteval-sigordering-eval ((x neteval-sigordering-p)
                                    (signal svar-p)
                                    (offset natp)
                                    (network svex-alist-p)
                                    (env svex-env-p))
    :measure (neteval-sigordering-count x)
    :returns (val 4vec-p)
    ;; Concatenate together the compositions specified by the segments of the sigordering.
    (neteval-sigordering-case x
      :segment (4vec-concat (2vec x.width)
                            (4vec-rsh (2vec (lnfix offset))
                                      (neteval-ordering-or-null-eval
                                       x.ord signal network env))
                            (neteval-sigordering-eval x.rest signal (+ x.width (lnfix offset)) network env))
      :remainder (4vec-rsh (2vec (lnfix offset))
                           (neteval-ordering-or-null-eval x.ord signal network env))))
  (define neteval-ordering-or-null-eval ((x neteval-ordering-or-null-p)
                                         (signal svar-p)
                                         (network svex-alist-p)
                                         (env svex-env-p))
    :measure (neteval-ordering-or-null-count x)
    :returns (val 4vec-p)
    (neteval-ordering-or-null-case x
      :null (svex-env-lookup signal env)
      :ordering (svex-eval (svex-compose-lookup signal network)
                           (append (neteval-ordering-eval
                                    x.ord network env)
                                   env))))
    
  ///
  (defun neteval-ordering-selfinduct (x)
    (declare (xargs :measure (len (neteval-ordering-fix x))))
    (b* ((x (neteval-ordering-fix x))
         ((when (atom x)) nil))
      (neteval-ordering-selfinduct (cdr x))))

  (defun neteval-sigordering-ind (x)
    (Declare (Xargs :measure (neteval-sigordering-count x)))
    (neteval-sigordering-case x
      :segment (neteval-sigordering-ind x.rest)
      :remainder nil))


  (local (defthm neteval-ordering-eval-induction
           t
           :rule-classes ((:induction :pattern (neteval-ordering-eval x network env)
                           :scheme (neteval-ordering-selfinduct x)))))


  

  ;; (defret keys-subsetp-of-<fn>
  ;;   (subsetp-equal (alist-keys neteval) (svex-alist-keys network))
  ;;   :hints(("goal" :in-theory (enable alist-keys)
  ;;           :induct t
  ;;           :expand (<call>)))
  ;;   :fn neteval-ordering-eval)

  (defret svex-env-boundp-of-<fn>
    (iff (svex-env-boundp key neteval)
         (and (hons-assoc-equal (svar-fix key) (neteval-ordering-fix x))
              ;; (svex-lookup key network)
              ))
    :hints(("goal" :in-theory (e/d (svex-env-boundp)
                             (hons-assoc-equal-of-neteval-ordering-fix))
            :induct t
             :expand (<call>)))
    :fn neteval-ordering-eval)

  (defret svex-env-lookup-of-<fn>
    (equal (svex-env-lookup key neteval)
           (let* ((look (hons-assoc-equal (svar-fix key) (neteval-ordering-fix x)))
                  (sigordering (cdr look))
                  ;; (function (svex-lookup key network))
                  )
             (if look ;; (and look function)
                 (neteval-sigordering-eval sigordering (svar-fix key) 0 network env)
               (4vec-x))))
    :hints(("goal" :in-theory (e/d (svex-env-lookup)
                             (hons-assoc-equal-of-neteval-ordering-fix))
            :induct t
            :expand (<call>)))
    :fn neteval-ordering-eval)
      ;; hard to predict which of the two will produce better induction scheme
      ;; but for now will go with rightshifting the result since it seems simpler.

  ;; (defcong svex-eval-equiv equal (neteval-ordering-or-null-eval x function network env) 2
  ;;   :hints(("Goal" :expand ((:free (function)
  ;;                            (neteval-ordering-or-null-eval x function network env))))))

  ;; (local (defun-sk neteval-sigordering-eval-svex-eval-cond (x network env)
  ;;          (forall (function function-equiv)
  ;;                  (implies (and (svex-eval-equiv function-equiv (double-rewrite function))
  ;;                                (syntaxp (not (equal function-equiv function))))
  ;;                           (equal (neteval-sigordering-eval x function network env)
  ;;                                  (neteval-sigordering-eval x function-equiv network env))))
  ;;          :rewrite :direct))

  ;; (local (in-theory (disable neteval-sigordering-eval-svex-eval-cond)))

  ;; (local (defthmd neteval-ordering-eval-svex-eval-thm
  ;;          (neteval-sigordering-eval-svex-eval-cond x network env)
  ;;          :hints (("goal" :induct (neteval-sigordering-ind x))
  ;;                  (and stable-under-simplificationp
  ;;                       `(:expand (,(car (last clause))
  ;;                                  (:free (function) (neteval-sigordering-eval x function network env))))))))


  ;; (defcong svex-eval-equiv equal (neteval-sigordering-eval x function network env) 2
  ;;   :hints (("goal" :use (neteval-ordering-eval-svex-eval-thm
  ;;                         neteval-sigordering-eval-svex-eval-cond-necc)
  ;;            :in-theory (disable neteval-sigordering-eval-svex-eval-cond-necc))))


  ;; (defthm-neteval-ordering-eval
  ;;   (defthm svex-eval-equiv-implies-equal-neteval-sigordering-eval-2
  ;;     (implies (svex-eval-equiv function function-equiv)(neteval-sigordering-eval x function network env) 2
  ;;   :hints (("goal" :induct (neteval-sigordering-ind x)
  ;;            :expand ((:free (function) (neteval-sigordering-eval x function network env))))))
  
  ;; (local
  ;;  (defun-sk svex-alist-eval-equiv-implies-equal-neteval-sigordering-eval-2-when-functions-equiv-cond
  ;;    (x function network network-equiv env)
  ;;    (forall function-equiv
  ;;            (implies (double-rewrite (svex-eval-equiv function-equiv function))
  ;;                     (equal (neteval-sigordering-eval x function-equiv network-equiv env)
  ;;                            (neteval-sigordering-eval x function network env))))
  ;;    :rewrite :direct))

  ;; (local (in-theory (disable svex-alist-eval-equiv-implies-equal-neteval-sigordering-eval-2-when-functions-equiv-cond)))

  ;; (local (DEFTHM
  ;;          SVEX-ALIST-EVAL-EQUIV-IMPLIES-SVEX-EVAL-EQUIV-SVEX-LOOKUP-2-rw
  ;;          (IMPLIES (SVEX-ALIST-EVAL-EQUIV ALIST ALIST-EQUIV)
  ;;                   (equal (SVEX-EVAL-EQUIV (SVEX-LOOKUP VAR ALIST)
  ;;                                           (SVEX-LOOKUP VAR ALIST-EQUIV))
  ;;                          t))))

  (defthm-neteval-ordering-eval-flag
    (defthm svex-alist-compose-equiv-implies-equal-neteval-ordering-eval-2
      (implies (svex-alist-compose-equiv network network-equiv)
               (equal (neteval-ordering-eval x network env)
                      (neteval-ordering-eval x network-equiv env)))
      :hints ('(:expand ((:free (network) (neteval-ordering-eval x network env)))))
      :flag neteval-ordering-eval
      :rule-classes :congruence)

    (defthm svex-alist-compose-equiv-implies-equal-neteval-sigordering-eval-4
      (implies (svex-alist-compose-equiv network network-equiv)
               ;; (svex-alist-eval-equiv-implies-equal-neteval-sigordering-eval-2-when-functions-equiv-cond
               ;;  x function network network-equiv env)
               (equal (neteval-sigordering-eval x signal offset network env)
                      (neteval-sigordering-eval x signal offset network-equiv env))
               )
      :hints ('(:expand (;; (svex-alist-compose-equiv-implies-equal-neteval-sigordering-eval-2-when-functions-equiv-cond
                         ;;  x function network network-equiv env)
                         (:free (network signal offset) (neteval-sigordering-eval x signal offset network env)))))
      :flag neteval-sigordering-eval
      :rule-classes :congruence)

    (defthm svex-alist-compose-equiv-implies-equal-neteval-ordering-or-null-eval-3
      (implies (svex-alist-compose-equiv network network-equiv)
               ;; (svex-alist-eval-equiv-implies-equal-neteval-ordering-or-null-eval-2-when-functions-equiv-cond
               ;;  x function network network-equiv env)
               (equal (neteval-ordering-or-null-eval x signal network env)
                      (neteval-ordering-or-null-eval x signal network-equiv env))
               )
      :hints ('(:expand (;; (svex-alist-eval-equiv-implies-equal-neteval-ordering-or-null-eval-2-when-functions-equiv-cond
                         ;;  x function network network-equiv env)
                         (:free (network signal offset) (neteval-ordering-or-null-eval x signal network env)))))
      :flag neteval-ordering-or-null-eval
      :rule-classes :congruence))

  ;; (defcong svex-alist-eval-equiv equal (neteval-ordering-eval x network env) 2)

  (defthm-neteval-ordering-eval-flag
    (DEFTHM SVEX-ENVS-SIMILAR-IMPLIES-EQUAL-NETEVAL-ORDERING-EVAL-3
      (IMPLIES (SVEX-ENVS-SIMILAR ENV ENV-EQUIV)
               (EQUAL (NETEVAL-ORDERING-EVAL X NETWORK ENV)
                      (NETEVAL-ORDERING-EVAL X NETWORK ENV-EQUIV)))
      :flag neteval-ordering-eval
      :hints ('(:expand ((:free (env) (NETEVAL-ORDERING-EVAL X NETWORK ENV)))))
      :RULE-CLASSES (:CONGRUENCE))
    (DEFTHM SVEX-ENVS-SIMILAR-IMPLIES-EQUAL-NETEVAL-sigORDERING-EVAL-5
      (IMPLIES (SVEX-ENVS-SIMILAR ENV ENV-EQUIV)
               (EQUAL (NETEVAL-sigORDERING-EVAL X signal offset NETWORK ENV)
                      (NETEVAL-sigORDERING-EVAL X signal offset NETWORK ENV-EQUIV)))
      :hints ('(:expand ((:free (env) (NETEVAL-sigORDERING-EVAL X signal offset NETWORK ENV)))))
      :flag neteval-sigordering-eval
      :RULE-CLASSES (:CONGRUENCE))
    (DEFTHM SVEX-ENVS-SIMILAR-IMPLIES-EQUAL-NETEVAL-ordering-or-null-EVAL-5
      (IMPLIES (SVEX-ENVS-SIMILAR ENV ENV-EQUIV)
               (EQUAL (NETEVAL-ordering-or-null-EVAL X signal NETWORK ENV)
                      (NETEVAL-ordering-or-null-EVAL X signal NETWORK ENV-EQUIV)))
      :hints ('(:expand ((:free (env) (NETEVAL-ordering-or-null-EVAL X signal NETWORK ENV)))))
      :flag neteval-ordering-or-null-eval
      :RULE-CLASSES (:CONGRUENCE)))

    (defthm neteval-ordering-eval-of-nil
      (equal (neteval-ordering-eval nil network env) nil))

    (verify-guards neteval-ordering-eval)

    (local (defthmd neteval-ordering-eval-of-append-lemma
             (implies (and (neteval-ordering-p ord1)
                           (neteval-ordering-p ord2))
                      (equal (neteval-ordering-eval (append ord1 ord2) network env)
                             (append (neteval-ordering-eval ord1 network env)
                                     (neteval-ordering-eval ord2 network env))))
             :hints(("Goal" :in-theory (enable neteval-ordering-fix append)))))
    

    (deffixequiv-mutual neteval-ordering-eval)


    (defthm neteval-ordering-eval-of-cons
      (equal (neteval-ordering-eval (cons (cons var ord1) ord2) network env)
             (if (svar-p var)
                 (cons (cons var
                             (neteval-sigordering-eval ord1 var 0 network env))
                       (neteval-ordering-eval ord2 network env))
               (neteval-ordering-eval ord2 network env)))
      :hints (("goal" :expand ((neteval-ordering-eval (cons (cons var ord1) ord2) network env)))))

    (defthm neteval-ordering-eval-of-append
      (equal (neteval-ordering-eval (append ord1 ord2) network env)
             (append (neteval-ordering-eval ord1 network env)
                     (neteval-ordering-eval ord2 network env)))
      :hints(("Goal" :use ((:instance neteval-ordering-eval-of-append-lemma
                            (ord1 (neteval-ordering-fix ord1))
                            (ord2 (neteval-ordering-fix ord2)))))))

    (defthm neteval-ordering-eval-of-pair-remainders
      (implies (and (svarlist-p keys)
                    (neteval-sigordering-case val
                      :remainder (neteval-ordering-or-null-case val.ord :ordering)
                      :otherwise nil))
               (equal (neteval-ordering-eval (pair-keys keys val) network env)
                      (svex-alist-eval (svex-alist-compextract keys network)
                                       (append (neteval-ordering-eval
                                                (neteval-ordering-or-null-ordering->ord
                                                 (neteval-sigordering-remainder->ord val))
                                                network env)
                                               env))))
      :hints(("Goal" :in-theory (enable pair-keys svex-env-reduce-redef
                                        svex-alist-eval svex-env-extract
                                        svex-compose-lookup)
              :induct t
              :expand ((:free (signal offset) (neteval-sigordering-eval val signal offset network env))
                       (:free (val signal offset) (neteval-ordering-or-null-eval val signal network env))
                       (:free (var env) (svex-eval (svex-var var) env))))))

    (local (defthm 4vec-concat-identity
             (implies (and (equal y (4vec-rsh width x))
                           (2vec-p width)
                           (natp (2vec->val width)))
                      (equal (4vec-concat width x y)
                             (4vec-fix x)))
             :hints(("Goal" :in-theory (enable 4vec-rsh 4vec-concat 4vec-shift-core)))))


    (defun-sk lookup-signal-not-in-network-cond (x network neteval env)
      (forall signal
              (implies (svex-eval-equiv (svex-compose-lookup signal network) (svex-var signal))
                       (equal (svex-env-lookup signal neteval)
                              (if (hons-assoc-equal (svar-fix signal) (neteval-ordering-fix x))
                                  (svex-env-lookup signal env)
                                (4vec-x)))))
      :rewrite :direct)

    (in-theory (disable lookup-signal-not-in-network-cond
                        lookup-signal-not-in-network-cond-necc))
    (local (in-theory (enable lookup-signal-not-in-network-cond-necc)))


    (local (in-theory (enable svex-env-lookup-of-cons)))

    (std::defret-mutual lookup-signal-not-in-network-of-<fn>-lemma
      (defretd lookup-signal-not-in-network-of-<fn>-lemma
        (lookup-signal-not-in-network-cond x network neteval env)
        :hints ((and stable-under-simplificationp
                     `(:computed-hint-replacement
                       ((let ((sig (acl2::find-call-lst 'lookup-signal-not-in-network-cond-witness clause)))
                          `(:clause-processor (acl2::generalize-with-alist-cp clause '((,sig . sig))))))
                       :expand (,(car (last clause)))
                       :in-theory (disable hons-assoc-equal-of-neteval-ordering-fix)))
                (and stable-under-simplificationp '(:expand (<call>))))
        :fn neteval-ordering-eval)
      (defretd <fn>-when-signal-not-in-network
        (implies (svex-eval-equiv (svex-compose-lookup signal network) (svex-var signal))
                 (equal val (4vec-rsh (2vec (nfix offset)) (svex-env-lookup signal env))))
        :hints ('(:expand (<call>)))
        :fn neteval-sigordering-eval)
      (defretd <fn>-when-signal-not-in-network
        (implies (svex-eval-equiv (svex-compose-lookup signal network) (svex-var signal))
                 (equal val (svex-env-lookup signal env)))
        :hints ('(:expand (<call>
                           (:free (env) (svex-eval (svex-var signal) env)))
                  :in-theory (disable SVEX-ENV-LOOKUP-OF-NETEVAL-ORDERING-EVAL
                                      equal-of-svex-var)))
        :fn neteval-ordering-or-null-eval))

    (defretd lookup-network-fixed-signal-of-<fn>
      (implies (svex-eval-equiv (svex-compose-lookup signal network) (svex-var signal))
               (equal (svex-env-lookup signal neteval)
                      (if (hons-assoc-equal (svar-fix signal) (neteval-ordering-fix x))
                          (svex-env-lookup signal env)
                        (4vec-x))))
      :hints (("goal" :use lookup-signal-not-in-network-of-<fn>-lemma
               :in-theory (disable <fn>)))
      :fn neteval-ordering-eval)

    (defretd lookup-signal-not-in-network-of-<fn>
      (implies (not (svex-lookup signal network))
               (equal (svex-env-lookup signal neteval)
                      (if (hons-assoc-equal (svar-fix signal) (neteval-ordering-fix x))
                          (svex-env-lookup signal env)
                        (4vec-x))))
      :hints (("goal" :use lookup-signal-not-in-network-of-<fn>-lemma
               :in-theory (e/d (svex-compose-lookup)
                               (<fn>))))
      :fn neteval-ordering-eval))








;; (define neteval-ordering->exprs ((x neteval-ordering-p)
;;                                  (network svex-alist-p))
;;   :verify-guards nil
;;   :measure (neteval-ordering-count x)
;;   :returns (compose svex-alist-p)
;;   (b* ((x (neteval-ordering-fix x))
;;        ((when (atom x))
;;         nil)
;;        ((cons signal ordering) (car x))
;;        (assign (svex-lookup signal network))
;;        ((unless assign)
;;         (neteval-ordering->exprs (cdr x) network)))
;;     (cons (cons signal
;;                 (svex-compose assign
;;                               (svex-alist-extract (svex-alist-keys network)
;;                                                   (neteval-ordering->exprs ordering network))))
;;           (neteval-ordering->exprs (cdr x) network)))
;;   ///
;;   (defret eval-of-<fn>
;;     (equal (svex-alist-eval compose env)
;;            (neteval-ordering-eval x network env))
;;     :hints(("Goal" :in-theory (enable neteval-ordering-eval
;;                                       svex-alist-eval
;;                                       svex-network-join-envs))))

;;   (defcong svex-alist-eval-equiv svex-alist-eval-equiv (neteval-ordering->exprs x network) 2))


(local (in-theory (disable acl2::intersectp-equal-commute)))

(defines neteval-ordering-compile
  :flag-local nil
  (define neteval-ordering-compile ((x neteval-ordering-p)
                                    (network svex-alist-p))
    :verify-guards nil
    :measure (neteval-ordering-count x)
    :returns (compose svex-alist-p)
    ;; For each pair in the neteval-ordering, pair the signal to its
    ;; composition according to its sigordering.
    (b* ((x (neteval-ordering-fix x))
         ((when (atom x))
          nil)
         ((cons signal ordering) (car x)))
      (cons (cons signal
                  (neteval-sigordering-compile ordering signal 0 network))
            (neteval-ordering-compile (cdr x) network))))

  (define neteval-sigordering-compile ((x neteval-sigordering-p)
                                       (signal svar-p)
                                       (offset natp)
                                       (network svex-alist-p))
    :measure (neteval-sigordering-count x)
    :returns (compose svex-p)
    ;; Concatenate together the compositions specified by the segments of the sigordering.
    (neteval-sigordering-case x
      :segment (svex-concat x.width
                            (svex-rsh offset (neteval-ordering-or-null-compile x.ord signal network))
                            (neteval-sigordering-compile x.rest signal (+ x.width (lnfix offset)) network))
      :remainder (svex-rsh offset (neteval-ordering-or-null-compile x.ord signal network))))

  (define neteval-ordering-or-null-compile ((x neteval-ordering-or-null-p)
                                            (signal svar-p)
                                            (network svex-alist-p))
    :measure (neteval-ordering-or-null-count x)
    :returns (compose svex-p)
    ;; Produces either the signal itself or a composition of the signal's
    ;; binding in the network with the given ordering.
    (neteval-ordering-or-null-case x
      :null (svex-var signal)
      :ordering (svex-compose
                 (svex-compose-lookup signal network)
                 (neteval-ordering-compile x.ord network))))
                                            
  ///

  (local (defthm neteval-ordering-compile-induction
           t
           :rule-classes ((:induction :pattern (neteval-ordering-compile x network)
                           :scheme (neteval-ordering-selfinduct x)))))
  (local (defthm svex-env-boundp-when-svex-lookup-and-not-intersectp
           (implies (and (not (intersectp-equal (alist-keys (svex-env-fix x))
                                                (svex-alist-keys y)))
                         (svex-lookup k y))
                    (not (svex-env-boundp k x)))
           :hints(("Goal" :in-theory (enable svex-env-boundp svex-alist-keys svex-env-fix alist-keys intersectp-equal)
                   :induct (svex-env-fix x)))))

  (local (defthm svex-eval-svex-var-when-lookup-and-not-intersectp
           (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env))
                                                (svex-alist-keys network)))
                         (svex-lookup signal network))
                    (equal (svex-eval (svex-var signal) env)
                           (4vec-x)))
           :hints (("goal" :Expand ((svex-eval (svex-var signal) env))
                    :in-theory (enable svex-env-lookup-when-not-boundp)))))

  (local (defthm 4vec-rsh-of-x
           (implies (and (2vec-p k)
                         (<= 0 (2vec->val k)))
                    (equal (4vec-rsh k (4vec-x)) (4vec-x)))
           :hints(("Goal" :in-theory (e/d (4vec-rsh 4vec-shift-core))))))


  (std::defret-mutual eval-of-<fn>
    (defret eval-of-<fn>
      ;; (implies (not (intersectp-equal (alist-keys (svex-env-fix env))
      ;;                                 (svex-alist-keys network)))
      (equal (svex-alist-eval compose env)
             (neteval-ordering-eval x network env))
      :fn neteval-ordering-compile
      :hints('(:in-theory (enable neteval-ordering-eval
                                  svex-alist-eval)
               :expand (<call>
                        (neteval-ordering-eval x network env)
                        (:free (var env) (svex-eval (svex-var var) env))))))
    (defret eval-of-<fn>
      ;; (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env))
      ;;                                      (svex-alist-keys network)))
      ;;               (svex-lookup signal network))
               (equal (svex-eval compose env)
                      (neteval-sigordering-eval
                       x signal offset
                       network env))
      :fn neteval-sigordering-compile
      :hints('(:in-theory (enable svex-alist-eval svex-apply)
               :expand (<call>
                        (:free (signal offset)
                         (neteval-sigordering-eval x signal offset network env))))))
    (defret eval-of-<fn>
      ;; (implies (and (not (intersectp-equal (alist-keys (svex-env-fix env))
      ;;                                      (svex-alist-keys network)))
      ;;               (svex-lookup signal network))
               (equal (svex-eval compose env)
                      (neteval-ordering-or-null-eval
                       x signal
                       network env))
      :fn neteval-ordering-or-null-compile
      :hints('(:in-theory (enable svex-alist-eval svex-apply)
               :expand (<call>
                        (:free (signal offset)
                         (neteval-ordering-or-null-eval
                          x signal network env))
                        (:free (var env) (svex-eval (svex-var var) env)))))))

  (defcong svex-alist-eval-equiv svex-alist-eval-equiv (neteval-ordering-compile x network) 2
    :hints (("goal" :use ((:instance svex-envs-equivalent-implies-alist-eval-equiv
                           (x (neteval-ordering-compile x network))
                           (y (neteval-ordering-compile x network-equiv)))))))

  (defret svex-lookup-of-<fn>
    (equal (svex-lookup key compose)
           (b* ((ord-look (hons-assoc-equal (svar-fix key) (neteval-ordering-fix x)))
                ;; (net-look (svex-lookup key network))
                )
             (and ord-look ;; net-look
                  (neteval-sigordering-compile (cdr ord-look) (svar-fix key) 0 network))))
    :hints(("Goal" :in-theory (e/d () (hons-assoc-equal-of-neteval-ordering-fix))
            :induct t :expand (<call>)))
    :fn neteval-ordering-compile)



  (deffixequiv-mutual neteval-ordering-compile)

  (defret neteval-ordering-compile-when-atom-fix
    (implies (not (consp (neteval-ordering-fix x)))
             (equal compose nil))
    :hints (("goal" :expand (<call>)))
    :rule-classes ((:rewrite :backchain-limit-lst 0))
    :fn neteval-ordering-compile)

  (defthm neteval-ordering-compile-of-append
    (equal (neteval-ordering-compile (append a b) network)
           (append (neteval-ordering-compile a network)
                   (neteval-ordering-compile b network)))
    :hints (("goal" :induct t
             :expand ((neteval-ordering-compile a network)
                      (neteval-ordering-compile (append a b) network)))
            (and stable-under-simplificationp
                 '(:expand ((neteval-ordering-compile b network))))))

  (defthm neteval-ordering-compile-of-cons
    (equal (neteval-ordering-compile (cons (cons var ord1) ord2) network)
           (if (and (svar-p var)) ;; look)
               (cons (cons var
                           (neteval-sigordering-compile ord1 var 0 network))
                     (neteval-ordering-compile ord2 network))
             (neteval-ordering-compile ord2 network)))
    :hints (("goal" :expand ((neteval-ordering-compile (cons (cons var ord1) ord2) network)))
            (and stable-under-simplificationp
                 '(:expand ((neteval-ordering-compile ord2 network))))))

  (defcong svex-alist-eval-equiv svex-alist-eval-equiv
    (neteval-ordering-compile x network) 2
    :hints(("Goal" :in-theory (disable neteval-ordering-compile))
           `(:expand ,(car (last clause)))))

  (defthm neteval-ordering-compile-of-pair-remainders
      (implies (and (svarlist-p keys)
                    (neteval-sigordering-case val
                      :remainder (neteval-ordering-or-null-case val.ord :ordering)
                      :otherwise nil))
               (svex-alist-eval-equiv
                (neteval-ordering-compile (pair-keys keys val) network)
                (svex-alist-compose (svex-alist-compextract keys network)
                                    (neteval-ordering-compile
                                     (neteval-ordering-or-null-ordering->ord
                                      (neteval-sigordering-remainder->ord val))
                                     network))))
      :hints(("Goal" :in-theory (enable svex-envs-equivalent-implies-alist-eval-equiv))))

  (verify-guards neteval-ordering-compile)


  (defret eval-lookup-of-neteval-ordering-compile
    (equal (svex-eval (svex-lookup key compose) env)
           (svex-env-lookup key (neteval-ordering-eval x network env)))
    :hints (("goal" :use ((:instance svex-env-lookup-of-svex-alist-eval
                           (k key) (x compose)))
             :in-theory (disable svex-env-lookup-of-svex-alist-eval
                                 <fn>)))
    :fn neteval-ordering-compile)

  (defcong svex-alist-compose-equiv svex-alist-eval-equiv
    (neteval-ordering-compile x network) 2
    :hints(("Goal" :in-theory (enable svex-alist-eval-equiv-in-terms-of-envs-equivalent))))

  (defretd lookup-signal-not-in-network-of-<fn>
    (implies (not (svex-lookup signal network))
             (svex-eval-equiv (svex-lookup signal compose)
                              (if (hons-assoc-equal (svar-fix signal) (neteval-ordering-fix x))
                                  (svex-var signal)
                                (svex-x))))
    :hints (("goal" :in-theory (e/d (svex-eval-equiv
                                     lookup-signal-not-in-network-of-neteval-ordering-eval
                                     svex-eval)
                                    (<fn>
                                     svex-lookup-of-neteval-ordering-compile))))
    :fn neteval-ordering-compile)

  (defretd <fn>-when-signal-not-in-network
    (implies (not (svex-lookup signal network))
             (svex-eval-equiv compose
                              (svex-rsh offset (svex-var signal))))
    :hints (("goal" :in-theory (e/d (svex-eval-equiv
                                     neteval-sigordering-eval-when-signal-not-in-network
                                     svex-eval svex-apply)
                                    (<fn>
                                     svex-lookup-of-neteval-ordering-compile))))
    :fn neteval-sigordering-compile)

  (defretd <fn>-when-signal-not-in-network
    (implies (not (svex-lookup signal network))
             (svex-eval-equiv compose (svex-var signal)))
    :hints (("goal" :in-theory (e/d (svex-eval-equiv
                                     neteval-ordering-or-null-eval-when-signal-not-in-network
                                     svex-eval svex-apply)
                                    (<fn>
                                     svex-lookup-of-neteval-ordering-compile))))
    :fn neteval-ordering-or-null-compile)

  (std::defret-mutual svex-alist-keys-of-<fn>
    (defret svex-alist-keys-of-<fn>
      (equal (svex-alist-keys compose)
             (alist-keys (neteval-ordering-fix x)))
      :hints ('(:expand (<call>
                         (:free (a b) (svex-alist-keys (cons a b)))
                         (alist-keys (neteval-ordering-fix x)))))
      :fn neteval-ordering-compile)
    :skip-others t))






(define neteval-sigordering-rsh ((n natp)
                                 (x neteval-sigordering-p))
  :returns (new-x neteval-sigordering-p)
  (neteval-sigordering-case x
    :segment (if (< (lnfix n) x.width)
                 (change-neteval-sigordering-segment
                  x :width (- x.width (lnfix n)))
               (neteval-sigordering-rsh
                (- (lnfix n) x.width) x.rest))
    :remainder (neteval-sigordering-fix x))
  ///
  (local (include-book "arithmetic/top-with-meta" :dir :system))

  (defret eval-of-<fn>
    (implies (<= (nfix n) (nfix offset))
             (equal ;;(4vec-rsh (2vec rem)
              (neteval-sigordering-eval
               new-x signal offset network env)
              (4vec-rsh (2vec (nfix n))
                        (neteval-sigordering-eval x signal
                                                  (- (nfix offset) (nfix n)) network env))))
    :hints(("Goal" 
            :induct <call>
            :expand ((:free (offset)
                      (neteval-sigordering-eval x signal offset network env))
                     (:free (width ord rest)
                      (neteval-sigordering-eval
                       (neteval-sigordering-segment width ord rest)
                       signal offset network env))
                     (:free (ord)
                      (neteval-sigordering-eval
                       (neteval-sigordering-remainder ord)
                       signal offset network env)))))))


(define neteval-sigordering-concat ((width natp)
                                    (x neteval-sigordering-p)
                                    (y neteval-sigordering-p))
  :returns (concat neteval-sigordering-p)
  :measure (neteval-sigordering-count x)
  :verify-guards :after-returns
  (if (zp width)
      (neteval-sigordering-fix y)
    (neteval-sigordering-case x
      :remainder (make-neteval-sigordering-segment
                  :width width
                  :ord x.ord
                  :rest y)
      :segment (if (<= width x.width)
                   (make-neteval-sigordering-segment
                    :width width
                    :ord x.ord
                    :rest y)
                 (make-neteval-sigordering-segment
                  :width x.width
                  :ord x.ord
                  :rest (neteval-sigordering-concat
                         (- width x.width)
                         x.rest y)))))
  ///
  (local (defun ind (width x offset)
           (declare (xargs :measure (neteval-sigordering-count x)))
           (neteval-sigordering-case x
             :remainder (list width offset)
             :segment (if (<= (nfix width) x.width)
                          offset
                        (ind (- width x.width) x.rest (+ (nfix offset) x.width))))))
  (defret eval-of-<fn>
    (equal (neteval-sigordering-eval
            concat signal offset network env)
           (4vec-concat (2vec (nfix width))
                        (neteval-sigordering-eval
                         x signal offset network env)
                        (neteval-sigordering-eval
                         y signal (+ (lnfix offset) (lnfix width)) network env)))
    :hints (("goal" :induct (ind width x offset)
             :expand (<call>
                      (neteval-sigordering-eval x signal offset network env)
                      (:free (width ord rest offset)
                       (neteval-sigordering-eval
                        (neteval-sigordering-segment width ord rest)
                        signal offset network env)))))))


;; Explanation.  To "compose" two neteval-orderings, what we want is to make an
;; ordering that expresses the process of forming one compiled network using
;; a first ordering (subst), and then compiling that network again using
;; another ordering (x).

;; To make an ordering that expresses this composition is a little tricky.  At
;; the top level, we recur over x and whenever x indicates to compose some
;; signal's function with the compilation of another ordering, we need to
;; instead insert a compound ordering that expresses the composition of that
;; signal's compilation by subst with the composition of that second ordering
;; with subst.  This compound ordering needs to be produced by an aux function
;; that recurs over subst, inserting the composition at the "leaves".

;; That is, we're looking for a new ordering, comp, that satisfies
;;  (neteval-ordering-compile comp network) ===       ;; svex-alist-eval-equiv
;;  (neteval-ordering-compile x (neteval-ordering-compile subst network))
;; or (neteval-ordering-eval comp network env) ===    ;; svex-envs-equivalent
;;    (neteval-ordering-eval x (neteval-ordering-compile subst network) env).
;; To do this, we need a function that produces a secondary compound ordering
;; aux, such that:
;;    (neteval-ordering-compile aux network) ===
;;      (svex-alist-compose (neteval-ordering-compile x network)
;;                          (neteval-ordering-compile subst network))
;; given orderings x and subst.  But these variable names are a little wrong,
;; because in the top-level composition algorithm the aux function will be
;; composed from a sub-ordering looked up in subst (as x in the equation above)
;; and the composition of the sub-ordering from x with subst (as subst in the
;; equation above).

;; This function produces that secondary compound ordering.

(defines neteval-ordering-compose-aux
  (define neteval-ordering-compose-aux ((x neteval-ordering-p)
                                        (subst neteval-ordering-p))
    :measure (neteval-ordering-count x)
    :verify-guards nil
    :returns (composed neteval-ordering-p)
    (b* ((x (neteval-ordering-fix x))
         ((when (atom x)) nil)
         ((cons signal sigordering) (car x))
         ;; The formula we need this function to satisfy is
         ;; (equal (neteval-ordering-eval (neteval-ordering-compose-aux x subst) network env)
         ;;        (neteval-ordering-eval x network (append (neteval-ordering-eval subst network env) env)))
         ;; Therefore we need for each signal in the ordering
         ;;  (equal (neteval-sigordering-eval compose-sigord function network env)
         ;;         (neteval-sigordering-eval x-sigord function network (append (neteval-ordering-eval subst network env) env)))
         ;; So we make compose-sigord the same shape as x-sigord, and then for each segment we need
         ;; (equal
         ;;  (SVEX-EVAL
         ;;   FUNCTION
         ;;   (APPEND
         ;;    (NETEVAL-ORDERING-EVAL (NETEVAL-SIGORDERING-SEGMENT->ORD COMPOSE-SIGORD)
         ;;                           NETWORK ENV)
         ;;    ENV))
         ;;  (SVEX-EVAL
         ;;   FUNCTION
         ;;   (APPEND
         ;;    (NETEVAL-ORDERING-EVAL (NETEVAL-SIGORDERING-SEGMENT->ORD X-SIGORD)
         ;;                           NETWORK
         ;;                           (APPEND (NETEVAL-ORDERING-EVAL SUBST NETWORK ENV)
         ;;                                   ENV))
         ;;    (NETEVAL-ORDERING-EVAL SUBST NETWORK ENV)
         ;;    ENV)))
         ;; Which is satisfied by letting the ORD field of compose-sigord be
         ;; (append (neteval-ordering-compose-aux x-sigord-ord subst) subst).
         
         (new-sigord (neteval-sigordering-compose-aux sigordering signal 0 subst)))
      (cons (cons signal new-sigord)
            (neteval-ordering-compose-aux (cdr x) subst))))

  (define neteval-sigordering-compose-aux ((x neteval-sigordering-p)
                                           (signal svar-p)
                                           (offset natp)
                                           (subst neteval-ordering-p))
    :measure (neteval-sigordering-count x)
    :returns (composed neteval-sigordering-p)
    (neteval-sigordering-case x
      :segment (neteval-sigordering-concat
                x.width
                ;; :width x.width
                ;; :ord
                (neteval-ordering-or-null-compose-aux x.ord signal offset subst)
                ;; :rest
                (neteval-sigordering-compose-aux x.rest signal (+ (lnfix offset) x.width)subst))
      :remainder ;; (make-neteval-sigordering-remainder
                 ;;  :ord
      (neteval-ordering-or-null-compose-aux x.ord signal offset subst)))

  (define neteval-ordering-or-null-compose-aux ((x neteval-ordering-or-null-p)
                                                (signal svar-p)
                                                (offset natp)
                                                (subst neteval-ordering-p))
    (declare (ignorable signal offset))
    :measure (neteval-ordering-or-null-count x)
    :returns (composed neteval-sigordering-p)
    (neteval-ordering-or-null-case x
      :null (let ((look (hons-assoc-equal (svar-fix signal) (neteval-ordering-fix subst))))
              (if look
                  (neteval-sigordering-rsh offset (cdr look))
                (make-neteval-sigordering-remainder :ord (make-neteval-ordering-or-null-null))))
      ;; (make-neteval-ordering-or-null-null)
      :ordering (make-neteval-sigordering-remainder
                 :ord (make-neteval-ordering-or-null-ordering
                       :ord (append (neteval-ordering-compose-aux x.ord subst) (neteval-ordering-fix subst))))))
  ///

  (defthm-neteval-ordering-compose-aux-flag
    (defthm eval-of-neteval-ordering-compose-aux
      (equal (neteval-ordering-eval (neteval-ordering-compose-aux x subst) network env)
             (neteval-ordering-eval x network (append (neteval-ordering-eval subst network env) env)))
      :hints ('(:expand ((neteval-ordering-compose-aux x subst)
                         (:free (env) (neteval-ordering-eval x network env))
                         (:free (a b) (neteval-ordering-eval (cons a b) network env)))))
      :flag neteval-ordering-compose-aux)
    (defthm eval-of-neteval-sigordering-compose-aux
      ;; (implies (svex-lookup signal network)
      (equal (neteval-sigordering-eval (neteval-sigordering-compose-aux x signal offset subst) signal offset network env)
             (neteval-sigordering-eval x signal offset network
                                       (append (neteval-ordering-eval subst network env) env)))
      :hints ('(:expand ((neteval-sigordering-compose-aux x signal offset subst)
                         (:free (signal offset env) (neteval-sigordering-eval x signal offset network env))
                         (:free (signal offset width ord rest)
                          (neteval-sigordering-eval
                           (neteval-sigordering-segment width ord rest)
                           signal offset network env))
                         (:free (signal offset ord) (neteval-sigordering-eval
                                                     (neteval-sigordering-remainder ord)
                                                     signal offset network env)))))
      :flag neteval-sigordering-compose-aux)
    (defthm eval-of-neteval-ordering-or-null-compose-aux
      ;; (implies (svex-lookup signal network)
      (equal (neteval-sigordering-eval (neteval-ordering-or-null-compose-aux x signal offset subst) signal offset network env)
             (4vec-rsh (2vec (nfix offset))
                       (neteval-ordering-or-null-eval x signal network
                                                      (append (neteval-ordering-eval subst network env) env))))
      :hints ('(:expand ((neteval-ordering-or-null-compose-aux x signal offset subst)
                         (:free (signal offset env) (neteval-ordering-or-null-eval x signal network env))
                         (:free (signal offset ord)
                          (neteval-ordering-or-null-eval
                           (neteval-ordering-or-null-ordering ord)
                           signal network env))
                         (:free (signal offset)
                          (neteval-ordering-or-null-eval
                           '(:null)
                           signal network env))
                         (:free (ord offset)
                          (neteval-sigordering-eval
                           (neteval-sigordering-remainder ord) signal offset network env))
                         (:free (offset)
                          (neteval-sigordering-eval
                           '(:remainder (:null)) signal offset network env)))
                ;; :in-theory (disable svex-env-lookup-of-neteval-ordering-eval)
                ))
      :flag neteval-ordering-or-null-compose-aux))


  (defret compile-of-neteval-ordering-compose-aux
    (svex-alist-eval-equiv (neteval-ordering-compile composed network)
                           (svex-alist-compose (neteval-ordering-compile x network)
                                               (neteval-ordering-compile subst network)))
    :hints(("Goal" :in-theory (enable svex-alist-eval-equiv-in-terms-of-envs-equivalent)))
    :fn neteval-ordering-compose-aux)

  (verify-guards neteval-ordering-compose-aux))






(defines neteval-ordering-compose
  (define neteval-ordering-compose ((x neteval-ordering-p)
                                    (subst neteval-ordering-p))
    :measure (two-nats-measure (neteval-ordering-count x) 0)
    :hints ((and stable-under-simplificationp
                 '(:expand ((:free (width ord rest) (neteval-sigordering-count
                                                     (neteval-sigordering-segment width ord rest)))
                            (neteval-sigordering-count x)))))
    :verify-guards nil
    :returns (composed neteval-ordering-p)
    (b* ((x (neteval-ordering-fix x))
         ((when (atom x)) nil)
         ((cons signal sigordering) (car x))
         (new-sigord (neteval-sigordering-compose sigordering signal 0 subst)))
      (cons (cons signal new-sigord)
            (neteval-ordering-compose (cdr x) subst))))

  (define neteval-sigordering-compose ((x neteval-sigordering-p)
                                       (signal svar-p)
                                       (offset natp)
                                       (subst neteval-ordering-p))
    :measure (two-nats-measure (neteval-sigordering-count x) 0)
    :returns (composed neteval-sigordering-p)
    (neteval-sigordering-case x
      :segment (b* ((full-sigord (neteval-ordering-or-null-compose
                                  x.ord signal subst))
                    (rest (neteval-sigordering-compose x.rest signal (+ x.width (lnfix offset)) subst)))
                 (neteval-sigordering-concat
                  x.width
                  (neteval-sigordering-rsh offset full-sigord)
                  rest))
      :remainder (b* ((full-sigord (neteval-ordering-or-null-compose
                                    x.ord signal subst)))
                   (neteval-sigordering-rsh offset full-sigord))))
                                  

  (define neteval-ordering-or-null-compose ((x neteval-ordering-or-null-p)
                                            (signal svar-p)
                                            (subst neteval-ordering-p))
    (declare (ignorable signal))
    :measure (two-nats-measure (neteval-ordering-or-null-count x)
                               0)
    :returns (composed neteval-sigordering-p)
    (neteval-ordering-or-null-case x
      :null (make-neteval-sigordering-remainder :ord (make-neteval-ordering-or-null-null))
      :ordering
      (b* ((ord (neteval-ordering-compose x.ord subst))
           (look (hons-assoc-equal
                  (svar-fix signal) (neteval-ordering-fix subst)))
           ((unless look)
            (let ((ord-look (hons-assoc-equal (svar-fix signal) ord)))
              (if ord-look
                  (cdr ord-look)
                (make-neteval-sigordering-remainder
                 :ord (make-neteval-ordering-or-null-null)))))
           (sigord (cdr look))
           (full-ord (neteval-sigordering-compose-aux
                      sigord signal 0 ord)))
        full-ord)))

  ///
  (local (defthm svex-rsh-of-neteval-sigordering-compile-when-remainder
           (implies (neteval-sigordering-case x :remainder)
                    (svex-eval-equiv
                     (svex-rsh n (neteval-sigordering-compile x signal offset network))
                     (neteval-sigordering-compile x signal (+ (nfix n) (nfix offset)) network)))
           :hints(("Goal" :in-theory (enable svex-eval-equiv svex-apply)
                   :expand ((:free (signal offset env) (neteval-sigordering-eval x signal offset network env))
                            (:free (x signal offset env) (neteval-ordering-or-null-eval x signal network env)))))))


  (local
   (std::defret-mutual eval-of-neteval-ordering-compose
     (defret eval-of-neteval-ordering-compose
       (equal (neteval-ordering-eval composed network env)
              (neteval-ordering-eval x (neteval-ordering-compile subst network) env))
       :hints ('(:expand ((neteval-ordering-compose x subst)
                          (:free (network) (neteval-ordering-eval x network env))
                          (:free (a b) (neteval-ordering-eval (cons a b) network env)))))
       :fn neteval-ordering-compose)
     (defret eval-of-neteval-sigordering-compose-lemma
       ;; (eval-of-neteval-sigordering-compose-cond
       ;;  composed x subst-sigord subst network env)
       (implies (and ;; (hons-assoc-equal (svar-fix signal)
                     ;;                   (neteval-ordering-fix subst))
                     ;; (svex-lookup signal network)
                     )
                (equal (neteval-sigordering-eval composed signal offset network env)
                       (neteval-sigordering-eval x signal offset
                                                 (neteval-ordering-compile subst network)
                                                 env)))
       :hints ('(:expand
                 ((:free (net) (neteval-sigordering-eval x signal offset net env)))))
       :fn neteval-sigordering-compose)
     (defret eval-of-neteval-ordering-or-null-compose-lemma
       (equal (neteval-sigordering-eval composed signal 0 network env)
              (neteval-ordering-or-null-eval x signal (neteval-ordering-compile subst network) env))
       :hints ((and stable-under-simplificationp
                    '(:expand ((:free (sig offset env)
                                (neteval-ordering-or-null-eval
                                 '(:null) sig network env))
                               (:free (env)
                                (neteval-sigordering-eval
                                 '(:remainder (:null)) signal 0 network env))
                               (:free (ord sig offset)
                                (neteval-ordering-or-null-eval
                                 (neteval-ordering-or-null-ordering ord)
                                 sig network env))
                               (:free (sig network env)
                                (neteval-ordering-or-null-eval
                                 x sig network env)))
                      :in-theory (enable svex-compose-lookup)))
               (and stable-under-simplificationp
                    '(:expand ((:Free (var env) (svex-eval (svex-var var) env))))))
       :fn neteval-ordering-or-null-compose)))

  (defret eval-of-neteval-ordering-compose
    (equal (neteval-ordering-eval composed network env)
           (neteval-ordering-eval x (neteval-ordering-compile subst network) env))
    :fn neteval-ordering-compose)

  (defret eval-of-neteval-sigordering-compose
    (equal (neteval-sigordering-eval composed signal offset network env)
           (neteval-sigordering-eval x signal offset
                                     (neteval-ordering-compile subst network) env))
    :hints (("Goal" :use eval-of-neteval-sigordering-compose-lemma
             :in-theory (disable eval-of-neteval-sigordering-compose-lemma)))
    :fn neteval-sigordering-compose)

  (defret compile-of-neteval-ordering-compose
    (svex-alist-eval-equiv (neteval-ordering-compile composed network)
                           (neteval-ordering-compile x (neteval-ordering-compile subst network)))
    :hints(("Goal" :in-theory (enable svex-envs-equivalent-implies-alist-eval-equiv)))
    :fn neteval-ordering-compose)

  (verify-guards neteval-sigordering-compose))

(local (defthm neteval-ordering-p-of-pair-keys
         (implies (and (svarlist-p keys)
                       (neteval-sigordering-p ord))
                  (neteval-ordering-p (pair-keys keys ord)))
         :hints(("Goal" :in-theory (enable pair-keys)))))

(define neteval-ordering-null ((keys svarlist-p))
  :returns (ordering neteval-ordering-p)
  (pair-keys (svarlist-fix keys)
             (neteval-sigordering-remainder (neteval-ordering-or-null-null)))
  ///
  (defret eval-of-<fn>
    (svex-envs-equivalent (neteval-ordering-eval ordering network env)
                          (svex-env-extract keys
                                                                ;; (svex-alist-keys network))
                                            env))
    :hints(("Goal" :in-theory (enable svex-envs-equivalent)
            :expand ((:free (signal)
                      (neteval-sigordering-eval '(:remainder (:null)) signal 0 network env))
                     (:free (signal)
                      (neteval-ordering-or-null-eval
                       '(:null) signal network env))))))

  (defret compile-of-<fn>
    (svex-alist-eval-equiv (neteval-ordering-compile ordering network)
                           (svex-identity-subst keys))
    :hints(("Goal" :in-theory (e/d (svex-alist-eval-equiv-in-terms-of-envs-equivalent)
                                   (<fn>))))))
            


(define neteval-ordering-identity ((keys svarlist-p))
  :returns (ordering neteval-ordering-p)
  (pair-keys (svarlist-fix keys)
             (neteval-sigordering-remainder
              (neteval-ordering-or-null-ordering nil)))
  ///
  (defret eval-of-<fn>
    (svex-envs-equivalent (neteval-ordering-eval ordering network env)
                          (SVEX-ENV-extract KEYS (append (SVEX-ALIST-EVAL NETWORK ENV) env)))
    :hints(("Goal" :in-theory (enable svex-envs-equivalent))))

  (defret compile-of-<fn>
    (svex-alist-eval-equiv (neteval-ordering-compile ordering network)
                           (svex-alist-compextract keys network))
    :hints(("Goal" :in-theory (e/d (svex-alist-eval-equiv-in-terms-of-envs-equivalent)
                                   (<fn>))))))

(define neteval-ordering-reduce ((vars svarlist-p) (x neteval-ordering-p))
  :returns (new-ord neteval-ordering-p)
  (if (atom vars)
      nil
    (let ((look (hons-assoc-equal (svar-fix (car vars))
                                  (neteval-ordering-fix x))))
      (if look
          (cons look (neteval-ordering-reduce (cdr vars) x))
        (neteval-ordering-reduce (cdr vars) x))))
  ///
  (defret lookup-in-<fn>
    (equal (hons-assoc-equal key new-ord)
           (and (member-equal key (svarlist-fix vars))
                (hons-assoc-equal key (neteval-ordering-fix x)))))

  (defret eval-of-<fn>
    (equal (neteval-ordering-eval new-ord network env)
           (svex-env-reduce vars (neteval-ordering-eval x network env)))
    :hints(("Goal" :in-theory (enable svex-env-reduce-redef neteval-ordering-eval))))

  (defret compile-of-<fn>
    (svex-alist-eval-equiv (neteval-ordering-compile new-ord network)
                           (svex-alist-reduce vars (neteval-ordering-compile x network)))
    :hints(("Goal" :in-theory (e/d (svex-alist-eval-equiv)
                                   (neteval-ordering-reduce))))))

(define neteval-ordering-extract ((vars svarlist-p) (x neteval-ordering-p))
  :returns (new-ord neteval-ordering-p)
  (if (atom vars)
      nil
    (let ((look (hons-assoc-equal (svar-fix (car vars))
                                  (neteval-ordering-fix x))))
      (if look
          (cons look (neteval-ordering-extract (cdr vars) x))
        (cons (cons (svar-fix (car vars))
                    (neteval-sigordering-remainder
                     (neteval-ordering-or-null-null)))
              (neteval-ordering-extract (cdr vars) x)))))
  ///
  (defret lookup-in-<fn>
    (equal (hons-assoc-equal key new-ord)
           (and (member-equal key (svarlist-fix vars))
                (or (hons-assoc-equal key (neteval-ordering-fix x))
                    (cons key (neteval-sigordering-remainder
                               (neteval-ordering-or-null-null)))))))

  (defret eval-of-<fn>
    (equal (neteval-ordering-eval new-ord network env)
           (svex-env-extract vars (append (neteval-ordering-eval x network env) env)))
    :hints(("Goal" :in-theory (enable svex-env-extract neteval-ordering-eval)
            :expand ((:free (signal offset)
                      (neteval-sigordering-eval '(:remainder (:null)) signal offset network env))
                     (:free (signal)
                      (neteval-ordering-or-null-eval '(:null) signal network env))))))

  (defret compile-of-<fn>
    (svex-alist-eval-equiv (neteval-ordering-compile new-ord network)
                           (svex-alist-compextract vars (neteval-ordering-compile x network)))
    :hints(("Goal" :in-theory (e/d (svex-alist-eval-equiv-in-terms-of-envs-equivalent)
                                   (neteval-ordering-extract))
            :do-not-induct t)))

  (defret alist-keys-of-<fn>
    (equal (alist-keys new-ord)
           (svarlist-fix vars))
    :hints(("Goal" :in-theory (enable alist-keys)))))

                 









(defsection netcomp-p
  (defun-sk netcomp-p (comp decomp)
    (exists ordering
            (svex-alist-compose-equiv comp (neteval-ordering-compile ordering decomp))))

  (in-theory (disable netcomp-p netcomp-p-suff))




  (deffixcong svex-alist-equiv equal (netcomp-p comp decomp) comp
    :hints (("goal" :cases ((netcomp-p comp decomp))
             :in-theory (enable netcomp-p)
             :use ((:instance netcomp-p-suff
                    (comp (svex-alist-fix comp))
                    (ordering (netcomp-p-witness comp decomp)))
                   (:instance netcomp-p-suff
                    (ordering (netcomp-p-witness (svex-alist-fix comp) decomp)))))))

  (deffixcong svex-alist-equiv equal (netcomp-p comp decomp) decomp
    :hints (("goal" :cases ((netcomp-p comp decomp))
             :in-theory (enable netcomp-p)
             :use ((:instance netcomp-p-suff
                    (decomp (svex-alist-fix decomp))
                    (ordering (netcomp-p-witness comp decomp)))
                   (:instance netcomp-p-suff
                    (ordering (netcomp-p-witness comp (svex-alist-fix decomp))))))))

  (defcong svex-alist-eval-equiv equal (netcomp-p comp decomp) 1
    :hints (("goal" :cases ((netcomp-p comp decomp))
             :in-theory (enable netcomp-p)
             :use ((:instance netcomp-p-suff
                    (comp comp-equiv)
                    (ordering (netcomp-p-witness comp decomp)))
                   (:instance netcomp-p-suff
                    (ordering (netcomp-p-witness comp-equiv decomp)))))))

  (defcong svex-alist-eval-equiv equal (netcomp-p comp decomp) 2
    :hints (("goal" :cases ((netcomp-p comp decomp))
             :in-theory (enable netcomp-p)
             :use ((:instance netcomp-p-suff
                    (decomp decomp-equiv)
                    (ordering (netcomp-p-witness comp decomp)))
                   (:instance netcomp-p-suff
                    (ordering (netcomp-p-witness comp decomp-equiv)))))))

  (define netcomp-p-eval-equiv-witness ((comp svex-alist-p)
                                        (decomp svex-alist-p))
    :non-executable t
    :returns (ord neteval-ordering-p)
    :verify-guards nil
    ;; Despite only requiring that comp is compose-equiv, netcomp-p actually
    ;; assures that there is an ordering that is eval-equiv.
    (neteval-ordering-extract (svex-alist-keys comp)
                              (netcomp-p-witness (svex-alist-fix comp)
                                                 (svex-alist-fix decomp)))
    ///

    (defret alist-keys-of-<fn>
      (equal (alist-keys ord)
             (svex-alist-keys comp)))

    (defthm svex-alist-compextract-keys-under-compose-equiv
      (svex-alist-eval-equiv (svex-alist-compextract (svex-alist-keys x) x) x)
      :hints(("Goal" :in-theory (enable svex-alist-eval-equiv))
             (and stable-under-simplificationp
                  '(:in-theory (enable svex-compose-lookup)))))

    (defret netcomp-p-implies-eval-equiv-witness
      (implies (netcomp-p comp decomp)
               (svex-alist-eval-equiv (neteval-ordering-compile ord decomp) comp))
      :hints (("goal" :use ((:instance netcomp-p
                             (comp (svex-alist-fix comp))
                             (decomp (svex-alist-fix decomp)))))))

    (defthmd netcomp-p-redef
      (equal (netcomp-p comp decomp)
             (let ((ordering (netcomp-p-eval-equiv-witness comp decomp)))
               (svex-alist-eval-equiv comp (neteval-ordering-compile ordering decomp))))
      :hints (("goal" :cases ((netcomp-p comp decomp))
               :use ((:instance netcomp-p-suff
                      (ordering (netcomp-p-eval-equiv-witness comp decomp))))
               :in-theory (e/d (netcomp-p-implies-eval-equiv-witness)
                               (netcomp-p-suff
                                netcomp-p-eval-equiv-witness))))
      :rule-classes :definition))

  (local (in-theory (enable svex-eval-equiv-of-svex-lookup-when-compose-equiv)))
  


  (defthmd netcomp-p-transitive
    (implies (and (netcomp-p x y)
                  (netcomp-p y z))
             (netcomp-p x z))
    :hints (("goal" :expand ((netcomp-p x y)
                             (netcomp-p y z))
             :use ((:instance netcomp-p-suff
                    (comp x) (decomp z)
                    (ordering (neteval-ordering-compose (netcomp-p-eval-equiv-witness x y)
                                                        (netcomp-p-eval-equiv-witness y z))))))))

  (defthmd netcomp-p-transitive2
    (implies (and (netcomp-p y z)
                  (netcomp-p x y))
             (netcomp-p x z))
    :hints(("Goal" :in-theory (enable netcomp-p-transitive))))

  (defthm netcomp-p-reflexive
    (netcomp-p x x)
    :hints (("goal" :use ((:instance netcomp-p-suff
                           (comp x) (decomp x)
                           (ordering (neteval-ordering-identity (svex-alist-keys x)))))
             :in-theory (enable svex-alist-eval-equiv))))

  (defthm netcomp-p-of-svex-alist-reduce
    (implies (netcomp-p x y)
             (netcomp-p (svex-alist-reduce keys x) y))
    :hints (("goal" :use ((:instance netcomp-p-suff
                           (comp (svex-alist-reduce keys x))
                           (decomp y)
                           (ordering (neteval-ordering-reduce keys (netcomp-p-eval-equiv-witness x y)))))
             :expand ((netcomp-p x y)))))
  

  

  (defthm netcomp-p-of-svex-alist-compose
    (implies (and (netcomp-p x network)
                  (netcomp-p subst network))
             (netcomp-p (svex-alist-compose x subst) network))
    :hints (("goal" :use ((:instance netcomp-p-suff
                           (comp (svex-alist-compose x subst))
                           (decomp network)
                           (ordering (neteval-ordering-compose-aux
                                      (netcomp-p-eval-equiv-witness x network)
                                      (netcomp-p-eval-equiv-witness subst network)))))
             :expand ((netcomp-p x network)
                      (netcomp-p subst network)))))

  (defthm netcomp-p-of-svex-identity-subst
    (implies (subsetp-equal (svarlist-fix vars) (svex-alist-keys network))
             (netcomp-p (svex-identity-subst vars) network))
    :hints (("goal" :use ((:instance netcomp-p-suff
                           (comp (svex-identity-subst vars))
                           (decomp network)
                           (ordering (neteval-ordering-null vars))))
             :in-theory (enable svex-alist-eval-equiv-in-terms-of-envs-equivalent
                                svex-envs-equivalent))))


  (defthm netcomp-p-of-append
    (implies (and (netcomp-p x network)
                  (netcomp-p y network))
             (netcomp-p (append x y) network))
    :hints (("goal" :expand ((netcomp-p x network)
                             (netcomp-p y network)
                             (SVEX-ALIST-compose-equiv
                              (APPEND X Y)
                              (APPEND (NETEVAL-ORDERING-COMPILE (NETCOMP-P-EVAL-EQUIV-WITNESS X NETWORK)
                                                                NETWORK)
                                      (NETEVAL-ORDERING-COMPILE (NETCOMP-P-EVAL-EQUIV-WITNESS Y NETWORK)
                                                                NETWORK))))
             :in-theory (disable svex-lookup-of-neteval-ordering-compile)
             :use ((:instance netcomp-p-suff
                    (comp (append x y)) (decomp network)
                    (ordering (append (netcomp-p-eval-equiv-witness x network)
                                      (netcomp-p-eval-equiv-witness y network)))))
             :do-not-induct t)))

  (defthm netcomp-p-of-nil
    (netcomp-p nil network)
    :hints (("goal" :use ((:instance netcomp-p-suff
                           (comp nil) (decomp network)
                           (ordering nil)))
             :expand ((neteval-ordering-compile nil network))))))









(defsection  netcomp-p-of-svex-alist-reduce-implies
  (local (defthm svex-rsh-of-0
           (svex-eval-equiv (svex-rsh 0 x) x)
           :hints(("Goal" :in-theory (enable svex-eval-equiv svex-apply)))))

  (local
   (defines neteval-ordering-reduce-rec
     (define neteval-ordering-reduce-rec ((vars svarlist-p)
                                          (x neteval-ordering-p))
       :measure (neteval-ordering-count x)
       :returns (new-x neteval-ordering-p)
       :verify-guards nil
       (b* ((x (neteval-ordering-fix x))
            ((when (atom x)) nil)
            ((cons signal sigordering) (car x))
            ((unless (member-equal signal (svarlist-fix vars)))
             (neteval-ordering-reduce-rec vars (cdr x)))
            (new-sigord (neteval-sigordering-reduce-rec vars sigordering)))
         (cons (cons signal new-sigord)
               (neteval-ordering-reduce-rec vars (cdr x)))))

     (define neteval-sigordering-reduce-rec ((vars svarlist-p)
                                             (x neteval-sigordering-p))
       :measure (neteval-sigordering-count x)
       :returns (new-x neteval-sigordering-p)
       (neteval-sigordering-case x
         :segment (make-neteval-sigordering-segment
                   :width x.width
                   :ord (neteval-ordering-or-null-reduce-rec vars x.ord)
                   :rest (neteval-sigordering-reduce-rec vars x.rest))
         :remainder (neteval-sigordering-remainder
                     (neteval-ordering-or-null-reduce-rec vars x.ord))))

     (define neteval-ordering-or-null-reduce-rec ((vars svarlist-p)
                                                  (x neteval-ordering-or-null-p))
       :measure (neteval-ordering-or-null-count x)
       :returns (new-x neteval-ordering-or-null-p)
       (neteval-ordering-or-null-case x
         :null (neteval-ordering-or-null-fix x)
         :ordering (neteval-ordering-or-null-ordering
                    (neteval-ordering-reduce-rec vars x.ord))))
     ///

     (local (defthm compose-lookup-of-neteval-ordering-compile-when-not-in-network
              (implies (not (svex-lookup var network))
                       (svex-eval-equiv
                        (svex-lookup var (neteval-ordering-compile x network))
                        (and (hons-assoc-equal (svar-fix var) (neteval-ordering-fix x))
                             (svex-var var))))
              :hints(("Goal" :in-theory (enable svex-lookup-redef
                                                neteval-sigordering-compile-when-signal-not-in-network)))))

     (local (defthm car-of-neteval-ordering-fix
              (implies (consp (neteval-ordering-fix x))
                       (car (neteval-ordering-fix x)))
              :hints (("goal" :induct (len x)
                       :expand ((neteval-ordering-fix x))))))

     (std::defret-mutual lookup-in-neteval-ordering-reduce-rec
       (defret lookup-in-neteval-ordering-reduce-rec
         (iff (hons-assoc-equal var new-x)
              (and (svar-p var)
                   (member-equal var (svarlist-fix vars))
                   (hons-assoc-equal var (neteval-ordering-fix x))))
         :hints ('(:expand (<call>
                            (hons-assoc-equal var (neteval-ordering-fix x)))
                   :in-theory (disable hons-assoc-equal-of-neteval-ordering-fix)))
         :fn neteval-ordering-reduce-rec)
       :skip-others t)

     (local (defthm cons-under-iff
              (iff (cons a b) t)))

     (local (defthm svex-lookup-under-iff-of-neteval-ordering-compile
              (iff (svex-lookup var (neteval-ordering-compile x network))
                   (hons-assoc-equal (svar-fix var) (neteval-ordering-fix x)))))


     (local (defthm add-identity-pair-under-svex-alist-compose-equiv
              (implies (svex-eval-equiv (svex-compose-lookup var rest) (svex-var var))
                       ;; (or (not (svex-lookup var rest))
                       ;;     (equal (svex-lookup var rest) (svex-var var))))
                       (svex-alist-compose-equiv
                        (cons (cons var (svex-var var)) rest)
                        rest))
              :hints(("Goal" :in-theory (e/d (svex-alist-compose-equiv
                                              svex-compose-lookup)
                                             (equal-of-svex-var))))))

     (local (defthm add-pairs-under-svex-alist-compose-equiv
              (implies (svex-alist-compose-equiv rest1 rest2)
                       (equal (svex-alist-compose-equiv (cons a rest1)
                                                        (cons a rest2))
                              t))
              :hints (("goal" :expand ((svex-alist-compose-equiv (cons a rest1)
                                                                 (cons a rest2)))
                       :in-theory (enable svex-compose-lookup)
                       :use ((:instance svex-alist-compose-equiv-necc
                              (x rest1) (y rest2)
                              (var (svex-alist-compose-equiv-witness (cons a rest1) (cons a rest2)))))))))

     (local (in-theory (disable svex-lookup-of-neteval-ordering-compile)))
     (defthm-neteval-ordering-compile-flag neteval-ordering-reduce-rec-correct
       (defthm neteval-ordering-reduce-rec-correct
         (svex-alist-compose-equiv (neteval-ordering-compile
                                    (neteval-ordering-reduce-rec vars x) network)
                                   (neteval-ordering-compile x (svex-alist-reduce vars network)))
         :hints ('(:expand ((neteval-ordering-reduce-rec vars x)
                            (:free (network) (neteval-ordering-compile x network))
                            (:free (a b network) (neteval-ordering-compile (cons a b) network))
                            (:free (network) (neteval-ordering-compile nil network)))
                   :in-theory (e/d (neteval-sigordering-compile-when-signal-not-in-network
                                    svex-compose-lookup)
                                   (equal-of-svex-var)))
                 ;; (and stable-under-simplificationp
                 ;;      `(:expand (,(car (last clause)))
                 ;;        :in-theory (enable svex-compose-lookup
                 ;;                           neteval-sigordering-compile-when-signal-not-in-network)))
                 ;; (and stable-under-simplificationp
                 ;;      (let ((var (acl2::find-call-lst 'svex-alist-compose-equiv-witness clause)))
                 ;;        `(:clause-processor (acl2::generalize-with-alist-cp clause '((,var . var))))))
                 ;; (and stable-under-simplificationp
                 ;;      '(:in-theory (enable svex-lookup-of-neteval-ordering-compile)))
                 )
         :flag neteval-ordering-compile)
       (defthm neteval-sigordering-reduce-rec-correct
         (implies (member-equal (svar-fix signal) (svarlist-fix vars))
                  (svex-eval-equiv (neteval-sigordering-compile
                                    (neteval-sigordering-reduce-rec vars x)
                                    signal offset network)
                                   (neteval-sigordering-compile x signal offset (svex-alist-reduce vars network))))
         :hints ('(:expand ((neteval-sigordering-reduce-rec vars x)
                            (:free (network) (neteval-sigordering-compile x signal offset network))
                            (:free (width ord rest network)
                             (neteval-sigordering-compile (neteval-sigordering-segment width ord rest)
                                                          signal offset network))
                            (:free ( ord network)
                             (neteval-sigordering-compile (neteval-sigordering-remainder ord)
                                                          signal offset network)))))
         :flag neteval-sigordering-compile)
       (defthm neteval-ordering-or-null-reduce-rec-correct
         (implies (member-equal (svar-fix signal) (svarlist-fix vars))
                  (svex-eval-equiv (neteval-ordering-or-null-compile
                                    (neteval-ordering-or-null-reduce-rec vars x)
                                    signal network)
                                   (neteval-ordering-or-null-compile x signal (svex-alist-reduce vars network))))
         :hints ('(:expand ((neteval-ordering-or-null-reduce-rec vars x)
                            (:free (network) (neteval-ordering-or-null-compile x signal network))
                            (:free (network) (neteval-ordering-or-null-compile
                                              '(:null) signal network))
                            (:free (ord network) (neteval-ordering-or-null-compile
                                                  (neteval-ordering-or-null-ordering ord) signal network)))
                   :in-theory (enable svex-compose-lookup)))
         :flag neteval-ordering-or-null-compile))))

  (defthm netcomp-p-of-svex-alist-reduce-orig
    (implies (not (netcomp-p x y))
             (not (netcomp-p x (svex-alist-reduce vars y))))
    :hints (("goal" :expand ((netcomp-p x (svex-alist-reduce vars y)))
             :use ((:instance netcomp-p-suff
                    (comp x) (decomp y)
                    (ordering (neteval-ordering-reduce-rec
                               vars
                               (netcomp-p-eval-equiv-witness x (svex-alist-reduce vars y))))))
             :in-theory (disable netcomp-p-suff))))

  (defthm netcomp-p-of-svex-alist-reduce-orig-fwd
    (implies (netcomp-p x (svex-alist-reduce vars y))
             (netcomp-p x y))
    :rule-classes :forward-chaining))


(defsection neteval-p

  (defun-sk neteval-p (neteval network env)
    (exists neteval-ordering
            (svex-envs-equivalent neteval
                                  (neteval-ordering-eval neteval-ordering network
                                                         (svex-env-removekeys
                                                          (svex-alist-keys network) env)))))

  (in-theory (disable neteval-p neteval-p-suff))
  (local (in-theory (enable neteval-p)))


  (deffixcong svex-env-equiv equal (neteval-p neteval network env) neteval
    :hints (("goal" :use ((:instance neteval-p-suff
                           (neteval (svex-env-fix neteval))
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness (svex-env-fix neteval) network env)))))))


  (deffixcong svex-env-equiv equal (neteval-p neteval network env) env
    :hints (("goal" :use ((:instance neteval-p-suff
                           (env (svex-env-fix env))
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness neteval network  (svex-env-fix env))))))))

  (deffixcong svex-alist-equiv equal (neteval-p neteval network env) network
    :hints (("goal" :use ((:instance neteval-p-suff
                           (network (svex-alist-fix network))
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness neteval (svex-alist-fix network) env)))))))



  (defcong svex-envs-equivalent equal (neteval-p neteval network env) 1
    :hints (("goal" :use ((:instance neteval-p-suff
                           (neteval neteval-equiv)
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness neteval-equiv network env)))))))


  (defcong svex-envs-similar equal (neteval-p neteval network env) 3
    :hints (("goal" :use ((:instance neteval-p-suff
                           (env env-equiv)
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness neteval network env-equiv))))
             :cases ((neteval-p neteval network env)))))

  (defcong svex-alist-eval-equiv equal (neteval-p neteval network env) 2
    :hints (("goal" :use ((:instance neteval-p-suff
                           (network network-equiv)
                           (neteval-ordering (neteval-p-witness neteval network env)))
                          (:instance neteval-p-suff
                           (neteval-ordering (neteval-p-witness neteval network-equiv env)))))))


  (defthm neteval-p-of-nil
    (neteval-p nil network env)
    :hints(("Goal" :use ((:instance neteval-p-suff (neteval-ordering nil) (neteval nil)))))))





(defsection neteval-p-of-netcomp-eval
  (local (defthm svex-alist-eval-when-equiv-compile
           (implies (svex-alist-eval-equiv x (neteval-ordering-compile ordering network))
                    (svex-envs-equivalent (svex-alist-eval x env)
                                          (neteval-ordering-eval ordering network env)))))
  (defthm neteval-p-of-netcomp-eval
    (implies (netcomp-p updates network)
             (neteval-p (svex-alist-eval updates (svex-env-removekeys (svex-alist-keys network) env))
                        network env))
    :hints (("goal" :expand ((netcomp-p updates network))
             :use ((:instance neteval-p-suff
                    (neteval (svex-alist-eval updates (svex-env-removekeys (svex-alist-keys network) env)))
                    (neteval-ordering (netcomp-p-eval-equiv-witness updates network))))))))


(local (in-theory (enable svex-env-removekeys-under-svex-envs-similar)))







(defsection netevalcomp-p
  (defun-sk netevalcomp-p (comp network)
    (exists ordering
            (svex-alist-eval-equiv comp
                                   (svex-alist-compose
                                    (neteval-ordering-compile ordering network)
                                    (svarlist-x-subst (svex-alist-keys network))))))

  (in-theory (disable netevalcomp-p netevalcomp-p-suff))

  (defcong svex-alist-eval-equiv equal (netevalcomp-p comp network) 1
    :hints (("goal" :cases ((netevalcomp-p comp network))
             :in-theory (enable netevalcomp-p)
             :use ((:instance netevalcomp-p-suff
                    (comp comp-equiv)
                    (ordering (netevalcomp-p-witness comp network)))
                   (:instance netevalcomp-p-suff
                    (ordering (netevalcomp-p-witness comp-equiv network)))))))



  (defcong svex-alist-eval-equiv equal (netevalcomp-p comp network) 2
    :hints (("goal" :cases ((netevalcomp-p comp network))
             :in-theory (enable netevalcomp-p)
             :use ((:instance netevalcomp-p-suff
                    (network network-equiv)
                    (ordering (netevalcomp-p-witness comp network)))
                   (:instance netevalcomp-p-suff
                    (ordering (netevalcomp-p-witness comp network-equiv)))))))

  
  (defthm netevalcomp-p-of-compose-netcomp
    (implies (netcomp-p x y)
             (netevalcomp-p (svex-alist-compose x (svarlist-x-subst (svex-alist-keys y))) y))
    :hints(("Goal" :expand ((netcomp-p x y))
            :use ((:instance netevalcomp-p-suff
                   (comp (svex-alist-compose x (svarlist-x-subst (svex-alist-keys y))))
                   (network y)
                   (ordering (netcomp-p-eval-equiv-witness x y))))))))



