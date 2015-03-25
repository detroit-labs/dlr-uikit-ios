//
//  UIViewController+DLRStoryboardManagerTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 3/25/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ChildViewController.h"
#import "UIViewController+DLRStoryboardManager.h"

@interface UIViewController_DLRStoryboardManagerTests : XCTestCase

@end

@implementation UIViewController_DLRStoryboardManagerTests

#pragma mark - dlr_instantiateViewController

- (void)testInstantiateViewController {
    UIViewController *viewController = [ChildViewController dlr_instantiateViewController];
    
    XCTAssertNotNil(viewController);
    
    XCTAssertTrue([viewController isKindOfClass:[ChildViewController class]]);
}

- (void)testInstantiateViewControllerFailure {
    UIViewController *viewController = [UIViewController dlr_instantiateViewController];
    
    XCTAssertNil(viewController);
}

@end
