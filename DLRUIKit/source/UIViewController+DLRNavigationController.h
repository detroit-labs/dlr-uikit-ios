//
//  UIViewController+DLRNavigationController.h
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DLRNavigationController)

/** Returns a new navigation controller instance with this view controller as the root view controller. */
- (UINavigationController *)dlr_embedInsideNavigationController;

@end
