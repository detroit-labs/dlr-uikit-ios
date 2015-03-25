//
//  DLRLayoutConstraint.h
//  DLRUIKit
//
//  Created by Nate Walczak on 3/4/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLRLayoutConstraint : NSLayoutConstraint

/** The initial value of the constant property after awake from nib. */
@property (readonly, nonatomic) CGFloat dlr_initialConstant;

- (void)dlr_applyInitialConstant;

@end
