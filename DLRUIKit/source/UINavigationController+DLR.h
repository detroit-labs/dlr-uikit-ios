//
//  UINavigationController+DLR.h
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (DLR)

/** Returns true if the passed view controller is the first view controller in the
 stack of view controllers.  This can be helpful in determining if the
 view controller needed to be popped or dismissed. */
- (BOOL)dlr_isFirstViewController:(UIViewController *)viewController;

@end
