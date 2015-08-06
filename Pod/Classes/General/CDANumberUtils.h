//
//  CDANumberUtils.h
//  KvadratIpadApp
//
//  Created by Tamara Bernad on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDANumberUtils : NSObject

/**
 Generate a random number between two values.
 @param min
        Minimum value for the random number to be generated.
 @param max
        MAximum value for the random number to be generated.
 @return A random NSInteger number.
*/
+ (NSInteger) getRandomIntegerBetween:(NSInteger)min And:(NSInteger)max;

/**
 Compare to double value and check if they are equal.
 Due to the nature of the float and double numbers this method will consider that they are equal if their values vary 0.0000001.
 @param x
        First double value to be compared.
 @param y
        Second double value to be compared.
 @return YES if the numbers' value vary 0.0000001 or less from each other, otherwise NO.
*/
+ (BOOL) isDouble:(double)x almostEqualToDouble:(double)y;

/**
 Compare a first double value to a second one.
 @param x
        First double value to be compared.
 @param y
        Second double value to be compared.
 @return NSComparisonResult
            NSOrderedSame       ->  if both values are equal or vary 0.0000001 or less from each other.
            NSOrderedAscending  ->  if the first value (x) is smaller than the second value (y).
            NSOrderedDescending ->  if the first value (x) is bigger than the second value (y).
*/
+ (NSInteger) compareDouble:(double)x toDouble:(double)y;

@end
