//
//  UIWebView+DLRViewport.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/5/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIWebView+DLRViewport.h"

@implementation WKWebView (DLRViewport)

- (void)dlr_addViewport {
    NSString *script =
    @"{"
    @"var element = document.createElement('meta');"
    @"element.name = 'viewport';"
    @"element.content = 'minimum-scale=1; maximum-scale=10';"
    @"var head = document.getElementsByTagName('head')[0];"
    @"head.appendChild(element);"
    @"}";
    
    [self evaluateJavaScript:script completionHandler:nil];
}

@end
