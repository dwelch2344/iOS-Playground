//
//  DTWPersonService.m
//  Inheritance Playground
//
//  Created by Dave Welch on 8/17/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "DTWPersonService.h"
#import "DTWPersonCrudRepository.h"
#import "Global.h"

@implementation DTWPersonService


- (id) init
{
    NSAssert(NO, @"Dependencies required...");
    return nil;
}

- (id) initWithRepository:(id<DTWPersonCrudRepository>) repository
{
    // TODO assert repo is valid
    self = [super init];
    self.repo = repository;
    return self;
}

-(void)testMethodWithPerson:(DTWPerson *)person
{
    ALog(@"Before Save: %@", person);
    person = [self.repo save:person];
    ALog(@"After Save: %@", person);
}

@end
