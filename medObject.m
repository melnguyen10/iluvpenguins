//
//  medObject.m
//  Medications
//
//  Created by Tim on 11/15/12.
//  Copyright (c) 2012 Tim. All rights reserved.
//

#import "medObject.h"

@implementation medObject
-(id)initWithName:(NSString *)name startDate:(NSDate *)startDate endDate:(NSDate *)endDate interval:(NSString *)interval frequency:(NSString *)frequency description:(NSString *)description time:(NSString *)time{
    self = [super init];
    if (self){
        _name = name;
        _startDate = startDate;
        _endDate = endDate;
        _interval = interval;
        _frequency = frequency;
        _description = description;
        _time = time;
        return self;
    }
    return nil;
}
@end
