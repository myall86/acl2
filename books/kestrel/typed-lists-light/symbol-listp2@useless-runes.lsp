(SYMBOL-LISTP-OF-REVERSE-LIST
     (1995 35 (:DEFINITION BINARY-APPEND))
     (1080 1080 (:TYPE-PRESCRIPTION LEN))
     (972 54 (:DEFINITION TAKE))
     (972 54 (:DEFINITION NTH))
     (864 108 (:REWRITE ZP-OPEN))
     (648 324 (:REWRITE DEFAULT-+-2))
     (540 108 (:DEFINITION LEN))
     (432 108 (:REWRITE FOLD-CONSTS-IN-+))
     (387 74 (:REWRITE SYMBOL-LISTP-OF-CDR))
     (341 341 (:REWRITE DEFAULT-CDR))
     (324 324 (:REWRITE DEFAULT-+-1))
     (227 227 (:REWRITE DEFAULT-CAR))
     (216 108 (:REWRITE DEFAULT-<-2))
     (116 60
          (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP-CHEAP))
     (108 108 (:REWRITE DEFAULT-<-1))
     (38 38
         (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE)))
