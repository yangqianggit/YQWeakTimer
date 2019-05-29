//
//  YQWeakTarget.h
//  YQWeakTimer_Example
//
//  Created by 杨强 on 2019/5/17.
//  Copyright © 2019年 yangqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YQWeakTarget : NSProxy


+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
