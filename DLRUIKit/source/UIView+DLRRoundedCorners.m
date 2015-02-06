//
//  UIView+DLRRoundedCorners.m
//  DLRUIKit
//
//  Created by Nate Walczak on 4/4/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIView+DLRRoundedCorners.h"

@implementation UIView (DLRRoundedCorners)

- (void)dlr_applyRoundedCornersWithRadius:(CGFloat)cornerRadius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

@end
