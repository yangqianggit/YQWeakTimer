//
//  YQWeakTimer.m
//  YQWeakTimer_Example
//
//  Created by 杨强 on 2019/5/17.
//  Copyright © 2019年 yangqiang. All rights reserved.
//

#import "YQWeakTimer.h"
#import "YQWeakTarget.h"

@interface YQWeakTimer ()

@property(nonatomic , strong) NSTimer * timer;
@end

@implementation YQWeakTimer

+ (instancetype)timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo{
    
    YQWeakTarget * weakTarget = [YQWeakTarget proxyWithTarget:aTarget];
    NSTimer *timer = [NSTimer timerWithTimeInterval:ti target:weakTarget selector:aSelector userInfo:userInfo repeats:yesOrNo];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    YQWeakTimer *yqTimer = [[YQWeakTimer alloc] init];
    yqTimer.timer = timer;
    
    return yqTimer;
    
}
- (void)dealloc
{
    [self.timer invalidate ];
    self.timer = nil;
}

- (void)invalidate{
    
    [self.timer invalidate ];
    self.timer = nil;
}

@end
