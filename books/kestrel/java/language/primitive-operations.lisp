; Java Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "JAVA")

(include-book "primitive-types")
(include-book "primitive-values")

(include-book "ihs/basic-definitions" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrulel sbyte32p-of-logext32
  (sbyte32p (logext 32 x))
  :enable sbyte32p
  :prep-books ((include-book "arithmetic-5/top" :dir :system)))

(defrulel sbyte64p-of-logext64
  (sbyte64p (logext 64 x))
  :enable sbyte64p
  :prep-books ((include-book "arithmetic-5/top" :dir :system)))

(local (in-theory (disable logext)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ primitive-operations
  :parents (semantics)
  :short "Java primitive operations [JLS:4.2]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We formalize the Java boolean and integer operations
     [JLS:4.2.5] [JLS:4.2.2].
     Floating-point operations [JLS:4.2.4]
     and primitive conversions [JLS:5.1.2-4]
     will be formalized eventually.")
   (xdoc::p
    "We formalize the primitive operations
     as ACL2 functions over the ACL2 types of primitive values.
     We use macros to more concisely define these functions,
     since they share some common structure."))
  :order-subtopics t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ primitive-operation-macros
  :parents (primitive-operations)
  :short "Macros to formalize more concisely the Java primitive operations."
  :long
  (xdoc::topstring
   (xdoc::p
    "The functions that formalize primitive operation
     have the following structure:
     they take one (if unary) or two (if binary) primitive values as arguments;
     they uses primitive value destructors (e.g. @(tsee int-value->int))
     to obtain the ``core'' values to operate upon with existing ACL2 functions;
     they use existing ACL2 functions to generate the ``core'' result;
     they uses primitive value constructors (e.g. @(tsee int-value))
     to return the result primitive value.")
   (xdoc::p
    "The only ``interesting'' part is how the core result
     is calculated from the core arguments via existing ACL2 functions.
     The rest is boilerplate that can be automatically generated,
     which we do via macros.")
   (xdoc::p
    "We introduce two general macros:
     one for unary operations, and one for binary operations.
     These can generate functions for primitive operations
     of any combination of operand and result types,
     which are all explicitly specified.
     Since certain combinations of operand and result types
     are shared by certain collections of operations,
     we also introduce more specialized macros for these combinations."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define primitive-type-predicate ((type primitive-typep))
  :returns (predicate symbolp)
  :short "The recognizer of the fixtype of the values of a primitive type."
  (packn-pos (list (symbol-name (primitive-type-kind type)) '-value-p)
             (pkg-witness "JAVA")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define primitive-type-constructor ((type primitive-typep))
  :returns (constructor symbolp)
  :short "The constructor of the fixtype of the values of a primitive type."
  (packn-pos (list (symbol-name (primitive-type-kind type)) '-value)
             (pkg-witness "JAVA")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define primitive-type-destructor ((type primitive-typep))
  :returns (destructor symbolp)
  :short "The destructor of the fixtype of the values of a primitive type."
  (primitive-type-case type
                       :boolean 'boolean-value->bool
                       :char 'char-value->nat
                       :byte 'byte-value->int
                       :short 'short-value->int
                       :int 'int-value->int
                       :long 'long-value->int
                       :float 'second
                       :double 'second))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-primitive-unary-op
  :short "Macro to formalize a Java primitive unary operation."
  :long
  (xdoc::topstring
   (xdoc::p
    "This macro takes as required arguments
     the name of the function to define (which formalizes the operation),
     the primitive type of the operand,
     the primitive type of the result,
     and an untranslated term that defines the operation on the core values.
     This term must have @('x') as the only free variable,
     which the boilerplate code generated by the macro binds to
     the core value of the operand.")
   (xdoc::p
    "This macro also takes optional arguments for XDOC documentation:
     parents, short string, and long string.
     The latter may be forms, e.g. involving XDOC constructors.")
   (xdoc::@def "def-primitive-unary-op"))

  (define def-primitive-unary-op-fn ((name symbolp)
                                     (in-type primitive-typep)
                                     (out-type primitive-typep)
                                     (operation "An untranslated term.")
                                     (parents symbol-listp)
                                     (parents-suppliedp booleanp)
                                     (short "A string or form or @('nil').")
                                     (short-suppliedp booleanp)
                                     (long "A string or form or @('nil').")
                                     (long-suppliedp booleanp))
    :returns (event "A @(tsee acl2::pseudo-event-formp).")
    :parents nil
    (b* ((in-predicate (primitive-type-predicate in-type))
         (in-destructor (primitive-type-destructor in-type))
         (out-predicate (primitive-type-predicate out-type))
         (out-constructor (primitive-type-constructor out-type)))
      `(define ,name ((operand ,in-predicate))
         :returns (result ,out-predicate)
         ,@(and parents-suppliedp (list :parents parents))
         ,@(and short-suppliedp (list :short short))
         ,@(and long-suppliedp (list :long long))
         (b* ((x (,in-destructor operand)))
           (,out-constructor ,operation))
         :hooks (:fix)
         :no-function t)))

  (defmacro def-primitive-unary-op (name
                                    &key
                                    in-type
                                    out-type
                                    operation
                                    (parents 'nil parents-suppliedp)
                                    (short 'nil short-suppliedp)
                                    (long 'nil long-suppliedp))
    `(make-event
      (def-primitive-unary-op-fn
        ',name
        ,in-type
        ,out-type
        ',operation
        ',parents ,parents-suppliedp
        ,short ,short-suppliedp
        ,long ,long-suppliedp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-primitive-binary-op
  :short "Macro to formalize a Java primitive binary operation."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is similar to @(tsee def-primitive-unary-op),
     but it takes two input type arguments instead of one
     (the one for the left operand, followed by the one for the right operand).
     The untranslated term that defines the operation on the core values
     must have @('x') and @('y') as its only free variables:
     they are for the (core) left and right operand, respectively.")
   (xdoc::p
    "This macro also takes an optional argument saying whether
     the right operand should be non-zero;
     in this case, the right operand type must be @('int') or @('long').
     If this argument is @('t'),
     the guard of the generated function requires the right operand
     to be different from the zero value of the respective type.
     This is used to define the integer division and reminder operations;
     it is @('nil') by default.")
   (xdoc::@def "def-primitive-binary-op"))

  (define def-primitive-binary-op-fn ((name symbolp)
                                      (in-type-left primitive-typep)
                                      (in-type-right primitive-typep)
                                      (out-type primitive-typep)
                                      (operation "An untranslated term.")
                                      (nonzero booleanp)
                                      (parents symbol-listp)
                                      (parents-suppliedp booleanp)
                                      (short "A string or form or @('nil').")
                                      (short-suppliedp booleanp)
                                      (long "A string or form or @('nil').")
                                      (long-suppliedp booleanp))
    :returns (event "A @(tsee acl2::maybe-pseudo-event-formp).")
    :parents nil
    (b* ((in-predicate-left (primitive-type-predicate in-type-left))
         (in-predicate-right (primitive-type-predicate in-type-right))
         (in-destructor-left (primitive-type-destructor in-type-left))
         (in-destructor-right (primitive-type-destructor in-type-right))
         (out-predicate (primitive-type-predicate out-type))
         (out-constructor (primitive-type-constructor out-type))
         ((when (and nonzero
                     (not (primitive-type-case in-type-right :int))
                     (not (primitive-type-case in-type-right :long))))
          (raise "The :NONZERO argument may be T ~
                  only if the right operand type is int or long, ~
                  but it is ~x0 instead."
                 (primitive-type-kind in-type-right)))
         (guard? (and nonzero
                      `(not (equal (,in-destructor-right operand-right) 0)))))
      `(define ,name ((operand-left ,in-predicate-left)
                      (operand-right ,in-predicate-right))
         ,@(and guard? (list :guard guard?))
         :returns (result ,out-predicate)
         ,@(and parents-suppliedp (list :parents parents))
         ,@(and short-suppliedp (list :short short))
         ,@(and long-suppliedp (list :long long))
         (b* ((x (,in-destructor-left operand-left))
              (y (,in-destructor-right operand-right)))
           (,out-constructor ,operation))
         :hooks (:fix)
         :no-function t)))

  (defmacro def-primitive-binary-op (name
                                     &key
                                     in-type-left
                                     in-type-right
                                     out-type
                                     operation
                                     nonzero
                                     (parents 'nil parents-suppliedp)
                                     (short 'nil short-suppliedp)
                                     (long 'nil long-suppliedp))
    `(make-event
      (def-primitive-binary-op-fn
        ',name
        ,in-type-left
        ,in-type-right
        ,out-type
        ',operation
        ,nonzero
        ',parents ,parents-suppliedp
        ,short ,short-suppliedp
        ,long ,long-suppliedp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-boolean-unary-op
  :short "Specialization of @(tsee def-primitive-unary-op) to
          the case in which input and output types are @('boolean')."
  :long (xdoc::topstring-@def "def-boolean-unary-op")

  (defmacro def-boolean-unary-op (name
                                  &key
                                  operation
                                  (parents 'nil parents-suppliedp)
                                  (short 'nil short-suppliedp)
                                  (long 'nil long-suppliedp))
    `(def-primitive-unary-op ,name
       :in-type (primitive-type-boolean)
       :out-type (primitive-type-boolean)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-int-unary-op
  :short "Specialization of @(tsee def-primitive-unary-op) to
          the case in which input and output types are @('int')."
  :long (xdoc::topstring-@def "def-int-unary-op")

  (defmacro def-int-unary-op (name
                              &key
                              operation
                              (parents 'nil parents-suppliedp)
                              (short 'nil short-suppliedp)
                              (long 'nil long-suppliedp))
    `(def-primitive-unary-op ,name
       :in-type (primitive-type-int)
       :out-type (primitive-type-int)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-long-unary-op
  :short "Specialization of @(tsee def-primitive-unary-op) to
          the case in which input and output types are @('long')."
  :long (xdoc::topstring-@def "def-long-unary-op")

  (defmacro def-long-unary-op (name
                               &key
                               operation
                               (parents 'nil parents-suppliedp)
                               (short 'nil short-suppliedp)
                               (long 'nil long-suppliedp))
    `(def-primitive-unary-op ,name
       :in-type (primitive-type-long)
       :out-type (primitive-type-long)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-boolean-binary-op
  :short "Specialization of @(tsee def-primitive-binary-op) to
          the case in which input and output types are @('boolean')."
  :long (xdoc::topstring-@def "def-boolean-binary-op")

  (defmacro def-boolean-binary-op (name
                                   &key
                                   operation
                                   (parents 'nil parents-suppliedp)
                                   (short 'nil short-suppliedp)
                                   (long 'nil long-suppliedp))
    `(def-primitive-binary-op ,name
       :in-type-left (primitive-type-boolean)
       :in-type-right (primitive-type-boolean)
       :out-type (primitive-type-boolean)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-int-binary-op
  :short "Specialization of @(tsee def-primitive-binary-op) to
          the case in which input and output types are @('int')."
  :long (xdoc::topstring-@def "def-int-binary-op")

  (defmacro def-int-binary-op (name
                               &key
                               operation
                               nonzero
                               (parents 'nil parents-suppliedp)
                               (short 'nil short-suppliedp)
                               (long 'nil long-suppliedp))
    `(def-primitive-binary-op ,name
       :in-type-left (primitive-type-int)
       :in-type-right (primitive-type-int)
       :out-type (primitive-type-int)
       :operation ,operation
       :nonzero ,nonzero
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-long-binary-op
  :short "Specialization of @(tsee def-primitive-binary-op) to
          the case in which input and output types are @('long')."
  :long (xdoc::topstring-@def "def-long-binary-op")

  (defmacro def-long-binary-op (name
                                &key
                                operation
                                nonzero
                                (parents 'nil parents-suppliedp)
                                (short 'nil short-suppliedp)
                                (long 'nil long-suppliedp))
    `(def-primitive-binary-op ,name
       :in-type-left (primitive-type-long)
       :in-type-right (primitive-type-long)
       :out-type (primitive-type-long)
       :operation ,operation
       :nonzero ,nonzero
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-int=>boolean-binary-op
  :short "Specialization of @(tsee def-primitive-binary-op) to
          the case in which the input types are @('int')
          and the output type is @('boolean')."
  :long (xdoc::topstring-@def "def-int=>boolean-binary-op")

  (defmacro def-int=>boolean-binary-op (name
                                        &key
                                        operation
                                        (parents 'nil parents-suppliedp)
                                        (short 'nil short-suppliedp)
                                        (long 'nil long-suppliedp))
    `(def-primitive-binary-op ,name
       :in-type-left (primitive-type-int)
       :in-type-right (primitive-type-int)
       :out-type (primitive-type-boolean)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection def-long=>boolean-binary-op
  :short "Specialization of @(tsee def-primitive-binary-op) to
          the case in which the input types are @('long')
          and the output type is @('boolean')."
  :long (xdoc::topstring-@def "def-long=>boolean-binary-op")

  (defmacro def-long=>boolean-binary-op (name
                                         &key
                                         operation
                                         (parents 'nil parents-suppliedp)
                                         (short 'nil short-suppliedp)
                                         (long 'nil long-suppliedp))
    `(def-primitive-binary-op ,name
       :in-type-left (primitive-type-long)
       :in-type-right (primitive-type-long)
       :out-type (primitive-type-boolean)
       :operation ,operation
       ,@(and parents-suppliedp (list :parents parents))
       ,@(and short-suppliedp (list :short short))
       ,@(and long-suppliedp (list :long long)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ boolean-operations
  :parents (primitive-operations)
  :short "Java boolean operations [JLS:4.2.5]."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here we formalize all the strict operations
     that take boolean operands and return boolean results.")
   (xdoc::p
    "[JLS:4.2.5] also lists
     the conditional operators @('&&'), @('||'), and @('? :'),
     but those are non-strict,
     and therefore must be formalized as part of expression evaluation.")
   (xdoc::p
    "[JLS:4.2.5] also lists the string concatenation operator @('+'),
     but that is best formalized in terms of a boolean-to-string conversion,
     elsewhere."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-unary-op boolean-not
  :operation (not x)
  :short "Logical complement @('!') [JLS:4.2.5] [JLS:15.15.6].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-binary-op boolean-and
  :operation (and x y)
  :short "Logical conjunction @('&') [JLS:4.2.5] [JLS:15.22.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-binary-op boolean-xor
  :operation (not (equal x y))
  :short "Logical exclusive disjunction @('^') [JLS:4.2.5] [JLS:15.22.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-binary-op boolean-ior
  :operation (or x y)
  :short "Logical inclusive disjunction @('|') [JLS:4.2.5] [JLS:15.22.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-binary-op boolean-eq
  :operation (equal x y)
  :short "Equality @('==') on @('boolean')s [JLS:4.2.5] [JLS:15.21.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-boolean-binary-op boolean-neq
  :operation (not (equal x y))
  :short "Non-equality @('!=') on @('boolean')s [JLS:4.2.5] [JLS:15.21.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ integer-operations
  :parents (primitive-operations)
  :short "Java integer operations [JLS:4.2.2]."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here we formalize all the unary and binary operations on integral values
     that are not conversions (those are best formalized separately).
     The term `integer operations', as opposed to `integral operations',
     is used in the title of [JLS:4.2.2].")
   (xdoc::p
    "Since integral values are subjected to
     unary and binary numeric promotion [JLS:5.6.1] [JLS:5.6.2] [JLS:15],
     the operations on integral values actually only operate on
     @('int') and @('long') values as operands.")
   (xdoc::p
    "For the shift operations [JLS:15.19],
     unary numeric promotion is applied to the operands separately.
     Thus, for each such operation, there are four variants,
     corresponding to each operand being @('int') or @('long').")
   (xdoc::p
    "Some integer operations have boolean results.")
   (xdoc::p
    "[JLS:4.2.2] also lists the prefix and posfix @('++') and @('--') operators,
     but those operate on variables, not just values,
     and therefore must be formalized elsewhere.")
   (xdoc::p
    "[JLS:4.2.5] also lists the conditional operator @('? :'),
     but that one is non-strict,
     and therefore must be formalized as part of expression evaluation.")
   (xdoc::p
    "[JLS:4.2.5] also lists the string concatenation operator @('+'),
     but that is best formalized in terms of integral-to-string conversions,
     elsewhere.")
   (xdoc::p
    "[JLS:4.2.5] also lists the cast operator, which involves conversions,
     which, as mentioned above, are best formalized separately."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-unary-op int-plus
  :operation x
  :short "Unary plus @('+') on @('int')s [JLS:4.2.2] [JLS:15.15.3].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-unary-op long-plus
  :operation x
  :short "Unary plus @('+') on @('long')s [JLS:4.2.2] [JLS:15.15.3].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-unary-op int-minus
  :operation (logext 32 (- x))
  :short "Unary minus @('-') on @('int')s [JLS:4.2.2] [JLS:15.15.4].")

(assert-event (equal (int-minus (int-value (- (expt 2 31))))
                     (int-value (- (expt 2 31)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-unary-op long-minus
  :operation (logext 64 (- x))
  :short "Unary minus @('-') on @('long')s [JLS:4.2.2] [JLS:15.15.4].")

(assert-event (equal (long-minus (long-value (- (expt 2 63))))
                     (long-value (- (expt 2 63)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-add
  :operation (logext 32 (+ x y))
  :short "Addition @('+') on @('int')s [JLS:4.2.2] [JLS:15.18.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-add
  :operation (logext 64 (+ x y))
  :short "Addition @('+') on @('long')s [JLS:4.2.2] [JLS:15.18.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-sub
  :operation (logext 32 (- x y))
  :short "Subtraction @('-') on @('int')s [JLS:4.2.2] [JLS:15.18.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-sub
  :operation (logext 64 (- x y))
  :short "Subtraction @('-') on @('long')s [JLS:4.2.2] [JLS:15.18.2].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-mul
  :operation (logext 32 (* x y))
  :short "Multiplication @('*') on @('int')s [JLS:4.2.2] [JLS:15.17.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-mul
  :operation (logext 64 (* x y))
  :short "Multiplication @('*') on @('long')s [JLS:4.2.2] [JLS:15.17.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-div
  :nonzero t
  :operation (logext 32 (truncate x y))
  :short "Division @('/') on @('int')s [JLS:4.2.2] [JLS:15.17.2].")

(assert-event (equal (int-div (int-value (- (expt 2 31)))
                              (int-value -1))
                     (int-value (- (expt 2 31)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-div
  :nonzero t
  :operation (logext 64 (truncate x y))
  :short "Division @('/') on @('long')s [JLS:4.2.2] [JLS:15.17.2].")

(assert-event (equal (long-div (long-value (- (expt 2 63)))
                               (long-value -1))
                     (long-value (- (expt 2 63)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-rem
  :nonzero t
  :operation (logext 32 (rem x y))
  :short "Remainder @('&') on @('int')s [JLS:4.2.2] [JLS:15.17.3].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-rem
  :nonzero t
  :operation (logext 64 (rem x y))
  :short "Remainder @('&') on @('long')s [JLS:4.2.2] [JLS:15.17.3].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-unary-op int-not
  :operation (logext 32 (lognot x))
  :short "Bitwise complement @('~') on @('int')s [JLS:4.2.2] [JLS:15.15.5].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-unary-op long-not
  :operation (logext 64 (lognot x))
  :short "Bitwise complement @('~') on @('long')s [JLS:4.2.2] [JLS:15.15.5].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-and
  :operation (logext 32 (logand x y))
  :short "Bitwise conjunction @('&') on @('int')s [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-and
  :operation (logext 64 (logand x y))
  :short "Bitwise conjunction @('&') on @('long')s [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-xor
  :operation (logext 32 (logxor x y))
  :short "Bitwise exclusive disjunction @('^') on @('int')s
          [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-xor
  :operation (logext 64 (logxor x y))
  :short "Bitwise exclusive disjunction @('^') on @('long')s
          [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-ior
  :operation (logext 32 (logior x y))
  :short "Bitwise inclusive disjunction @('|') on @('int')s
          [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-ior
  :operation (logext 64 (logior x y))
  :short "Bitwise inclusive disjunction @('|') on @('long')s
          [JLS:4.2.2] [JLS:15.22.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-eq
  :operation (equal x y)
  :short "Equality @('==') on @('int')s [JLS:4.2.2] [JLS:15.21.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-eq
  :operation (equal x y)
  :short "Equality @('==') on @('long')s [JLS:4.2.2] [JLS:15.21.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-neq
  :operation (not (equal x y))
  :short "Non-equality @('!=') on @('int')s [JLS:4.2.2] [JLS:15.21.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-neq
  :operation (not (equal x y))
  :short "Non-equality @('!=') on @('long')s [JLS:4.2.2] [JLS:15.21.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-less
  :operation (< x y)
  :short "Less-than comparison @('<') on @('int')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-less
  :operation (< x y)
  :short "Less-than comparison @('<') on @('long')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-lesseq
  :operation (<= x y)
  :short "Less-than-or-equal-to comparison @('<=') on @('int')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-lesseq
  :operation (<= x y)
  :short "Less-than-or-equal-to comparison @('<=') on @('long')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-great
  :operation (> x y)
  :short "Greater-than comparison @('>') on @('int')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-great
  :operation (> x y)
  :short "Greater-than comparison @('>') on @('long')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int=>boolean-binary-op int-greateq
  :operation (>= x y)
  :short "Greater-than-or-equal-to comparison @('>=') on @('int')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long=>boolean-binary-op long-greateq
  :operation (>= x y)
  :short "Greater-than-or-equal-to comparison @('>=') on @('long')s
          [JLS:4.2.2] [JLS:15.20.1].")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-int-shiftl
  :operation (logext 32 (ash x (loghead 5 y)))
  :short "Left shift of an @('int') by an @('int') [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 5 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-long-shiftl
  :operation (logext 64 (ash x (loghead 6 y)))
  :short "Left shift of a @('long') by a @('long') [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 6 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op long-int-shiftl
  :in-type-left (primitive-type-long)
  :in-type-right (primitive-type-int)
  :out-type (primitive-type-long)
  :operation (logext 64 (ash x (loghead 6 y)))
  :short "Left shift of a @('long') by an @('int') [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 6 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op int-long-shiftl
  :in-type-left (primitive-type-int)
  :in-type-right (primitive-type-long)
  :out-type (primitive-type-int)
  :operation (logext 32 (ash x (loghead 5 y)))
  :short "Left shift of an @('int') by a @('long') [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 5 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-int-shiftr
  :operation (logext 32 (ash x (- (loghead 5 y))))
  :short "(Signed) right shift of an @('int') by an @('int')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 5 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-long-shiftr
  :operation (logext 64 (ash x (- (loghead 6 y))))
  :short "(Signed) right shift of a @('long') by a @('long')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 6 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op long-int-shiftr
  :in-type-left (primitive-type-long)
  :in-type-right (primitive-type-int)
  :out-type (primitive-type-long)
  :operation (logext 64 (ash x (- (loghead 6 y))))
  :short "(Signed) right shift of a @('long') by an @('int')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 6 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op int-long-shiftr
  :in-type-left (primitive-type-int)
  :in-type-right (primitive-type-long)
  :out-type (primitive-type-int)
  :operation (logext 32 (ash x (- (loghead 5 y))))
  :short "(Signed) right shift of an @('int') by a @('long')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring-p
   "Only the low 5 bits of the distance are used [JLS:15.19]."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-int-binary-op int-int-ushiftr
  :operation (logext 32 (ash (loghead 32 x)
                             (- (loghead 5 y))))
  :short "Unsigned right shift of an @('int') by an @('int')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We first convert the left operand to unsigned.")
   (xdoc::p
    "Only the low 5 bits of the distance are used [JLS:15.19].")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-long-binary-op long-long-ushiftr
  :operation (logext 64 (ash (loghead 64 x)
                             (- (loghead 6 y))))
  :short "Unsigned right shift of an @('long') by an @('long')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We first convert the left operand to unsigned.")
   (xdoc::p
    "Only the low 6 bits of the distance are used [JLS:15.19].")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op long-int-ushiftr
  :in-type-left (primitive-type-long)
  :in-type-right (primitive-type-int)
  :out-type (primitive-type-long)
  :operation (logext 64 (ash (loghead 64 x)
                             (- (loghead 6 y))))
  :short "Unsigned right shift of a @('long') by an @('int')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We first convert the left operand to unsigned.")
   (xdoc::p
    "Only the low 6 bits of the distance are used [JLS:15.19].")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-primitive-binary-op int-long-ushiftr
  :in-type-left (primitive-type-int)
  :in-type-right (primitive-type-long)
  :out-type (primitive-type-int)
  :operation (logext 32 (ash (loghead 32 x)
                             (- (loghead 5 y))))
  :short "Unsigned right shift of an @('int') by a @('long')
          [JLS:4.2.2] [JLS:15.19]."
  :long
  (xdoc::topstring
   (xdoc::p
    "We first convert the left operand to unsigned.")
   (xdoc::p
    "Only the low 5 bits of the distance are used [JLS:15.19].")))
