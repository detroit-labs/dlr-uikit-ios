//
//  UIView+DLRRoundedCornersTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIView+DLRRoundedCorners.h"

@interface UIView_DLRRoundedCornersTests : XCTestCase

@end

@implementation UIView_DLRRoundedCornersTests

#pragma mark - dlr_applyRoundedCornersWithRadius:

- (void)testApplyRoundedCornersWithRadius {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    
    XCTAssertFalse(view.layer.masksToBounds);
    XCTAssertEqual(view.layer.cornerRadius, 0.0f);
    
    [view dlr_applyRoundedCornersWithRadius:16.0f];
    
    XCTAssertTrue(view.layer.masksToBounds);
    XCTAssertEqual(view.layer.cornerRadius, 16.0f);
}

@end
