//
//  medObjectDataController.m
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import "medObjectDataController.h"
#import "medObject.h"
@interface medObjectDataController()
-(void)initializeDefaultDataList;
@end
@implementation medObjectDataController
-(void)setMasterMedObjectList:(NSMutableArray *)newList {
    if(_masterMedObjectList != newList){
        _masterMedObjectList = [newList mutableCopy];
    }
}
-(void)initializeDefaultDataList{
    NSMutableArray *medList = [[NSMutableArray alloc]init];
    self.masterMedObjectList = medList;
    medObject *medObjectDetails;
    NSString *nameDefault = @"tums";
    NSDate *today = [NSDate date];
    NSTimeInterval day = 3600.0;
    NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:day];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"hh:mm: a"];
    NSString *currentTime = [dateFormatter stringFromDate:today];
    NSString *intervalDefault = @"Every several hours";
    NSString *frequencyDefault = @"3x per day";
    NSString *descriptionDefault = @"the red ones";
    medObjectDetails = [[medObject alloc]initWithName:nameDefault startDate:today endDate:tomorrow interval:intervalDefault frequency:frequencyDefault description:descriptionDefault time:currentTime];
    [self addMedObjectWithMedDetails:medObjectDetails];
}
-(id)init{
    if (self = [super init]){
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}
-(NSUInteger)countOfList{
    return [self.masterMedObjectList count];
}

-(medObject *)objectInListAtIndex:(NSUInteger)index{
    return [self.masterMedObjectList objectAtIndex:index];
}

-(void)addMedObjectWithMedDetails:(medObject *)medObjectDetails{
    [self.masterMedObjectList addObject:medObjectDetails];
}
@end






