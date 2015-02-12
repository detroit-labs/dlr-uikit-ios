//
//  DLRStoryboardManager+Another.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/11/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "DLRStoryboardManager+Another.h"

#import "AnotherViewController.h"

static NSString * const kStoryboardName = @"Another";

@implementation DLRStoryboardManager (Another)

+ (void)load {
    [self registerStoryboardName:kStoryboardName withStoryboardIdentifier:NSStringFromClass([AnotherViewController class])];
}

@end
