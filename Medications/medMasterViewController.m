//
//  medMasterViewController.m
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import "medMasterViewController.h"
#import "medDetailViewController.h"
#import "medObjectDataController.h"
#import "medObject.h"

@implementation medMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[medObjectDataController alloc]init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"medObjectCell";
    static NSDateFormatter *formatter = nil;
    if (formatter == nil){
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    medObject *medObjectAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    [[cell textLabel] setText:medObjectAtIndex.name];
    return cell;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showMedDetails"]) {
        medDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.medObjectDetails = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
    }	
}

@end

