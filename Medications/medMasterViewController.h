//
//  medMasterViewController.h
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import <UIKit/UIKit.h>
@class medObjectDataController;
@interface medMasterViewController : UITableViewController
@property (strong, nonatomic)medObjectDataController *dataController;
@end
