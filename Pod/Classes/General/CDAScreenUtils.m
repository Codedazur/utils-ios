//
//  CDAScreenUtils.m
//  kvadrat-softcells-ipad
//
//  Created by Gerardo Garrido on 01/04/15.
//  Copyright (c) 2015 Code d'Azur. All rights reserved.
//

#import "CDAScreenUtils.h"
#import "CDADeviceUtils.h"

@implementation CDAScreenUtils

+ (CGRect) screenBounds {
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    return [CDAScreenUtils adjustRectForCurrentIOSVersion:screenBounds];
}

+ (CGPoint) adjustPointForIOSVersion:(CGPoint)point{
    
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) &&SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0"))
    {
        point = CGPointMake(point.y, point.x);
    }
    return point;
}

+ (CGRect) adjustRectForCurrentIOSVersion:(CGRect)rect {
    CGRect newRect = rect;
    
    // Previous version to iOS 8.0 always returned 768x1024 as screen dimensions, no matter the orientation
    if (SYSTEM_VERSION_LESS_THAN(@"8.0")) {
        newRect.origin.x = rect.origin.y;
        newRect.origin.y = rect.origin.x;
        newRect.size.width = rect.size.height;
        newRect.size.height = rect.size.width;
    }
    
    return newRect;
}
+ (CGFloat)screenScale{
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        return [[UIScreen mainScreen] scale];
    }
    return 1.0;
}
@end
