
#pragma once

//****************************************************************************
// Copyright (c) 2014 Chukong Technologies Inc.
//
// http://www.cocos2d-x.org
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//****************************************************************************

#define TARGET_OS_MAC           0
#define TARGET_OS_WIN32         0
#define TARGET_OS_UNIX          1
#define TARGET_OS_EMBEDDED      1 
#define TARGET_OS_IPHONE        0 
#define TARGET_CPU_PPC          0
#define TARGET_CPU_PPC64        0
#define TARGET_CPU_68K          0
#define TARGET_CPU_X86          0
#define TARGET_CPU_X86_64       0
#define TARGET_CPU_ARM          1
#define TARGET_CPU_ARM64        0
#define TARGET_CPU_MIPS         0
#define TARGET_CPU_SPARC        0
#define TARGET_CPU_ALPHA        0
#define TARGET_RT_MAC_CFM       0
#define TARGET_RT_MAC_MACHO     0
#define TARGET_RT_LITTLE_ENDIAN 1
#define TARGET_RT_BIG_ENDIAN    0
#define TARGET_RT_64_BIT        0

#include "stdint.h"

#define __header_always_inline inline

#if !defined(OBJC_ROOT_CLASS)
#   if __has_attribute(objc_root_class)
#       define OBJC_ROOT_CLASS __attribute__((objc_root_class))
#   else
#       define OBJC_ROOT_CLASS
#   endif
#endif

#if !defined(OBJC_ISA_AVAILABILITY)
#   define OBJC_ISA_AVAILABILITY  /* still available */
#endif

#define VM_MIN_ADDRESS	0x00000000
#define VM_MAX_ADDRESS	0x40000000

#define _COMM_PAGE_BASE_ADDRESS VM_MAX_ADDRESS - 7 * 4096
#define _COMM_PAGE_CPU_CAPABILITIES (_COMM_PAGE_BASE_ADDRESS+0x020)
#define kUP       0x8000
#define kHasEvent 0x1000

typedef unsigned int fileport_t;
