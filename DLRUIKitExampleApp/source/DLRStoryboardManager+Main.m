//
//  DLRStoryboardManager+Main.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/11/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "DLRStoryboardManager+Main.h"

#import "ChildViewController.h"

static NSString * const kStoryboardName = @"Main";

@implementation DLRStoryboardManager (Main)

+ (void)load {
    [self registerStoryboardName:kStoryboardName withStoryboardIdentifier:NSStringFromClass([ChildViewController class])];
}

@end
