; Top file for Axe
;
; Copyright (C) 2021-2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; Supporting utilities:
(include-book "add-and-normalize-expr")
(include-book "add-bitxor-nest-to-dag-array")
(include-book "add-bvxor-nest-to-dag-array")
(include-book "add-bitxor-nest-to-dag-array-with-name")
(include-book "add-bvxor-nest-to-dag-array-with-name")
(include-book "add-to-dag")
(include-book "alist-suitable-for-hypsp")
(include-book "all-dargp")
(include-book "arrays-of-alists")
(include-book "assumption-array")
(include-book "axe-bind-free-evaluator-basic")
(include-book "axe-bind-free-result-okayp")
(include-book "axe-clause-utilities")
(include-book "axe-rules")
(include-book "axe-rules-mixed")
(include-book "axe-syntax-functions-bv")
(include-book "axe-syntax-functions")
(include-book "axe-syntax")
(include-book "axe-syntaxp-evaluator-basic")
(include-book "axe-trees")
(include-book "axe-tree-vars")
(include-book "axe-types")
(include-book "basic-rules")
(include-book "boolean-rules-axe")
(include-book "bounded-darg-listp")
(include-book "bounded-dag-exprs")
(include-book "bounded-dag-parent-arrayp")
(include-book "bv-array-rules-axe")
(include-book "bv-list-rules-axe")
(include-book "bv-rules-axe0")
(include-book "bv-rules-axe")
(include-book "cars-increasing-by-1")
(include-book "check-equivs")
(include-book "concretize-with-contexts")
(include-book "conjoin-term-with-dag")
(include-book "conjunctions-and-disjunctions")
(include-book "consecutivep2")
(include-book "consecutivep")
(include-book "contexts")
(include-book "contexts2")
(include-book "count-worlds")
(include-book "crunch-dag2")
(include-book "crunch-dag")
(include-book "dag-array-builders2")
(include-book "dag-array-builders3")
(include-book "dag-array-builders")
(include-book "dag-array-printing2")
(include-book "dag-array-printing")
(include-book "dag-arrays")
(include-book "dag-conjuncts")
(include-book "dag-constant-alist")
(include-book "dag-exprs")
(include-book "dag-info")
(include-book "dag-or-term-to-dag-basic")
(include-book "dag-parent-array")
(include-book "dag-parent-arrayp")
(include-book "dag-parent-array-with-name")
(include-book "dag-size-array")
(include-book "dag-size-sparse")
(include-book "dag-size-fast")
(include-book "dag-size")
(include-book "dag-to-term")
(include-book "dag-to-term-with-lets")
(include-book "dag-variable-alist")
(include-book "dags")
(include-book "dags2")
(include-book "dargp-less-than")
(include-book "dargp")
(include-book "def-dag-builder-theorems")
(include-book "depth-array")
(include-book "doc")
(include-book "elaborate-rule-items")
(include-book "elim")
(include-book "equality-assumption-alists")
(include-book "equality-assumptions")
(include-book "equality-pairs")
(include-book "equivalent-dags")
(include-book "equivs")
(include-book "evaluator-basic")
(include-book "extract-dag-array")
(include-book "find-probable-facts")
(include-book "fixup-context")
(include-book "get-args-not-done")
(include-book "get-disjuncts")
(include-book "group-axe")
(include-book "hit-counts")
(include-book "if-rules")
(include-book "instantiate-hyp-basic")
(include-book "interpreted-function-alistp")
(include-book "interpreted-function-alists")
(include-book "keep-atoms")
(include-book "known-booleans")
(include-book "known-predicates")
(include-book "largest-non-quotep")
(include-book "leaves-of-normalized-bvxor-nest")
(include-book "lenconsmeta")
(include-book "list-rules-axe")
(include-book "list-rules")
(include-book "lists-axe")
(include-book "make-assumption-array")
(include-book "make-axe-bind-free-evaluator")
(include-book "make-axe-rules2")
(include-book "make-axe-rules")
(include-book "make-axe-syntaxp-evaluator")
(include-book "make-clause-processor-simple")
(include-book "make-conjunction-dag")
(include-book "make-dag-constant-alist")
(include-book "make-dag-indices")
(include-book "make-dag-variable-alist")
(include-book "make-equality-dag")
(include-book "make-evaluator-common")
(include-book "make-evaluator")
(include-book "make-evaluator-simple")
(include-book "make-implication-dag")
(include-book "make-instantiation-code-simple-free-vars")
(include-book "make-instantiation-code-simple")
(include-book "make-instantiation-code-simple-no-free-vars2")
(include-book "make-instantiation-code-simple-no-free-vars")
(include-book "make-node-replacement-alist")
(include-book "make-prover-simple")
(include-book "make-rewriter-simple")
(include-book "make-substitution-code-simple")
(include-book "make-term-into-dag-array-simple")
(include-book "make-term-into-dag-array-basic")
(include-book "make-term-into-dag-simple")
(include-book "make-term-into-dag-basic")
(include-book "match-hyp-with-nodenum-to-assume-false")
(include-book "math-rules")
(include-book "memoization")
(include-book "merge-and-remove-dups")
(include-book "merge-dag-into-dag-quick")
(include-book "merge-nodes-into-dag-array")
(include-book "merge-sort-by-cdr-greater")
(include-book "merge-sort-less-than")
(include-book "merge-sort-less-than-rules")
(include-book "merge-term-into-dag-array-simple")
(include-book "merge-term-into-dag-array-basic")
(include-book "merge-tree-into-dag-array-basic")
(include-book "sublis-var-and-eval-basic")
(include-book "no-atoms")
(include-book "node-replacement-alist")
(include-book "node-info")
(include-book "node-replacement-array")
(include-book "node-replacement-array2")
(include-book "node-replacement-array3")
(include-book "nodenum-type-alists")
(include-book "numeric-lists")
(include-book "packbv-axe")
(include-book "print-constant")
(include-book "print-levels")
(include-book "print-dag-to-file")
(include-book "print-dag-array-to-file")
(include-book "prover-common")
(include-book "prover-stress-test")
(include-book "prune-with-contexts")
(include-book "rational-lists")
(include-book "rebuild-literals")
(include-book "rebuild-nodes2")
(include-book "rebuild-nodes")
(include-book "refine-assumptions")
(include-book "refined-assumption-alists")
(include-book "refined-assumption-alists2")
(include-book "remove-duplicates-from-sorted-list")
(include-book "renaming-array")
(include-book "replace-node")
(include-book "replace-using-assumptions")
(include-book "replace-var-rules")
(include-book "result-array")
(include-book "rewriter-common")
(include-book "rewriter-support")
(include-book "rule-alists")
(include-book "rule-limits")
(include-book "rule-lists")
(include-book "rules1")
(include-book "rules2")
(include-book "rules3")
(include-book "rules-in-rule-lists")
(include-book "safe-unquote")
(include-book "set-rules")
(include-book "shorter-list")
(include-book "sortedp-less-than-or-equal")
(include-book "splitting")
(include-book "step-increments")
(include-book "stored-rules")
(include-book "subdagp")
(include-book "substitute-vars2")
(include-book "substitute-vars")
(include-book "supporting-nodes")
(include-book "supporting-vars")
(include-book "tailtohead")
(include-book "term-equal-dag")
(include-book "test-cases")
(include-book "translation-array")
(include-book "tries")
(include-book "unguarded-built-ins")
(include-book "unguarded-defuns")
(include-book "unguarded-primitives")
(include-book "unify-term-and-dag-fast-correct")
(include-book "unify-term-and-dag-fast")
(include-book "unify-term-and-dag")
(include-book "unify-term-and-dag-with-name")
(include-book "unify-tree-and-dag")
(include-book "util2")
(include-book "wf-dagp")
(include-book "worklist-array")
(include-book "worklists")
(include-book "call-axe-script")
(include-book "unroller")

;; Newest top-level Axe tools ("basic" means that these are for general-purpose
;; use, rather than specialized for the JVM, or for x86, etc.):
(include-book "rewriter-basic")
(include-book "prover-basic")
(include-book "prover-basic-clause-processor")
(include-book "def-simplified")
(include-book "unroll-spec-basic")
(include-book "defthm-axe-basic")

;;STP-related stuff:
(include-book "stp-counterexamples")
(include-book "translate-dag-to-stp")
(include-book "prove-with-stp")
(include-book "stp-clause-processor")
(include-book "defthm-stp")

;; Legacy Axe utilities (many of these depend on skip-proofs):
(include-book "evaluator")
(include-book "instantiate-hyp")
(include-book "dagify")
(include-book "sublis-var-and-eval")
(include-book "prune")
(include-book "result-array-stobj")
(include-book "defconst-computed2")
(include-book "strengthen-facts")
(include-book "letify-term-via-dag")

;; Legacy Axe tools (many of these depend on skip-proofs):
(include-book "prover")
(include-book "prover2")
(include-book "rewriter")
(include-book "rewriter-alt")
(include-book "unroll-spec")
(include-book "tactic-prover")
(include-book "query")
(include-book "defthm-axe")
(include-book "equivalence-checker-helpers")
(include-book "equivalence-checker")

;; The JVM-specific Axe tools:
(include-book "jvm/top")

;; The x86-specific Axe tools:
(include-book "x86/top")

;; The r1cs-specific Axe tools:
(include-book "r1cs/top")
