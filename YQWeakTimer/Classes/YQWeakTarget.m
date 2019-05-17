//
//  YQWeakTarget.m
//  YQWeakTimer_Example
//
//  Created by 杨强 on 2019/5/17.
//  Copyright © 2019年 yangqiang. All rights reserved.
//

#import "YQWeakTarget.h"

@interface YQWeakTarget ()
@property (weak, nonatomic) id target;
@end

@implementation YQWeakTarget

+ (instancetype)proxyWithTarget:(id)target
{
    YQWeakTarget *proxy = [YQWeakTarget alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}

@end
