//
//  RunLoopType.m
//  EffectiveTool
//
//  Created by 张乔 on 2018/3/14.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import "RunLoopType.h"

@implementation RunLoopType

- (void)runloop {
    do {
        NSLog(@"呵呵呵");
    } while (1);
}

/**  Why Runloop
 1、使程序一直运行并接受用户输入
 2、决定程序何时应该处理哪些Event
 3、调用解耦（Message Queue）
 4、节省CPU时间
 */

- (void)runloopInCocoa {
    // NSRunLoop 基于 CFRunLoopRef 的封装
    [NSRunLoop currentRunLoop];
    
   // NSTimer
   // UIEvent;
   // Autorelease;
    
      // CADisplayLink
      // CATransition
      // CAAnimation
//    dispatch_get_main_queue();
//    NSURLConnection AFNetworking
    
    // timer sources observer
    CFRunLoopSourceRef Source0; // 处理APP内部事件，APP自己负责管理
    CFRunLoopSourceRef Source1; // Runloop和内核管理 Mach port 驱动 进程之间通讯
    
//    NSDefaultRunLoopMode // 默认状态，空闲状态
//    UITrackingRunLoopMode 滑动scrollView时
//    UIInitializationRunLoopMode 私有，APP启动时
//    NSRunLoopCommonModes timer 加入该mode下不会受UITrackingRunLoopMode 即scrollView滑动影响
    
    [NSRunLoop currentRunLoop];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
    });

}




@end
