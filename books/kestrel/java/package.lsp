; Java Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/portcullis" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpkg "JAVA" (append (set-difference-eq *std-pkg-symbols*
                                          '(package-name
                                            pointers
                                            values))
                       '(*nil*
                         *pkg-witness-name*
                         *primitive-formals-and-guards*
                         *stobjs-out-invalid*
                         add-const-to-untranslate-preprocess
                         add-suffix
                         all-ffn-symbs
                         all-fnnames
                         all-fnnames-lst
                         all-fnnames1
                         all-free/bound-vars
                         all-vars-open
                         all-vars-open-lst
                         alpha/digit-chars
                         alpha/digit/dash-charlist-p
                         alpha/digit/uscore/dollar-charlist-p
                         alpha/uscore/dollar-char-p
                         arity+
                         bad-atom<=
                         body
                         bool
                         char-downcase
                         char-upcase
                         chars=>nats
                         check-if-call
                         check-lambda-call
                         check-list-call
                         check-mv-let-call
                         check-unary-lambda-call
                         conjoin
                         cons-listp
                         cons-pos-alistp
                         define-sk
                         defmacro+
                         defthm-commutative
                         deftutorial
                         defxdoc+
                         doublets-to-alist
                         dumb-occur-var-open
                         dumb-occur-var-open-lst
                         ensure-doublet-list$
                         ensure-function-name-list$
                         ensure-list-functions$
                         ensure-list-has-no-duplicates$
                         ensure-string-or-nil$
                         ensure-term-ground$
                         ensure-value-is-boolean$
                         ensure-value-is-function-name$
                         ensure-value-is-in-list$
                         ensure-value-is-string$
                         ensure-value-is-untranslated-term$
                         er-soft+
                         explode
                         fargn
                         fargs
                         fcons-term
                         fcons-term*
                         ffn-symb
                         ffn-symb-p
                         flambda-applicationp
                         flambdap
                         flatten
                         fmt-hard-right-margin
                         fmt-soft-right-margin
                         formals
                         formals+
                         fquotep
                         function-namep
                         function-name-listp
                         implicate
                         implode
                         impossible
                         index-of
                         integers-from-to
                         irecursivep
                         keyword-listp
                         known-packages+
                         lambda-body
                         lambda-formals
                         logext
                         loghead
                         logic-fns-with-raw-code
                         logicp
                         lower-case-p
                         make-lambda
                         make-mv-let-call
                         maybe-natp
                         maybe-stringp
                         msg-listp
                         mvify
                         nat
                         nats=>string
                         no-stobjs-p
                         number-of-results+
                         organize-symbols-by-name
                         organize-symbols-by-pkg
                         packn
                         packn-pos
                         partition-rest-and-keyword-args
                         patbind-fun
                         patbind-run-unless
                         patbind-run-when
                         pos
                         pos-listp
                         primitivep
                         printable-charlist-p
                         program-fns-with-raw-code
                         pseudo-fn-args-p
                         pseudo-fn-p
                         pseudo-lambda
                         pseudo-lambda->body
                         pseudo-lambda->formals
                         pseudo-lambda-p
                         pseudo-lambdap
                         pseudo-term-call
                         pseudo-term-call->args
                         pseudo-term-call->fn
                         pseudo-term-case
                         pseudo-term-count
                         pseudo-term-equiv
                         pseudo-term-fix
                         pseudo-term-fncall
                         pseudo-term-fncall->args
                         pseudo-term-fncall->fn
                         pseudo-term-kind
                         pseudo-term-lambda
                         pseudo-term-lambda->args
                         pseudo-term-lambda->body
                         pseudo-term-lambda->formals
                         pseudo-term-list-count
                         pseudo-term-null
                         pseudo-term-quote
                         pseudo-term-quote->val
                         pseudo-term-var
                         pseudo-term-var->name
                         pseudo-termfn-listp
                         pseudo-termfnp
                         pseudo-var-p
                         pure-raw-p
                         quote-listp
                         rawp
                         remove-assocs-eq
                         remove-dead-if-branches
                         remove-mbe-exec
                         remove-mbe-logic
                         remove-progn
                         remove-trivial-vars
                         remove-unused-vars
                         sbyte8
                         sbyte8p
                         sbyte8-listp
                         sbyte16
                         sbyte16p
                         sbyte16-listp
                         sbyte32
                         sbyte32p
                         sbyte32-listp
                         sbyte64
                         sbyte64p
                         sbyte64-listp
                         sort-symbol-listp
                         str-fix
                         string-downcase
                         string-string-alistp
                         string-symbollist-alistp
                         string-upcase
                         subcor-var
                         string=>nats
                         symbol-list
                         symbol-name-lst
                         symbol-pos-alistp
                         symbol-string-alistp
                         symbol-symbol-alistp
                         symbol-symbollist-alistp
                         symbol-package-name-lst
                         table-alist+
                         tail-recursive-p
                         term-possible-numbers-of-results
                         trans-eval
                         tuplep
                         typed-tuplep
                         ubody
                         ubody+
                         ubyte8
                         ubyte16
                         ubyte16p
                         ubyte16-listp
                         ubyte8=>hexchars
                         ubyte8s=>hexstring
                         uguard
                         unnormalized-body
                         unquote-term
                         unquote-term-list
                         unsigned-byte-listp
                         upper-case-p
                         variablep
                         std::defret-mutual
                         set::list-in
                         str::chars-in-charset-p
                         str::nat-to-dec-string)))
