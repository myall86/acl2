; X86ISA Library

; Note: The license below is based on the template at:
; http://opensource.org/licenses/BSD-3-Clause

; Copyright (C) 2018, Shilpi Goel
; All rights reserved.

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:

; o Redistributions of source code must retain the above copyright
;   notice, this list of conditions and the following disclaimer.

; o Redistributions in binary form must reproduce the above copyright
;   notice, this list of conditions and the following disclaimer in the
;   documentation and/or other materials provided with the distribution.

; o Neither the name of the copyright holders nor the names of its
;   contributors may be used to endorse or promote products derived
;   from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Original Author(s):
; Shilpi Goel         <shigoel@gmail.com>
; Contributing Author:
; Alessandro Coglio   <coglio@kestrel.edu>

(in-package "X86ISA")
(include-book "cpuid-constants")
(include-book "std/util/define" :dir :system)
(include-book "centaur/bitops/ihsext-basics" :dir :system)

;; Macros and functions used by utilities in dispatch.lisp to create opcode
;; dispatch functions

;; ----------------------------------------------------------------------

;; CPUID-related definitions:

(define subset-equal (x y)
  :guard (true-listp y)
  (or (atom x)
      (and (member-equal (first x) y)
           (subset-equal (rest x) y))))

(defsection cpuid
  :parents (machine opcode-maps)
  :short "Determining which CPUID features are supported in @('x86isa')"
  :long "<p>We introduce a constrained function @('cpuid-flag-fn'), which
  takes the following inputs:</p>

 <ol>
  <li>@('eax'): 32-bit leaf index </li>

  <li>@('ecx'): 32-bit sub-leaf index, where applicable </li>

  <li>@('reg'): index of the output general-purpose register (@('eax'),
  @('ebx'), @('ecx'), or @('edx')) </li>

  <li>@('bit'): relevant LSB of @('reg') (0-63)</li>

  <li>@('width'): width of the flag field of the output register</li>
 </ol>

 <p>The only constraint about the return value of this function is
 that it must be return a natural number of width @('width').  During
 proofs, you would need to add appropriate hypotheses to your theorems
 about the values returned by @('cpuid-flag-fn') for a given CPUID
 leaf, sub-leaf, and relevant output indexing information (i.e.,
 @('reg') and @('bit')).  During execution, you can use @(tsee
 defattach) to execute this function.  By default, we use the function
 @(tsee default-cpuid-flag-fn) as an attachment.  Feel free, of
 course, to use your own attachment, where you can choose to
 case-split on the leaf/sub-leaf of the CPUID.</p>

 <p>We also provide macros the following macros to access CPUID feature flags
 conveniently.</p>

 <p>This constrained function used to take the x86 state as additional argument.
 This allowed the CPUID features to depend on the state,
 and potentially to change during execution.
 However, this was causing the generation of proof goals
 involving potentially different CPUID feature values
 before and after any operation on the x86 state,
 because even innocuous operations like writing to a register
 give different x86 states and thus potentially different CPUID features.
 It seems clear that most, if not all, CPUID features
 should be independent from the x86 state;
 it is yet unclear whether a few of them might depend on the state.
 However, if they may change from one state to the other,
 it seems reasonable for that to happen via particular explicit operations.
 Since none of the state transitions covered by our formal model
 causes any changes to CPUID features
 (not because we ignore the potential change in our modeling,
 but because the parts of the Intel and AMD documentation
 that our modeled state transitions are based on
 neither say nor imply anything about CPUID feature changes),
 it seemed safe to remove the x86 state from this function's arguments.
 An oddity of having the x86 state as an argument is that
 the x86 state argument may have its own values in EAX, ECX, etc.,
 which may differ from the corresponding values passed to the function,
 which has explicit parameters for those;
 there is nothing really wrong with this,
 but it is a sort of redundancy in the inputs of these function
 and a potential inconsistency between their values as arguments
 and the corresponding values in the x86 state,
 and therefore not fully satisfactory.
 If we ever find that some CPUID features may change during execution,
 we will extend the model of the x86 state with
 information about the current values of those features,
 and we will amend this constrained function to read them from the state.</p>

 @(call cpuid-flag)

 @(call feature-flag)"

  (local (xdoc::set-default-parents cpuid))

  (encapsulate

    (((cpuid-flag-fn * * * * *) => *
      :formals (eax ecx reg bit width)
      :guard (and (unsigned-byte-p 32 eax)
                  (unsigned-byte-p 32 ecx)
                  (or (equal reg #.*eax*)
                      (equal reg #.*ebx*)
                      (equal reg #.*ecx*)
                      (equal reg #.*edx*))
                  (unsigned-byte-p 6 bit)
                  (posp width)
                  (<= width 32))))

    (local
     (defun cpuid-flag-fn (eax ecx reg bit width)
       (declare
        (ignorable eax ecx reg bit width)
        (xargs :guard (and (natp width))))
       (loghead width 1)))

    (defthm natp-cpuid-flag-fn
      (natp (cpuid-flag-fn eax ecx reg bit width))
      :rule-classes (:type-prescription))

    (defthm unsigned-byte-width-of-cpuid-flag-fn
      (implies (posp width)
               (unsigned-byte-p width (cpuid-flag-fn eax ecx reg bit width)))))

  (define default-cpuid-flag-fn ((eax  :type (unsigned-byte 32))
                                 (ecx  :type (unsigned-byte 32))
                                 (reg   (or (equal reg #.*eax*)
                                            (equal reg #.*ebx*)
                                            (equal reg #.*ecx*)
                                            (equal reg #.*edx*)))
                                 (bit   :type (integer 0 63))
                                 (width :type (integer 1 32)))
    :ignore-ok t

    ;; Let's have everything enabled by default, just to see what breaks and when.

    (case eax

      (#ux8000_0008
       (case reg
         (#.*eax*
          (case bit
            (0 (if (equal width 8)
                   52 ;; MAXPHYADDR
                 0))
            (8 (if (equal width 8)
                   48 ;; LINEARADDR
                 0))
            (t 0)))
         (t 1))) ;; EAX = #ux8000_0008

      (t 1)))

  (defattach (cpuid-flag-fn default-cpuid-flag-fn)
    :hints (("Goal" :in-theory (e/d (default-cpuid-flag-fn)
                                    (unsigned-byte-p)))))

  (defmacro cpuid-flag (eax ;; CPUID leaf
                        &key
                        ;; CPUID Sub-leaf (if any)
                        (ecx '0)
                        ;; Index of the output register
                        (reg '0)
                        ;; Relevant LSB of the output register
                        (bit '0)
                        ;; Width of the CPUID field of the output
                        ;; register, 1 by default
                        (width '1))
    ;; CPUID:

    ;; 64-bit input:
    ;; 32 bits each of eax (leaf) and possibly ecx (sub-leaf, where applicable)

    ;; 256-bit output:
    ;; 64 bits each of eax, ebx, ecx, edx

    (list 'cpuid-flag-fn eax ecx reg bit width))

  (define feature-flag (feature-flag)
    (declare (xargs :guard (member-equal feature-flag *supported-feature-flags*)))

    ;; Source: Intel Vol. 2A, Table 3-8 (Information Returned by CPUID instruction)
    ;; (May 2018 Edition)

    (case feature-flag
      ;; Basic CPUID Information
      (:sse3            (cpuid-flag #ux_01             :reg #.*ecx* :bit 0))
      (:pclmulqdq       (cpuid-flag #ux_01             :reg #.*ecx* :bit 1))
      (:dtes64          (cpuid-flag #ux_01             :reg #.*ecx* :bit 2))
      (:monitor         (cpuid-flag #ux_01             :reg #.*ecx* :bit 3))
      (:ds-cpl          (cpuid-flag #ux_01             :reg #.*ecx* :bit 4))
      (:vmx             (cpuid-flag #ux_01             :reg #.*ecx* :bit 5))
      (:smx             (cpuid-flag #ux_01             :reg #.*ecx* :bit 6))
      (:eist            (cpuid-flag #ux_01             :reg #.*ecx* :bit 7))
      (:tm2             (cpuid-flag #ux_01             :reg #.*ecx* :bit 8))
      (:ssse3           (cpuid-flag #ux_01             :reg #.*ecx* :bit 9))
      (:cnxt-id         (cpuid-flag #ux_01             :reg #.*ecx* :bit 10))
      (:sdbg            (cpuid-flag #ux_01             :reg #.*ecx* :bit 11))
      (:fma             (cpuid-flag #ux_01             :reg #.*ecx* :bit 12))
      (:cmpxchg16b      (cpuid-flag #ux_01             :reg #.*ecx* :bit 13))
      (:xtpr-up-ctrl    (cpuid-flag #ux_01             :reg #.*ecx* :bit 14))
      (:pdcm            (cpuid-flag #ux_01             :reg #.*ecx* :bit 15))
      ;; ecx[16]: reserved
      (:pcid            (cpuid-flag #ux_01             :reg #.*ecx* :bit 17))
      (:dca             (cpuid-flag #ux_01             :reg #.*ecx* :bit 18))
      (:sse4.1          (cpuid-flag #ux_01             :reg #.*ecx* :bit 19))
      (:sse4.2          (cpuid-flag #ux_01             :reg #.*ecx* :bit 20))
      (:x2pic           (cpuid-flag #ux_01             :reg #.*ecx* :bit 21))
      (:movbe           (cpuid-flag #ux_01             :reg #.*ecx* :bit 22))
      (:popcnt          (cpuid-flag #ux_01             :reg #.*ecx* :bit 23))
      (:tsc-deadline    (cpuid-flag #ux_01             :reg #.*ecx* :bit 24))
      ;; The following flag was listed as AESNI in the CPUID instruction
      ;; description, but on other instructions' pages, it is listed as AES.
      (:aes             (cpuid-flag #ux_01             :reg #.*ecx* :bit 25))
      (:xsave           (cpuid-flag #ux_01             :reg #.*ecx* :bit 26))
      (:osxsave         (cpuid-flag #ux_01             :reg #.*ecx* :bit 27))
      (:avx             (cpuid-flag #ux_01             :reg #.*ecx* :bit 28))
      (:f16c            (cpuid-flag #ux_01             :reg #.*ecx* :bit 29))
      (:rdrand          (cpuid-flag #ux_01             :reg #.*ecx* :bit 30))
      ;; ecx[31]: always returns 0

      (:fpu             (cpuid-flag #ux_01             :reg #.*edx* :bit 0))
      (:vme             (cpuid-flag #ux_01             :reg #.*edx* :bit 1))
      (:de              (cpuid-flag #ux_01             :reg #.*edx* :bit 2))
      (:pse             (cpuid-flag #ux_01             :reg #.*edx* :bit 3))
      (:tsc             (cpuid-flag #ux_01             :reg #.*edx* :bit 4))
      (:msr             (cpuid-flag #ux_01             :reg #.*edx* :bit 5))
      (:pae             (cpuid-flag #ux_01             :reg #.*edx* :bit 6))
      (:mce             (cpuid-flag #ux_01             :reg #.*edx* :bit 7))
      (:cx8             (cpuid-flag #ux_01             :reg #.*edx* :bit 8))
      (:apic            (cpuid-flag #ux_01             :reg #.*edx* :bit 9))
      ;; edx[10]: reserved
      (:sep             (cpuid-flag #ux_01             :reg #.*edx* :bit 11))
      (:mtrr            (cpuid-flag #ux_01             :reg #.*edx* :bit 12))
      (:pge             (cpuid-flag #ux_01             :reg #.*edx* :bit 13))
      (:mca             (cpuid-flag #ux_01             :reg #.*edx* :bit 14))
      (:cmov            (cpuid-flag #ux_01             :reg #.*edx* :bit 15))
      (:pat             (cpuid-flag #ux_01             :reg #.*edx* :bit 16))
      (:pse-36          (cpuid-flag #ux_01             :reg #.*edx* :bit 17))
      (:psn             (cpuid-flag #ux_01             :reg #.*edx* :bit 18))
      (:clfsh           (cpuid-flag #ux_01             :reg #.*edx* :bit 19))
      ;; edx[20]: reserved
      (:ds              (cpuid-flag #ux_01             :reg #.*edx* :bit 21))
      (:acpi            (cpuid-flag #ux_01             :reg #.*edx* :bit 22))
      (:mmx             (cpuid-flag #ux_01             :reg #.*edx* :bit 23))
      (:fxsr            (cpuid-flag #ux_01             :reg #.*edx* :bit 24))
      (:sse             (cpuid-flag #ux_01             :reg #.*edx* :bit 25))
      (:sse2            (cpuid-flag #ux_01             :reg #.*edx* :bit 26))
      (:ss              (cpuid-flag #ux_01             :reg #.*edx* :bit 27))
      (:htt             (cpuid-flag #ux_01             :reg #.*edx* :bit 28))
      (:tm              (cpuid-flag #ux_01             :reg #.*edx* :bit 29))
      ;; edx[30]: reserved
      (:pbe             (cpuid-flag #ux_01             :reg #.*edx* :bit 31))


      ;; Structured Extended Feature Flags Enumeration Leaf (output depends on
      ;; ECX input value)
      (:fsgsbase        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 0))
      (:ia32_tsc_adjust (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 1))
      (:sgx             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 2))
      (:bmi1            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 3))
      (:hle             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 4))
      (:avx2            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 5))
      (:fdp_excptn_only (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 6))
      (:smep            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 7))
      (:bmi2            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 8))
      (:rep-movsb-stosb (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 9))
      (:invpcid         (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 10))
      (:rtm             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 11))
      (:rdt-m           (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 12))
      (:dep-fpu-cs-ds   (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 13))
      (:mpx             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 14))
      (:rdt-a           (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 15))
      (:avx512f         (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 16))
      (:avx512dq        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 17))
      (:rdseed          (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 18))
      (:adx             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 19))
      (:smap            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 20))
      (:avx512_ifma     (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 21))
      ;; ebx[22]: reserved
      (:clflushopt      (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 23))
      (:clwb            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 24))
      (:proc-trace      (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 25))
      (:avx512pf        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 26))
      (:avx512er        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 27))
      (:avx512cd        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 28))
      (:sha             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 29))
      (:avx512bw        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 30))
      (:avx512vl        (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ebx* :bit 31))

      (:prefetchwt1     (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 0))
      (:avx512_vbmi     (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 1))
      (:umip            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 2))
      (:pku             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 3))
      (:ospke           (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 4))
      (:cet             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 7))
      ;; ecx[5-6], ecx[15:8]: reserved
      (:la57            (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 16))
      (:mawau           (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 17 :width 5))
      (:rdpid           (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 22))
      ;; ecx[29:23]: reserved
      (:sgx_lc          (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 30))
      (:pks             (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*ecx* :bit 31))

      ;; [Shilpi] Intel Manuals, May 2018 edition don't seem to list
      ;; avx512_4vnniw and avx512_4fmaps anywhere.  However, I found the
      ;; following sources where the position of these flags are listed in the
      ;; CPUID output.  Note that in the May 2018 manual, the entire EDX output
      ;; of leaf #ux_07 is listed as "reserved".
      ;; Sources:
      ;; http://www.sandpile.org/x86/cpuid.htm#level_0000_0007h
      ;; https://lore.kernel.org/patchwork/patch/725059/
      ;; https://lists.ubuntu.com/archives/kernel-team/2016-November/080721.html
      (:avx512_4vnniw   (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*edx* :bit 2))
      (:avx512_4fmaps   (cpuid-flag #ux_07 :ecx #ux_00 :reg #.*edx* :bit 3))


      ;; Processor Extended State Enumeration Main Leaf (EAX = 0Dh, ECX = 0)
      ;; Bits 31 - 00: Reports the supported bits of the lower 32 bits of
      ;; XCR0. XCR0[n] can be set to 1 only if EAX[n] is 1.
      (:x87-state       (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 0))
      (:sse-state       (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 1))
      (:avx-state       (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 2))
      (:mpx-state       (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 3 :width 2))
      (:avx512-state    (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 5 :width 3))
      (:ia32_xss_0      (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 8))
      (:pkru            (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 9))
      ;; eax[12:10]: reserved
      (:ia32_xss_1      (cpuid-flag #ux_0D :ecx #ux_00 :reg #.*eax* :bit 13))
      ;; eax[31:14]: reserved

      ;; Processor Extended State Enumeration Main Leaf (EAX = 0Dh, ECX = 1)
      (:xsaveopt        (cpuid-flag #ux_0D :ecx #ux_01 :reg #.*eax* :bit 0))
      (:xsavec          (cpuid-flag #ux_0D :ecx #ux_01 :reg #.*eax* :bit 1))
      (:xgetbv          (cpuid-flag #ux_0D :ecx #ux_01 :reg #.*eax* :bit 2))
      (:xss             (cpuid-flag #ux_0D :ecx #ux_01 :reg #.*eax* :bit 3))
      ;; eax[31:4]: reserved
      ;; TODO: rest of the outputs of this sub-leaf


      ;; Extended Function CPUID Information
      (:lahf-sahf       (cpuid-flag #ux8000_0001       :reg #.*ecx* :bit 0))
      ;; ecx[4:1]: reserved
      (:lzcnt           (cpuid-flag #ux8000_0001       :reg #.*ecx* :bit 5))
      ;; ecx[7:6]: reserved
      (:prfchw          (cpuid-flag #ux8000_0001       :reg #.*ecx* :bit 8))
      ;; ecx[31:9]: reserved
      ;; TODO: ebx, ecx, edx outputs

      ;; Intel SGX Capability Enumeration Leaf, sub-leaf 0 (EAX = 12H, ECX = 0)
      (:sgx1            (cpuid-flag #ux8000_0001       :reg #.*eax* :bit 0))
      (:sgx2            (cpuid-flag #ux8000_0001       :reg #.*eax* :bit 1))
      ;; TODO: rest of the outputs of this leaf

      ;; edx[10:0]: reserved
      (:syscall-sysret  (cpuid-flag #ux8000_0001       :reg #.*edx* :bit 11))
      ;; edx[19:12]: reserved
      (:execute-disable (cpuid-flag #ux8000_0001       :reg #.*edx* :bit 20))
      ;; edx[25:21]: reserved
      (:1G-pages        (cpuid-flag #ux8000_0001       :reg #.*edx* :bit 26))
      (:rdtscp          (cpuid-flag #ux8000_0001       :reg #.*edx* :bit 27))
      ;; edx[28]: reserved
      (:intel64         (cpuid-flag #ux8000_0001       :reg #.*edx* :bit 29))
      ;; edx[31:30]: reserved

      ;; Linear/physical address size data
      (:maxphyaddr      (cpuid-flag #ux8000_0008       :reg #.*eax* :bit 0 :width 8))
      (:linearaddr      (cpuid-flag #ux8000_0008       :reg #.*eax* :bit 8 :width 8))
      ;; Output eax (for function #ux8000_0008) bits 16-31 are reserved.

      (otherwise       0)))

  (assert-event
   ;; The default attachment is the reason why the following is true.
   ;; TODO: Parameterize the model w.r.t. these flags.
   (and (equal (feature-flag :maxphyaddr) 52)
        (equal (feature-flag :linearaddr) 48)))

  (define feature-flags (features)
    :guard (subset-equal features *supported-feature-flags*)
    :guard-hints (("Goal" :in-theory (enable subset-equal)))
    (cond ((atom features) 1)
          ((eql (feature-flag (first features)) 0) 0)
          (t (feature-flags (rest features))))))

;; ----------------------------------------------------------------------
