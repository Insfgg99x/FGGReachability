//
//  FGGReachability.m
//  FGGReachability
//
//  Created by 夏桂峰 on 15/8/10.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGReachability.h"

@implementation FGGReachability

/**
 *  判断网络状态：包含3G是可用和wifi可用和不可用
 *
 *  @return 网络状态
 */
+(FGGNetWorkStatus)networkStatus
{
    //wifi
    if([self isWifiEnable])
        return FGGNetWorkStatusWifi;
    //3G
    else if([self is3GEnable])
        return FGGNetWorkStatus3G;
    //不可用
    else
        return FGGNetWorkStatusNotReachable;
}
//wifi是否可用
+(BOOL)isWifiEnable
{
    return ([[Reachability reachabilityForLocalWiFi] currentReachabilityStatus]==ReachableViaWiFi);
}
//3G是否可用
+(BOOL)is3GEnable
{
    return ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus]==ReachableViaWWAN);
}

@end
