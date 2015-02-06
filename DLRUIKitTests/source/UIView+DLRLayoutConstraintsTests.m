//
//  UIView+DLRLayoutConstraintsTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIView+DLRLayoutConstraints.h"

@interface UIView_DLRLayoutConstraintsTests : XCTestCase

@end

@implementation UIView_DLRLayoutConstraintsTests

#pragma mark - dlr_addConstraintsToFillParentView

- (void)testAddConstraintsToFillParentView {
    UIView *parentView = [[UIView alloc] initWithFrame:CGRectMake(20.0f, 40.0f, 100.0f, 200.0f)];
    
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 480.0f)];
    [containerView addSubview:parentView];
    
    XCTAssertEqual(parentView.superview, containerView);
    XCTAssertEqual(parentView.subviews.count, 0);
    
    UIView *childView = [[UIView alloc] initWithFrame:CGRectZero];
    [parentView addSubview:childView];
    
    XCTAssertEqual(childView.frame.origin.x, 0.0f);
    XCTAssertEqual(childView.frame.origin.y, 0.0f);
    XCTAssertEqual(childView.frame.size.width, 0.0f);
    XCTAssertEqual(childView.frame.size.height, 0.0f);
    
    [childView dlr_addConstraintsToFillParentView];
    [containerView layoutIfNeeded];
    
    XCTAssertEqual(childView.frame.origin.x, 0.0f);
    XCTAssertEqual(childView.frame.origin.y, 0.0f);
    XCTAssertEqual(childView.frame.size.width, 100.0f);
    XCTAssertEqual(childView.frame.size.height, 200.0f);
}

- (void)testAddConstraintsToFillParentView_no_superview {
    UIView *childView = [[UIView alloc] initWithFrame:CGRectZero];
    [childView dlr_addConstraintsToFillParentView];
}

@end
