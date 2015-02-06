//
//  UIView+DLRLayoutConstraints.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/5/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIView+DLRLayoutConstraints.h"

@implementation UIView (DLRLayoutConstraints)

- (void)dlr_addConstraintsToFillParentView {
    if (!self.superview) {
        return;
    }
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *views = @{@"childView": self};
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[childView]|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:views]];
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[childView]|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:views]];
}

@end
