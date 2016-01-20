//
//  KIFUITestActor+EXAdditions.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import "KIFUITestActor+EXAdditions.h"

@implementation KIFUITestActor (EXAdditions)

- (void)navigateToLoginPage
{
    [self tapViewWithAccessibilityLabel:@"Login/Sign Up"];
    [self tapViewWithAccessibilityLabel:@"Skip this ad"];
}

- (void)returnToLoggedOutHomeScreen
{
    [self tapViewWithAccessibilityLabel:@"Logout"];
    [self tapViewWithAccessibilityLabel:@"Logout"]; // Dismiss alert.
}

@end