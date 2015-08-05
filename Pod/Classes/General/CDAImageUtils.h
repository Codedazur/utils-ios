//
//  CDAImageUtils.h
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import <Foundation/Foundation.h>

@interface CDAImageUtils : NSObject

+ (UIImage *) imageWithColor:(UIColor *)color andSize:(CGSize)size;
+ (UIImage *) imagePixelWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color AndSize:(CGSize)size;

@end
