//
//  UIViewController+DLRPresentedViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UIViewController+DLRPresentedViewController.h"

@implementation UIViewController (DLRPresentedViewController)

- (UIViewController *)dlr_topPresentedViewController {
    UIViewController *topPresentedViewController = self;
    
    while (topPresentedViewController.presentedViewController) {
        topPresentedViewController = topPresentedViewController.presentedViewController;
    }
    
    return topPresentedViewController;
}

@end
