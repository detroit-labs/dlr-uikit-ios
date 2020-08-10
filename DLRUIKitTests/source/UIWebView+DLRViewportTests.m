//
//  UIWebView+DLRViewportTests.m
//  DLRUIKit
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIWebView+DLRViewport.h"

@interface UIWebView_DLRViewportTests : XCTestCase

@end

@implementation UIWebView_DLRViewportTests

#pragma mark - dlr_resetLocalNotifications

- (void)testResetLocalNotifications {
    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 480.0f)];
    
    [webView dlr_addViewport];
}

@end
