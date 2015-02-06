//
//  UIButton+DLR.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UIButton+DLR.h"

#import "UIImage+DLR.h"

@implementation UIButton (DLR)

- (void)dlr_setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    UIImage *backgroundImage = [UIImage dlr_resizableImageWithColor:color];
    
    [self setBackgroundImage:backgroundImage forState:state];
}

@end
