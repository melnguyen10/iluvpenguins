//
//  medObjectDataController.h
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import <Foundation/Foundation.h>
@class medObject;
@interface medObjectDataController : NSObject
@property (nonatomic, copy) NSMutableArray *masterMedObjectList;
-(NSUInteger)countOfList;
-(medObject *)objectInListAtIndex:(NSUInteger)index;
-(void)addMedObjectWithMedDetails: (medObject *)medObjectDetails;
@end
