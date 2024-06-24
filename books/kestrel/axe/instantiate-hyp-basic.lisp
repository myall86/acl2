; A variant of instantiate-hyp that uses the basic evaluator.
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2021 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; Similar to sublis-var-and-eval-basic, but this one also returns a free-vars flag.

;; This version uses the basic evaluator.

(include-book "evaluator-basic")
(include-book "make-instantiation-code-simple-free-vars")
(include-book "make-instantiation-code-simple-no-free-vars")
(include-book "make-instantiation-code-simple-no-free-vars2")

;; Make a version for when there are free vars:
(make-instantiation-code-simple-free-vars basic axe-evaluator-basic)

;; Make a version for when there are no free vars:
(make-instantiation-code-simple-no-free-vars basic axe-evaluator-basic)

;; Make a version for when there are no free vars and we assume that in the guard to speed things up:
(make-instantiation-code-simple-no-free-vars2 basic axe-evaluator-basic)
