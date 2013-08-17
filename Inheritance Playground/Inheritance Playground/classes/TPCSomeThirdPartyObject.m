//
//  TPCSomeThirdPartyObject.m
//  Inheritance Playground
//
//  Created by Dave Welch on 8/16/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "TPCSomeThirdPartyObject.h"
#import "DTWVersionable.h"

@implementation TPCSomeThirdPartyObject

-(NSDate *)modifiedOn
{
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:31];
    [components setMonth:12];
    [components setYear:1999];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [gregorian dateFromComponents:components];
    return date;
}

@end
