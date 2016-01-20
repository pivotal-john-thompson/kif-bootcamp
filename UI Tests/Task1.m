//
//  Task1.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import "Task1.h"

@implementation Task1

- (void) test1OpenPivot
{
    [tester waitForViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
}

- (void) test2ConfirmData
{
    [tester waitForViewWithAccessibilityLabel:@"KIF Automator"];
    [tester waitForViewWithAccessibilityLabel:@"3"];
}

@end