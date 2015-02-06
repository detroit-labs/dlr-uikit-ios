//
//  UIImage+DLR.h
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DLR)

+ (UIImage *)dlr_resizableImageWithColor:(UIColor *)color;
+ (UIImage *)dlr_resizableImageWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue;
+ (UIImage *)dlr_resizableImageWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

@end
