(in-package "ACL2")

(include-book "lop3")

(defun SIGM (a b c n)
  (if (= c 0)
      (comp1 (logxor a b) n)
    (logxor a b)))

(defun KAP (a b c)
  (if (= c 0)
      (* 2 (logior a b))
    (* 2 (logand a b))))

(defun TAU (a b c n)
  (comp1 (logxor (sigm a b c n) (kap a b c)) (1+ n)))

(local (in-theory (disable logxor logand logior)))

(defthm SIGM-BNDS
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n)))
	     (and (integerp (sigm a b c n))
		  (>= (sigm a b c n) 0)
		  (< (sigm a b c n) (expt 2 n))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance logxor<2**n (x a) (y b))
			(:instance logxor-nat (i a) (j b))))))

(defthm KAP-BNDS
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n)))
	     (and (integerp (kap a b c))
		  (>= (kap a b c) 0)
		  (< (kap a b c) (expt 2 (1+ n)))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance or-dist-a (x a) (y b))
			(:instance and-dist-a (x a) (y b))
			(:instance logior-nat (i a) (j b))
			(:instance logand-nat (i a) (j b))))))

(defthm TAU-BNDS
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n)))
	     (and (integerp (tau a b c n))
		  (>= (tau a b c n) 0)
		  (< (tau a b c n) (expt 2 (1+ n)))))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable sigm kap)
		  :use (sigm-bnds
			kap-bnds
			(:instance logxor<2**n (x (sigm a b c n)) (y (kap a b c)) (n (1+ n)))
			(:instance logxor-nat (i (sigm a b c n)) (j (kap a b c)))))))

(local (defthm top-1
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (>= k 0)
		  (<= k n)
		  (or (= c 0) (= c 1)))
	     (not (= (bitn (tau a b c n) k)
		     (bitn (logxor (sigm a b c n) (kap a b c)) k))))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable comp1 sigm kap)
		  :use (sigm-bnds
			kap-bnds
			(:instance bitn-comp1 (x (logxor (sigm a b c n) (kap a b c))) (n (1+ n)))
			(:instance logxor<2**n (x (sigm a b c n)) (y (kap a b c)) (n (1+ n)))
			(:instance logxor-nat (i (sigm a b c n)) (j (kap a b c))))))))

(local (defthm top-2
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (>= k 0)
		  (<= k n)
		  (or (= c 0) (= c 1)))
	     (iff (= (bitn (logxor (sigm a b c n) (kap a b c)) k)
		     (bitn (sigm a b c n) k))
		  (= (bitn (kap a b c) k)
		     0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable comp1 sigm kap)
		  :use (sigm-bnds
			kap-bnds
			(:instance bitn-0-1 (x (sigm a b c n)) (n k))
			(:instance bitn-0-1 (x (kap a b c)) (n k))
			(:instance bitn-logxor (x (sigm a b c n)) (y (kap a b c)) (n k)))))))

(local (defthm top-3
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (>= k 0)
		  (<= k n)
		  (or (= c 0) (= c 1)))
	     (iff (= (bitn (tau a b c n) k)
		     (bitn (sigm a b c n) k))
		  (= (bitn (kap a b c) k)
		     1)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable comp1 tau sigm kap)
		  :use (top-1
			top-2
			(:instance bitn-0-1 (x (sigm a b c n)) (n k))
			(:instance bitn-0-1 (x (logxor (sigm a b c n) (kap a b c))) (n k))
			(:instance bitn-0-1 (x (kap a b c)) (n k))
			(:instance bitn-0-1 (x (tau a b c n)) (n k)))))))


(local (defun nat-induct (k)
  (if (and (integerp k) (>= k 0))
      (if (= k 0)
	  0
	(nat-induct (1- k)))
    0)))

(local (defthm top-4
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0))
	     (= (bitn (kap a b c) 0)
		0))
  :rule-classes ()
  :hints (("Goal" :use ((:instance bit+*k (x 0) (k (logior a b)) (m 1) (n 0))
			(:instance logior-nat (i a) (j b))
			(:instance bit+*k (x 0) (k (logand a b)) (m 1) (n 0))
			(:instance logand-nat (i a) (j b)))))))

(local (defthm top-5
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (or (= c 0) (= c 1)))
	     (not (= (bitn (tau a b c n) 0)
		     (bitn (sigm a b c n) 0))))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable comp1 tau sigm kap)
		  :use (top-4
			(:instance top-3 (k 0)))))))

(local (defthm bitn-rewrite
    (implies (and (integerp x)
		  (integerp k)
		  (>= x 0)
		  (>= k 0))
	     (equal (bitn x k)
		    (rem (fl (/ x (expt 2 k)))
			 2)))
  :hints (("Goal" :use (bitn-def)))))

(local (defthm top-6
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0))
	     (= (bitn (+ a b) 0)
		(bitn (logxor a b) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable logxor)
		  :use ((:instance rem012 (x a))
			(:instance rem012 (x b))
			(:instance bitn-logxor (x a) (y b) (n 0))
			(:instance rem+rem (n 2))
			(:instance rem+rem (n 2) (a (rem b 2)) (b a)))))))

(local (defthm top-7
    (IMPLIES (AND (INTEGERP N)
		  (< 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N)))
	     (IFF (= (bitn (+ A B) 0) 0)
		  (= (bitn (TAU A B 0 N) 0) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable bitn-rewrite comp1 logxor)
		  :use (top-6
			(:instance top-5 (c 0))
			(:instance logxor-nat (i a) (j b))
			(:instance logxor<2**n (x a) (y b))
			(:instance bitn-comp1 (k 0) (x (logxor a b)))
			(:instance bitn-0-1 (x (tau a b 0 n)) (n 0))
			(:instance bitn-0-1 (x (sigm a b 0 n)) (n 0))
			(:instance bitn-0-1 (x (logxor a b)) (n 0)))))))

(local (defthm top-8
    (IMPLIES (AND (INTEGERP N)
		  (< 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N)))
	     (IFF (= (rem (+ A B) 2) 0)
		  (= (rem (TAU A B 0 N) 2) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-7
			(:instance tau-bnds (c 0)))))))

(local (defthm top-9
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0))
	     (not (= (bitn (+ a b 1) 0)
		     (bitn (logxor a b) 0))))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable logxor)
		  :use (top-6
			(:instance rem+1-2 (x (+ a b))))))))

(local (defthm top-10
    (IMPLIES (AND (INTEGERP N)
		  (< 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N)))
	     (IFF (= (bitn (+ A B 1) 0) 0)
		  (= (bitn (TAU A B 1 N) 0) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable bitn-rewrite comp1 logxor)
		  :use (top-9
			(:instance top-5 (c 1))
			(:instance logxor-nat (i a) (j b))
			(:instance logxor<2**n (x a) (y b))
			(:instance bitn-0-1 (x (tau a b 1 n)) (n 0))
			(:instance bitn-0-1 (x (sigm a b 1 n)) (n 0))
			(:instance bitn-0-1 (x (+ a b 1)) (n 0)))))))

(local (defthm top-11
    (IMPLIES (AND (INTEGERP N)
		  (< 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N)))
	     (IFF (= (rem (+ A B 1) 2) 0)
		  (= (rem (TAU A B 1 N) 2) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-10
			(:instance tau-bnds (c 1)))))))

(local (in-theory (disable bitn-rewrite)))

(local (defthm top-12
    (IMPLIES (AND (INTEGERP N)
		  (< 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (OR (= C 0) (= C 1)))
	     (IFF (= (REM (+ A B C) 2) 0)
		  (= (REM (TAU A B C N) 2) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-11 top-8)))))

(defthm REM-N-N+1
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp n)
		  (> n 0))
	     (iff (= (rem a (expt 2 (1+ n))) 0)
		  (and (= (rem a (expt 2 n)) 0)
		       (= (bitn a n) 0))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance rem-n+1)
			(:instance rem>=0 (m a) (n (expt 2 n)))
			(:instance bitn-0-1 (x a))))))

(local (defthm top-13
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (IMPLIES (AND (INTEGERP N)
				(<= 0 N)
				(INTEGERP A)
				(<= 0 A)
				(< A (EXPT 2 N))
				(INTEGERP B)
				(<= 0 B)
				(< B (EXPT 2 N))
				(INTEGERP (+ -1 K))
				(<= 0 (+ -1 K))
				(< (+ -1 K) N)
				(OR (= C 0) (= C 1)))
			   (IFF (= (REM (+ A B C) (EXPT 2 k))  0)
				(= (REM (TAU A B C N) (EXPT 2 k)) 0)))
		  (not (and (= (REM (+ A B C) (EXPT 2 k))  0)
			    (= (REM (TAU A B C N) (EXPT 2 k)) 0)))
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (IFF (= (REM (+ A B C) (EXPT 2 (+ 1 K))) 0)
		  (= (REM (TAU A B C N) (EXPT 2 (+ 1 K)))
		     0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (tau-bnds
			(:instance rem-n-n+1 (a (tau a b c n)) (n k))
			(:instance rem-n-n+1 (a (+ a b c)) (n k)))))))

(local (defthm top-14
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (= (bitn (+ a b c) k) (bitn (tau a b c n) k))
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (IFF (= (REM (+ A B C) (EXPT 2 (+ 1 K))) 0)
		  (= (REM (TAU A B C N) (EXPT 2 (+ 1 K)))
		     0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (tau-bnds
			(:instance rem-n-n+1 (a (tau a b c n)) (n k))
			(:instance rem-n-n+1 (a (+ a b c)) (n k)))))))

(local (defthm top-15
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp k)
		  (>= k 0))
	     (equal (fl (/ a (expt 2 k)))
		    (+ (* 2 (fl (/ a (expt 2 (1+ k)))))
		       (bitn a k))))
  :rule-classes ()
  :hints (("Goal" :in-theory (enable bitn-rewrite)
		  :use ((:instance rem-fl (m (fl (/ a (expt 2 k)))) (n 2))
			(:instance fl/int (x (/ a (expt 2 k))) (n 2)))))))

(local (defthm top-16
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp k)
		  (>= k 0))
	     (equal (/ a (expt 2 k))
		    (+ (fl (/ a (expt 2 k)))
		       (/ (rem a (expt 2 k)) (expt 2 k)))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance rem-fl (m a) (n (expt 2 k))))))))

(local (defthm hack1
    (implies (and (rationalp x)
		  (rationalp y)
		  (rationalp z)
		  (rationalp u)
		  (rationalp v)
		  (rationalp w)
		  (= x (+ y z))
		  (= u (+ x v)))
	     (= u (+ y z v)))
  :rule-classes ()))

(local (defthm top-17
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp k)
		  (>= k 0))
	     (= (/ a (expt 2 k))
		(+ (* 2 (fl (/ a (expt 2 (1+ k)))))
		   (bitn a k)
		   (/ (rem a (expt 2 k)) (expt 2 k)))))
  :rule-classes ()
  :hints (("Goal" :use (top-15
			top-16
			(:instance hack1
				   (x (fl (/ a (expt 2 k))))
				   (y (* 2 (fl (/ a (expt 2 (1+ k))))))
				   (z (bitn a k))
				   (u (/ a (expt 2 k)))
				   (v (/ (rem a (expt 2 k)) (expt 2 k)))
				   (w 0)))))))

(local (defthm hack2
    (implies (and (rationalp a)
		  (rationalp a1)
		  (rationalp a2)
		  (rationalp b)
		  (rationalp b1)
		  (rationalp b2)
		  (rationalp k)
		  (rationalp c)
		  (> k 0)
		  (= (/ a k) (+ a1 (/ a2 k)))
		  (= (/ b k) (+ b1 (/ b2 k))))
	     (= (/ (+ a b c) k) (+ a1 b1 (/ (+ a2 b2 c) k))))
  :rule-classes ()))

(local (defthm top-18
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (/ (+ a b c) (expt 2 k))
		(+ (bitn a k)
		   (bitn b k)
		   (* 2 (fl (/ a (expt 2 (1+ k)))))
		   (* 2 (fl (/ b (expt 2 (1+ k)))))
		   (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
		      (expt 2 k)))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance top-17)
			(:instance top-17 (a b))
			(:instance hack2
				   (a1 (+ (* 2 (fl (/ a (expt 2 (1+ k))))) (bitn a k)))
				   (a2 (rem a (expt 2 k)))
				   (b1 (+ (* 2 (fl (/ b (expt 2 (1+ k))))) (bitn b k)))
				   (b2 (rem b (expt 2 k)))
				   (k (expt 2 k))))))))

(local (defthm top-19
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (fl (/ (+ a b c) (expt 2 k)))
		(+ (bitn a k)
		   (bitn b k)
		   (* 2 (fl (/ a (expt 2 (1+ k)))))
		   (* 2 (fl (/ b (expt 2 (1+ k)))))
		   (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			  (expt 2 k))))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance top-18)
			(:instance fl+int
				   (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
					 (expt 2 k)))
				   (n (+ (bitn a k)
					 (bitn b k)
					 (* 2 (fl (/ a (expt 2 (1+ k)))))
					 (* 2 (fl (/ b (expt 2 (1+ k)))))))))))))

(local (defthm top-20
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (rem (+ (bitn a k)
			(bitn b k)
			(* 2 (fl (/ a (expt 2 (1+ k)))))
			(* 2 (fl (/ b (expt 2 (1+ k)))))
			(fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			       (expt 2 k))))
		     2)
		(rem (+ (bitn a k)
			(bitn b k)
			(fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			       (expt 2 k))))
		     2)))
  :rule-classes ()
  :hints (("Goal" :hands-off (fl expt)
		  :use ((:instance rem+
				   (m (+ (bitn a k)
					 (bitn b k)
					 (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
						(expt 2 k)))))
				   (a (+ (fl (/ a (expt 2 (1+ k))))
					 (fl (/ b (expt 2 (1+ k))))))
				   (n 2))
			(:instance n<=fl (n 0) (x (fl (/ a (expt 2 (1+ k))))))
			(:instance n<=fl (n 0) (x (fl (/ b (expt 2 (1+ k))))))
			(:instance n<=fl (n 0) (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
						     (expt 2 k))))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem>=0 (m b) (n (expt 2 k))))))))

(local (defthm top-21
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (rem (fl (/ (+ a b c) (expt 2 k))) 2)
		(rem (+ (bitn a k)
			(bitn b k)
			(fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			       (expt 2 k))))
		     2)))
  :rule-classes ()
  :hints (("Goal" :hands-off (rem bitn fl expt)
		  :use (top-19 top-20)))))

(local (defthm top-22
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (bitn (+ a b c) k)
		(rem (+ (bitn a k)
			(bitn b k)
			(fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			       (expt 2 k))))
		     2)))
  :rule-classes ()
  :hints (("Goal" :in-theory (enable bitn-rewrite)
		  :use (top-21)))))

(local (defthm top-23
    (implies (and (integerp a)
		  (integerp b)
		  (integerp k)
		  (>= a 0)
		  (>= b 0)
		  (>= k 0))
	     (= (bitn (logxor a b) k)
		(rem (+ (bitn a k) (bitn b k)) 2)))
  :rule-classes ()
  :hints (("Goal" :use ((:instance bitn-logxor (x a) (y b) (n k))
			(:instance bitn-0-1 (x a) (n k))
			(:instance bitn-0-1 (x b) (n k)))))))

(defthm REM-X-Y-X-2
    (implies (and (integerp x)
		  (>= x 0)
		  (integerp y)
		  (>= y 0))
	     (iff (= (rem (+ x y) 2) (rem x 2))
		  (= (rem y 2) 0)))
  :rule-classes ()
  :hints (("Goal" :use ((:instance rem012 (x y))
			(:instance rem+rem (a x) (b y) (n 2))
			(:instance rem+1-2)))))

(local (defthm top-24
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (iff (= (bitn (+ a b c) k)
		     (rem (+ (bitn a k) (bitn b k)) 2))
		  (= (rem (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
				 (expt 2 k)))
			  2)
		     0)))
  :rule-classes ()
  :hints (("Goal" :use (top-22
			(:instance rem-x-y-x-2
				   (x (+ (bitn a k) (bitn b k)))
				   (y (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
					     (expt 2 k)))))
			(:instance n<=fl
				   (n 0)
				   (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
					 (expt 2 k))))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem>=0 (m b) (n (expt 2 k))))))))

(local (defthm top-25
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (iff (= (bitn (+ a b c) k)
		     (bitn (logxor a b) k))
		  (= (rem (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
				 (expt 2 k)))
			  2)
		     0)))
  :rule-classes ()
  :hints (("Goal" :use (top-24 top-23)))))

(local (defthm top-26
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0)
		  (integerp k)
		  (>= k 0)
		  (or (= c 0) (= c 1)))
	     (< (+ (rem a (expt 2 k))
		   (rem b (expt 2 k))
		   c)
		(expt 2 (1+ k))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance rem<n (m a) (n (expt 2 k)))
			(:instance rem<n (m b) (n (expt 2 k)))
			(:instance expo+ (m k) (n 1)))))))

(local (defthm top-27
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0)
		  (integerp k)
		  (>= k 0)
		  (or (= c 0) (= c 1)))
	     (< (/ (+ (rem a (expt 2 k))
		      (rem b (expt 2 k))
		      c)
		   (expt 2 k))
		2))
  :rule-classes ()
  :hints (("Goal" :use (top-26)))))

(local (defthm top-28
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0)
		  (integerp k)
		  (>= k 0)
		  (or (= c 0) (= c 1)))
	     (< (fl (/ (+ (rem a (expt 2 k))
			  (rem b (expt 2 k))
			  c)
		       (expt 2 k)))
		2))
  :rule-classes ()
  :hints (("Goal" :use (top-27
			(:instance fl-def (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c) (expt 2 k)))))))))

(local (defthm top-29
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0)
		  (integerp k)
		  (>= k 0)
		  (or (= c 0) (= c 1)))
	     (>= (fl (/ (+ (rem a (expt 2 k))
			   (rem b (expt 2 k))
			   c)
			(expt 2 k)))
		 0))
  :rule-classes ()
  :hints (("Goal" :use ((:instance n<=fl
				   (n 0)
				   (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c) (expt 2 k))))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem>=0 (m b) (n (expt 2 k))))))))

(local (defthm top-30
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp b)
		  (>= b 0)
		  (integerp k)
		  (>= k 0)
		  (or (= c 0) (= c 1)))
	     (= (rem (fl (/ (+ (rem a (expt 2 k))
			       (rem b (expt 2 k))
			       c)
			    (expt 2 k)))
		     2)
		(fl (/ (+ (rem a (expt 2 k))
			  (rem b (expt 2 k))
			  c)
		       (expt 2 k)))))
  :rule-classes ()
  :hints (("Goal" :use (top-28
			top-29
			(:instance rem<
				   (m (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c) (expt 2 k))))
				   (n 2)))))))

(local (defthm top-31
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (iff (= (bitn (+ a b c) k)
		     (bitn (logxor a b) k))
		  (= (fl (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			    (expt 2 k)))
		     0)))
  :rule-classes ()
  :hints (("Goal" :use (top-25 top-30)))))

(local (defthm top-32
    (implies (and (rationalp x)
		  (>= (fl x) 0))
	     (iff (= (fl x) 0) (< x 1)))
  :rule-classes ()
  :hints (("Goal" :use ((:instance fl-unique (n 0))
			(:instance fl-def))))))

(local (defthm top-33
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (iff (= (bitn (+ a b c) k)
		     (bitn (logxor a b) k))
		  (< (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
			(expt 2 k))
		     1)))
  :rule-classes ()
  :hints (("Goal" :use (top-31
			top-29
			(:instance top-32 (x (/ (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c) (expt 2 k)))))))))

(local (defthm top-34
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (iff (= (bitn (+ a b c) k)
		     (bitn (logxor a b) k))
		  (< (+ (rem a (expt 2 k)) (rem b (expt 2 k)) c)
		     (expt 2 k))))
  :rule-classes ()
  :hints (("Goal" :use (top-33)))))

(defthm BITN-N+K
    (implies (and (integerp x)
		  (>= x 0)
		  (integerp n)
		  (>= n 0)
		  (integerp k)
		  (>= k 0))
	     (= (bitn (* x (expt 2 k)) (+ n k))
		(bitn x n)))
  :rule-classes ()
  :hints (("Goal" :in-theory (enable bitn-rewrite)
		  :use ((:instance expo+ (m k))))))

(local (defthm top-35
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n))
	     (iff (= (bitn (kap a b 0) k) 0)
		  (and (= (bitn a (1- k)) 0)
		       (= (bitn b (1- k)) 0))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance bitn-n+k (k 1) (n (1- k)) (x (logior a b)))
			(:instance bitn-0-1 (x a) (n (1- k)))
			(:instance bitn-0-1 (x b) (n (1- k)))
			(:instance logior-nat (i a) (j b))
			(:instance bit-dist-b (x a) (y b) (n (1- k))))))))

(local (defthm top-36
    (implies (and (integerp a)
		  (>= a 0)
		  (integerp k)
		  (> k 0))
	     (iff (= (bitn a (1- k)) 0)
		  (< (rem a (expt 2 k)) (expt 2 (1- k)))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance bitn-rem (x a) (j (1- k)))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem<n (m a) (n (expt 2 k)))
			(:instance bit-expo-a (x (rem a (expt 2 k))) (n (1- k)))
			(:instance bit-expo-b (x (rem a (expt 2 k))) (n (1- k))))))))

(local (defthm top-37
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n)
		  (= (bitn (kap a b 0) k) 0))
	     (< (+ (rem a (expt 2 k))
		   (rem b (expt 2 k)))
		(expt 2 k)))
  :rule-classes ()
  :hints (("Goal" :use (top-35
			top-36
			(:instance top-36 (a b)))))))

(local (defthm top-38
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n)
		  (not (= (bitn (kap a b 0) k) 0)))
	     (>= (+ (rem a (expt 2 k))
		    (rem b (expt 2 k)))
		 (expt 2 (1- k))))
  :rule-classes ()
  :hints (("Goal" :use (top-35
			top-36
			(:instance top-36 (a b))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem>=0 (m b) (n (expt 2 k))))))))

(local (defthm top-39
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (= (rem (+ a b) (expt 2 k)) 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n)
		  (not (= (bitn (kap a b 0) k) 0)))
	     (>= (+ (rem a (expt 2 k))
		    (rem b (expt 2 k)))
		 (expt 2 k)))
  :rule-classes ()
  :hints (("Goal" :use (top-38
			(:instance rem+rem (n (expt 2 k)))
			(:instance rem>=0 (m a) (n (expt 2 k)))
			(:instance rem>=0 (m b) (n (expt 2 k)))
			(:instance rem+rem (a (rem b (expt 2 k))) (b a) (n (expt 2 k)))
			(:instance rem< (m (+ (rem a (expt 2 k)) (rem b (expt 2 k)))) (n (expt 2 k))))))))

(local (defthm top-40
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (= (rem (+ a b) (expt 2 k)) 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n))
	     (iff (= (bitn (kap a b 0) k) 0)
		  (< (+ (rem a (expt 2 k))
			(rem b (expt 2 k)))
		     (expt 2 k))))
  :rule-classes ()
  :hints (("Goal" :use (top-39 top-37)))))

(local (defthm top-41
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B) (EXPT 2 k))  0)
		  (= (REM (TAU A B 0 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (iff (= (bitn (+ a b) k)
		     (bitn (logxor a b) k))
		  (= (bitn (kap a b 0) k)
		     0)))
  :rule-classes ()
  :hints (("Goal" :use ((:instance top-34 (c 0)) top-40)))))

(local (defthm top-42
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B) (EXPT 2 k))  0)
		  (= (REM (TAU A B 0 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (= (bitn (+ a b) k) (bitn (tau a b 0 n) k)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable comp1 tau)
		  :use (top-41
			(:instance top-3 (c 0))
			(:instance bitn-0-1 (x (kap a b 0)) (n k))
			(:instance bitn-0-1 (x (logxor a b)) (n k))
			(:instance bitn-0-1 (x (sigm a b 0 n)) (n k))
			(:instance bitn-0-1 (x (tau a b 0 n)) (n k))
			(:instance bitn-0-1 (x (+ a b)) (n k))
			(:instance bitn-comp1 (x (logxor a b)))
			(:instance logxor<2**n (x a) (y b))
			(:instance logxor-nat (i a) (j b)))))))

(defthm REM-M=N
    (implies (and (integerp m)
		  (> m 0)
		  (integerp n)
		  (> n 0)
		  (< m (* 2 n))
		  (= (rem m n) 0))
	     (= m n))
  :rule-classes ()
  :hints (("Goal" :use ((:instance rem<)
			(:instance rem< (m (- m n)))
			(:instance rem+ (m (- m n)) (a 1))))))


(local (defthm top-43
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B 1) (EXPT 2 k))  0)
		  (= (REM (TAU A B 1 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (= (+ (rem a (expt 2 k))
		   (rem b (expt 2 k))
		   1)
		(expt 2 k)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use ((:instance top-26 (c 1))
			(:instance rem-m=n
				   (m (+ (rem a (expt 2 k)) (rem b (expt 2 k)) 1))
				   (n (expt 2 k)))
			(:instance rem>=0 (n (expt 2 k)) (m a))
			(:instance rem>=0 (n (expt 2 k)) (m b))
			(:instance rem+rem (n (expt 2 k)) (a (+ (rem a (expt 2 k)) 1)))
			(:instance rem+rem (n (expt 2 k)) (a (+ b 1)) (b a)))))))

(local (defthm top-44
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B 1) (EXPT 2 k))  0)
		  (= (REM (TAU A B 1 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (not (= (bitn (+ a b 1) k)
		     (bitn (logxor a b) k))))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-43
			(:instance top-34 (c 1)))))))

(local (defthm top-45
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n))
	     (iff (= (bitn (kap a b 1) k) 1)
		  (and (= (bitn a (1- k)) 1)
		       (= (bitn b (1- k)) 1))))
  :rule-classes ()
  :hints (("Goal" :use ((:instance bitn-n+k (k 1) (n (1- k)) (x (logand a b)))
			(:instance bitn-0-1 (x a) (n (1- k)))
			(:instance bitn-0-1 (x b) (n (1- k)))
			(:instance logand-nat (i a) (j b))
			(:instance bit-dist-a (x a) (y b) (n (1- k))))))))

(local (defthm top-46
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (> k 0)
		  (<= k n)
		  (= (bitn (kap a b 1) k) 1))
	     (>= (+ (rem a (expt 2 k))
		    (rem b (expt 2 k)))
		 (expt 2 k)))
  :rule-classes ()
  :hints (("Goal" :use (top-45
			top-36
			(:instance top-36 (a b)))))))

(local (defthm top-47
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B 1) (EXPT 2 k))  0)
		  (= (REM (TAU A B 1 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (= (bitn (kap a b 1) k) 0))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-46
			top-43
			(:instance bitn-0-1 (x (kap a b 1)) (n k)))))))

(local (defthm top-48
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B 1) (EXPT 2 k))  0)
		  (= (REM (TAU A B 1 N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N))
	     (= (bitn (+ a b 1) k) (bitn (tau a b 1 n) k)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-47
			top-44
			(:instance top-3 (c 1))
			(:instance bitn-0-1 (x (logxor a b)) (n k))
			(:instance bitn-0-1 (x (sigm a b 1 n)) (n k))
			(:instance bitn-0-1 (x (tau a b 1 n)) (n k))
			(:instance bitn-0-1 (x (+ a b 1)) (n k)))))))

(local (defthm top-49
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (= (REM (+ A B C) (EXPT 2 k))  0)
		  (= (REM (TAU A B C N) (EXPT 2 k)) 0)
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (= (bitn (+ a b c) k) (bitn (tau a b c n) k)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-48 top-42)))))

(local (defthm top-50
    (IMPLIES (AND (INTEGERP K)
		  (< 0 K)
		  (IMPLIES (AND (INTEGERP N)
				(<= 0 N)
				(INTEGERP A)
				(<= 0 A)
				(< A (EXPT 2 N))
				(INTEGERP B)
				(<= 0 B)
				(< B (EXPT 2 N))
				(INTEGERP (+ -1 K))
				(<= 0 (+ -1 K))
				(< (+ -1 K) N)
				(OR (= C 0) (= C 1)))
			   (IFF (= (REM (+ A B C) (EXPT 2 k))  0)
				(= (REM (TAU A B C N) (EXPT 2 k)) 0)))
		  (INTEGERP N)
		  (<= 0 N)
		  (INTEGERP A)
		  (<= 0 A)
		  (< A (EXPT 2 N))
		  (INTEGERP B)
		  (<= 0 B)
		  (< B (EXPT 2 N))
		  (INTEGERP K)
		  (<= 0 K)
		  (< K N)
		  (OR (= C 0) (= C 1)))
	     (IFF (= (REM (+ A B C) (EXPT 2 (+ 1 K))) 0)
		  (= (REM (TAU A B C N) (EXPT 2 (+ 1 K)))
		     0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :use (top-13 top-14 top-49)))))

(defthm STICK-LEMMA
    (implies (and (integerp n)
		  (>= n 0)
		  (integerp a)
		  (>= a 0)
		  (< a (expt 2 n))
		  (integerp b)
		  (>= b 0)
		  (< b (expt 2 n))
		  (integerp k)
		  (>= k 0)
		  (< k n)
		  (or (= c 0) (= c 1)))
	     (iff (= (rem (+ a b c) (expt 2 (1+ k))) 0)
		  (= (rem (tau a b c n) (expt 2 (1+ k))) 0)))
  :rule-classes ()
  :hints (("Goal" :in-theory (disable tau)
		  :induct (nat-induct k))
	  ("Subgoal *1/2" :in-theory (disable tau)
			  :use (top-50))
	  ("Subgoal *1/1" :use (top-12))))

