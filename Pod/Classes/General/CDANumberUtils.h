//
//  CDANumberUtils.h
//  KvadratIpadApp
//
//  Created by Tamara Bernad on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDANumberUtils : NSObject

+ (NSInteger) getRandomIntegerBetween:(NSInteger) min And:(NSInteger) max;
+ (BOOL) isDouble:(double)x almostEqualToDouble:(double)y;
+ (NSInteger) compareDouble:(double)x toDouble:(double)y;

@end
