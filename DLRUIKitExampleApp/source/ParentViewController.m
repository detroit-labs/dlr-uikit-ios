//
//  ParentViewController.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/6/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "ParentViewController.h"

#import "AnotherViewController.h"
#import "ChildViewController.h"
#import "UIView+DLRRoundedCorners.h"
#import "UIViewController+DLRParentViewController.h"
#import "UIViewController+DLRStoryboardManager.h"

@interface ParentViewController ()

@property (weak, nonatomic) IBOutlet UIView *firstContainerView;
@property (weak, nonatomic) IBOutlet UIView *secondContainerView;

@end

@implementation ParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    
    ChildViewController *childViewController = [ChildViewController dlr_instantiateViewController];
    
    [childViewController dlr_addToParentViewController:self parentView:self.firstContainerView];

    [self.firstContainerView dlr_applyRoundedCornersWithRadius:18.0f];
    
    //
    
    AnotherViewController *anotherViewController = [AnotherViewController dlr_instantiateViewController];

    [anotherViewController dlr_addToParentViewController:self parentView:self.secondContainerView];
    
    [self.secondContainerView dlr_applyRoundedCornersWithRadius:18.0f];
}

@end
