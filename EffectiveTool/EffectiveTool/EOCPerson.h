//
//  EOCPerson.h
//  EffectiveTool
//
//  Created by 张乔 on 2018/3/1.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

- (NSString *)fullName;
- (void)setFullName:(NSString *)fullName;

@end
