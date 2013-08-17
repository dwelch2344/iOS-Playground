//
//  DTWPerson.m
//  Inheritance Playground
//
//  Created by Dave Welch on 8/16/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "DTWPerson.h"

@implementation DTWPerson

-(NSDate *)modifiedOn
{
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:18];
    [components setMonth:6];
    [components setYear:1986];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [gregorian dateFromComponents:components];
    return date;
}

@end
