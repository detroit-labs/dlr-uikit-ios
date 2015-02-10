//
//  UIDevice+DLR.h
//  DLRUIKit
//
//  Created by Nate Walczak on 2/10/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (DLR)

// User Interface Idiom

/** Returns true if current device has an idiom of pad. */
+ (BOOL)dlr_isUserInterfaceIdiomPad;

// System Version

/** Returns true if the curent device system version is equal to version. */
+ (BOOL)dlr_isSystemVersionEqualToVersion:(NSString *)version;

/** Returns true if the curent device system version is greater than version. */
+ (BOOL)dlr_isSystemVersionGreaterThanVersion:(NSString *)version;

/** Returns true if the curent device system version is greater than or equal to version. */
+ (BOOL)dlr_isSystemVersionGreaterThanOrEqualToVersion:(NSString *)version;

/** Returns true if the curent device system version is less than version. */
+ (BOOL)dlr_isSystemVersionLessThanVersion:(NSString *)version;

/** Returns true if the curent device system version is less than or equal to version. */
+ (BOOL)dlr_isSystemVersionLessThanOrEqualToVersion:(NSString *)version;

@end
