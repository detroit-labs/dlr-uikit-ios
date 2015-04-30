//
//  UIViewController+DLRParentViewControllerTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 10/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIViewController+DLRParentViewController.h"

@interface UIViewController_DLRParentViewControllerTests : XCTestCase

@end

@implementation UIViewController_DLRParentViewControllerTests

#pragma mark - dlr_addToParentViewController:

- (void)testAddToParentViewController {
    UIViewController *childViewController = [[UIViewController alloc] init];
    
    XCTAssertNil(childViewController.parentViewController);
    XCTAssertNil(childViewController.view.superview);
    
    UIViewController *parentViewController = [[UIViewController alloc] init];
    
    [childViewController dlr_addToParentViewController:parentViewController];
    
    XCTAssertEqual(childViewController.parentViewController, parentViewController);
    XCTAssertEqual(childViewController.view.superview, parentViewController.view);
    
    XCTAssertEqual(parentViewController.view.subviews.count, 1);
}

#pragma mark - dlr_addToParentViewController: parentView:

- (void)testAddToParentViewControllerParentView {
    UIViewController *childViewController = [[UIViewController alloc] init];
    
    XCTAssertNil(childViewController.parentViewController);
    XCTAssertNil(childViewController.view.superview);
    
    UIViewController *parentViewController = [[UIViewController alloc] init];
    UIView *anotherView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 200.0f)];
    [parentViewController.view addSubview:anotherView];
    
    [childViewController dlr_addToParentViewController:parentViewController parentView:anotherView];
    
    XCTAssertEqual(childViewController.parentViewController, parentViewController);
    XCTAssertEqual(childViewController.view.superview, anotherView);
}

#pragma mark - dlr_removeFromParentViewController

- (void)testRemoveFromParentViewController {
    UIViewController *childViewController = [[UIViewController alloc] init];
    
    XCTAssertNil(childViewController.parentViewController);
    XCTAssertNil(childViewController.view.superview);
    
    UIViewController *parentViewController = [[UIViewController alloc] init];
    
    [childViewController dlr_addToParentViewController:parentViewController];
    
    XCTAssertEqual(childViewController.parentViewController, parentViewController);
    XCTAssertEqual(childViewController.view.superview, parentViewController.view);
    
    XCTAssertEqual(parentViewController.view.subviews.count, 1);

    [childViewController dlr_removeFromParentViewController];
    
    XCTAssertNil(childViewController.parentViewController);
    XCTAssertNil(childViewController.view.superview);
    
    XCTAssertEqual(parentViewController.view.subviews.count, 0);

}

@end
