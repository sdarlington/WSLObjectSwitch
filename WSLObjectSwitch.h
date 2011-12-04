//
//  WSLObjectSwitch.h
//  ObjectSwitch
//
//  Created by Stephen Darlington on 04/12/2011.
//  Copyright (c) 2011 Wandle Software Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSLObjectSwitch : NSObject

typedef void (^caseBlock)();

+(void)switchOn:(id<NSObject>)obj cases:casesList, ...;

+(void)switchOn:(id<NSObject>)obj
   defaultBlock:(caseBlock)defaultBlock
          cases:casesList, ...;

@end
