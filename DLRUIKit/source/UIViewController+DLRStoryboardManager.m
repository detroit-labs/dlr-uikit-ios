//
//  UIViewController+DLRStoryboardManager.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/11/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UIViewController+DLRStoryboardManager.h"

#import "DLRStoryboardManager.h"

@implementation UIViewController (DLRStoryboardManager)

+ (instancetype)dlr_instantiateViewController {
    NSString *identifier = NSStringFromClass([self class]);
    return [DLRStoryboardManager instantiateViewControllerWithIdentifier:identifier];
}

@end
