//
//  UIViewController+DLRPresentedViewControllerTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIViewController+DLRPresentedViewController.h"

@interface UIViewController_DLRPresentedViewControllerTests : XCTestCase

@end

@implementation UIViewController_DLRPresentedViewControllerTests

#pragma mark - dlr_topPresentedViewController:

- (void)testTopPresentedViewControllerWithModalViewController {
    UIViewController *rootViewController = [[UIViewController alloc] init];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    keyWindow.rootViewController = rootViewController;
    
    UIViewController *firstModalViewController = [[UIViewController alloc] init];
    [rootViewController presentViewController:firstModalViewController animated:NO completion:nil];
    
    UIViewController *topPresentedViewController = [rootViewController dlr_topPresentedViewController];
    XCTAssertEqual(topPresentedViewController, firstModalViewController);
}

- (void)testTopPresentedViewControllerWithoutModalViewController {
    UIViewController *rootViewController = [[UIViewController alloc] init];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    keyWindow.rootViewController = rootViewController;
    
    UIViewController *topPresentedViewController = [rootViewController dlr_topPresentedViewController];
    XCTAssertEqual(topPresentedViewController, rootViewController);
}

@end
