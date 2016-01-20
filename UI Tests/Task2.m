//
//  Task2.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import "Task2.h"

@implementation Task2

- (void) test1GoThroughTable
{
    [tester waitForViewWithAccessibilityLabel:@"This is a table"];
    UITableView *table = (UITableView *)[tester waitForViewWithAccessibilityLabel:@"Test"];
    NSInteger numRows = [table numberOfRowsInSection:0];
//    NSInteger numRows = 10;
    for (unsigned int i = 0; i < numRows; ++i)
    {
        [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0] inTableViewWithAccessibilityIdentifier:@"Test"];
        [tester tapViewWithAccessibilityLabel:@"Comment Field"];
        [tester tapViewWithAccessibilityLabel:@"This is a table"];
    }
}

@end
