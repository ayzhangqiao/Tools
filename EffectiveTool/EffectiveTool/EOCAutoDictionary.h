//
//  EOCAutoDictionary.h
//  EffectiveTool
//
//  Created by 张乔 on 2018/3/1.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCAutoDictionary : NSObject

@property (nonatomic, copy) NSString *string;
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) id opaqueObject;

@end
