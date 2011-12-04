//
//  WSLObjectSwitch.m
//  ObjectSwitch
//
//  Created by Stephen Darlington on 04/12/2011.
//  Copyright (c) 2011 Wandle Software Limited. All rights reserved.
//

#import "WSLObjectSwitch.h"
#import <stdarg.h>

@implementation WSLObjectSwitch

+(void)switchOn:(id<NSObject>)obj cases:casesList, ... {
    va_list list;
    va_start(list, casesList);
    id<NSObject> o = casesList;
    for (;;) {
        if (o) {
            caseBlock block = va_arg(list, caseBlock);
            if ([obj isEqual:o]) {
                block();
                break;
            }
        }
        else {
            break;
        }
        o = va_arg(list, id<NSObject>);
    }
    va_end(list);
}

+(void)switchOn:(id<NSObject>)obj
   defaultBlock:(caseBlock)defaultBlock
          cases:casesList, ... {
    va_list list;
    va_start(list, casesList);
    id<NSObject> o = casesList;
    BOOL match = NO;
    for (;;) {
        if (o) {
            caseBlock block = va_arg(list, caseBlock);
            if ([obj isEqual:o]) {
                block();
                match = YES;
                break;
            }
        }
        else {
            break;
        }
        o = va_arg(list, id<NSObject>);
    }
    if (defaultBlock && ! match) {
        defaultBlock();
    }
    va_end(list);
}

@end
