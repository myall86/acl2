; A function to write a sequence of strings to a file
;
; Copyright (C) 2017-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "write-strings-to-channel")
(local (include-book "std/io/base" :dir :system)) ;for reasoning support

;; Writes the STRINGS to FILENAME, overwriting its previous contents.
;; Effectively, all the STRINGS get concatenated and the result becomes the new
;; contents of the file.  Returns (mv erp state).  CTX is a context for error
;; printing.
(defund write-strings-to-file (strings filename ctx state)
  (declare (xargs :guard (and (string-listp strings)
                              (stringp filename))
                  :stobjs state))
  (mv-let (channel state)
    (open-output-channel filename :character state)
    (if (not channel)
        (prog2$ (er hard? ctx "Unable to open file ~s0 for :character output." filename)
                (mv t state))
      (if (eq channel 'acl2-output-channel::standard-character-output-0) ;todo: prove that this doesn't happen
          (prog2$ (er hard? ctx "Unexpected output channel name: ~x0." channel)
                  (mv t state))
        (pprogn (write-strings-to-channel strings channel state)
                (close-output-channel channel state)
                (mv nil state))))))
