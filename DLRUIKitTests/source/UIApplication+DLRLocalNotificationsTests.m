//
//  UIApplication+DLRLocalNotificationsTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIApplication+DLRLocalNotifications.h"

@interface UIApplication_DLRLocalNotificationsTests : XCTestCase

@end

@implementation UIApplication_DLRLocalNotificationsTests

#pragma mark - dlr_resetLocalNotifications

- (void)testResetLocalNotifications {
    UIApplication *application = [UIApplication sharedApplication];
    
    XCTAssertNotNil(application);
    
    [application dlr_resetLocalNotifications];
}

@end
