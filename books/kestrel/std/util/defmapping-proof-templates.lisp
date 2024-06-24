; Standard Utilities Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "defmapping-templates")

(include-book "std/testing/must-succeed-star" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; This file contains generic proofs for
; the non-applicability-condition theorems generated by DEFMAPPING.
; The proofs are generic because they are based on the templates
; defined in defmapping-templates.lisp.
; The DEFMAPPING implementation generates proofs
; according to the templates in this file.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Proof template for n = m = 1.

(must-succeed*

 (definputs-guarded-1-1)

 (defthm-alpha-injective
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (alpha a))
                           (beta (alpha aa))))
            :use (beta-of-alpha
                  (:instance beta-of-alpha (a aa))))))

 (defthm-beta-injective
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (beta b))
                           (alpha (beta bb))))
            :use (alpha-of-beta
                  (:instance alpha-of-beta (b bb))))))

 (defthm-alpha-injective
   :name alpha-injective-uncond
   :unconditional t
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (alpha a))
                           (beta (alpha aa))))
            :use (beta-of-alpha-uncond
                  (:instance beta-of-alpha-uncond (a aa))))))

 (defthm-beta-injective
   :name beta-injective-uncond
   :unconditional t
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (beta b))
                           (alpha (beta bb))))
            :use (alpha-of-beta-uncond
                  (:instance alpha-of-beta-uncond (b bb))))))

 :with-output-off nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Proof template for n = 2 and m = 1.

(must-succeed*

 (definputs-guarded-2-1)

 (defthm-alpha-injective
   :a1...an (a1 a2)
   :aa1...aan (aa1 aa2)
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (alpha a1 a2))
                           (beta (alpha aa1 aa2))))
            :use (beta-of-alpha
                  (:instance beta-of-alpha (a1 aa1) (a2 aa2))))))

 (defthm-beta-injective
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (mv-nth 0 (beta b))
                                  (mv-nth 1 (beta b)))
                           (alpha (mv-nth 0 (beta bb))
                                  (mv-nth 1 (beta bb)))))
            :use (alpha-of-beta
                  (:instance alpha-of-beta (b bb))))))

 :with-output-off nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Proof template for n = 1 and m = 2.

(must-succeed*

 (definputs-guarded-1-2)

 (defthm-alpha-injective
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (mv-nth 0 (alpha a))
                                 (mv-nth 1 (alpha a)))
                           (beta (mv-nth 0 (alpha aa))
                                 (mv-nth 1 (alpha aa)))))
            :use (beta-of-alpha
                  (:instance beta-of-alpha (a aa))))))

 (defthm-beta-injective
   :b1...bm (b1 b2)
   :bb1...bbm (bb1 bb2)
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (beta b1 b2))
                           (alpha (beta bb1 bb2))))
            :use (alpha-of-beta
                  (:instance alpha-of-beta (b1 bb1) (b2 bb2))))))

 :with-output-off nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Proof template for n = m = 2.

(must-succeed*

 (definputs-guarded-2-2)

 (defthm-alpha-injective
   :a1...an (a1 a2)
   :aa1...aan (aa1 aa2)
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (mv-nth 0 (alpha a1 a2))
                                 (mv-nth 1 (alpha a1 a2)))
                           (beta (mv-nth 0 (alpha aa1 aa2))
                                 (mv-nth 1 (alpha aa1 aa2)))))
            :use (beta-of-alpha
                  (:instance beta-of-alpha (a1 aa1) (a2 aa2))))))

 (defthm-beta-injective
   :b1...bm (b1 b2)
   :bb1...bbm (bb1 bb2)
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (mv-nth 0 (beta b1 b2))
                                  (mv-nth 1 (beta b1 b2)))
                           (alpha (mv-nth 0 (beta bb1 bb2))
                                  (mv-nth 1 (beta bb1 bb2)))))
            :use (alpha-of-beta
                  (:instance alpha-of-beta (b1 bb1) (b2 bb2))))))

 (defthm-alpha-injective
   :name alpha-injective-uncond
   :a1...an (a1 a2)
   :aa1...aan (aa1 aa2)
   :unconditional t
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (beta (mv-nth 0 (alpha a1 a2))
                                 (mv-nth 1 (alpha a1 a2)))
                           (beta (mv-nth 0 (alpha aa1 aa2))
                                 (mv-nth 1 (alpha aa1 aa2)))))
            :use (beta-of-alpha-uncond
                  (:instance beta-of-alpha-uncond (a1 aa1) (a2 aa2))))))

 (defthm-beta-injective
   :name beta-injective-uncond
   :b1...bm (b1 b2)
   :bb1...bbm (bb1 bb2)
   :unconditional t
   :hints (("Goal"
            :in-theory nil
            :cases ((equal (alpha (mv-nth 0 (beta b1 b2))
                                  (mv-nth 1 (beta b1 b2)))
                           (alpha (mv-nth 0 (beta bb1 bb2))
                                  (mv-nth 1 (beta bb1 bb2)))))
            :use (alpha-of-beta-uncond
                  (:instance alpha-of-beta-uncond (b1 bb1) (b2 bb2))))))

 :with-output-off nil)
