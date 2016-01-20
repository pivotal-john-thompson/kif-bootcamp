//
//  Task3.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import "Task3.h"

@implementation Task3

- (void) beforeAll
{
    NSLog(@"Running beforeAll");
    [tester tapViewWithAccessibilityLabel:@"Edit"];
    [tester tapViewWithAccessibilityLabel:@"Done"];
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
    NSLog(@"Done beforeAll");
}

- (void) beforeEach
{
    NSLog(@"Running beforeEach");
    [tester enterText:@"YOOO Wassup my man?" intoViewWithAccessibilityLabel:@"Comment Field"];
    NSLog(@"Done beforeEach");
}

/*- (void) afterEach
{
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
}*/

- (void) afterAll
{
    NSLog(@"Running afterAll");
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Nicholas Barron"];
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
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
    NSLog(@"Done afterAll");
}

- (void) test1
{
    NSLog(@"Running test1");
    [tester tapViewWithAccessibilityLabel:@"Comment Field"];
    [tester enterTextIntoCurrentFirstResponder:@" NMU"];
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Matthew Leung"];
    NSLog(@"Done test1");
}

/*- (void) test2
{
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Matthew Leung"];
}*/

- (void) test3
{
    NSLog(@"Running test3, test 2 DNE");
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Navdeep Pama"];
    NSLog(@"Done test3");
}

- (void) test4
{
    NSLog(@"Running test4");
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Kyle Weltman"];
    NSLog(@"Done test4");
}

- (void) test5
{
    NSLog(@"Running test5");
    [tester tapViewWithAccessibilityLabel:@"This is a table"];
    [tester tapViewWithAccessibilityLabel:@"Victor Wung"];
    NSLog(@"Done test5");
}

@end