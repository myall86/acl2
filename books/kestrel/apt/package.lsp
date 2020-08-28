; APT (Automated Program Transformations) Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/portcullis" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpkg "APT" (set-difference-eq
               (append *std-pkg-symbols*
                       '(*defmapping-table-name*
                         *fake-runes*
                         *force-xnume*
                         *geneqv-iff*
                         *nil*
                         *t*
                         *unspecified-xarg-value*
                         add-numbered-name-in-use
                         add-suffix
                         add-suffix-to-fn
                         alist-to-doublets
                         all-calls
                         all-ffn-symbs
                         all-nils
                         all-runes-in-ttree
                         append-lst
                         append?
                         apply-fn-if-known
                         apply-fn-into-ifs
                         apply-renaming-to-hints
                         apply-term
                         apply-term*
                         apply-unary-to-terms
                         assert-equal
                         assume-true-false-aggressive-p
                         attachment-pair
                         body
                         check-numbered-name
                         check-user-lambda
                         check-user-term
                         clausify
                         clean-up-0ary-lambdas-in-untranslated-term
                         clean-up-and-of-t-in-untranslated-term
                         clean-up-equal-of-len-of-cons-nest-and-number-untranslated-term
                         clean-up-implies-of-t-in-untranslated-term
                         clean-up-nth-of-cons-in-untranslated-term
                         clean-up-true-listp-of-cons-in-untranslated-term
                         cltl-def-from-name
                         collect-ideals
                         compute-stobj-flags
                         conc
                         congruence-rule
                         conjoin
                         conjoin-equalities
                         conjoin-untranslated-terms
                         conjoin2
                         cons-term
                         constant-t-function-arity-0
                         control-screen-output
                         convert-soft-error
                         copy-def
                         current-addr
                         current-theory-fn
                         cw-event
                         def-error-checker
                         defattach-system
                         defexists
                         deffilter
                         defforall
                         definedp
                         definj
                         defiso
                         defiso-lookup
                         defmacro+
                         defmap
                         defmapping-info
                         defmapping-infop
                         defsurj
                         defsurj-lookup
                         deftransformation
                         defun-sk-bound-vars
                         defun-sk-imatrix
                         defun-sk-matrix
                         defun-sk-p
                         defun-sk-quantifier
                         defun-sk-rewrite-kind
                         defun-sk-rewrite-name
                         defun-sk-strengthen
                         defun-sk-witness
                         defun-sk2
                         defxdoc+
                         directed-untranslate
                         directed-untranslate-no-lets
                         disable*
                         disjoin
                         do-all
                         doublet-listp
                         doublets-to-alist
                         drop-fake-runes
                         dumb-negate-lit
                         dumb-occur
                         e/d*
                         enable-disable-runes-in-hints
                         enabled-numep
                         enabled-runep
                         enabled-xfnp
                         encapsulate-report-errors
                         ens
                         ensure-boolean-or-auto-and-return-boolean$
                         ensure-doublet-list$
                         ensure-function-defined$
                         ensure-function-guard-verified$
                         ensure-function-has-args$
                         ensure-function-known-measure$
                         ensure-function-logic-mode$
                         ensure-function-name-or-numbered-wildcard$
                         ensure-function-no-stobjs$
                         ensure-function-not-in-termination-thm$
                         ensure-function-number-of-results$
                         ensure-function-singly-recursive$
                         ensure-function/lambda-arity$
                         ensure-function/lambda-closed$
                         ensure-function/lambda-guard-verified-exec-fns$
                         ensure-function/lambda-logic-mode$
                         ensure-function/lambda-no-stobjs$
                         ensure-function/lambda/term-number-of-results$
                         ensure-function/macro/lambda$
                         ensure-keyword-value-list
                         ensure-keyword-value-list$
                         ensure-list-no-duplicates$
                         ensure-list-subset$
                         ensure-named-formulas
                         ensure-symbol-different$
                         ensure-symbol-is-fresh-event-name$
                         ensure-symbol-new-event-name
                         ensure-symbol-new-event-name$
                         ensure-term$
                         ensure-term-does-not-call$
                         ensure-term-free-vars-subset$
                         ensure-term-ground$
                         ensure-term-guard-verified-exec-fns$
                         ensure-term-if-call$
                         ensure-term-logic-mode$
                         ensure-term-no-stobjs$
                         ensure-term-not-call-of$
                         ensure-tuple$
                         ensure-value-is-boolean$
                         ensure-value-is-legal-variable-name$
                         ensure-value-is-in-list$
                         ensure-value-is-not-in-list$
                         ensure-value-is-symbol$
                         ensure-value-is-symbol-list$
                         ensure-value-is-untranslated-term$
                         equivalence-relationp
                         er-soft+
                         evmac-appcond-listp
                         evmac-appcond-theorem-list
                         evmac-appcond-theorems-no-extra-hints
                         evmac-appcondp
                         evmac-input-hints-p
                         evmac-input-print-p
                         evmac-prepare-proofs
                         evmac-process-input-hints
                         evmac-process-input-hints$
                         evmac-process-input-print
                         evmac-process-input-show-only
                         exists
                         expand-ruleset
                         explode
                         ext-address-subterm-governors-lst
                         ext-address-subterm-governors-lst-state
                         ext-fdeposit-term
                         ext-geneqv-at-subterm
                         ext-rename-formals
                         fargn
                         fargs
                         fcons-term
                         fcons-term*
                         fetch-term
                         ffn-symb
                         ffn-symb-p
                         ffnnamep
                         flambda-applicationp
                         flambdap
                         flatten-ands-in-lit
                         flatten-ands-in-lit-lst
                         fn-copy-name
                         fn-is-fn-copy-name
                         fn-rune-nume
                         fn-ubody
                         forall
                         formals
                         formals+
                         fquotep
                         fresh-logical-name-with-$s-suffix
                         fresh-name-in-world-with-$s
                         fresh-namep-msg-weak
                         fsublis-fn-lst-simple
                         fsublis-fn-simple
                         fsublis-var
                         function-intro-macro
                         function-namep
                         fundef-enabledp
                         geneqv-from-g?equiv
                         genvar
                         get-called-fns-in-untranslated-term
                         get-calls-in-untranslated-term
                         get-event
                         get-unambiguous-xargs-flg1/edcls1
                         get-unnormalized-bodies
                         get-vars-in-untranslated-term
                         guard-raw
                         guard-verified-p
                         ibody
                         implicate
                         implicate-untranslated-terms
                         impliez
                         implode
                         impossible
                         induction-machine
                         induction-machine-for-fn
                         install-not-normalized
                         install-not-normalized$
                         install-not-normalized-event
                         install-not-normalized-name
                         io?
                         irecursivep
                         justification
                         keyword-listp
                         keyword-truelist-alistp
                         keyword-value-list-to-alist
                         lambda-applicationp
                         lambda-body
                         lambda-formals
                         lookup-eq
                         macro-namep
                         macro-required-args
                         make-event-terse
                         make-evmac-appcond
                         make-evmac-appcond?
                         make-implication
                         make-lambda
                         make-lambda-term
                         make-mv-let-call
                         make-mv-nth-calls
                         make-paired-name
                         maybe-pseudo-event-formp
                         mbt$
                         measure
                         merge-sort-lexorder
                         msg-downcase-first
                         must-eval-to-t
                         must-succeed*
                         mvify
                         named-formulas-to-thm-events
                         negate-term
                         next-fresh-numbered-name
                         next-fresh-numbered-names
                         next-numbered-name
                         non-executablep
                         number-of-results
                         nvariablep
                         on-failure
                         pack$
                         packn
                         packn-pos
                         pairlis-x1
                         parse-enable-disable-e/d
                         pos-fix
                         pos-listp
                         pseudo-event-form-listp
                         pseudo-event-formp
                         pseudo-lambdap
                         pseudo-termfnp
                         pseudo-tests-and-call-listp
                         recursive-calls
                         recursivep
                         remove-assocs-eq
                         remove-keyword
                         remove-lambdas
                         rename-fns
                         rename-fns-and-expand-lambdas-in-untranslated-term
                         rename-fns-in-untranslated-term
                         rename-fns-lst
                         replace-in-untranslated-term
                         resolve-numbered-name-wildcard
                         restore-output?
                         rewrite-if-avoid-swap
                         rewrite-if1
                         rewrite1
                         ruler-extenders-lst
                         run-when
                         set-numbered-name-index-end
                         set-numbered-name-index-start
                         set-paired-name-separator
                         simplify-hyps
                         sr-limit
                         stobjs-in
                         stobjs-out
                         str::intern-list
                         str::symbol-list-names
                         strip-cddrs
                         strip-keyword-list
                         subcor-var
                         subcor-var-lst
                         sublis-expr
                         sublis-var
                         sublis-var-untranslated-term
                         subst-expr
                         subst-expr1
                         subst-var
                         symbol-class
                         symbol-name-equal
                         symbol-package-name-non-cl
                         symbol-symbol-alistp
                         symbol-truelist-alistp
                         table-alist+
                         term-guard-obligation
                         termify-clause-set
                         tests-and-call
                         tests-and-calls
                         theorem-intro-macro
                         theorem-namep
                         thm-formula+
                         too-many-ifs-post-rewrite
                         too-many-ifs-pre-rewrite
                         tool2-fn
                         trans-eval
                         trans-eval-error-triple
                         translate-hints
                         translate-term-lst
                         try-event
                         ubody
                         uguard
                         unnormalized-body
                         untranslate-lst
                         untranslated-term-listp
                         untranslated-termp
                         unwrapped-nonexec-body
                         variablep
                         well-founded-relation)
                       )

; It's not clear why acl2::simplify is in *acl2-exports*.  That may change, but
; for now it is convenient to avoid importing it into the "APT" package in view
; of there possibly being a SIMPLIFY transformation in the future.

               '(simplify)))
