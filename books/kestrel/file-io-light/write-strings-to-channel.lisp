; A function to write a sequence of strings to a channel
;
; Copyright (C) 2017-2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "princ-dollar")
(local (include-book "std/io/base" :dir :system)) ;for reasoning support

;; Returns state.
(defund write-strings-to-channel (strings channel state)
  (declare (xargs :guard (and (string-listp strings)
                              (symbolp channel)
                              (open-output-channel-p channel :character state))
                  :stobjs state
                  :guard-hints (("Goal" :in-theory (enable open-output-channel-p)))))
  (if (endp strings)
      state
    (pprogn (princ$ (car strings) channel state) ;todo: call something faster? (e.g., something that only works for strings)?
            (write-strings-to-channel (cdr strings) channel state))))

;; (thm
;;  (equal (open-output-channels (write-strings-to-channel list channel state))
;;         (open-output-channels state))
;;  :hints (("Goal" :in-theory (enable write-strings-to-channel ;open-output-channels
;;                                     ))))

(defthm state-p-of-write-strings-to-channel
  (implies (and (state-p state)
                (symbolp channel)
                (open-output-channel-p channel :character state))
           (state-p (write-strings-to-channel strings channel state)))
  :hints (("Goal" :in-theory (enable write-strings-to-channel OPEN-OUTPUT-CHANNEL-P))))

(defthm state-p1-of-write-strings-to-channel
  (implies (and (state-p state)
                (symbolp channel)
                (open-output-channel-p channel :character state))
           (state-p1 (write-strings-to-channel strings channel state)))
  :hints (("Goal" :in-theory (enable write-strings-to-channel OPEN-OUTPUT-CHANNEL-P))))

(defthm open-output-channel-p1-of-write-strings-to-channel
  (implies (open-output-channel-p1 channel2 typ state)
           (open-output-channel-p1 channel2 typ (write-strings-to-channel strings channel state)))
  :hints (("Goal" :in-theory (enable write-strings-to-channel))))
