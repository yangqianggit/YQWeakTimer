//
//  YQWeakTimer.h
//  YQWeakTimer_Example
//
//  Created by 杨强 on 2019/5/17.
//  Copyright © 2019年 yangqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YQWeakTimer : NSObject
+ (instancetype)timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;


/**
  除非多处引用同一个timer，否则不用手动调用。
 */
- (void)invalidate;
@end

NS_ASSUME_NONNULL_END
