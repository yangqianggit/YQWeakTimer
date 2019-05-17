#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "YQWeakTarget.h"
#import "YQWeakTimer.h"

FOUNDATION_EXPORT double YQWeakTimerVersionNumber;
FOUNDATION_EXPORT const unsigned char YQWeakTimerVersionString[];

