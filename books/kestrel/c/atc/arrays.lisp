; C Library
;
; Copyright (C) 2022 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2022 Kestrel Technology LLC (http://kestreltechnology.com)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "integer-operations")
(include-book "types")
(include-book "values")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-arrays
  :parents (atc-dynamic-semantics)
  :short "A model of C arrays for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "At this time, we represent arrays as
     sequences of values that can be read and written.
     These array representations can be passed around, and manipulated by,
     ACL2 functions that represent C functions,
     and ATC translates those to corresponding array manipulations.")
   (xdoc::p
    "We represent arrays as values of fixtypes that wrap lists of C values.
     We provide operations to read and write elements,
     essentially wrappers of @(tsee nth) and @(tsee update-nth).")
   (xdoc::p
    "Besides the list of C values,
     each array fixtype includes the type of the element.
     This is redundant information,
     but it is needed so that arrays thus modeled
     can be a subset of an upcoming extension of the model of all values.")
   (xdoc::p
    "This fairly simple model should suffice to generate C code
     that manipulates arrays in some interesting ways.
     It should suffice to represent C functions
     that receive arrays from external callers,
     and possibly update them.
     However, we may need to extend the model in the future;
     in particular, we may provide operations to create arrays.")
   (xdoc::p
    "This array model is similar to "
    (xdoc::seetopic "java::atj-java-primitive-array-model"
                    "ATJ's model of Java primitive arrays")
    ". But C arrays differ from Java arrays:
     in particular, Java arrays are self-contained objects,
     whose length and other attributes can be programmatically queried;
     in contrast, C arrays are more of a ``view'' of certain memory regions.
     Nonetheless, at the level of ACL2 manipulations,
     the two kinds of arrays differ less (at least for certain mundane uses),
     because, even though C does not provide ``direct access'' to
     an array's length and other attributes,
     there is nonetheless an implicit notion of array,
     with its length and other attributes,
     that is conceptually created and passed around and manipulated.")
   (xdoc::p
    "Similarly to the use of the Java array model in ATJ,
     the C arrays modeled here have to be treated in a stobj-like manner
     by the ACL2 functions to be translated to C.
     In general, each of these ACL2 functions
     takes zero or more arrays as inputs (possibly among other inputs),
     and must return, in an @(tsee mv),
     all the arrays that it possibly modifies,
     along with the regular return result of the function (if any);
     the arrays that are only read by the function do not have to be returned.
     Inside the function, the arrays must be updated (if at all)
     in a single-threaded way, analogously to stobjs.
     Upcoming extensions of ATC will ensure that this discipline is followed,
     analogously to what ATJ does.")
   (xdoc::p
    "Our initial model of arrays assumes that different arrays do not overlap.
     That is,
     either two arrays are the same array (when they have the same pointer),
     or they are completely disjoint.
     The model does not capture
     the situation of an array being a subarray of another one.
     We may extend the model in the future.")
   (xdoc::p
    "We provide a model of arrays of all the integer types
     supported in ATC's model of C,
     i.e. arrays of @('unsigned chars')s, arrays of @('int')s, etc.
     [C:6.5.2.1/2] explains that array indexing @('a[i]') boils down to
     addition between the pointer @('a') and the integer @('i'),
     and [C:6.5.6/2] allows the integer to have any integer type.
     This means that, for each possible array type,
     there are versions of the read and write operations (which use indices)
     for all the integer types supported in ATC's model of C.
     Since all these functions follow a common pattern,
     we generate arary types and functions programmatically,
     as done for the "
    (xdoc::seetopic "atc-integers" "integers")
    ".")
   (xdoc::p
    "[C:6.2.5/20] requires arrays to be non-empty,
     i.e. to contain at least one element,
     i.e. to have positive length.
     As noted above, arrays are indexed via integers.
     [C] only provides minimum requirements for the sizes of integer types,
     not maximum requirements:
     other than practical considerations,
     nothing, mathematically, prevents some integer types
     to consists of thousands or millions of bits.
     So our model of arrays requires them to be non-empty
     but puts no maximum limits on their length.")
   (xdoc::p
    "For each integer type @('<type>'),
     besides the fixtype of arrays of that type,
     we generate functions
     @('<type>-array-read') and @('<type>-array-write')
     that take ACL2 integers as indices;
     these functions do not directly represent C constructs,
     but are useful to make the definition of the ones that do more concise.
     We generate functions
     @('<type>-array-read-<type1>') and @('<type>-array-write-<type1>'),
     which represent C constructs:
     that convert the index to an ACL2 integer
     and then call the two functions above.
     We also generate convenience functions
     to test whether indices are in range
     and to return the length of the arrays:
     these do not represent C constructs,
     but are useful in guards for example."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-arrays ((type typep))
  :guard (type-integerp type)
  :returns (event pseudo-event-formp)
  :short "Event to generate the core model of arrays of an integer type."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here we generate the fixtype,
     and the internally used functions
     that use ACL2 integers as indices.
     Note that indices are 0-indexed.
     We also generate the function that returns the length of an array,
     as an ACL2 integer.")
   (xdoc::p
    "We also generate theorems @('...-alt-def') that provide
     alternative definitions for the functions related to arrays.
     We plan to reformulate the definition of these shallowly embedded arrays
     to be like the aforementioned @('...-alt-def') theorems,
     in which case the theorems will be of course eliminated.
     We use the @('...-alt-def') theorems in certain proofs."))

  (b* ((type-string (integer-type-xdoc-string type))
       (<type> (integer-type-to-fixtype type))
       (<type>p (pack <type> 'p))
       (<type>-fix (pack <type> '-fix))
       (<type>-list (pack <type> '-list))
       (<type>-listp (pack <type> '-listp))
       (<type>-array (pack <type> '-array))
       (<type>-arrayp (pack <type>-array 'p))
       (<type>-arrayp-alt-def (pack <type>-arrayp '-alt-def))
       (<type>-array-of (pack <type>-array '-of))
       (<type>-array-of-alt-def (pack <type>-array-of '-alt-def))
       (<type>-array-fix (pack <type>-array '-fix))
       (<type>-array->elemtype (pack <type>-array '->elemtype))
       (<type>-array->elements (pack <type>-array '->elements))
       (<type>-array->elements-alt-def (pack <type>-array->elements '-alt-def))
       (<type>-array-length (pack <type>-array '-length))
       (<type>-array-length-alt-def (pack <type>-array-length '-alt-def))
       (<type>-array-index-okp (pack <type> '-array-index-okp))
       (<type>-array-read (pack <type>-array '-read))
       (<type>-array-read-alt-def (pack <type>-array-read '-alt-def))
       (<type>-array-write (pack <type>-array '-write))
       (<type>-array-write-alt-def (pack <type>-array-write '-alt-def))
       (<type>-array-of-of-<type>-array->elements
        (pack <type>-array-of '-of- <type>-array->elements))
       (len-of-<type>-array->elements-of-<type>-array-write
        (pack 'len-of- <type>-array->elements '-of- <type>-array-write))
       (<type>-array-length-of-<type>-array-write
        (pack <type> '-array-length-of- <type>-array-write))
       (type-of-value-when-<type>p (pack 'type-of-value-when- <type>p)))

    `(progn

       ,@(and (type-case type :char)
              (raise "Type ~x0 not supported." type))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::defprod ,<type>-array
         :short ,(str::cat "Fixtype of (ATC's model of) arrays of "
                           type-string
                           ".")
         ((elemtype type :reqfix (if (type-case elemtype ,(type-kind type))
                                     elemtype
                                   ,(type-to-maker type)))
          (elements ,<type>-list :reqfix (if (consp elements)
                                             elements
                                           (list (,<type> 0)))))
         :require (and (type-case elemtype ,(type-kind type))
                       (consp elements))
         :layout :list
         :tag :array
         :pred ,<type>-arrayp)

       (defsection ,(pack <type>-array '-ext)
         :extension ,<type>-array

         (defruled ,<type>-arrayp-alt-def
           (equal (,<type>-arrayp x)
                  (and (valuep x)
                       (value-case x :array)
                       (equal (value-array->elemtype x)
                              ,(type-to-maker type))
                       (,<type>-listp (value-array->elements x))))
           :enable (,<type>-arrayp
                    valuep
                    value-kind
                    value-array->elemtype
                    value-array->elements))

         (defruled ,<type>-array->elements-alt-def
           (implies (,<type>-arrayp array)
                    (equal (,<type>-array->elements array)
                           (value-array->elements array)))
           :enable (,<type>-array->elements
                    value-array->elements
                    ,<type>-arrayp
                    valuep
                    value-kind)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<type>-array-of ((elements ,<type>-listp))
         :guard (consp elements)
         :returns (array ,<type>-arrayp)
         :short ,(str::cat "Build an array of "
                           type-string
                           "from a list of its elements.")
         (,<type>-array ,(type-to-maker type) elements)
         :hooks (:fix)
         ///

         (defrule ,<type>-array-of-of-<type>-array->elements
           (equal (,<type>-array-of (,<type>-array->elements array))
                  (,<type>-array-fix array))
           :enable ,<type>-array->elemtype)

         (defruled ,<type>-array-of-alt-def
           (implies (and (,<type>-listp elems)
                         (consp elems))
                    (equal (,<type>-array-of elems)
                           (make-value-array :elemtype ,(type-to-maker type)
                                             :elements elems)))
           :enable (,<type>-array-of
                    ,<type>-array
                    value-array->elemtype
                    value-array->elements
                    valuep
                    value-kind)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<type>-array-length ((array ,<type>-arrayp))
         :returns (length natp :rule-classes (:rewrite :type-prescription))
         :short ,(str::cat "Length of an array of "
                           type-string
                           ".")
         (len (,<type>-array->elements array))
         :hooks (:fix)
         ///

         (defruled ,<type>-array-length-alt-def
           (implies (,<type>-arrayp array)
                    (equal (,<type>-array-length array)
                           (value-array->length array)))
           :enable (,<type>-array-length
                    value-array->length
                    ,<type>-array->elements-alt-def)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<type>-array-index-okp ((array ,<type>-arrayp) (index integerp))
         :returns (yes/no booleanp)
         :short ,(str::cat "Check if an integer is
                            a valid index (i.e. in range)
                            for an array of "
                           type-string
                           ".")
         (integer-range-p 0 (,<type>-array-length array) (ifix index))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<type>-array-read ((array ,<type>-arrayp) (index integerp))
         :guard (,<type>-array-index-okp array index)
         :returns (element ,<type>p)
         :short ,(str::cat "Read an element from an array of "
                           type-string
                           ", using an integer index.")
         (,<type>-fix (nth index (,<type>-array->elements array)))
         :guard-hints (("Goal" :in-theory (enable ,<type>-array-index-okp
                                                  ,<type>-array-length)))
         :hooks (:fix)
         ///

         (defruled ,<type>-array-read-alt-def
           (implies (and (,<type>-arrayp array)
                         (integerp index)
                         (,<type>-array-index-okp array index))
                    (equal (,<type>-array-read array index)
                           (value-array-read index array)))
           :enable (,<type>-array-read
                    value-array-read
                    ,<type>-array->elements-alt-def
                    ,<type>-array-index-okp
                    ,<type>-array-length-alt-def
                    value-array->length
                    ,<type>-arrayp-alt-def)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<type>-array-write ((array ,<type>-arrayp)
                                    (index integerp)
                                    (element ,<type>p))
         :guard (,<type>-array-index-okp array index)
         :returns (new-array ,<type>-arrayp)
         :short ,(str::cat "Write an element to an array of "
                           type-string
                           ", using an integer index.")
         (b* ((array (,<type>-array-fix array))
              (index (ifix index))
              (element (,<type>-fix element)))
           (if (mbt (,<type>-array-index-okp array index))
               (,<type>-array-of (update-nth index
                                             element
                                             (,<type>-array->elements array)))
             array))
         :guard-hints (("Goal" :in-theory (enable ,<type>-array-index-okp
                                                  ,<type>-array-length)))
         :hooks (:fix)

         ///

         (defrule ,len-of-<type>-array->elements-of-<type>-array-write
           (equal (len (,<type>-array->elements
                        (,<type>-array-write array index element)))
                  (len (,<type>-array->elements array)))
           :enable (,<type>-array-index-okp
                    ,<type>-array-length
                    ,<type>-array-of))

         (defrule ,<type>-array-length-of-<type>-array-write
           (equal (,<type>-array-length
                   (,<type>-array-write array index element))
                  (,<type>-array-length array))
           :enable (,<type>-array-index-okp
                    ,<type>-array-length
                    ,<type>-array-of))

         (defruled ,<type>-array-write-alt-def
           (implies (and (,<type>-arrayp array)
                         (integerp index)
                         (,<type>p elem)
                         (,<type>-array-index-okp array index))
                    (equal (,<type>-array-write array index elem)
                           (value-array-write index elem array)))
           :enable (,<type>-array-write
                    value-array-write
                    ,<type>-arrayp-alt-def
                    ,<type>-array-of-alt-def
                    ,<type>-array-length-alt-def
                    ,<type>-array->elements-alt-def
                    ,<type>-array-index-okp
                    value-array->length
                    ,type-of-value-when-<type>p)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-arrays-indices ((etype typep) (itype typep))
  :guard (and (type-integerp etype)
              (type-integerp itype))
  :returns (event pseudo-event-formp)
  :short "Event to generate the part of the model of arrays of an integer type
          that involves indices of an integer type."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here @('etype') is the type of the array elements,
     while @('itype') is the type of the array indices."))

  (b* ((etype-string (integer-type-xdoc-string etype))
       (itype-string (integer-type-xdoc-string itype))
       (<etype> (integer-type-to-fixtype etype))
       (<itype> (integer-type-to-fixtype itype))
       (<etype>p (pack <etype> 'p))
       (<itype>p (pack <itype> 'p))
       (<etype>-array (pack <etype> '-array))
       (<etype>-arrayp (pack <etype>-array 'p))
       (<etype>-array->elements (pack <etype>-array '->elements))
       (<etype>-array-length (pack <etype>-array '-length))
       (<etype>-array-index-okp (pack <etype> '-array-index-okp))
       (<etype>-array-read (pack <etype>-array '-read))
       (<etype>-array-write (pack <etype>-array '-write))
       (<itype>-integer-value (pack <itype> '-integer-value))
       (<etype>-array-<itype>-index-okp (pack
                                         <etype> '-array- <itype> '-index-okp))
       (<etype>-array-read-<itype> (pack <etype> '-array-read- <itype>))
       (<etype>-array-write-<itype> (pack <etype> '-array-write- <itype>))
       (len-of-<etype>-array->elements-of-<etype>-array-write-<itype>
        (pack
         'len-of- <etype>-array->elements '-of- <etype>-array-write-<itype>))
       (<etype>-array-length-of-<etype>-array-write-<itype>
        (pack <etype> '-array-length-of- <etype>-array-write-<itype>)))

    `(progn

       ,@(and (type-case etype :char)
              (raise "Type ~x0 not supported." etype))

       ,@(and (type-case itype :char)
              (raise "Type ~x0 not supported." itype))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<etype>-array-<itype>-index-okp ((array ,<etype>-arrayp)
                                                 (index ,<itype>p))
         :returns (yes/no booleanp)
         :short ,(str::cat "Check if an index of "
                           itype-string
                           " is valid for an array of type "
                           etype-string
                           ".")
         (,<etype>-array-index-okp array (,<itype>-integer-value index))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<etype>-array-read-<itype> ((array ,<etype>-arrayp)
                                            (index ,<itype>p))
         :guard (,<etype>-array-<itype>-index-okp array index)
         :returns (element ,<etype>p)
         :short ,(str::cat "Read an element from an array of "
                           etype-string
                           ", using an index of "
                           itype-string
                           ".")
         (,<etype>-array-read array (,<itype>-integer-value index))
         :guard-hints (("Goal"
                        :in-theory (enable ,<etype>-array-<itype>-index-okp)))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,<etype>-array-write-<itype> ((array ,<etype>-arrayp)
                                             (index ,<itype>p)
                                             (element ,<etype>p))
         :guard (,<etype>-array-<itype>-index-okp array index)
         :returns (new-array ,<etype>-arrayp)
         :short ,(str::cat "Write an element to an array of "
                           etype-string
                           ", using an index of "
                           itype-string
                           ".")
         (,<etype>-array-write array (,<itype>-integer-value index) element)
         :guard-hints (("Goal"
                        :in-theory (enable ,<etype>-array-<itype>-index-okp)))
         :hooks (:fix)

         ///

         (defrule ,len-of-<etype>-array->elements-of-<etype>-array-write-<itype>
           (equal
            (len (,<etype>-array->elements
                  (,<etype>-array-write-<itype> array index element)))
            (len (,<etype>-array->elements array))))

         (defrule ,<etype>-array-length-of-<etype>-array-write-<itype>
           (equal (,<etype>-array-length
                   (,<etype>-array-write-<itype> array index element))
                  (,<etype>-array-length array))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-arrays-loop-inner ((etype typep) (itypes type-listp))
  :guard (and (type-integerp etype)
              (type-integer-listp itypes))
  :returns (events pseudo-event-form-listp)
  :short "Events to generate the array operations that involve indices,
          for a given array element type."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is the inner loop for generating our model of arrays."))
  (cond ((endp itypes) nil)
        (t (cons (atc-def-integer-arrays-indices etype (car itypes))
                 (atc-def-integer-arrays-loop-inner etype (cdr itypes))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-arrays-loop-outer ((etypes type-listp)
                                           (itypes type-listp))
  :guard (and (type-integer-listp etypes)
              (type-integer-listp itypes))
  :returns (events pseudo-event-form-listp)
  :short "Events to generate the model of arrays
          for the given array element types."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is the outer loop for generating our model of arrays."))
  (cond ((endp etypes) nil)
        (t (append (list (atc-def-integer-arrays (car etypes)))
                   (atc-def-integer-arrays-loop-inner (car etypes) itypes)
                   (atc-def-integer-arrays-loop-outer (cdr etypes) itypes)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 (b* ((types (list (type-schar)
                   (type-uchar)
                   (type-sshort)
                   (type-ushort)
                   (type-sint)
                   (type-uint)
                   (type-slong)
                   (type-ulong)
                   (type-sllong)
                   (type-ullong))))
   `(progn ,@(atc-def-integer-arrays-loop-outer types types))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection array-tau-rules
  :short "Some tau rules about arrays."

  (defrule not-errorp-when-arrayp
    (implies (or (schar-arrayp x)
                 (uchar-arrayp x)
                 (sshort-arrayp x)
                 (ushort-arrayp x)
                 (sint-arrayp x)
                 (uint-arrayp x)
                 (slong-arrayp x)
                 (ulong-arrayp x)
                 (sllong-arrayp x)
                 (ullong-arrayp x))
             (not (errorp x)))
    :rule-classes :tau-system
    :enable (schar-arrayp
             uchar-arrayp
             sshort-arrayp
             ushort-arrayp
             sint-arrayp
             uint-arrayp
             slong-arrayp
             ulong-arrayp
             sllong-arrayp
             ullong-arrayp
             errorp)))
