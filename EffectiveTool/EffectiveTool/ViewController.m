//
//  ViewController.m
//  EffectiveTool
//
//  Created by zhang on 2018/1/26.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Tracking.h"
#import <objc/message.h>


@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self blockTest];
    
}

- (void)askUserQuestion {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"去涩痛" message:@"想干什么" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"继续", nil];
    [alert show];
    
    void (^back)(NSInteger) = ^(NSInteger buttonIndex) {
        if (buttonIndex == 0) {
            [self doCancle];
        } else {
            [self doContinue];
        }
    };
    
    objc_setAssociatedObject(alert, @"alertShowKey", back, OBJC_ASSOCIATION_COPY);
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
//    if (buttonIndex == 0) {
//        [self doCancle];
//    } else {
//        [self doContinue];
//    }
    void (^block)(NSInteger) = objc_getAssociatedObject(alertView, @"alertShowKey");
    block(buttonIndex);
}

- (void)doCancle {
    NSLog(@"取消");
}

- (void)doContinue {
    NSLog(@"继续");
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self askUserQuestion];
}















int global = 1;
static int static_global = 2;
- (void)blockTest {
    
    static int staic_k = 3;
    __block int val = 4;
    
     NSLog(@"var 外部 = %p",&val);
    
    void(^myBlock)(void) = ^{
        global ++;
        static_global ++;
        staic_k ++;
        val ++;
        NSLog(@"var 内部 = %p",&val);
        
        NSLog(@"Block中 global_i = %d,static_global_j = %d,static_k = %d,val = %d",global,static_global,staic_k,val);
    };
    global ++;
    static_global ++;
    staic_k ++;
    val ++;
    NSLog(@"Block外 global_i = %d,static_global_j = %d,static_k = %d,val = %d",global,static_global,staic_k,val);
    myBlock();
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
