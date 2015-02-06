//
//  UIColor+DLRTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIColor+DLR.h"

@interface UIColor_DLRTests : XCTestCase

@end

@implementation UIColor_DLRTests

#pragma mark - dlr_colorWithRed:green:blue:

- (void)testColorWithRedGreenBlue {
    UIColor *redColor = [UIColor dlr_colorWithRed:255 green:0 blue:0];
    
    XCTAssertEqualObjects(redColor, [UIColor redColor]);
    
    XCTAssertNotEqualObjects(redColor, [[UIColor redColor] colorWithAlphaComponent:0.75f]);
    XCTAssertNotEqualObjects(redColor, [UIColor blueColor]);
}

#pragma mark - dlr_colorWithRed:green:blue:alpha:

- (void)testColorWithRedGreenBlueAlpha {
    UIColor *redColor = [UIColor dlr_colorWithRed:255 green:0 blue:0 alpha:0.5f];
    
    XCTAssertEqualObjects(redColor, [[UIColor redColor] colorWithAlphaComponent:0.5f]);
    
    XCTAssertNotEqualObjects(redColor, [[UIColor redColor] colorWithAlphaComponent:0.75f]);
    XCTAssertNotEqualObjects(redColor, [UIColor redColor]);
}

@end
