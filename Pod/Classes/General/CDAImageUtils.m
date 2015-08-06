//
//  CDAImageUtils.m
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import "CDAImageUtils.h"

@implementation CDAImageUtils

+ (UIImage *) imageWithColor:(UIColor *)color andSize:(CGSize)size {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *) imagePixelWithColor:(UIColor *)color {
    return [CDAImageUtils imageWithColor:color andSize:CGSizeMake(1.0f, 1.0f)];
}

+ (UIImage *)decompressedJPGImageWithPath:(NSString *)path {
    NSData *imageData;
    imageData = [NSData dataWithContentsOfFile:path];
    
    CGImageRef decompressedImage = NULL;
    if (imageData) {
        CGDataProviderRef imageDataProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)imageData);
        CGImageRef image = CGImageCreateWithJPEGDataProvider(imageDataProvider, NULL, NO, kCGRenderingIntentDefault);
        CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
        CGContextRef bitmapContext = CGBitmapContextCreate(NULL, CGImageGetWidth(image), CGImageGetHeight(image), CGImageGetBitsPerComponent(image), CGImageGetWidth(image) * 4, colorSpaceRef, kCGImageAlphaPremultipliedFirst | kCGBitmapByteOrder32Little);
        CGContextDrawImage(bitmapContext, CGRectMake(0, 0, CGImageGetWidth(image), CGImageGetHeight(image)), image);
        decompressedImage = CGBitmapContextCreateImage(bitmapContext);
        
        CGDataProviderRelease(imageDataProvider);
        CGImageRelease(image);
        CGColorSpaceRelease(colorSpaceRef);
        CGContextRelease(bitmapContext);
        
        UIImage *img = [UIImage imageWithCGImage:decompressedImage];
        
        if (decompressedImage) CGImageRelease(decompressedImage);
        
        return img;
    }
    
    else {
        return nil;
    }
}

@end
