//
//  UIViewController+DLRPresentedViewController.h
//  DLRUIKit
//
//  Created by Nate Walczak on 5/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DLRPresentedViewController)

/** Returns the top most presented view controller, which could be this view controller. */
- (UIViewController *)dlr_topPresentedViewController;

@end
