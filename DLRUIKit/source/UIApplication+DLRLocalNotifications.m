//
//  UIApplication+DLRLocalNotifications.m
//  DLRUIKit
//
//  Created by Nate Walczak on 5/9/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "UIApplication+DLRLocalNotifications.h"

@implementation UIApplication (DLRLocalNotifications)

- (void)dlr_resetLocalNotifications {
    // replacing all of the scheduled local notifications with the current location
    // notifications will keep the future notifications and remove the past ones
    self.scheduledLocalNotifications = self.scheduledLocalNotifications;
}

@end
