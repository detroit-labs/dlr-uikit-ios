//
//  DLRStoryboardManagerTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 3/25/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "DLRStoryboardManager.h"

@interface DLRStoryboardManager (Tests)

+ (instancetype)sharedInstance;

@end

@interface DLRStoryboardManagerTests : XCTestCase

@end

@implementation DLRStoryboardManagerTests

#pragma mark - sharedInstance

- (void)testSharedInstance {
    DLRStoryboardManager *sharedInstance = [DLRStoryboardManager sharedInstance];
    
    XCTAssertNotNil(sharedInstance);
    
    XCTAssertEqual(sharedInstance, [DLRStoryboardManager sharedInstance]);
}

@end
