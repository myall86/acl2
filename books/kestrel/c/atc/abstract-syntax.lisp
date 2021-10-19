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

(include-book "centaur/fty/top" :dir :system)
(include-book "kestrel/fty/defset" :dir :system)
(include-book "std/util/defprojection" :dir :system)
(include-book "xdoc/defxdoc-plus" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-abstract-syntax
  :parents (atc-implementation)
  :short "An abstract syntax of C for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "ATC generates C code by
     generating abstract syntax trees
     and pretty-printing them.
     Here we define the C abstract syntax whose trees are generated by ATC.")
   (xdoc::p
    "This is not necessarily meant to be a complete abstract syntax of C.
     It only needs to represent the C programs that ATC generates,
     not all the possible C programs.")
   (xdoc::p
    "At the same time, we plan to formalize
     a more comprehensive abstract syntax of C
     as part of our "
    (xdoc::seetopic "language" "C language formalization")
    ". As we do that, we may replace parts of this ATC abstract syntax
     with (uses of) that more comprehensive one.
     However, due to C's preprocessing features, it is possible that
     there will always be some differences between
     this ATC abstract syntax and the more comprehensive one.
     The reason is that eventually we may want the ATC abstract syntax
     to represent at least some of the preprocessing constructs,
     such as @('#include')s, and possibly also some (simple) macros.
     This means that the ATC abstract syntax will have to mix
     preprocessing constructs with the preprocessed constructs:
     this is something that may not be part, in this mixed form,
     of the language formalization,
     which should presumably differentiate between
     preprocessing translation units and
     (preprocessed) translation units.
     In addition, we might want ATC to generate certain comments in the code,
     which would require the ATC abstract syntax to incorporate
     some information about comments.
     However, in the language formalization,
     comments, and their removal during one of C's translation phases,
     would be captured differently,
     presumably not as part of the abstract syntax
     over which the language semantics is defined.
     These are preliminary ideas, which will be refined,
     and possibly revised, as more of ATC and of the language formalization
     are developed."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod ident
  :short "Fixtype of identifiers [C:6.4.2]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we represent C identifiers as ACL2 strings,
     which suffice to represent all the ASCII C identifiers.
     We wrap ACL2 strings into a one-field product fixtype
     to make it easier to modify or extend this fixtype in the future.")
   (xdoc::p
    "ASCII identifiers may be, in fact,
     all that we need in the foreseeable future:
     we may not need to generate C programs with
     identifiers that include non-ASCII characters,
     some aspects of which may be
     implementation-dependent or locale-dependent.
     Since ASCII identifiers are portable,
     we plan for ATC to generate only ASCII identifiers,
     unless there will be reasons to support a broader range.")
   (xdoc::p
    "Unconstrained ACL2 strings may not be valid C ASCII identifiers.
     ATC will always generate ACL2 strings that are,
     but in the future we may extend this fixtype
     with suitably restrictions on the ACL2 string.")
   (xdoc::p
    "A C implementation may limit
     the number of significant characters in identifiers [C:5.2.4.1],
     to 31 for external identifiers and 63 for internal identifiers.
     In the interest of portability,
     it is our intention to have ATC
     generate identifiers of 31 characters or less,
     which may not be a significant limitation.
     In the future, we may add this constraint to this fixtype."))
  ((name string))
  :tag :ident
  :pred identp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist ident-list
  :short "Fixtype of lists of identifiers."
  :elt-type ident
  :true-listp t
  :elementp-of-nil nil
  :pred ident-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defset ident-set
  :short "Fixtype of osets of identifiers."
  :elt-type ident
  :elementp-of-nil nil
  :pred ident-setp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum iconst-base
  :short "Fixtype of bases of integer constants [C:6.4.4.1]."
  :long
  (xdoc::topstring
   (xdoc::p
    "Decimal (base 10), octal (base 8), and hexadecimal (base 16)
     integer constants are supported in C.
     This fixtype captures these three possible bases."))
  (:dec ())
  (:oct ())
  (:hex ())
  :pred iconst-basep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum iconst-tysuffix
  :short "Fixtype of type suffixes of integer constants [C:6.4.4.1]."
  :long
  (xdoc::topstring
   (xdoc::p
    "An integer constant may have no type suffix,
     an @('l') or @('L') type suffix,
     or an @('ll') or @('LL') type suffix.
     This fixtype captures these three possibilities,
     without distinguishing between the lowercase and uppercase variants
     (given the similarity between `l' and `1' and `I' in many fonts,
     it could be argued that one should always use the uppercase variants,
     as recommended in the Java language specification for Java)."))
  (:none ())
  (:long ())
  (:llong ())
  :pred iconst-tysuffixp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-iconst-tysuffix ()
  :returns (tysuff iconst-tysuffixp)
  :short "An irrelevant type suffix, usable as a dummy return value."
  (with-guard-checking :none (ec-call (iconst-tysuffix-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-iconst-tysuffix))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod iconst
  :short "Fixtype of integer constants [C:6.4.4.1]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we define a C integer constants as consisting of
     a natural number, a base, an unsigned flag, and a type suffix.
     While this does not cover every syntactic aspect of an integer constant,
     it covers the important ones.")
   (xdoc::p
    "The natural number is the value.
     In base 10, the value has a unique syntactic representation,
     because it is required to start with no 0.
     In C, @('0') is always an octal integer constant,
     so our abstract syntax here captures a bit more,
     namely a decimal integer constant 0 that does not exist in C.
     This is not an issue for now,
     because our pretty-printer turns that into @('0')
     in the same way as if it were octal.")
   (xdoc::p
    "In base 8, the value has a unique syntactic representation
     if we assume exactly one leading 0,
     which is not a significant limitation.")
   (xdoc::p
    "In base 16, the value has a unique syntactc representation
     if we assume no leading 0s and either lowercase or uppercase letters
     (i.e. we do not capture the difference between
     the hexadecimal digits @('a') and @('A')).
     This is not a very severe limitation,
     even though sometimes one may like to write
     something like @('0x0000ffff').
     We also do not capture the distinction between
     the hexadecimal prefixes @('0x') and @('0X').")
   (xdoc::p
    "We do not capture the distinction between the @('u') and @('U'),
     which is not very important.
     Also see @(tsee iconst-tysuffix) for a discussion about
     uppercase and lowercase type suffixes."))
  ((value nat)
   (base iconst-base)
   (unsignedp bool)
   (type iconst-tysuffix))
  :tag :iconst
  :pred iconstp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-iconst ()
  :returns (iconst iconstp)
  :short "An irrelevant integer constant, usable as a dummy return value."
  (with-guard-checking :none (ec-call (iconst-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-iconst))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum const
  :short "Fixtype of constants [C:6.4.4]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only capture integer constants,
     but we include placeholders for
     floating, enumeration, and character constants."))
  (:int ((get iconst)))
  (:float ())
  (:enum ())
  (:char ())
  :pred constp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum unop
  :short "Fixtype of unary operators [C:6.5.3]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only capture the ones that take and return integers
     (along with values of other types).
     These are unary plus,
     unary minus,
     bitwise negation/complement,
     and logical negation/complement."))
  (:plus ())
  (:minus ())
  (:bitnot ())
  (:lognot ())
  :pred unopp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist unop-list
  :short "Fixtype of lists of unary operators."
  :elt-type unop
  :true-listp t
  :elementp-of-nil nil
  :pred unop-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-unop ()
  :returns (op unopp)
  :short "An irrelevant unary operator, usable as a dummy return value."
  (with-guard-checking :none (ec-call (unop-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-unop))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum binop
  :short "Fixtype of binary operators [C:6.5.5-14] [C:6.5.16]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We capture all of them; they all take and return integers
     (along with values of other types).
     The C grammar does not have a nonterminal for binary operators
     (it has one for unary operators [C:6.5.3]),
     but the grammar rules for binary operations implicitly describe them.")
   (xdoc::p
    "These are
     multiplication,
     division,
     remainder,
     addition,
     subtraction,
     shift (left and right),
     relations (less than (or equal to) and greater than (or equal to)),
     equality (and non-equality),
     bitwise conjunction,
     bitwise exclusive disjunction,
     bitwise inclusive disjunction,
     logical conjunction,
     logical disjunction,
     assignment (simple and compound)."))
  (:mul ())
  (:div ())
  (:rem ())
  (:add ())
  (:sub ())
  (:shl ())
  (:shr ())
  (:lt ())
  (:gt ())
  (:le ())
  (:ge ())
  (:eq ())
  (:ne ())
  (:bitand ())
  (:bitxor ())
  (:bitior ())
  (:logand ())
  (:logor ())
  (:asg ())
  (:asg-mul ())
  (:asg-div ())
  (:asg-rem ())
  (:asg-add ())
  (:asg-sub ())
  (:asg-shl ())
  (:asg-shr ())
  (:asg-and ())
  (:asg-xor ())
  (:asg-ior ())
  :pred binopp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist binop-list
  :short "Fixtype of lists of binary operators."
  :elt-type binop
  :true-listp t
  :elementp-of-nil nil
  :pred binop-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-binop ()
  :returns (op binopp)
  :short "An irrelevant binary operator, usable as a dummy return value."
  (with-guard-checking :none (ec-call (binop-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-binop))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum tyspecseq
  :short "Fixtype of sequences of type specifiers [C:6.7.2]."
  :long
  (xdoc::topstring
   (xdoc::p
    "A sequence of one or more type specifiers in a declaration
     specifies a type.
     The allowed sequences are described in [C:6.7.2].
     This fixtype captures (some of) these sequences.")
   (xdoc::p
    "For now we only capture type specifier sequences for
     the @('void') type,
     the plain @('char') type,
     the standard signed and unsigned integer types (except @('_Bool')),
     and structure types.
     We only capture structure type specifiers consisting of
     an identifier, which is the tag of the structure type [C:6.7.2.1].")
   (xdoc::p
    "Syntactically, declarations that defines (the members of) structure types
     are also type specifiers.
     We capture them elsewhere in our abstract syntax.
     We use values of this fixtype of sequences of type specifiers
     only in parts of the code that reference existing types,
     not that introduce them.
     Recall that our abstract syntax does not capture
     all possible forms of C code,
     only the ones for C code that we want ATC to generate.
     In that context, there is a distinction between
     defining a structure type and merely referencing it.")
   (xdoc::p
    "We only capture one sequence for type, implicitly,
     even though some types can be specified
     via different equivalent sequences."))
  (:void ())
  (:char ())
  (:schar ())
  (:sshort ())
  (:sint ())
  (:slong ())
  (:sllong ())
  (:uchar ())
  (:ushort ())
  (:uint ())
  (:ulong ())
  (:ullong ())
  (:struct ((tag ident)))
  :pred tyspecseqp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist tyspecseq-list
  :short "Fixtype of lists of sequences of type specifiers."
  :elt-type tyspecseq
  :true-listp t
  :elementp-of-nil nil
  :pred tyspecseq-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defoption tyspecseq-option
  tyspecseq
  :short "Fixtype of optional sequences of type specifiers."
  :pred tyspecseq-optionp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-tyspecseq ()
  :returns (ty tyspecseqp)
  :short "An irrelevant type specifier sequence,
          usable as a dummy return value."
  (with-guard-checking :none (ec-call (tyspecseq-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-tyspecseq))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod tyname
  :short "Fixtype of type names [C:6.7.7]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only capture type names consisting of
     the type specifier sequences captured by @(tsee tyspecseq),
     and pointers thereof (only single pointers, not pointers to pointers).
     We capture the presence or absence of @('*') (for pointer)
     via a boolean flag."))
  ((specs tyspecseq)
   (pointerp bool))
  :tag :tyname
  :pred tynamep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist tyname-list
  :short "Fixtype of lists of type names."
  :elt-type tyname
  :true-listp t
  :elementp-of-nil nil
  :pred tyname-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-tyname ()
  :returns (tyname tynamep)
  :short "An irrelevant type name, usable as a dummy value."
  (with-guard-checking :none (ec-call (tyname-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-tyname))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftypes expr-fixtypes
  :short "Mutually recursive fixtypes for expressions."

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deftagsum expr
    :parents (atc-abstract-syntax expr-fixtypes)
    :short "Fixtype of expressions [C:6.5]."
    :long
    (xdoc::topstring
     (xdoc::p
      "For now, we only cover some of the primary expressions [C:6.5.1],
       namely identifiers and constants.
       String literals will be covered later.
       Generic selections may be covered eventually, if needed.
       Parenthesized expression are implicitly covered in the abstract syntax,
       whose structure provides the grouping.")
     (xdoc::p
      "Of the postfix expressions [C:6.5.2],
       for now we only cover
       array subscripting,
       function calls (where we require the function to be an identifier),
       structure and union member access
       (both forms: @('.') directly on structures and unions,
       as well as @('->') on pointers to structures and unions),
       and post-increment/decrement.
       Richer expressions for functions in function calls
       (e.g. function pointers)
       will be added if/when needed.
       Compound literals will be added as needed.")
     (xdoc::p
      "Of the unary expressions [C:6.5.3],
       for now we only cover pre-increment/decrement,
       and the ones built with the unary operators.
       Note that the grammar in [C] does not define as unary operators
       all the operators of unary expressions,
       e.g. @('++') is not a unary operator grammatically.
       We follow that here, but use @(':unary') as the tag for
       the expressions built with the unary operators in @(tsee unop).
       We will cover @('sizeof') later.
       We will cover @('_Alignof') if needed.")
     (xdoc::p
      "We include cast expressions,
       but only with the currently limited type names
       captured by @(tsee tyname).")
     (xdoc::p
      "We use a general notion of binary expression to represent
       multiplicative [C:6.5.5],
       additive [C:6.5.6],
       shift [C:6.5.7],
       relational [C:6.5.8],
       equality [C:6.5.9],
       bitwise conjunction [C:6.5.10],
       bitwise exclusive disjunction [C:6.5.11],
       bitwise inclusive disjunction [C:6.5.12],
       logical conjunction [C:6.5.13],
       logical disjunction [C:6.5.14], and
       assigment [C:6.5.16]
       expressions.
       The grammar in [C] classifies these as different kinds of expressions
       also in order to capture the precedences among the various operators;
       however, in an abstract syntax, this is not necessary.")
     (xdoc::p
      "We include ternary conditional expressions.")
     (xdoc::p
      "We do not include the comma operator.
       It will be easy to include, if needed."))
    (:ident ((get ident)))
    (:const ((get const)))
    (:arrsub ((arr expr) (sub expr)))
    (:call ((fun ident)
            (args expr-list)))
    (:member ((target expr)
              (name ident)))
    (:memberp ((target expr)
               (name ident)))
    (:postinc ((arg expr)))
    (:postdec ((arg expr)))
    (:preinc ((arg expr)))
    (:predec ((arg expr)))
    (:unary ((op unop) (arg expr)))
    (:cast ((type tyname)
            (arg expr)))
    (:binary ((op binop)
              (arg1 expr)
              (arg2 expr)))
    (:cond ((test expr)
            (then expr)
            (else expr)))
    :pred exprp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deflist expr-list
    :short "Fixtype of lists of expressions."
    :elt-type expr
    :true-listp t
    :elementp-of-nil nil
    :pred expr-listp))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defoption expr-option
  expr
  :short "Fixtype of optional expressions."
  :pred expr-optionp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-expr ()
  :returns (expr exprp)
  :short "An irrelevant expression, usable as a dummy return value."
  (with-guard-checking :none (ec-call (expr-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-expr))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod declor
  :short "Fixtype of declarators [C:6.7.6]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only capture declarators
     that consist of single direct declarators
     that consist of identifiers
     optionally preceded by a single pointer indication without type qualifiers.
     That is, for now a declarator is
     either an identifier or a @('*') followed by an identifier.
     We model the presence or absence of the @('*') via boolean flag.
     This will be generalized eventually."))
  ((pointerp bool)
   (ident ident))
  :tag :declor
  :pred declorp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod declon
  :short "Fixtype of declarations [C:6.7]."
  :long
  (xdoc::topstring
   (xdoc::p
    "Declarations are perhaps the most complex part of the C syntax.
     For now we capture only a very limited form of declarations,
     namely the ones consisting of
     a type specifier sequence from @(tsee tyspecseq),
     no storage class specifiers,
     no type qualifiers,
     no function specifiers,
     no alignment specifiers,
     and a single declarator (see @(tsee declor))
     with an initializer expression.")
   (xdoc::p
    "We will support richer forms of declarations when needed.")
   (xdoc::p
    "We do not support static assertions for now."))
  ((type tyspecseq)
   (declor declor)
   (init expr))
  :tag :declon
  :pred declonp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum label
  :short "Fixtype of labels of labeled statements [C:6.8.1]."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are the entities on the left of the colon in a labeled statement.
     For now we do not capture the restriction that
     the expression after a @('case') is constant;
     we may formalize, and use here, the notion of constant expression later.")
   (xdoc::p
    "We cannot use @(':case') for the @('case') label,
     because the generated constructor @('label-case')
     would conflict with the generated macro @('label-case');
     so we use @(':cas') instead."))
  (:name ((get ident)))
  (:cas ((get expr)))
  (:default ())
  :pred labelp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftypes stmt-fixtypes
  :short "Mutually recursive fixtypes for statements (and blocks)."

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deftagsum stmt
    :short "Fixtype of statements [C:6.8]."
    :long
    (xdoc::topstring
     (xdoc::p
      "We capture almost all the statements:
       labeled [C:6.8.1],
       compound [C:6.8.2],
       expression and null [C:6.8.3],
       selection [C:6.8.4],
       iteration [C:6.8.5] (with the limitation explained below),
       and jump [C:6.8.6].
       We do not allow declarations in @('for') statements for now;
       we will add that later."))
    (:labeled ((label label)
               (body stmt)))
    (:compound ((items block-item-list)))
    (:expr ((get expr)))
    (:null ())
    (:if ((test expr)
          (then stmt)))
    (:ifelse ((test expr)
              (then stmt)
              (else stmt)))
    (:switch ((ctrl expr)
              (body stmt)))
    (:while ((test expr)
             (body stmt)))
    (:dowhile ((body stmt)
               (test expr)))
    (:for ((init expr-option)
           (test expr-option)
           (next expr-option)
           (body stmt)))
    (:goto ((target ident)))
    (:continue ())
    (:break ())
    (:return ((value expr-option)))
    :pred stmtp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deftagsum block-item
    :short "Fixtype of block items [C:6.8.2]."
    :long
    (xdoc::topstring
     (xdoc::p
      "These are declarations and statements."))
    (:declon ((get declon)))
    (:stmt ((get stmt)))
    :pred block-itemp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deflist block-item-list
    :short "Fixtype of lists of block items."
    :elt-type block-item
    :true-listp t
    :elementp-of-nil nil
    :pred block-item-listp))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defoption stmt-option
  stmt
  :short "Fixtype of optional statements."
  :pred stmt-optionp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-stmt ()
  :returns (stmt stmtp)
  :short "An irrelevant statement, usable as a dummy return value."
  (with-guard-checking :none (ec-call (stmt-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-stmt))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod param-declon
  :short "Fixtype of parameter declarations [C:6.7.6]."
  :long
  (xdoc::topstring
   (xdoc::p
    "C parameter declarations are a restricted form of
     (general) declarations in C.")
   (xdoc::p
    "For now we capture a very limited form of parameter declarations,
     namely the ones consisting of
     a type specifier sequence (see @(tsee tyspecseq))
     and a declarator (see @(tsee declor))."))
  ((type tyspecseq)
   (declor declor))
  :tag :param-declon
  :pred param-declonp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist param-declon-list
  :short "Fixtype of lists of parameter declarations."
  :elt-type param-declon
  :true-listp t
  :elementp-of-nil nil
  :pred param-declon-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-param-declon ()
  :returns (param param-declonp)
  :short "An irrelevant parameter declaration, usable as a dummy return value."
  (with-guard-checking :none (ec-call (param-declon-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-param-declon))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod fundef
  :short "Fixtype of function definitions [C:6.9.1]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only support a very limited form of function definitions,
     namely those consisting of
     a type specifier sequence for the result (see @(tsee tyspecseq)),
     an identifier to name the function,
     and a list of parameter declarations.
     Richer forms may be added in the future."))
  ((result tyspecseq)
   (name ident)
   (params param-declon-list)
   (body stmt))
  :tag :fundef
  :pred fundefp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist fundef-list
  :short "Fixtype of lists of function definitions."
  :elt-type fundef
  :true-listp t
  :elementp-of-nil nil
  :pred fundef-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defprojection fundef-list->name-list (x)
  :guard (fundef-listp x)
  :returns (names ident-listp)
  :short "Lift @(tsee fundef->name) to lists."
  (fundef->name x)
  ///
  (fty::deffixequiv fundef-list->name-list
    :args ((x fundef-listp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deftagsum ext-declon
  :short "Fixtype of external declarations [C:6.9]."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only allow function definitions at the top level.
     We add a placeholder for other top-level declarations,
     which we will flesh out later."))
  (:fundef ((get fundef)))
  (:declon ())
  :pred ext-declonp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist ext-declon-list
  :short "Fixtype of lists of external declarations."
  :elt-type ext-declon
  :true-listp t
  :elementp-of-nil nil
  :pred ext-declon-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-ext-declon ()
  :returns (ext ext-declonp)
  :short "An irrelevant external declaration, usable as a dummy return value."
  (with-guard-checking :none (ec-call (ext-declon-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-ext-declon))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define ext-declon-list->fundef-list ((exts ext-declon-listp))
  :returns (defs fundef-listp)
  :short "Extract from a list of external declarations
          the list of function definitions, in the same order."
  :long
  (xdoc::topstring
   (xdoc::p
    "Declarations are discarded. Only function definitions are projected."))
  (b* (((when (endp exts)) nil)
       (ext (car exts)))
    (ext-declon-case ext
                   :fundef (cons (ext-declon-fundef->get ext)
                                 (ext-declon-list->fundef-list (cdr exts)))
                   :declon (ext-declon-list->fundef-list (cdr exts))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod transunit
  :short "Fixtype of translation units [C:6.9]."
  :long
  (xdoc::topstring
   (xdoc::p
    "This consists of a list of external declarations
     (which should be non-empty according to the grammar in [C],
     but we will capture this constraint later or elsewhere).
     We create this one-field product fixtype
     so that in the future it may be easier to extend this fixtype
     with more information if needed."))
  ((declons ext-declon-list))
  :tag :transunit
  :pred transunitp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-transunit ()
  :returns (tunit transunitp)
  :short "An irrelevant translation unit, usable as a dummy return value."
  (with-guard-checking :none (ec-call (transunit-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-transunit))))
