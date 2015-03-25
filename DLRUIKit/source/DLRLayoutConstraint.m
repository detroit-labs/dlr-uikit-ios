//
//  DLRLayoutConstraint.m
//  DLRUIKit
//
//  Created by Nate Walczak on 3/4/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "DLRLayoutConstraint.h"

@implementation DLRLayoutConstraint

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _dlr_initialConstant = self.constant;
}

- (void)dlr_applyInitialConstant {
    self.constant = self.dlr_initialConstant;
}

@end
