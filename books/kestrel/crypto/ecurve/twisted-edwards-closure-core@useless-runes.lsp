(ECURVE::NON-SQUARE)
(ECURVE::NON-SQUARE-NECC)
(ECURVE::DELTA-X)
(ECURVE::DELTA-Y)
(ECURVE::GAMMA)
(ECURVE::GAMMA+)
(ECURVE::GAMMA-)
(ECURVE::X3)
(ECURVE::Y3)
(ECURVE::LHS (4 4
                (:TYPE-PRESCRIPTION NONNEGATIVE-IPRODUCT)))
(ECURVE::RHS (2 2
                (:TYPE-PRESCRIPTION NONNEGATIVE-IPRODUCT)))
(ECURVE::ECP (1 1
                (:TYPE-PRESCRIPTION NONNEGATIVE-IPRODUCT)))
(ECURVE::=P-IMPLIES-IFF-ECP-1
     (36 12
         (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
     (3 3
        (:TYPE-PRESCRIPTION NONNEGATIVE-IPRODUCT)))
(ECURVE::=P-IMPLIES-IFF-ECP-2
     (36 12
         (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
     (3 3
        (:TYPE-PRESCRIPTION NONNEGATIVE-IPRODUCT)))
(ECURVE::TT)
(ECURVE::REDUCE-TT (240 144 (:REWRITE DEFAULT-*-2))
                   (167 26 (:REWRITE DEFAULT-+-2))
                   (144 144 (:REWRITE DEFAULT-*-1))
                   (128 128 (:REWRITE FOLD-CONSTS-IN-*))
                   (51 26 (:REWRITE DEFAULT-+-1))
                   (38 38 (:REWRITE FOLD-CONSTS-IN-+))
                   (14 8 (:REWRITE DEFAULT-UNARY-MINUS))
                   (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
                   (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(ECURVE::STEP2 (195 42
                    (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
               (79 10
                   (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
               (63 21
                   (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
               (48 12
                   (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
               (21 21 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::STEP3 (4313 1070
                     (:REWRITE ECURVE::|x =p -y --> x + y =p 0|)))
(ECURVE::STEP4 (154 32
                    (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
               (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
               (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
               (1 1 (:META CANCEL_IPLUS-EQUAL-CORRECT)))
(ECURVE::STEP5 (120 30
                    (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
               (75 20
                   (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
               (15 5
                   (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
               (5 5 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::STEP6 (127 32
                    (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
               (33 11
                   (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
               (28 4
                   (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
               (11 11 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::STEP7 (69 23
                   (:REWRITE ECURVE::|x =p -y --> x + y =p 0|)))
(ECURVE::SQRT-I*-1)
(ECURVE::STEP8-POSITIVE (86 26
                            (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                        (37 7
                            (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
                        (15 5
                            (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
                        (5 5 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::STEP8-NEGATIVE (116 27
                             (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                        (14 14 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::SQRT{A}*X+Y-POSITIVE)
(ECURVE::SQRT{A}*X+Y-NEGATIVE)
(ECURVE::TOP-POSITIVE)
(ECURVE::BOT-POSITIVE)
(ECURVE::TOP-NEGATIVE)
(ECURVE::BOT-NEGATIVE)
(ECURVE::STEP9-POSITIVE (573 157
                             (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                        (301 61
                             (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
                        (123 41
                             (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
                        (82 41 (:DEFINITION IFIX))
                        (41 41 (:TYPE-PRESCRIPTION INTEGERP-OF-I*)))
(ECURVE::STEP9-NEGATIVE (907 191
                             (:REWRITE ECURVE::|x =p -y --> x + y =p 0|)))
(ECURVE::|gamma^2 =p 1 --> x1,x2,y1,y2 p/= 0|
     (32 8
         (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
     (12 4
         (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
     (5 5 (:REWRITE ECURVE::SQRT-I*-1)))
(ECURVE::BOT-POSITIVE-NON-ZERO)
(ECURVE::BOT-NEGATIVE-NON-ZERO)
(ECURVE::STEP10-POSITIVE (24 6
                             (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
                         (9 3
                            (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                         (2 1 (:REWRITE ECURVE::SQRT-I*-1))
                         (1 1
                            (:TYPE-PRESCRIPTION ECURVE::INTEGERP-OF-/P)))
(ECURVE::STEP10-NEGATIVE (24 6
                             (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
                         (9 3
                            (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                         (2 1 (:REWRITE ECURVE::SQRT-I*-1))
                         (1 1
                            (:TYPE-PRESCRIPTION ECURVE::INTEGERP-OF-/P)))
(ECURVE::STEP11 (40 20 (:REWRITE ECURVE::SQRT-I*-1))
                (24 6
                    (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
                (20 20
                    (:TYPE-PRESCRIPTION ECURVE::INTEGERP-OF-/P))
                (11 11 (:REWRITE ECURVE::NON-SQUARE-NECC))
                (9 3
                   (:REWRITE ECURVE::|x =p -y --> x + y =p 0|)))
(ECURVE::STEP12)
(ECURVE::GAMMA-NOT-ROOT-OF-UNITY
     (56 14
         (:REWRITE ECURVE::|x + x =p 0 --> x =p 0|))
     (21 7
         (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
     (1 1 (:REWRITE ECURVE::NON-SQUARE-NECC)))
(ECURVE::I+-OF-I--OF-HIDE (16 4
                              (:REWRITE ECURVE::|x =p -y --> x + y =p 0|))
                          (5 1
                             (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
                          (4 2
                             (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS)))
(ECURVE::SQ-OF-HIDE-1)
(ECURVE::MAIN-THEOREM (240 12 (:REWRITE COMMUTATIVITY-2-OF-I+))
                      (155 28
                           (:REWRITE DISTRIBUTIVITY-OF-IMINUS-OVER-I+))
                      (115 43
                           (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-IMINUS))
                      (6 6 (:REWRITE ECURVE::NON-SQUARE-NECC)))
