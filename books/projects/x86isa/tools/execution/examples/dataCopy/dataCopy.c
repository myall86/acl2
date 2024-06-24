// X86ISA Library
//
// Note: The license below is based on the template at:
// http://opensource.org/licenses/BSD-3-Clause
//
// Copyright (C) 2015, Regents of the University of Texas
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
// o Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
// o Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the distribution.
//
// o Neither the name of the copyright holders nor the names of its
//   contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Original Author(s):
// Shilpi Goel         <shigoel@cs.utexas.edu>


// gcc -O1 -g -c core.c -o core.o
// gcc -o dataCopy.o dataCopy.c core.o

#include "stdio.h"
#include "stdint.h"
#include "core.h"

void printIntArray (int* x, int n) {

  int i;
  printf("\n");

  for (i = 0; i < n; i++)
    printf(" %d ", *(x+i));

  printf("\n");

}

int main () {

  // static allows memory to be allocated on the heap instead of the
  // stack.  Of course, segfault may still occur on some systems if
  // numElems is too big.
  int i;
  static int src[20], dst[20], numElems; 
  numElems = 20; 

  // Source initialization:
  for (i = 0; i < numElems; i++)
    src[i] = i;

  printf("\nStart address of the source: 0x%llx\n", (uint64_t)src);
  printf("\nEnd address of the source: 0x%llx\n", (uint64_t)(src+numElems-1));
  printf("\nValue at end address of the source: %llu\n", (uint64_t)*(src+numElems-1));

  printf("\nSome elements of source before data copy:\n");
  printIntArray (src, 20);

  printf("\nNumber of elements to copy: %d\n", numElems);
  copyData(src, dst, numElems);

  printf("\nStart address of the destination: 0x%llx\n", (uint64_t)dst);
  printf("\nEnd address of the destination: 0x%llx\n", (uint64_t)(dst+numElems-1));
  printf("\nValue at end address of the destination: %llu\n", (uint64_t)*(dst+numElems-1));

  printf("\nSome elements of source after data copy:\n");
  printIntArray (src, 20);
  printf("\nSome elements of destination after data copy:\n");
  printIntArray (dst, 20);

}
