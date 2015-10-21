# FGGReachability<br>
基于Reachability封装的网络判断，很好用，可以判断2G,2.75G,3G,4G,Wi-Fi，及可用，不可用等状态<br>
 ----------------------------------------------------<br>
 FGGReachability用法简介：<br>
 1.导入CoreTelephony.framework框架<br>
 2.导入#import <CoreTelephony/CTTelephonyNetworkInfo.h><br>
 3.导入#import <CoreTelephony/CTCarrier.h><br>
 4.获取当前网络状态：FGGNetWorkStatus status=[FGGReachability networkStatus];<br>
 5.作出判断<br>
 ==>若status==FGGNetWorkStatus2G，则当前网络状态为2G；<br>
 ==>若status==FGGNetWorkStatusEdge，则当前网络状态为2.75G(Edge)；<br>
 ==>若status==FGGNetWorkStatus3G，则当前网络状态为3G；<br>
 ==>若status==FGGNetWorkStatus4G，则当前网络状态为4G；<br>
 ==>若status==FGGNetWorkStatusWifi，则当前网络状态为wifi；<br>
 ==>若status==FGGNetWorkStatusNotReachable，则当前网络状态为不可用；<br>
 ==>若status!=FGGNetWorkStatusNotReachable,则当前网络状态可用(包含wifi和蜂窝移动网络)。<br>
 ---------------------------------------------------<br>
   Copyright (c) 2015年 夏桂峰. All rights reserved.<br>
 ---------------------------------------------------<br>
