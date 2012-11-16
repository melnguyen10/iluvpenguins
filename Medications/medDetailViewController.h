//
//  medDetailViewController.h
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import <UIKit/UIKit.h>
@class medObject;
@interface medDetailViewController : UITableViewController
@property (strong,nonatomic) medObject *medObjectDetails;
@property (weak, nonatomic) IBOutlet UILabel *drugNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *startDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *endDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *intervalLabel;
@property (weak, nonatomic) IBOutlet UILabel *frequencyLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@end
