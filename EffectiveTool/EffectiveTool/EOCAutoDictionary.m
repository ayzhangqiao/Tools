//
//  EOCAutoDictionary.m
//  EffectiveTool
//
//  Created by 张乔 on 2018/3/1.
//  Copyright © 2018年 RiverRun. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

@interface EOCAutoDictionary ()
@property (nonatomic, strong) NSMutableDictionary *backingStore;
@end

@implementation EOCAutoDictionary

@dynamic string, number, date, opaqueObject;

- (instancetype)init {
    if (self = [super init]) {
        _backingStore = [NSMutableDictionary dictionary];
    }
    return self;
}

//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    
//    NSString *selectorString = NSStringFromSelector(sel);
//    
//    if ([selectorString hasPrefix:@"set"]) {
//        class_addMethod(self, sel, (IMP)autoDictionarySetter, "v@:@");
//    } else {
//        class_addMethod(sel, sel, (IMP)autoDictionaryGetter, "@@:");
//    }
//    return YES;
//}

id autoDictionarySetter(id self, SEL _cmd, id value) {
    EOCAutoDictionary *typeSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary *backingStore = typeSelf.backingStore;
    
    NSString *selectorString = NSStringFromSelector(_cmd);
    
    NSMutableString *key = [selectorString mutableCopy];
    
    [key deleteCharactersInRange:NSMakeRange(key.length - 1, 1)];
    
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    
    return 0;
    
}











@end
