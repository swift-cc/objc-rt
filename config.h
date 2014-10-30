#undef TARGET_OS_MAC
#undef __APPLE__
#define __ANDROID__

#define __OSX_AVAILABLE_STARTING(...)
#define __OSX_AVAILABLE_BUT_DEPRECATED(...)
#define OBJC2_UNAVAILABLE
#define UNAVAILABLE_ATTRIBUTE
#define AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER_BUT_DEPRECATED
#define __PTK_FRAMEWORK_OBJC_KEY5
#define SUPPORT_RETURN_AUTORELEASE 1

#define OSAtomicCompareAndSwapPtr objc_atomicCompareAndSwapPtr
#define OSAtomicCompareAndSwapPtrBarrier objc_atomicCompareAndSwapPtrBarrier
#define objc_autoreleaseNoPool objc_autorelease

typedef void* malloc_zone_t;

/* Keys 20-25 for libdispactch usage */
#define __PTK_LIBDISPATCH_KEY0          20
#define __PTK_LIBDISPATCH_KEY1          21
#define __PTK_LIBDISPATCH_KEY2          22
#define __PTK_LIBDISPATCH_KEY3          23
#define __PTK_LIBDISPATCH_KEY4          24
#define __PTK_LIBDISPATCH_KEY5          25

/* Keys 40-49 for Objective-C runtime usage */
#define __PTK_FRAMEWORK_OBJC_KEY0       40
#define __PTK_FRAMEWORK_OBJC_KEY1       41
#define __PTK_FRAMEWORK_OBJC_KEY2       42
#define __PTK_FRAMEWORK_OBJC_KEY3       43
#define __PTK_FRAMEWORK_OBJC_KEY4       44
#define __PTK_FRAMEWORK_OBJC_KEY5       45
#define __PTK_FRAMEWORK_OBJC_KEY6       46
#define __PTK_FRAMEWORK_OBJC_KEY7       47
#define __PTK_FRAMEWORK_OBJC_KEY8       48
#define __PTK_FRAMEWORK_OBJC_KEY9       49

static inline
int backtrace(void*, long)
{
	return -1;
}

static inline
char** backtrace_symbols(void*, long)
{
	return 0;
}

static inline
char** backtrace_symbols_fd(void*, long, int)
{
	return 0;
}
