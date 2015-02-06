//
//  UIColor+DLR.h
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DLR)

/** Convience methods to creating a color using a value of 0-255 (one byte). */
+ (UIColor *)dlr_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue;
+ (UIColor *)dlr_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

@end
