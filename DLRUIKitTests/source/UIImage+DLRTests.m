//
//  UIImage+DLRTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/29/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIImage+DLR.h"

@interface UIImage_DLRTests : XCTestCase

@end

@implementation UIImage_DLRTests

#pragma mark - dlr_resizableImageWithColor:

- (void)testResizableImageWithColor {
    UIImage *image = [UIImage dlr_resizableImageWithColor:[UIColor redColor]];
    
    XCTAssertNotNil(image);
    
    XCTAssertEqual(image.size.width, 1.0f);
    XCTAssertEqual(image.size.height, 1.0f);
    
    XCTAssertEqual(image.resizingMode, UIImageResizingModeTile);
    XCTAssertEqual(image.capInsets.top, 0.0f);
    XCTAssertEqual(image.capInsets.left, 0.0f);
    XCTAssertEqual(image.capInsets.bottom, 0.0f);
    XCTAssertEqual(image.capInsets.right, 0.0f);
}

#pragma mark - dlr_resizableImageWithRed:green:blue:

- (void)testResizableImageWithRedGreenBlue {
    UIImage *image = [UIImage dlr_resizableImageWithRed:255 green:0 blue:0];
    
    XCTAssertNotNil(image);
    
    XCTAssertEqual(image.size.width, 1.0f);
    XCTAssertEqual(image.size.height, 1.0f);
    
    XCTAssertEqual(image.resizingMode, UIImageResizingModeTile);
    XCTAssertEqual(image.capInsets.top, 0.0f);
    XCTAssertEqual(image.capInsets.left, 0.0f);
    XCTAssertEqual(image.capInsets.bottom, 0.0f);
    XCTAssertEqual(image.capInsets.right, 0.0f);
}

#pragma mark - dlr_resizableImageWithRed:green:blue:alpha:

- (void)testResizableImageWithRedGreenBlueAlpha {
    UIImage *image = [UIImage dlr_resizableImageWithRed:255 green:0 blue:0 alpha:0.5f];
    
    XCTAssertNotNil(image);
    
    XCTAssertEqual(image.size.width, 1.0f);
    XCTAssertEqual(image.size.height, 1.0f);
    
    XCTAssertEqual(image.resizingMode, UIImageResizingModeTile);
    XCTAssertEqual(image.capInsets.top, 0.0f);
    XCTAssertEqual(image.capInsets.left, 0.0f);
    XCTAssertEqual(image.capInsets.bottom, 0.0f);
    XCTAssertEqual(image.capInsets.right, 0.0f);
}

@end
