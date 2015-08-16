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
{
    UILabel *_statusLabel;
    Reachability *_reachability;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _statusLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 200, self.view.frame.size.width-40, 40)];
    [self.view addSubview:_statusLabel];
    _statusLabel.textAlignment=NSTextAlignmentCenter;
    
    _reachability=[Reachability reachabilityForInternetConnection];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkStatusDidChanged:) name:kReachabilityChangedNotification object:nil];
    [_reachability startNotifier];
    
    //判断网络状态
    [self estimateNetwork];
    
}
-(void)networkStatusDidChanged:(NSNotification *)sender
{
    FGGNetWorkStatus status=[FGGReachability networkStatus];
    if(status==FGGNetWorkStatusNotReachable)
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"错误" message:@"网络状态不可用" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    [self estimateNetwork];
}
//判断网络状态
-(void)estimateNetwork
{
    FGGNetWorkStatus status=[FGGReachability networkStatus];
    switch (status) {
        case FGGNetWorkStatus2G:
        {
            NSLog(@"当前网络状态2G");
            [self showAlertWithString:@"当前网络状态2G"];
            break;
        }
        case FGGNetWorkStatusEdge:
        {
            NSLog(@"当前网络状态2.75G(Edge)");
            [self showAlertWithString:@"当前网络状态2.75G(Edge)"];
            break;
        }
        case FGGNetWorkStatus3G:
        {
            NSLog(@"当前网络状态3G");
            [self showAlertWithString:@"当前网络状态3G"];
            break;
        }
        case FGGNetWorkStatus4G:
        {
            NSLog(@"当前网络状态4G");
            [self showAlertWithString:@"当前网络状态4G"];
            break;
        }
        case FGGNetWorkStatusWifi:
        {
            NSLog(@"当前网络状态wifi");
            [self showAlertWithString:@"当前网络状态wifi"];
            break;
        }
        case FGGNetWorkStatusNotReachable:
        {
            NSLog(@"当前网络状态不可用");
            [self showAlertWithString:@"当前网络状态不可用"];
            break;
        }
        default:
            break;
    }
}
//显示警告视图
-(void)showAlertWithString:(NSString *)str
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:str delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    _statusLabel.text=str;
    [alert show];
    [self performSelector:@selector(dismissAlert:) withObject:alert afterDelay:FGGAlertViewDuration];
}
//移除警告视图
-(void)dismissAlert:(UIAlertView *)alert
{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}
@end
