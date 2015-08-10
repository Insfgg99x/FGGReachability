//
//  FGGReachability.h
//  FGGReachability
//
//  Created by 夏桂峰 on 15/8/10.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//
/*
 ----------------------------------------------------
 FGGReachability
 用法简介：
 1.获取当前网络状态：FGGNetWorkStatus status=[FGGReachability networkStatus];
 2.作出判断
 ==>若status==FGGNetWorkStatus3G，则当前网络状态为3G；
 ==>若status==FGGNetWorkStatusWifi，则当前网络状态为wifi；
 ==>若status==FGGNetWorkStatusNotReachable，则当前网络状态为不可用；
 ==>若status!=FGGNetWorkStatusNotReachable,则当前网络状态可用(包含wifi可用和3G可用)。
 ---------------------------------------------------
   Copyright (c) 2015年 夏桂峰. All rights reserved.
 ---------------------------------------------------
 */
#import <Foundation/Foundation.h>
#import "Reachability.h"

//定义网络状态
typedef NS_ENUM(NSInteger, FGGNetWorkStatus){
    FGGNetWorkStatusNotReachable=0,
    FGGNetWorkStatus3G,
    FGGNetWorkStatusWifi,
};

@interface FGGReachability : NSObject

/**判断网络是否可用*/
+(FGGNetWorkStatus)networkStatus;

@end
