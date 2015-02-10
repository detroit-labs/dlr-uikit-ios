//
//  UIDevice+DLRTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/10/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIDevice+DLR.h"

@interface UIDevice (DLRPrivate)

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion equalToVersion:(NSString *)version;
+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion greaterThanVersion:(NSString *)version;
+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion greaterThanOrEqualToVersion:(NSString *)version;
+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion lessThanVersion:(NSString *)version;
+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion lessThanOrEqualToVersion:(NSString *)version;

@end

@interface UIDevice_DLRTests : XCTestCase

@end

@implementation UIDevice_DLRTests

#pragma mark - User Interface Idiom

#pragma mark + (BOOL)dlr_isUserInterfaceIdiomPad

- (void)testIsUserInterfaceIdiomPad {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        XCTAssertTrue([UIDevice dlr_isUserInterfaceIdiomPad]);
    }
    else {
        XCTAssertFalse([UIDevice dlr_isUserInterfaceIdiomPad]);
    }
}

#pragma mark - System Version

#pragma mark + (BOOL)dlr_isSystemVersionEqualToVersion:

- (void)testIsSystemVersionEqualToVersion {
    NSString *systemVersion = [UIDevice currentDevice].systemVersion;
    XCTAssertTrue([UIDevice dlr_isSystemVersionEqualToVersion:systemVersion]);
}

#pragma mark + (BOOL)dlr_isSystemVersion:equalToVersion:

- (void)testIsSystemVersion_equalToVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"8.1" equalToVersion:@"8.1"]);
    
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"8" equalToVersion:@"8.0"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"8" equalToVersion:@"8.1"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"8.0" equalToVersion:@"8.1"]);
}

#pragma mark + (BOOL)dlr_isSystemVersionGreaterThanVersion:

- (void)testIsSystemVersionGreaterThanVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersionGreaterThanVersion:@"6.1.1"]);
}

#pragma mark + (BOOL)dlr_isSystemVersion:greaterThanVersion:

- (void)testIsSystemVersion_greaterThanVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"8.1.1" greaterThanVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"8" greaterThanVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1" greaterThanVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1.1" greaterThanVersion:@"7.1"]);
    
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7" greaterThanVersion:@"7"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7" greaterThanVersion:@"8"]);
}

#pragma mark + (BOOL)dlr_isSystemVersionGreaterThanOrEqualToVersion:

- (void)testIsSystemVersionGreaterThanOrEqualToVersion {
    NSString *systemVersion = [UIDevice currentDevice].systemVersion;
    XCTAssertTrue([UIDevice dlr_isSystemVersionGreaterThanOrEqualToVersion:systemVersion]);
}

#pragma mark + (BOOL)dlr_isSystemVersion:greaterThanOrEqualToVersion:

- (void)testIsSystemVersion_greaterThanOrEqualToVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"8.1.1" greaterThanOrEqualToVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"8" greaterThanOrEqualToVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1" greaterThanOrEqualToVersion:@"7"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1.1" greaterThanOrEqualToVersion:@"7.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" greaterThanOrEqualToVersion:@"7"]);
    
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7.1.1" greaterThanOrEqualToVersion:@"7.1.2"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7" greaterThanOrEqualToVersion:@"8"]);
}

#pragma mark + (BOOL)dlr_isSystemVersionLessThanVersion:

- (void)testIsSystemVersionLessThanVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersionLessThanVersion:@"14.9"]);
}

#pragma mark + (BOOL)dlr_isSystemVersion:lessThanVersion:

- (void)testIsSystemVersion_lessThanVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanVersion:@"8.1.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanVersion:@"8"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanVersion:@"7.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1" lessThanVersion:@"7.1.1"]);
    
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7" lessThanVersion:@"7"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"8" lessThanVersion:@"7"]);
}

#pragma mark + (BOOL)dlr_isSystemVersionLessThanOrEqualToVersion:

- (void)testIsSystemVersionLessThanOrEqualToVersion {
    NSString *systemVersion = [UIDevice currentDevice].systemVersion;
    XCTAssertTrue([UIDevice dlr_isSystemVersionLessThanOrEqualToVersion:systemVersion]);
}

#pragma mark + (BOOL)dlr_isSystemVersion:lessThanOrEqualToVersion:

- (void)testIsSystemVersion_lessThanOrEqualToVersion {
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanOrEqualToVersion:@"8.1.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanOrEqualToVersion:@"8"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanOrEqualToVersion:@"7.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7.1" lessThanOrEqualToVersion:@"7.1.1"]);
    XCTAssertTrue([UIDevice dlr_isSystemVersion:@"7" lessThanOrEqualToVersion:@"7"]);
    
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"7.1.2" lessThanOrEqualToVersion:@"7.1.1"]);
    XCTAssertFalse([UIDevice dlr_isSystemVersion:@"8" lessThanOrEqualToVersion:@"7"]);
}

@end
