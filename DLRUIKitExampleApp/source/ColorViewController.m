//
//  ColorViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "ColorViewController.h"

#import "UIColor+DLR.h"
#import "UIView+DLRRoundedCorners.h"

@interface ColorViewController ()

@property (weak, nonatomic) IBOutlet UIView *navyBlueView;
@property (weak, nonatomic) IBOutlet UIView *outrageousOrangeView;
@property (weak, nonatomic) IBOutlet UIView *purpleHeartView;
@property (weak, nonatomic) IBOutlet UIView *tumbleweedView;

@property (weak, nonatomic) IBOutlet UIView *unmellowYellowView;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navyBlueView.backgroundColor = [UIColor dlr_colorWithRed:25 green:116 blue:210];
    self.outrageousOrangeView.backgroundColor = [UIColor dlr_colorWithRed:255 green:110 blue:74];
    self.purpleHeartView.backgroundColor = [UIColor dlr_colorWithRed:116 green:66 blue:200];
    self.tumbleweedView.backgroundColor = [UIColor dlr_colorWithRed:222 green:170 blue:136];
    
    self.unmellowYellowView.backgroundColor = [UIColor dlr_colorWithRed:255 green:255 blue:102 alpha:0.6f];
    
    [self.navyBlueView dlr_applyRoundedCornersWithRadius:18.0f];
    [self.outrageousOrangeView dlr_applyRoundedCornersWithRadius:18.0f];
    [self.purpleHeartView dlr_applyRoundedCornersWithRadius:18.0f];
    [self.tumbleweedView dlr_applyRoundedCornersWithRadius:18.0f];
    
    [self.unmellowYellowView dlr_applyRoundedCornersWithRadius:18.0f];
}

@end
