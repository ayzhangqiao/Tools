//
//  UIViewController+AssociatedObjects.h
//  EffectiveTool
//
//  Created by RiverRun on 2018/7/5.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AssociatedObjects)

@property (assign, nonatomic) NSString *associatedObject_assign;
@property (strong, nonatomic) NSString *associatedObject_retain;
@property (copy,   nonatomic) NSString *associatedObject_copy;

@end
