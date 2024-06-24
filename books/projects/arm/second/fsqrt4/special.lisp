(in-package "RTL")

(include-book "prelim")

(defthm bitn-set-flag
  (implies (and (natp k)
                (natp b)
		(natp r))
           (equal (bitn (set-flag b r) k)
	          (if (= k b) 1 (bitn r k))))
  :hints (("Goal" :use ((:instance bitn-logior (x (expt 2 b)) (y r) (n k)))
                  :in-theory (enable bitn-expt bitn-expt-0 set-flag))))

(defthm natp-set-flag
  (implies (and (natp r) (natp b))
           (natp (set-flag b r)))
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :in-theory (enable set-flag))))

(defthm bvecp-expt-2
  (implies (and (natp n)
                (natp b)
		(< b n))
	   (bvecp (expt 2 b) n))
  :hints (("Goal" :in-theory (enable bvecp))))

(defthm bvecp-set-flag
  (implies (and (natp n)
                (bvecp r n)
		(natp b)
		(< b n))
	   (bvecp (set-flag b r) n))
   :hints (("Goal" :in-theory (enable set-flag))))

(in-theory (disable set-flag))

(defund fmtw () (+ 1 (expw (f)) (sigw (f))))

(defund opaw () (bits (opa) (1- (fmtw)) 0))

(defund opaz ()
  (if (and (= (bitn (rin) (fz)) 1) (denormp (opaw) (f)))
      (zencode (sgnf (opaw) (f)) (f))
     (opaw)))
     
(defund rz ()
  (if (and (= (bitn (rin) (fz)) 1)
           (not (= (f) (hp)))
           (denormp (opaw) (f)))
      (set-flag (idc) (rin))
    (rin)))

(in-theory (disable (fmtw) (opaw) (opaz) (rz)))

(defthm integerp-opa
  (integerp (opa))
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :use (input-constraints-lemma)
                  :in-theory (enable input-constraints))))

(defthm natp-rin
  (natp (rin))
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :use (input-constraints-lemma)
                  :in-theory (enable input-constraints))))

(defthmd bvecp-rin
  (bvecp (rin) 32)
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :use (input-constraints-lemma)
                  :in-theory (enable input-constraints))))

(defthm natp-rz
  (natp (rz))
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :in-theory (enable rz))))

(defthmd member-classa
  (member (classa) '(0 1 2 3 4 5))
  :hints (("Goal" :in-theory (enable classa analyze))))

(defund specialp ()
  (or (member (classa) '(0 1 2 3))
      (= (signa) 1)))

(in-theory (disable (specialp)))

(defthmd a-class
  (and (equal (zerp (opaz) (f)) (= (classa) 0))
       (equal (infp (opaz) (f)) (= (classa) 1))
       (equal (snanp (opaz) (f)) (= (classa) 2))
       (equal (qnanp (opaz) (f)) (= (classa) 3))
       (equal (normp (opaz) (f)) (= (classa) 4))
       (equal (denormp (opaz) (f)) (= (classa) 5)))
  :hints (("Goal" :in-theory (enable opaz opaw fmtw si analyze f sgnf expf manf expw sigw dp sp hp 
                                     zerp infp nanp snanp qnanp normp denormp encodingp classa opaw fmtw bits-bits
				     unsupp sigf bitn-bits fzp zencode)
                  :use (fnum-vals
		        (:instance bitn-0-1 (x (opaw)) (n (1- (fmtw))))
		        (:instance logand-bit (x (manf (opa) (f))) (n (1- (sigw (f)))))
		        (:instance bits-bounds (x (opa)) (i (1- (+ (expw (f)) (sigw (f))))) (j (sigw (f))))))))

(defthmd a-fields
  (and (equal (sgnf (opaz) (f)) (signa))
       (equal (expf (opaz) (f)) (expa))
       (implies (not (= (classa) 0)) (equal (manf (opaz) (f)) (mana))))
  :hints (("Goal" :in-theory (enable opaz opaw fmtw si analyze f sgnf expf manf expw sigw dp sp hp 
                                     zerp infp nanp snanp qnanp normp denormp encodingp classa opaw fmtw bits-bits
				     signa mana expa unsupp sigf bitn-bits bits-bits fzp zencode)
                  :use (fnum-vals
		        (:instance bitn-0-1 (x (opaw)) (n (1- (fmtw))))
		        (:instance logand-bit (x (manf (opa) (f))) (n (1- (sigw (f)))))
		        (:instance bits-bounds (x (opa)) (i (1- (+ (expw (f)) (sigw (f))))) (j (sigw (f))))))))

(defthm opaz-opaw
  (implies (not (= (classa) 0))
           (equal (opaz) (opaw)))
  :hints (("Goal" :in-theory (enable opaz opaw fmtw si analyze f sgnf expf manf expw sigw dp sp hp 
                                     zerp infp nanp snanp qnanp normp denormp encodingp classa opaw fmtw bits-bits
				     signa mana expa unsupp sigf bitn-bits bits-bits fzp zencode)
                  :use (fnum-vals
		        (:instance bitn-0-1 (x (opaw)) (n (1- (fmtw))))
		        (:instance logand-bit (x (manf (opa) (f))) (n (1- (sigw (f)))))
		        (:instance bits-bounds (x (opa)) (i (1- (+ (expw (f)) (sigw (f))))) (j (sigw (f))))))))

(defthmd a-flags
  (equal (flags-a)
         (if (and (denormp (opaw) (f)) (not (= (fzp) 0)) (not (= (f) (hp)))) 128 0))	     
  :hints (("Goal" :in-theory (enable opaw fmtw si analyze f sgnf expf manf expw sigw dp sp hp 
                                     zerp infp nanp snanp qnanp normp denormp encodingp classa opaw fmtw bits-bits
				     flags-a unsupp sigf bitn-bits)
                  :use (fnum-vals
		        (:instance logand-bit (x (manf (opa) (f))) (n (1- (sigw (f)))))
		        (:instance bits-bounds (x (opa)) (i (1- (+ (expw (f)) (sigw (f))))) (j (sigw (f))))))))

(defthm no-traps
  (and (equal (bitn (rin) 15) 0)
       (equal (bitn (rin) 12) 0)
       (equal (bitn (rin) 11) 0)
       (equal (bitn (rin) 10) 0)
       (equal (bitn (rin) 9) 0)
       (equal (bitn (rin) 8) 0))
  :hints (("Goal" :use (input-constraints-lemma
                        (:instance bitn-bits (x (rin)) (i 12) (j 8) (k 4))
                        (:instance bitn-bits (x (rin)) (i 12) (j 8) (k 3))
                        (:instance bitn-bits (x (rin)) (i 12) (j 8) (k 2))
                        (:instance bitn-bits (x (rin)) (i 12) (j 8) (k 1))
                        (:instance bitn-bits (x (rin)) (i 12) (j 8) (k 0)))
                  :in-theory (e/d (input-constraints) (bitn-bits)))))

(defthm rz-flags-a
  (implies (natp k)
           (equal (bitn (rz) k)
	          (bitn (logior (rin) (flags-a)) k)))
  :hints (("Goal" :in-theory (enable fmtw si analyze f sgnf expf manf expw sigw dp sp hp 
                                     zerp infp nanp snanp qnanp normp denormp encodingp opaw fmtw bits-bits
				     rz a-flags bitn-logior signa mana expa unsupp sigf bitn-bits bits-bits fzp zencode)
                  :use (fnum-vals
		        (:instance bitn-expt-0 (i 7) (n k))
		        (:instance bitn-0-1 (x (opaw)) (n (1- (fmtw))))
		        (:instance logand-bit (x (manf (opa) (f))) (n (1- (sigw (f)))))
		        (:instance bits-bounds (x (opa)) (i (1- (+ (expw (f)) (sigw (f))))) (j (sigw (f))))))))

(defthmd arm-sqrt-spec-rewrite
  (equal (arm-sqrt-spec (opaw) (rin) (f))
         (let ((d (arm-sqrt-pre-comp-val (opaz) (rz) (f)))
               (r (arm-sqrt-pre-comp-excp (opaz) (rz) (f))))
	   (if d (mv d r)
	       (arm-sqrt-comp (opaz) r (f)))))
  :hints (("Goal" :in-theory (enable opaz rz))))

(in-theory (disable arm-sqrt-spec))

(defthm signa-0-1
  (member (signa) '(0 1))
  :rule-classes ()
  :hints (("Goal" :use (a-fields fnum-vals
                        (:instance bitn-0-1 (x (opaz)) (n (+ (expw (f)) (sigw (f))))))
		  :in-theory (enable sgnf expw sigw f))))

(local-defthm special-1
  (implies (and (member f (list (dp) (sp) (hp)))
                (zerp x f))
	   (equal x (ash (sgnf x f) (+ (expw f) (sigw f)))))
  :rule-classes ()
  :hints (("Goal" :in-theory (enable encodingp ash expf sigf sgnf expw sigw dp sp hp zerp)
                  :use ((:instance bitn-plus-bits (n (+ (expw f) (sigw f))) (m 0))
		        (:instance bits-plus-bits (n (1- (+ (expw f) (sigw f)))) (p (sigw f)) (m 0))))))

(local-defthmd special-2
  (implies (and (qnanp a f) (= n (expt 2 (- (prec f) 2))))
           (equal (logior n a) a))
  :hints (("Goal" :use ((:instance logior-2**n (n (- (prec f) 2)) (x a)))
                  :in-theory (enable formatp encodingp prec nanp qnanp))))

(local-defthm specialp-3
  (implies (specialp)
           (equal (mv-nth 0 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f))))
	          (data-special)))
  :hints (("Goal" :use (signa-0-1 fnum-vals member-classa arm-sqrt-spec-rewrite a-class a-fields
                        (:instance special-1 (f (f)) (x (opaz)))
                        (:instance special-2 (f (f)) (n (expt 2 (- (prec (f)) 2))) (a (opaz))))
                  :in-theory (enable fmtw opaw a-flags qnanize bitn-logior cat-0 zencode bitn-logxor signa binary-zero-sgn
		                     bitn-bits snanp qnanp specialcase specialp data-special dnp f indef hp sp dp))))
				     
(in-theory (disable ACL2::|(logior 1 x)|))

(local-defthm specialp-4
  (implies (and (specialp) (member k (nats 8)))
           (equal (bitn (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f)))) k)
	          (bitn (logior (flags-special) (rin)) k)))
  :hints (("Goal" :use (signa-0-1 fnum-vals member-classa arm-sqrt-spec-rewrite a-class a-fields)
		  :in-theory (enable fmtw opaw a-flags qnanize bitn-logior cat-0 zencode bitn-logxor bitn-logior signa
		                     snanp qnanp specialcase specialp data-special flags-special dnp f indef hp sp dp))))

(local-defthm specialp-5
  (implies (and (specialp) (natp k) (>= k 8))
           (equal (bitn (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f)))) k)
	          (bitn (rin) k)))
  :hints (("Goal" :use (arm-sqrt-spec-rewrite)
		  :in-theory (enable rz cat-0 bitn-logxor bitn-logior))))

(local-defthmd specialp-6
  (implies (specialp)
           (bvecp (flags-special) 8))
  :hints (("Goal" :in-theory (enable rz a-flags specialcase flags-special bitn-logior))))

(local-defthm specialp-7
  (implies (and (specialp) (natp k) (>= k 8))
           (equal (bitn (flags-special) k) 0))
  :hints (("Goal" :use (specialp-6) :in-theory (enable bvecp-monotone))))

(local-defthmd specialp-8
  (implies (and (specialp) (natp k))
           (equal (bitn (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f)))) k)
	          (bitn (logior (flags-special) (rin)) k)))
  :hints (("Goal" :use (specialp-4 specialp-5 specialp-7)
		  :in-theory (e/d (bitn-logior) (specialp-4 specialp-5 specialp-7)))))

(local-defthmd specialp-9
  (implies (specialp)
           (integerp (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f))))))
  :hints (("Goal" :use (arm-sqrt-spec-rewrite))))

(local-defthm specialp-10
  (implies (specialp)
           (equal (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f))))
	          (logior (flags-special) (rin))))
  :hints (("Goal" :use (specialp-9
                        arm-sqrt-spec-rewrite
			(:instance specialp-8
                                   (k (bit-diff (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f))))
				                (logior (flags-special) (rin)))))
                        (:instance bit-diff-diff
			           (x (mv-nth 1 (mv-list 2 (arm-sqrt-spec (opaw) (rin) (f)))))
				   (y (logior (flags-special) (rin))))))))

(defthm specialp-main
  (let ((fmtw (+ 1 (expw (f)) (sigw (f)))))
    (mv-let (data-spec r-spec) (arm-sqrt-spec (bits (opa) (1- fmtw) 0) (rin) (f))
      (implies (specialp)
               (and (equal (data) data-spec)
                    (equal (logior (rin) (flags)) r-spec)))))
  :hints (("Goal" :use (specialp-3 specialp-10)
                  :in-theory (enable specialp flags data opaw fmtw))))
