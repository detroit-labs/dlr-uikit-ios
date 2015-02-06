//
//  UIColor+DLR.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIColor+DLR.h"

@implementation UIColor (DLR)

+ (UIColor *)dlr_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue {
    UIColor *color = [self dlr_colorWithRed:red green:green blue:blue alpha:1.0f];
    return color;
}

+ (UIColor *)dlr_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha {
    UIColor *color = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
    return color;
}

@end
