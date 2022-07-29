; HTCLIENT -- HTTP/HTTPS Client Library
;
; Copyright (C) 2022 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Eric McCarthy (mccarthy@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "HTCLIENT")

(include-book "read-acl2-oracle")

(include-book "std/util/define" :dir :system)
(include-book "std/basic/defs" :dir :system)
(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define post
  ((url stringp "Address to send POST command to.")
   (data alistp "Alist of form keys and data, both as strings.")
   state)
  :returns (mv (error "NIL on success or an error @(see msg) on failure.")
               (val   "On success: a string response." stringp)
               (state state-p1
                      :hyp (force (state-p1 state))))
  :parents (htclient)
  :short "Issue an HTTP/HTTPS POST command."
  :long
  (xdoc::topstring
   (xdoc::p
    "In the logic this function reads from the ACL2 oracle.  In the
     execution we send the http/https POST request to @('url').")
   (xdoc::h2
    "Examples")
   (xdoc::@{}
    "(htclient::post \"https://proof.kestrel.edu/sdhfsl93r23jfsljklsgbsl/machine_interface\"
    '((\"n\" . \"3\") (\"checkpoints\" . \"((ACL-NUMBERP A))\")) state)"))

  :ignore-ok t
  (b* ((- (raise "Raw Lisp definition not installed?"))
       ((mv ?err1 val1 state) (read-acl2-oracle state))
       ((mv ?err2 val2 state) (read-acl2-oracle state))
       ((when val1)
        (mv val1 "" state)))
    (mv nil (acl2::str-fix val2) state)))
