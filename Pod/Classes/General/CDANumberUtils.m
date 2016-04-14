//
//  CDANumberUtils.m
//  KvadratIpadApp
//
//  Created by Tamara Bernad on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CDANumberUtils.h"

@implementation CDANumberUtils

+ (NSInteger) getRandomIntegerBetween:(NSInteger) min And:(NSInteger) max{
    if(min == max) return min;
    return min + arc4random() % max;
}

+ (BOOL) isDouble:(double)x almostEqualToDouble:(double)y {
    return fabs(x - y) <= 0.0000001;
}
    
+ (NSInteger) compareDouble:(double)x toDouble:(double)y {
    if ([CDANumberUtils isDouble:x almostEqualToDouble:y]) {
        return NSOrderedSame;
    }
    
    if ([CDANumberUtils isDouble:fmin(x, y) almostEqualToDouble:x]) {
        return NSOrderedAscending;
    }
    
    return NSOrderedDescending;
}

@end