; C Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2021 Kestrel Technology LLC (http://kestreltechnology.com)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "dynamic-semantics")

(include-book "kestrel/utilities/defopeners" :dir :system)
(include-book "tools/rulesets" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-proof-support
  :parents (atc-implementation)
  :short "Rules to support the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "Currently, the generated proofs of function correctness
     are carried out via symbolic execution of the C code.
     The C code is a constant value,
     because we are generating proofs over specific C functions.")
   (xdoc::p
    "Since there is no recursion allowed by ATC,
     we unfold, by symbolic execution, all the function calls.
     This is not an ideal strategy in general,
     because the functions are essentially inlined every time they are called,
     but it can work well for relatively small programs.
     Eventually, we will want to generate more modular proofs,
     where each function is proved correct once and never inlined.")
   (xdoc::p
    "In order to make these generated proofs more robust,
     we carry them out in a theory that consists exactly of
     (what we believe to be) all and only the needed rules.
     This file defines that theory, which consists of
     rules introduced elsewhere and rules introduced in this file.
     This set of rules has been defined by
     experimenting with several symbolic execution proofs,
     starting with the empty theory and adding rules
     as needed to advance the symbolic execution,
     and also by looking at the C dynamic semantics.
     There is guarantee (meta proof) that
     these rules will suffice for every use of ATC;
     there is also no guarantee that
     the proof will not be defeated by ACL2's heuristics.
     Nonetheless, the proof strategy seems sound and robust,
     and if a generated proof fails
     it should be possible to (prove and) use additional rules."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-opener-rules
  :short "Opener rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "To symbolically execute  the generated C code,
     we need to unfold the recursive execution functions,
     as well as other recursive functions.")
   (xdoc::p
    "In general, just enabling recursive functions in ACL2
     does not guarantee that their calls will be expanded when desired:
     ACL2 has heuristics to inhibit the unfolding sometimes,
     to avoid infinite loops.
     When the values over which a recursive function recurses are constant,
     as it happens in our symbolic execution,
     then we know that the expansion is always safe,
     but experiments suggest that ACL2's heuristics
     sometimes block those expansions.
     For this reason, it is better to have opener rules,
     i.e. rules that expand function calls,
     according to the function definitions,
     under suitable conditions.")
   (xdoc::p
    "We use the @('defopeners') utility
     from @('[books]/kestrel/utilities/defopeners').
     Compared to the @(tsee defopener) utility,
     @('defopeners') generates multiple opener rules
     (note the plural vs. singular name),
     corresponding to the conditional structure of the function.
     In general, there will be some base cases and some step cases;
     the former have @('base') in the generated rule names,
     while the latter have @('unroll') in the generated rule names.
     The names of the generated rules are automatically obtained
     via the @('defopeners-names') companion tool of @('defopeners').
     While @(tsee defopener) simplifies the expansion, @('defopeners') does not;
     since we use the rules in a symbolic execution,
     we expect that the simplification will take place there.")
   (xdoc::p
    "We generate opener rules for
     all the (singly and mutually) recursive @('exec-...') functions
     except @(tsee exec-fun) (more on this below),
     as well as for some other recursive functions.
     The opener rules have hypotheses saying that
     certain arguments are (quoted) constants,
     which is what we expect in the symbolic execution.
     For @(tsee read-var-aux) and @(tsee write-var-aux),
     we also add @(tsee syntaxp) hypotheses saying that
     the list of scopes has the form @('(cons ...)'),
     because this is what we expect to happen during symbolic execution.
     The latter is motivated by the fact that,
     during the symbolic execution,
     the list of scopes in a frame has the form of a nest of @(tsee cons)es,
     with some constant and some non-constant parts.")
   (xdoc::p
    "We avoid opener rules for @(tsee exec-fun) because
     we use the correctness theorems of callees
     in the correctness proofs of callers.
     Those correctness theorems are expressed in terms of @(tsee exec-fun),
     so we do not want to expand @(tsee exec-fun).
     See the proof generation code for more details.")
   (xdoc::p
    "We collect all the openers rules in a ruleset,
     to make it easier to collect them incrementally as they are introduced."))

  (def-ruleset atc-openers nil)

  (progn
    (defopeners exec-expr-pure
      :hyps ((syntaxp (quotep e)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-expr-pure)))

  (progn
    (defopeners exec-expr-pure-list
      :hyps ((syntaxp (quotep es)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-expr-pure-list)))

  (progn
    (defopeners exec-expr-call-or-pure
      :hyps ((syntaxp (quotep e)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-expr-call-or-pure)))

  (progn
    (defopeners exec-expr-asg
      :hyps ((syntaxp (quotep e)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-expr-asg)))

  (progn
    (defopeners exec-stmt
      :hyps ((syntaxp (quotep s)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-stmt)))

  (progn
    (defopeners exec-block-item
      :hyps ((syntaxp item))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-block-item)))

  (progn
    (defopeners exec-block-item-list
      :hyps ((syntaxp (quotep items)))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names exec-block-item-list)))

  (progn
    (defopeners init-scope
      :hyps ((syntaxp formals))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names init-scope)))

  (progn
    (defopeners read-var-aux
      :hyps ((syntaxp (quotep var))
             (syntaxp (and (consp scopes)
                           (eq (car scopes) 'cons))))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names read-var-aux)))

  (progn
    (defopeners write-var-aux
      :hyps ((syntaxp (quotep var))
             (syntaxp (and (consp scopes)
                           (eq (car scopes) 'cons))))
      :disable t)
    (add-to-ruleset atc-openers (defopeners-names write-var-aux))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defval *atc-opener-rules*
    :short "List of opener rules for the proofs generated by ATC."
    ',(get-ruleset 'atc-openers (w state))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-executable-counterpart-rules*
  :short "List of executable counterpart rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "During symbolic execution, some data is constant,
     especially the C abstract sytactic entities being executed.
     In the course of the symbolic execution,
     terms appear with functions applied to quoted constants.
     Those can be simplified via the executable counterparts of such functions.
     We collect all such rules here.
     Many of them are fixtype deconstructors;
     there are also some fixers and some constructors.
     The one for @(tsee zp) serves when testing the limit value,
     which is a (large) constant.
     This list may not be exhaustive; we may add more as needed."))
  '((:e binop-fix)
    (:e binop-kind)
    (:e binop-purep)
    (:e binop-strictp)
    (:e block-item-declon->get)
    (:e block-item-kind)
    (:e block-item-stmt->get)
    (:e compustate)
    (:e compustate->frames)
    (:e compustate-fix)
    (:e const-int->get)
    (:e const-kind)
    (:e declon->init)
    (:e declon->declor)
    (:e declon->type)
    (:e declor->ident)
    (:e declor->pointerp)
    (:e expr-arrsub->arr)
    (:e expr-arrsub->sub)
    (:e expr-binary->arg1)
    (:e expr-binary->arg2)
    (:e expr-binary->op)
    (:e expr-call->args)
    (:e expr-call->fun)
    (:e expr-cast->type)
    (:e expr-cast->arg)
    (:e expr-cond->else)
    (:e expr-cond->test)
    (:e expr-cond->then)
    (:e expr-const->get)
    (:e expr-fix)
    (:e expr-ident->get)
    (:e expr-kind)
    (:e expr-unary->arg)
    (:e expr-unary->op)
    (:e exprp)
    (:e frame-list-fix)
    (:e fun-env-lookup)
    (:e fun-info->body)
    (:e fun-info->params)
    (:e fun-info->result)
    (:e iconst->base)
    (:e iconst->type)
    (:e iconst->unsignedp)
    (:e iconst->value)
    (:e iconst-fix)
    (:e iconst-tysuffix-kind)
    (:e ident)
    (:e ident-fix)
    (:e identp)
    (:e init-fun-env)
    (:e len)
    (:e natp)
    (:e omap::in)
    (:e param-declon->declor)
    (:e param-declon->type)
    (:e param-declon-list-fix)
    (:e scope-list-fix)
    (:e scope-listp)
    (:e scopep)
    (:e sint-integerp)
    (:e stmt-compound->items)
    (:e stmt-expr->get)
    (:e stmt-fix)
    (:e stmt-if->test)
    (:e stmt-if->then)
    (:e stmt-ifelse->else)
    (:e stmt-ifelse->test)
    (:e stmt-ifelse->then)
    (:e stmt-kind)
    (:e stmt-return->value)
    (:e tyname)
    (:e type-kind)
    (:e type-name-to-type)
    (:e type-pointer)
    (:e type-uchar)
    (:e type-sint)
    (:e unop-fix)
    (:e unop-kind)
    (:e valuep)
    (:e value-list-fix)
    (:e value-listp)
    (:e zp)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-definition-rules*
  :short "List of definition rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "During symbolic execution, terms appear
     with certain non-recursive functions applied to
     terms that are not constant, but contain constant parts.
     These can be simplified by opening the function definition,
     which ACL2's heuristics (we believe) should never block,
     given that they are not recursive.
     Some are @('exec-...') functions,
     others are functions to manipulate the frame stack,
     etc.")
   (xdoc::p
    "It may seem surprising that we expand @(tsee sint-const),
     since that corresponds to a C construct;
     we most certainly do not expand functions like @(tsee sint-add).
     The reason is that @(tsee sint-const) is used to represent C constants
     in ACL2 functions,
     but in the dynamic semantics,
     @(tsee exec-iconst) (which we expand, obviously)
     produces terms of the form @('(sint <quoted-integer>)').
     By expanding @(tsee sint-const) in the ACL2 functions,
     we produce terms of the form @('(sint <quoted-integer>)'),
     which therefore match the ones from @(tsee exec-iconst).")
   (xdoc::p
    "We do not expand any fixtype constructors.
     This is because such expansions would expose
     the internal representational details of the fixtype's values.
     Instead, we want to operate on those as more abstract entities,
     and use deconstructors to obtain their components.
     In fact, as explained elsewhere,
     we enable rules that simplify
     applications of deconstructors to constructors.")
   (xdoc::p
    "We expand @(tsee sint01), because it is really just an abbreviation.
     In fact, we want to expose its @(tsee if) structure
     in the symbolic execution.")
   (xdoc::p
    "We also expand @(tsee sint-logand) and @(tsee sint-logor),
     which may appear in the ACL2 functions that represent C functions,
     to expose their internal @(tsee if) structure,
     so that it can match the @(tsee if) structure of
     @(tsee exec-binary-logand) and @(tsee exec-binary-logor)."))
  '(compustate-frames-number
    create-var
    endp
    enter-scope
    exit-scope
    exec-iconst
    exec-const
    exec-ident
    exec-plus
    exec-minus
    exec-bitnot
    exec-lognot
    exec-unary
    exec-binary-strict-pure
    exec-binary-logand
    exec-binary-logor
    exec-binary-pure
    exec-cast
    exec-arrsub
    promote-value
    mv-nth
    pop-frame
    push-frame
    read-var
    sint01
    sint-const
    sint-logand
    sint-logor
    top-frame
    type-of-value
    value-unsigned-integerp
    value-signed-integerp
    value-integerp
    value-realp
    value-arithmeticp
    value-scalarp
    write-var))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-rewrite-rules
  :short "Rewrite rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "During symbolic execution, certain term patterns appear,
     which are amenable to simplification via the following rewrite rules.
     These are non-opener rewrite rules; those are considered separately
     (see @(tsee atc-opener-rules)).")
   (xdoc::p
    "The following rules are general
     and should be probably moved to a more general place.
     For now we put them here, disabled.")
   (xdoc::p
    "Some of the following rewrite rules, in combinations with external ones,
     may exhibit backchaining circularities.
     However, it looks like ACL2's ancestor checks
     should avoid actual circularities,
     in effect limiting the application of
     different partial ``arcs'' of the circles in different situations.
     Anyways, this is being flagged here as something to watch for.")
   (xdoc::p
    "The rule @('c::len-of-cons') below
     is a duplicate of @('acl2::len-of-cons')
     from at least two list libraries,
     but this way we avoid having this file depend on those list libraries;
     the theorem is very simple and small,
     so it is not a lot of duplication.")
   (xdoc::p
    "We also have two rules to simplify applications of
     @(tsee sint-nonzerop) to @('(sint 0)') and @('(sint 1)').
     These applications appear during symbolic execution,
     because in C certain ``boolean'' expressions produce those @('int') values,
     and @(tsee sint-nonzerop) is used to turn those into ACL2 booleans,
     which are uses in @(tsee if)s,
     and thus we clearly want to simplify those application
     to @('t') and @('nil'), which further simplifies the @(tsee if)s.")
   (xdoc::p
    "We also have two rules to simplify applications of
     @(tsee sint-lognot) to @('(sint 0)') and @('(sint 1)').
     Terms of this form may arise in the process of simplifying
     C non-strict expressions involving @('&&') and @('||').")
   (xdoc::p
    "We also found it necessary to include rules
     to distribute two specific functions over @(tsee if)s.
     It seems that, in the course of these symbolic execution proofs,
     we will always want to distribute functions over @(tsee if)s.
     This distribution happens at the goal level,
     but not in the rewriter by default."))

  (defruled not-errorp-when-scopep
    (implies (scopep x)
             (not (errorp x)))
    :enable (errorp scopep))

  (defruled value-result-fix-when-valuep
    (implies (valuep x)
             (equal (value-result-fix x)
                    x)))

  (defruled not-errorp-when-valuep
    (implies (valuep x)
             (not (errorp x)))
    :enable (errorp
             valuep
             ucharp
             scharp
             ushortp
             sshortp
             uintp
             sintp
             ulongp
             slongp
             ullongp
             sllongp
             pointerp))

  (defruled not-errorp-when-value-listp
    (implies (value-listp x)
             (not (errorp x)))
    :enable errorp)

  (defruled not-errorp-when-scope-listp
    (implies (scope-listp x)
             (not (errorp x)))
    :enable errorp)

  (defruled not-errorp-when-uchar-arrayp
    (implies (uchar-arrayp x)
             (not (errorp x)))
    :enable (errorp uchar-arrayp))

  (defruled len-of-cons
    (equal (len (cons x y))
           (1+ (len y)))
    :prep-books ((include-book "std/lists/len" :dir :system)))

  (defruled 1+len-greater-than-0
    (> (1+ (len x)) 0))

  (defruled sint-nonzerop-of-1
    (equal (sint-nonzerop (sint 1)) t))

  (defruled sint-nonzerop-of-0
    (equal (sint-nonzerop (sint 0)) nil))

  (defruled sint-lognot-of-0
    (equal (sint-lognot (sint 0))
           (sint 1)))

  (defruled sint-lognot-of-1
    (equal (sint-lognot (sint 1))
           (sint 0)))

  (defruled car-of-if
    (equal (car (if a b c))
           (if a (car b) (car c))))

  (defruled value-result-fix-of-if
    (equal (value-result-fix (if a b c))
           (if a (value-result-fix b) (value-result-fix c))))

  (defruled errorp-of-if
    (equal (errorp (if a b c))
           (if a (errorp b) (errorp c))))

  (defruled valuep-of-if
    (equal (valuep (if a b c))
           (if a (valuep b) (valuep c))))

  (defruled ucharp-of-if
    (equal (ucharp (if a b c))
           (if a (ucharp b) (ucharp c))))

  (defruled sintp-of-if
    (equal (sintp (if a b c))
           (if a (sintp b) (sintp c))))

  (defruled pointerp-of-if
    (equal (pointerp (if a b c))
           (if a (pointerp b) (pointerp c))))

  (defruled 1+nat-greater-than-0
    (implies (natp x)
             (< 0 (1+ x))))

  (defruled natp-of-1+
    (implies (natp x)
             (natp (1+ x))))

  (defruled natp-of-len
    (natp (len x))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-rewrite-rules*
  :short "List of rewrite rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "These exlude the openers (see @(tsee *atc-opener-rules*)),
     and include not only the rules defined in @(see atc-rewrite-rules),
     but also other existing rewrite rules.
     Note that some of them serve to
     simplify fixtype deconstructors applied to constructors.")
   (xdoc::p
    "We take the opportunity here to discuss the general shape
     of the computation state terms during the symbolic execution.
     They have the form @('(compustate <frames>)'),
     where @('<frames>') is a @(tsee cons) nest of frames
     (possibly @('nil'), when there are no frames).
     Each frame has the form @('(frame <fun-id> <scopes>)'),
     where @('<fun-id>') is a quoted constant with the function identifier
     (the quoted constant being produced by
     the rules enabled in symbolic execution),
     and where @('<scopes>') is a @(tsee cons) nest of scopes,
     never @('nil') due to the invariant on the @(tsee scope) fixtype.
     Each scope is an @(tsee omap::update) nest, possibly @('nil'):
     note that @(tsee omap::update) is a constructor of non-empty omaps,
     @('nil') being the one for empty omaps.
     In this nest,
     the keys of the map are quoted constants for C variable identifiers,
     while the values are shallowly embedded C expressions,
     which depend on the ACL2 variables in the formulation of
     each functional correctness theorem,
     which are also the formal parameters of the ACL2 function
     that the functional correctness theorem pertains to.")
   (xdoc::p
    "Given the above, it should not be surprising to see
     rules like @('omap::in-of-update'),
     which serves to simplify, during symbolic execution,
     the finding of a variable in a scope."))
  (append
   '(;; introduced in this file (see ATC-REWRITE-RULES):
     len-of-cons
     1+len-greater-than-0
     not-errorp-when-scopep
     not-errorp-when-valuep
     not-errorp-when-value-listp
     not-errorp-when-scope-listp
     not-errorp-when-uchar-arrayp
     not-sintp-when-ucharp
     not-pointerp-when-ucharp
     not-ucharp-when-sintp
     not-pointerp-when-sintp
     not-ucharp-when-pointerp
     not-sintp-when-pointerp
     sint-nonzerop-of-0
     sint-nonzerop-of-1
     sint-lognot-of-0
     sint-lognot-of-1
     value-result-fix-when-valuep
     value-result-fix-of-if
     errorp-of-if
     valuep-of-if
     ucharp-of-if
     sintp-of-if
     pointerp-of-if
     car-of-if
     1+nat-greater-than-0
     natp-of-1+
     natp-of-len
     ;; introduced elsewhere:
     car-cons
     cdr-cons
     compustate-of-fields
     compustate->frames-of-compustate
     compustate->heap-of-compustate
     compustate-fix-when-compustatep
     compustatep-of-compustate
     frame->function-of-frame
     frame->scopes-of-frame
     frame-fix-when-framep
     frame-list-fix-of-cons
     frame-list-fix-when-frame-listp
     frame-listp-of-compustate->frames
     framep-of-frame
     heap-fix-when-heapp
     heapp-of-compustate->heap
     not-errorp-when-compustatep
     omap::in-of-update
     pop-frame-of-push-frame
     scope-fix-when-scopep
     scope-list-fix-of-cons
     scope-listp-of-cons
     scopep-of-update
     sint-fix-when-sintp
     sintp-of-sint
     sintp-of-sint-plus
     sintp-of-sint-minus
     sintp-of-sint-bitnot
     sintp-of-sint-lognot
     sintp-of-sint-add
     sintp-of-sint-sub
     sintp-of-sint-mul
     sintp-of-sint-div
     sintp-of-sint-rem
     sintp-of-sint-shl-sint
     sintp-of-sint-shr-sint
     sintp-of-sint-lt
     sintp-of-sint-gt
     sintp-of-sint-le
     sintp-of-sint-ge
     sintp-of-sint-eq
     sintp-of-sint-ne
     sintp-of-sint-bitand
     sintp-of-sint-bitxor
     sintp-of-sint-bitior
     sintp-of-sint-from-uchar
     ucharp-of-uchar-array-read-sint
     ucharp-of-uchar-from-sint
     top-frame-of-push-frame
     valuep-when-pointerp
     valuep-when-sintp
     valuep-when-ucharp
     value-fix-when-valuep
     value-listp-of-cons
     value-list-fix-of-cons
     value-optionp-when-valuep)
   ;; also introduced elsewhere:
   *value-disjoint-rules*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-type-prescription-rules*
  :short "List of type prescription rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "In the dynamic semantics, the execution of statements and other entities
     returns optional values, i.e. values or @('nil').
     Thus, the dynamic semantics sometimes checks whether such results
     are values or @('nil'), unsurprisingly.
     During symbolic execution, these results, when they are values,
     have the form of shallowly embedded C expressions.
     Thus, in order to establish that they are not @('nil'),
     the simplest way is to take advantage of the type prescription rules
     that ACL2 automatically generates for the functions
     that represent shallowly embedded C expressions.
     These are listed here; the list may not be exhaustive,
     and may therefore be extended as needed."))
  '((:t exec-block-item-list)
    (:t sint)
    (:t sint-plus)
    (:t sint-minus)
    (:t sint-bitnot)
    (:t sint-lognot)
    (:t sint-add)
    (:t sint-sub)
    (:t sint-mul)
    (:t sint-div)
    (:t sint-rem)
    (:t sint-shl-sint)
    (:t sint-shr-sint)
    (:t sint-lt)
    (:t sint-gt)
    (:t sint-le)
    (:t sint-ge)
    (:t sint-eq)
    (:t sint-ne)
    (:t sint-bitand)
    (:t sint-bitxor)
    (:t sint-bitior)
    (:t sint-from-uchar)
    (:t uchar-array-read-sint)
    (:t uchar-from-sint)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-compound-recognizer-rules*
  :short "List of compound recognizer rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "The type prescription rules in @(tsee *atc-type-prescription-rules*)
     cover all the shallowly embedded C expressions except for variables.
     In the scenarios explained in @(tsee *atc-type-prescription-rules*),
     we may need to establish that a variable is not @('nil'),
     which must follow from the guard hypotheses.
     For this, we use the compound recognizer rule below.
     The fact that the type is @(tsee consp) is actually not important;
     what is important is that it does not include @('nil'),
     i.e. it is logically true."))
  '(consp-when-sintp
    consp-when-ucharp))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-all-rules*
  :short "List of all the (generic) rules for the proofs generated by ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are the ones used in all the generated proofs.
     In addition, each proof includes a few additional rules
     that depend on the specific C-representing ACL2 functions involved.
     See @(see atc-implementation)."))
  (append *atc-opener-rules*
          *atc-executable-counterpart-rules*
          *atc-definition-rules*
          *atc-rewrite-rules*
          *atc-type-prescription-rules*
          *atc-compound-recognizer-rules*))
