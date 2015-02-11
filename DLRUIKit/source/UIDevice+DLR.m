//
//  UIDevice+DLR.m
//  DLRUIKit
//
//  Created by Nate Walczak on 2/10/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "UIDevice+DLR.h"

@implementation UIDevice (DLR)

#pragma mark - User Interface Idiom

+ (BOOL)dlr_isUserInterfaceIdiomPad {
    BOOL isUserInterfaceIdiomPad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    return isUserInterfaceIdiomPad;
}

#pragma mark - System Version

+ (BOOL)dlr_isSystemVersionEqualToVersion:(NSString *)version {
    NSString *systemVersion = [self currentDevice].systemVersion;
    return [self dlr_isSystemVersion:systemVersion equalToVersion:version];
}

+ (BOOL)dlr_isSystemVersionGreaterThanVersion:(NSString *)version {
    NSString *systemVersion = [self currentDevice].systemVersion;
    return [self dlr_isSystemVersion:systemVersion greaterThanVersion:version];
}

+ (BOOL)dlr_isSystemVersionGreaterThanOrEqualToVersion:(NSString *)version {
    NSString *systemVersion = [self currentDevice].systemVersion;
    return [self dlr_isSystemVersion:systemVersion greaterThanOrEqualToVersion:version];
}

+ (BOOL)dlr_isSystemVersionLessThanVersion:(NSString *)version {
    NSString *systemVersion = [self currentDevice].systemVersion;
    return [self dlr_isSystemVersion:systemVersion lessThanVersion:version];
}

+ (BOOL)dlr_isSystemVersionLessThanOrEqualToVersion:(NSString *)version {
    NSString *systemVersion = [self currentDevice].systemVersion;
    return [self dlr_isSystemVersion:systemVersion lessThanOrEqualToVersion:version];
}

#pragma mark -

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion equalToVersion:(NSString *)version {
    return [systemVersion compare:version options:NSNumericSearch] == NSOrderedSame;
}

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion greaterThanVersion:(NSString *)version {
    return [systemVersion compare:version options:NSNumericSearch] == NSOrderedDescending;
}

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion greaterThanOrEqualToVersion:(NSString *)version {
    return [systemVersion compare:version options:NSNumericSearch] != NSOrderedAscending;
}

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion lessThanVersion:(NSString *)version {
    return [systemVersion compare:version options:NSNumericSearch] == NSOrderedAscending;
}

+ (BOOL)dlr_isSystemVersion:(NSString *)systemVersion lessThanOrEqualToVersion:(NSString *)version {
    return [systemVersion compare:version options:NSNumericSearch] != NSOrderedDescending;
}

@end
