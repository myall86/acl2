; A lightweight book about the built-in function natp
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

(defthm natp-of-+-of--1
  (implies (integerp x)
           (equal (natp (+ -1 x))
                  (< 0 x))))

;; This is nice because it preserves natp as he abstraction
(defthmd natp-of-+-of-1
  (implies (natp x)
           (natp (+ 1 x)))
  :hints (("Goal" :in-theory (enable natp))))

(defthmd natp-of-+-of-1-alt
  (implies (integerp x)
           (equal (natp (+ 1 x))
                  (<= -1 x))))
