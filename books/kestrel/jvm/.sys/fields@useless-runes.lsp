(JVM::KEYWORD-LISTP-FORWARD-TO-TRUE-LISTP
 (8 8 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:DEFINITION TRUE-LISTP))
 )
(JVM::KEYWORD-LISTP-FORWARD-TO-EQLABLE-LISTP
 (11 11 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(JVM::FIELD-NAMEP)
(JVM::FIELD-NAMEP-FORWARD-TO-STRINGP)
(JVM::FIELD-IDP)
(JVM::MAKE-FIELD-ID)
(JVM::FIELD-IDP-OF-MAKE-FIELD-ID
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(JVM::FIELD-ID-NAME)
(JVM::FIELD-ID-TYPE)
(JVM::ATTRIBUTESP)
(JVM::GET-CONSTANTVALUE-ATTRIBUTE)
(JVM::FIELD-INFOP)
(JVM::FIELD-INFOP-FORWARD-TO-TRUE-LISTP)
(JVM::FIELD-INFOP-FORWARD-TO-ALISTP)
(JVM::FIELD-ATTRIBUTES)
(JVM::ATTRIBUTESP-OF-FIELD-ATTRIBUTES)
(JVM::FIELD-ACCESS-FLAGS)
(JVM::TRUE-LISTP-OF-FIELD-ACCESS-FLAGS-FORWARD)
(JVM::FIELD-PUBLICP)
(JVM::FIELD-PRIVATEP)
(JVM::FIELD-PROTECTEDP)
(JVM::FIELD-STATICP)
