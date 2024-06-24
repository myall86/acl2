; Utilities for making symbols from strings, nats, chars, and other symbols.
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: IN-PROGRESS

(local (include-book "coerce"))
(local (include-book "explode-nonnegative-integer"))
(local (include-book "explode-atom"))
(local (include-book "kestrel/lists-light/append" :dir :system))
(local (include-book "kestrel/typed-lists-light/character-listp" :dir :system))

;; See also the built-in functions add-suffix and add-suffix-to-fn, which are
;; less general than pack$ but may suffice for many uses.

;dup?
;Convert the natural N into a base-10 string representation.
;; todo: remove the check since we have a guard
(defund nat-to-string (n)
  (declare (type (integer 0 *) n))
  (if (not (mbt (natp n))) ;drop this?:
      (prog2$ (hard-error 'nat-to-string "Argument must be a natural, but we got ~x0." (acons #\0 n nil))
              "ERROR IN NAT-TO-STRING")
    (coerce (explode-nonnegative-integer n 10 nil) 'string)))

;; NAT-TO-STRING is essentially injective
(defthm equal-of-nat-to-string-and-nat-to-string
  (implies (and (natp n1)
                (natp n2))
           (equal (equal (nat-to-string n1)
                         (nat-to-string n2))
                  (equal n1 n2)))
  :hints (("Goal" :in-theory (enable nat-to-string))))

(defthm stringp-of-nat-to-string
  (stringp (nat-to-string x))
  :hints (("Goal" :in-theory (enable nat-to-string))))

;;
;; pack (making a symbol from pieces: other symbols, strings, and natural numbers)
;;

;should this upcase the string? i guess not?
;takes a symbol, string, or natp
;TODO: call explode-atom (or object-to-string) for unknown things?
(defund to-string (item)
  (declare (type t item))
  (if (symbolp item)
      (symbol-name item)
    (if (natp item)
        (nat-to-string item)
      (if (stringp item)
          item
        (if (characterp item)
            (coerce (list item) 'string)
          (prog2$ (hard-error 'to-string "Found ~x0, which is not a symbol, string, character, or natural number.~%"
                              (acons #\0 item nil))
                  ""))))))

(defthm to-string-when-stringp
  (implies (stringp x)
           (equal (to-string x)
                  x))
  :hints (("Goal" :in-theory (enable to-string))))

;todo: gen
(defthm equal-of-to-string-and-to-string-when-natps
  (implies (and (natp item1)
                (natp item2))
           (equal (equal (to-string item1) (to-string item2))
                  (equal item1 item2)))
  :hints (("Goal" :in-theory (enable to-string))))

;returns a string
(defund binary-pack (x y)
  (declare (type t x y))
  (concatenate 'string (to-string x) (to-string y)))

;; binary-pack is injective on its second argument
(defthm equal-of-binary-pack-and-binary-pack-same-arg1
  (equal (equal (binary-pack x y1)
                (binary-pack x y2))
         (equal (to-string y1)
                (to-string y2)))
  :hints (("Goal" :in-theory (e/d (binary-pack) (to-string)))))

;lst should be a list of 1 or more arguments, which must be symbols, string, or natps
;allow 0 args?
;returns a string
(defun pack$-fn (lst)
  (declare (xargs :guard (true-listp lst)))
  (if (not lst)
      (prog2$ (hard-error 'pack$-fn "pack needs at least 1 argument" nil)
              "")
    (if (not (cdr lst))
        ;;exactly 1 item:
        `(to-string ,(car lst))
      ;;more than 1 item:
      (xxxjoin 'binary-pack lst))))

;renaming this pack$ to avoid name conflict with pack in books/std/util/bstar.lisp
;Similar to packn, but this seems to use less memory, perhaps because packn takes a list, which must be consed up.
;takes 1 or more arguments, which must be symbols, string, or natps
;returns a symbol
;example: (pack$ 'foo 'bar 10 "GFD") returns the symbol FOOBAR10GFD
(defmacro pack$ (&rest rst)
  `(intern ,(pack$-fn rst) "ACL2"))

;todo: add $ to name?
;; Pack all the args *after* the first, using the package of the first argument.
(defmacro pack-in-package-of-symbol (sym &rest rst)
  `(intern-in-package-of-symbol ,(pack$-fn rst) ,sym))

;todo: add $ to name?
(defmacro pack-in-package-of-first-symbol (sym
                                           &rest rst)
  `(pack-in-package-of-symbol ,sym ,sym ,@rst))

;todo: add $ to name?
;; Returns a string rather than a symbol.
(defmacro packtostring (&rest rst)
  (pack$-fn rst))
