//
//  UIViewController+DLRParentViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/5/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIViewController+DLRParentViewController.h"

#import "UIView+DLRLayoutConstraints.h"

@implementation UIViewController (DLRParentViewController)

- (void)dlr_addToParentViewController:(UIViewController *)parentViewController {
    [self dlr_addToParentViewController:parentViewController parentView:nil];
}

- (void)dlr_addToParentViewController:(UIViewController *)parentViewController parentView:(UIView *)parentView {
    if (!parentView) {
        parentView = parentViewController.view;
    }
    
    [parentViewController addChildViewController:self];
    self.view.frame = parentView.frame;
    [parentView addSubview:self.view];
    [self didMoveToParentViewController:parentViewController];
    
    [self.view dlr_addConstraintsToFillParentView];
}

- (void)dlr_removeFromParentViewController {
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end
