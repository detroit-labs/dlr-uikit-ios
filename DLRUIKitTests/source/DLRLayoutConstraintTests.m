//
//  DLRLayoutConstraintTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 3/25/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "DLRLayoutConstraint.h"
#import "LayoutConstraintViewController.h"
#import "UIViewController+DLRStoryboardManager.h"

@interface LayoutConstraintViewController (Tests)

@property (weak, nonatomic) IBOutlet DLRLayoutConstraint *layoutConstraint;

@end

@interface DLRLayoutConstraintTests : XCTestCase

@end

@implementation DLRLayoutConstraintTests

#pragma mark - dlr_applyInitialConstant

- (void)testApplyInitialConstant {
    LayoutConstraintViewController *layoutConstraintViewController = [LayoutConstraintViewController dlr_instantiateViewController];
    [layoutConstraintViewController view];
    
    DLRLayoutConstraint *layoutConstraint = layoutConstraintViewController.layoutConstraint;
    
    XCTAssertEqual(50, layoutConstraint.constant);
    
    layoutConstraint.constant = -10;
    XCTAssertEqual(-10, layoutConstraint.constant);
    
    [layoutConstraint dlr_applyInitialConstant];
    XCTAssertEqual(50, layoutConstraint.constant);
}

@end
