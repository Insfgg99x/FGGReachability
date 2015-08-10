//
//  ViewController.m
//  FGGReachability_Demo
//
//  Created by 夏桂峰 on 15/8/10.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "FGGReachability.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FGGNetWorkStatus status=[FGGReachability networkStatus];
    switch (status) {
        case FGGNetWorkStatus3G:
            NSLog(@"当前网络状态3G");
            break;
        case FGGNetWorkStatusWifi:
            NSLog(@"当前网络状态wifi");
            break;
        case FGGNetWorkStatusNotReachable:
            NSLog(@"当前网络状态不可用");
            break;
        default:
            break;
    }
}

@end
