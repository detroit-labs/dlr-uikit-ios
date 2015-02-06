//
//  UIImage+DLR.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIImage+DLR.h"

#import "UIColor+DLR.h"

@implementation UIImage (DLR)

+ (UIImage *)dlr_resizableImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(contextRef, color.CGColor);
    CGContextFillRect(contextRef, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    image = [image resizableImageWithCapInsets:UIEdgeInsetsZero];
    return image;
}

+ (UIImage *)dlr_resizableImageWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue {
    UIColor *color = [UIColor dlr_colorWithRed:red green:green blue:blue];
    
    UIImage *image = [UIImage dlr_resizableImageWithColor:color];
    return image;
}

+ (UIImage *)dlr_resizableImageWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha {
    UIColor *color = [UIColor dlr_colorWithRed:red green:green blue:blue alpha:alpha];
    
    UIImage *image = [UIImage dlr_resizableImageWithColor:color];
    return image;
}

@end
