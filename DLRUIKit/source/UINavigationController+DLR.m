//
//  UINavigationController+DLR.m
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UINavigationController+DLR.h"

@implementation UINavigationController (DLR)

- (BOOL)dlr_isFirstViewController:(UIViewController *)viewController {
    return self.viewControllers.firstObject == viewController;
}

@end
