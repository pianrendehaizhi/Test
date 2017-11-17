//
//  UIImage+Color.m
//  test2017-10-31
//
//  Created by BiShuai on 2017/11/13.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

+ (UIImage *)imageWithColors:(NSArray *)colors size:(CGSize)imageSize {
    NSMutableArray *array = [NSMutableArray array];
    for(UIColor *c in colors) {
        [array addObject:(id)c.CGColor];
    }
    UIGraphicsBeginImageContextWithOptions(imageSize, YES, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([[colors lastObject] CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)array, NULL);
    CGPoint start;
    CGPoint end;
    start = CGPointMake(0.0, imageSize.height);
    end = CGPointMake(imageSize.width, 0.0);
    
    CGContextDrawLinearGradient(context, gradient, start, end,kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    
    return image;
}

@end
