//
//  YQTestTimerVC.m
//  YQWeakTimer_Example
//
//  Created by 杨强 on 2019/5/17.
//  Copyright © 2019年 yangqiang. All rights reserved.
//

#import "YQTestTimerVC.h"
#import "YQWeakTimer.h"

@interface YQTestTimerVC ()
@property(nonatomic , strong) YQWeakTimer * timer;
@end

@implementation YQTestTimerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"YQWeakTimer 测试";
    self.view.backgroundColor = [UIColor whiteColor];
    self.timer =  [YQWeakTimer timerWithTimeInterval:0.5 target:self selector:@selector(handleTimer) userInfo:nil repeats:true];

}

- (void)handleTimer{
    NSLog(@"%s" , __func__);
}
- (void)dealloc
{
    NSLog(@" 释放掉啦");
}


@end
