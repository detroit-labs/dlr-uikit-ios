//
//  UIViewController+DLRParentViewController.h
//  DLRUIKit
//
//  Created by Nate Walczak on 5/5/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DLRParentViewController)

- (void)dlr_addToParentViewController:(UIViewController *)parentViewController;
- (void)dlr_addToParentViewController:(UIViewController *)parentViewController parentView:(UIView *)parentView;

- (void)dlr_removeFromParentViewController;

@end
