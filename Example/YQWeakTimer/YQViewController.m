//
//  YQViewController.m
//  YQWeakTimer
//
//  Created by yangqiang on 05/17/2019.
//  Copyright (c) 2019 yangqiang. All rights reserved.
//

#import "YQViewController.h"
#import "YQTestTimerVC.h"

@interface YQViewController ()

@property(nonatomic , strong) UIButton * btn;
@end

@implementation YQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.btn];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.btn.bounds = CGRectMake(0, 0, 200, 44);
    self.btn.center = self.view.center;
}


#pragma mark - Action

- (void)btnAction{
    YQTestTimerVC * vc = [[YQTestTimerVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

#pragma mark - get set

- (UIButton *)btn{
    if(_btn == nil){
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"进入测试页面" forState:UIControlStateNormal];
        [_btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

@end
