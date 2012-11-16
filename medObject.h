//
//  medObject.h
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface medObject : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSDate *startDate;
@property (nonatomic,strong) NSDate *endDate;
@property (nonatomic,copy) NSString *interval;
@property (nonatomic,copy) NSString *frequency;
@property (nonatomic,copy) NSString *description;
@property (nonatomic, strong) NSString *time;
-(id)initWithName:(NSString *)name startDate: (NSDate *) startDate endDate:(NSDate *)endDate
interval: (NSString *)interval frequency: (NSString *)frequency description: (NSString *) description
time: (NSString *)time;
@end
