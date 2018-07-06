//
//  ViewController.m
//  EffectiveTool
//
//  Created by zhang on 2018/1/26.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+AssociatedObjects.h"


__weak NSString *string_weak_assign = nil;
__weak NSString *string_weak_retain = nil;
__weak NSString *string_weak_copy   = nil;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self associatedObjects];
    
    [self performSelector:@selector(eat)];
    
}

- (void)associatedObjects {
    
    self.associatedObject_assign = [NSString stringWithFormat:@"RiverRun_assign"];
    self.associatedObject_retain = [NSString stringWithFormat:@"RiverRun_retain"];
    self.associatedObject_copy   = [NSString stringWithFormat:@"RiverRun_copy"];
    
    string_weak_assign = self.associatedObject_assign;
    string_weak_retain = self.associatedObject_retain;
    string_weak_copy   = self.associatedObject_copy;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    NSLog(@"self.associatedObject_assign: %@", self.associatedObject_assign); // Will Crash
    NSLog(@"self.associatedObject_retain: %@", self.associatedObject_retain);
    NSLog(@"self.associatedObject_copy:   %@", self.associatedObject_copy);
}



@end
