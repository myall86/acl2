(ECURVE::JUBJUB-Q)
(ECURVE::PRIMEP-OF-JUBJUB-Q)
(ECURVE::JUBJUB-A)
(ECURVE::RETURN-TYPE-OF-JUBJUB-A)
(ECURVE::PFIELD-SQUAREP-OF-JUBJUB-A)
(ECURVE::JUBJUB-D)
(ECURVE::RETURN-TYPE-OF-JUBJUB-D)
(ECURVE::MOD-EXPT-FAST-LEMMA)
(ECURVE::MOD-EXPT-LEMMA
     (5 1 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (5 1 (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
     (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (1 1 (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (1 1 (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (1 1 (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (1 1 (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (1 1
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
     (1 1
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-0-BASE)))
(ECURVE::NOT-PFIELD-SQUAREP-OF-JUBJUB-D
     (440 5 (:REWRITE MOD-X-Y-=-X . 3))
     (200 5 (:REWRITE CANCEL-MOD-+))
     (180 5 (:REWRITE MOD-ZERO . 2))
     (175 35 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (175 35
          (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
     (114 27 (:REWRITE |(expt 2^i n)|))
     (96 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (86 86 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (86 86 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (86 86 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (84 12 (:REWRITE |(* y x)|))
     (72 2 (:LINEAR MOD-BOUNDS-3))
     (65 5 (:LINEAR EXPT-X->=-X))
     (65 5 (:LINEAR EXPT-X->-X))
     (65 5 (:LINEAR EXPT->-1-ONE))
     (48 12 (:REWRITE DEFAULT-*-2))
     (35 35
         (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (35 35 (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (35 35
         (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (35 35
         (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (35 5 (:REWRITE MOD-ZERO . 3))
     (35 5 (:REWRITE MOD-X-Y-=-X . 4))
     (27 27 (:REWRITE |(expt x (- n))|))
     (27 27 (:REWRITE |(expt 1/c n)|))
     (27 27 (:REWRITE |(expt (- x) n)|))
     (25 10 (:REWRITE MOD-COMPLETION))
     (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (24 24 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (22 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (22 1
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (22 1
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (21 21 (:REWRITE DEFAULT-EXPT-2))
     (21 21 (:REWRITE DEFAULT-EXPT-1))
     (20 5 (:REWRITE SIMPLIFY-SUMS-<))
     (20 5
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (20 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (20 5 (:REWRITE MOD-NEG))
     (20 5 (:REWRITE MOD-MINUS-2))
     (20 5 (:REWRITE MOD-CANCEL-*))
     (20 5 (:REWRITE DEFAULT-<-1))
     (16 4 (:LINEAR MOD-BOUNDS-2))
     (12 12 (:REWRITE REDUCE-INTEGERP-+))
     (12 12
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (12 12 (:REWRITE INTEGERP-MINUS-X))
     (12 12 (:REWRITE DEFAULT-*-1))
     (12 12 (:REWRITE |(integerp (* c x))|))
     (12 12 (:META META-INTEGERP-CORRECT))
     (10 10
         (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
     (10 10
         (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
     (10 10
         (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
     (10 10
         (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
     (6 6 (:REWRITE |(expt x 1)|))
     (5 5 (:REWRITE SIMPLIFY-MOD-+-MOD-WEAK))
     (5 5 (:REWRITE SIMPLIFY-MOD-+-MINUS-MOD))
     (5 5
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (5 5 (:REWRITE MOD-X-Y-=-X . 2))
     (5 5 (:REWRITE DEFAULT-<-2))
     (5 5 (:REWRITE |(< (- x) (- y))|))
     (5 5 (:LINEAR EXPT->-1-TWO))
     (5 5 (:LINEAR EXPT-<-1-TWO))
     (5 5 (:LINEAR EXPT-<-1-ONE))
     (4 1 (:REWRITE MOD-+-CANCEL-0-WEAK))
     (3 3
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-0-BASE))
     (1 1 (:REWRITE |(equal (- x) (- y))|)))
(ECURVE::JUBJUB-CURVE)
(ECURVE::TWISTED-EDWARDS-P-OF-JUBJUB-CURVE)
(ECURVE::TWISTED-EDWARDS-PRIMEP-OF-JUBJUB-CURVE)
(ECURVE::TWISTED-EDWARDS-COMPLETEP-OF-JUBJUB-CURVE)
