//
//  CDAScreenUtils.h
//  kvadrat-softcells-ipad
//
//  Created by Gerardo Garrido on 01/04/15.
//  Copyright (c) 2015 Code d'Azur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDAScreenUtils : NSObject

+ (CGRect) screenBounds;
+ (CGRect) adjustRectForCurrentIOSVersion:(CGRect)rect;
+ (CGFloat)screenScale;
+ (CGPoint) adjustPointForIOSVersion:(CGPoint)point;
@end
