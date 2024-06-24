; FTY Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "sbyte64")

(include-book "defbyte-ihs-theorems")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection sbyte64-ihs-theorems
  :parents (sbyte64 fty::defbyte-standard-instances-ihs-theorems)
  :short (xdoc::topstring "Theorems about @(tsee sbyte64) and "
                          (xdoc::seetopic "ihs" "IHS") " functions.")

  (fty::defbyte-ihs-theorems sbyte64))
