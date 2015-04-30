//
//  UIViewController+DLRNavigationControllerTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIViewController+DLRNavigationController.h"

@interface UIViewController_DLRNavigationControllerTests : XCTestCase

@end

@implementation UIViewController_DLRNavigationControllerTests

#pragma mark - dlr_embedInsideNavigationController

- (void)testEmbedInsideNavigationController {
    UIViewController *viewController = [[UIViewController alloc] init];
    
    UINavigationController *navigationController = [viewController dlr_embedInsideNavigationController];
    
    XCTAssertEqual(navigationController.viewControllers.count, 1);
    XCTAssertEqual(navigationController.viewControllers.firstObject, viewController);
}

@end
