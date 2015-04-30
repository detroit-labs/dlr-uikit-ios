//
//  UINavigationController+DLRTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 4/29/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UINavigationController+DLR.h"

@interface UINavigationController_DLRTests : XCTestCase

@end

@implementation UINavigationController_DLRTests

#pragma mark - dlr_isFirstViewController:

- (void)testIsFirstViewController {
    UIViewController *viewController = [[UIViewController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    XCTAssertEqual(navigationController.viewControllers.count, 1);
    XCTAssertEqual(navigationController.viewControllers.firstObject, viewController);
    
    XCTAssertTrue([navigationController dlr_isFirstViewController:viewController]);
}

- (void)testIsFirstViewControllerNot {
    UIViewController *firstViewController = [[UIViewController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    
    UIViewController *secondViewController = [[UIViewController alloc] init];
    [navigationController pushViewController:secondViewController animated:NO];
    
    XCTAssertEqual(navigationController.viewControllers.count, 2);
    XCTAssertEqual(navigationController.viewControllers[0], firstViewController);
    XCTAssertEqual(navigationController.viewControllers[1], secondViewController);
    
    XCTAssertFalse([navigationController dlr_isFirstViewController:secondViewController]);
}

@end
