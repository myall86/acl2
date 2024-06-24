; A variant of write-objects-to-file for use during make-event, etc.
;
; Copyright (C) 2017-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "write-objects-to-channel")
(local (include-book "std/io/base" :dir :system)) ;for reasoning support
(local (include-book "kestrel/utilities/state" :dir :system))

(defttag file-io!)

;move, dup
(defthm get-serialize-character-of-mv-nth-1-of-open-output-channel
  (equal (get-serialize-character (mv-nth 1 (open-output-channel filename typ state)))
         (get-serialize-character state))
  :hints (("Goal" :in-theory (enable get-serialize-character open-output-channel
                                     update-open-output-channels
                                     get-global
                                     global-table
                                     update-file-clock
                                     ))))

;move
(defthm get-serialize-character-of-put-global
  (implies (not (equal key 'serialize-character))
           (equal (get-serialize-character (put-global key value state))
                  (get-serialize-character state)))
  :hints (("Goal" :in-theory (enable get-serialize-character put-global
                                     get-global
                                     global-table
                                     update-global-table))))

;; Writes the OBJECTS to file FILENAME, overwriting its previous contents.
;; Returns (mv erp state).  The ttag is needed because this calls
;; open-output-channel!, but that makes this version usable during make-event
;; expansion, clause-processors, etc.
(defun write-objects-to-file! (objects filename ctx state)
  (declare (xargs :stobjs state
                  :guard (and (true-listp objects)
                              (stringp filename)
                              ;; required by print-object$ (why?):
                              (member (get-serialize-character state)
                                      '(nil #\Y #\Z)))))
  (mv-let (channel state)
    (open-output-channel! filename :object state)
    (if (not channel)
        (prog2$ (er hard? ctx "Unable to open file ~s0 for :object output." filename)
                (mv t state))
      (pprogn (write-objects-to-channel objects channel state)
              (close-output-channel channel state)
              (mv nil state)))))
