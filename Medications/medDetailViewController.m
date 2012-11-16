//
//  medDetailViewController.m
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import "medDetailViewController.h"
#import "medObject.h"
@interface medDetailViewController ()
- (void)configureView;
@end

@implementation medDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(medObject *)newMedObject
{
    if (_medObjectDetails != newMedObject) {
        _medObjectDetails = newMedObject;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    medObject *theMedObjectDetails = self.medObjectDetails;
    static NSDateFormatter *formatter = nil;
    if (formatter ==nil){
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theMedObjectDetails){
        self.drugNameLabel.text = theMedObjectDetails.name;
        self.startDateLabel.text = [formatter stringFromDate:(NSDate *)theMedObjectDetails.startDate];
        self.endDateLabel.text = [formatter stringFromDate:(NSDate *)theMedObjectDetails.endDate];
        self.timeLabel.text = theMedObjectDetails.time;
        self.intervalLabel.text = theMedObjectDetails.interval;
        self.frequencyLabel.text = theMedObjectDetails.frequency;
        self.descriptionLabel.text = theMedObjectDetails.description;
    }
}

-(void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end