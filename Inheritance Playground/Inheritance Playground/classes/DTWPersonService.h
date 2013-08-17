//
//  DTWPersonService.h
//  Inheritance Playground
//
//  Created by Dave Welch on 8/17/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DTWPersonCrudRepository.h"

@interface DTWPersonService : NSObject

@property(nonatomic, strong) id<DTWPersonCrudRepository> repo;

- (id) initWithRepository:(id<DTWPersonCrudRepository>) repository;
- (void) testMethodWithPerson: (DTWPerson*)person;

@end
