//
//  ButtonViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "ButtonViewController.h"

#import "UIButton+DLR.h"
#import "UIView+DLRRoundedCorners.h"

@interface ButtonViewController ()

@property (weak, nonatomic) IBOutlet UIButton *veryNiceButton;

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.veryNiceButton dlr_setBackgroundColor:[UIColor brownColor] forState:UIControlStateNormal];
    [self.veryNiceButton dlr_setBackgroundColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.veryNiceButton dlr_setBackgroundColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    [self.veryNiceButton dlr_applyRoundedCornersWithRadius:18.0f];
}

- (IBAction)didTapEnabledSwitch:(UISwitch *)uiswitch {
    self.veryNiceButton.enabled = uiswitch.on;
}

@end
