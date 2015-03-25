//
//  UIButton+DLRTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIButton+DLR.h"

@interface UIButton_DLRTests : XCTestCase

@end

@implementation UIButton_DLRTests

#pragma mark - dlr_setBackgroundColor:forState:

- (void)testSetBackgroundColorForState {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    UIImage *backgroundImage = [button backgroundImageForState:UIControlStateNormal];
    XCTAssertNil(backgroundImage);
    
    [button dlr_setBackgroundColor:[UIColor redColor] forState:UIControlStateNormal];
    
    backgroundImage = [button backgroundImageForState:UIControlStateNormal];
    XCTAssertNotNil(backgroundImage);
}

@end
