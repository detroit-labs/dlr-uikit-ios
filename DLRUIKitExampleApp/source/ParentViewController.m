//
//  ParentViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "ParentViewController.h"

#import "UIView+DLRRoundedCorners.h"
#import "UIViewController+DLRParentViewController.h"

@interface ParentViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ChildViewController"];
    
    [childViewController dlr_addToParentViewController:self parentView:self.containerView];
    
    [self.containerView dlr_applyRoundedCornersWithRadius:18.0f];
}

@end
