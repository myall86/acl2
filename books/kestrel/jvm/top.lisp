; Top level book for JVM model
;
; Copyright (C) 2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; The order of these roughly reflects the dependencies:
(include-book "ieee-floats") ; todo: move to separate library
(include-book "ieee-floats-as-bvs") ; todo: move to separate library
(include-book "ieee-floats-validation") ; todo: move to separate library
(include-book "types")
(include-book "floats")
(include-book "descriptors")
(include-book "method-descriptors")
(include-book "method-indicators")
(include-book "fields")
(include-book "instructions")
(include-book "methods")
(include-book "classes")
(include-book "operand-stacks")
(include-book "ads")
(include-book "ads2")
(include-book "adslemmas")
(include-book "adstop")
(include-book "frames")
(include-book "call-stacks")
(include-book "utilities")
(include-book "utilities2")
(include-book "class-tables")
(include-book "maps")
(include-book "heap0")
(include-book "heap-clearing")
(include-book "heap")
(include-book "java-types")
(include-book "int-subtypes")
(include-book "strings")
(include-book "intern-table")
(include-book "arrays0")
(include-book "array-building")
(include-book "arrays")
(include-book "arrays-2d")
(include-book "float-to-bits")
;; (include-book "floats2") ; name clash on java-floatp
(include-book "locals")
(include-book "set-classes")
(include-book "method-designator-strings")
(include-book "get-method-info")
(include-book "jvm")
(include-book "jvm-rules")
(include-book "jvm-facts")
(include-book "jvm-facts0")
(include-book "jvm-rules2")
(include-book "execution-common")
(include-book "execution")
(include-book "pc-designators")
(include-book "execution2")
(include-book "do-inst-rules")
(include-book "symbolic-execution-common")
(include-book "symbolic-execution")
(include-book "symbolic-execution2")
(include-book "control-flow")

(include-book "class-file-parser")
(include-book "read-and-parse-class-file")
(include-book "events-for-class")
(include-book "class-and-path-utils")
(include-book "load-class")
(include-book "load-class-from-hierarchy")
