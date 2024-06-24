; Standard Basic Library
;
; Copyright (C) 2022 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "good-pseudo-termp")
(include-book "good-valuep")
(include-book "maybe-string-fix")
(include-book "mbt-dollar")
(include-book "nonkeyword-listp")
(include-book "organize-symbols-by-name")
(include-book "organize-symbols-by-pkg")
(include-book "symbol-package-name-lst")
(include-book "symbol-package-name-non-cl")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc std/basic-extensions
  :parents (std-extensions std/basic)
  :short
  (xdoc::topstring "Extensions of "
                   (xdoc::seetopic "std/basic" "Std/basic")
                   " in the "
                   (xdoc::seetopic "kestrel-books" "Kestrel Books")
                   ".")
  :long
  (xdoc::topstring
   (xdoc::p
    "These extensions could be moved under @('[books]/std/basic')
     at some point.")))
