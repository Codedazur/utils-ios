//
//  CDAImageUtils.h
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import <Foundation/Foundation.h>

@interface CDAImageUtils : NSObject

/**
 @param color
        UIcolor that occupy the whole image.
 @param size
        Size of the image.
 @return UIImage with a specified size and showing a solid color.
*/
+ (UIImage *) imageWithColor:(UIColor *)color andSize:(CGSize)size;

/**
 @param color
        UIColor that occupy the whole image.
 @return UIImage of 1x1 point big and showing a solid color.
 */
+ (UIImage *) imagePixelWithColor:(UIColor *)color;

/**
 Improve the descompression of JPG files in order to load them as images in memory.
 @see https://www.cocoanetics.com/2011/10/avoiding-image-decompression-sickness/ to read more about this problem.
 @param path
        The absolute path of the JPG.
 @return The decompressed JPG image loaded in memory.
*/
+ (UIImage *)decompressedJPGImageWithPath:(NSString *)path;

@end
