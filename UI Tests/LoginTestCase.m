//
//  LoginTestCase.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import "LoginTestCase.h"
#import "KIFUITestActor+EXAdditions.h"

@implementation LoginTests

- (void)beforeEach
{
    [tester navigateToLoginPage];
}

- (void)afterEach
{
    [tester returnToLoggedOutHomeScreen];
}

- (void)testSuccessfulLogin
{
    [tester enterText:@"user@example.com" intoViewWithAccessibilityLabel:@"Login User Name"];
    [tester enterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"Login Password"];
    [tester tapViewWithAccessibilityLabel:@"Log In"];
    
    // Verify that the login succeeded
    [tester waitForTappableViewWithAccessibilityLabel:@"Welcome"];
}

@end
