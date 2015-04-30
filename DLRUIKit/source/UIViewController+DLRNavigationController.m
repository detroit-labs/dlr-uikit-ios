//
//  UIViewController+DLRNavigationController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UIViewController+DLRNavigationController.h"

@implementation UIViewController (DLRNavigationController)

- (UINavigationController *)dlr_embedInsideNavigationController {
    return [[UINavigationController alloc] initWithRootViewController:self];
}

@end
