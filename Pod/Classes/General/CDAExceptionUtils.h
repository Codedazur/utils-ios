//
//  MBXExceptionUtils.h
//  sven-10
//
//  Created by Tamara Bernad on 27/06/15.
//  Copyright (c) 2015 moodbox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDAExceptionUtils : NSObject
+ (void)throwOverrideExceptionWithMethodName:(NSString *)methodName;
@end
