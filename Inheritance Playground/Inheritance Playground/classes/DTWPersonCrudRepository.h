//
//  DTWPersonCrudRepository.h
//  Inheritance Playground
//
//  Created by Dave Welch on 8/17/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DTWPerson.h"

@protocol DTWPersonCrudRepository <NSObject>

- (DTWPerson *) save:(DTWPerson * ) person;
// other crud methods here

@end
