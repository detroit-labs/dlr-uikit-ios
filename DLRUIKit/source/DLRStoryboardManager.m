//
//  DLRStoryboardManager.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/11/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "DLRStoryboardManager.h"

@interface DLRStoryboardManager ()

@property (nonatomic) NSMutableDictionary *something;

@end

@implementation DLRStoryboardManager

+ (instancetype)sharedInstance {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _something = [NSMutableDictionary dictionary];
        
    }
    return self;
}

+ (void)registerStoryboardName:(NSString *)name withStoryboardIdentifier:(NSString *)identifier {
    DLRStoryboardManager *storyboardManager = [self sharedInstance];
    
    storyboardManager.something[identifier] = [name copy];
}

+ (id)instantiateViewControllerWithIdentifier:(NSString *)identifier {
    DLRStoryboardManager *storyboardManager = [self sharedInstance];
    
    NSString *storyboardName = storyboardManager.something[identifier];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    id viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
    return viewController;
}

@end
