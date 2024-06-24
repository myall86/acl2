; More utilities for printing DAG arrays
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; This one depends on dag-size-sparse.lisp

(include-book "dag-array-printing")
(include-book "dag-size-sparse")

;; Print the term represented by NODENUM-OR-QUOTEP in the DAG, as a term if it
;; won't be too big, otherwise as the relevant nodes from the DAG.
(defun print-dag-node-nicely (nodenum-or-quotep dag-array-name dag-array dag-len max-term-size)
  (declare (xargs :guard (and (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                              (dargp-less-than nodenum-or-quotep dag-len)
                              (natp max-term-size))))
  (if (consp nodenum-or-quotep) ;test for quotep
      (cw "~x0~%" nodenum-or-quotep)
    ;; it's a nodenum:
    (let ((nodenum nodenum-or-quotep))
      ;;todo: stop checking the size as soon as soon as the max-term-size is exceeded:
      (let ((term-size (nfix (size-of-node nodenum dag-array-name dag-array dag-len)))) ;todo: drop the nfix
        (if (< term-size max-term-size)
            (cw "~x0~%" (dag-to-term-aux-array dag-array-name dag-array nodenum))
          (print-dag-array-node-and-supporters dag-array-name dag-array nodenum))))))
