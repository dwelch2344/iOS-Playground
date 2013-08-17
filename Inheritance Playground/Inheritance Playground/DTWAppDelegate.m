//
//  DTWAppDelegate.m
//  Inheritance Playground
//
//  Created by Dave Welch on 8/16/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "Global.h"

#import "DTWAppDelegate.h"
#import "DTWVersionable.h"
#import "DTWCar.h"
#import "DTWPerson.h"
#import "TPCSomeThirdPartyObject.h"


#import "DTWPersonService.h"
#import "DTWPersonInMemoryRepository.h"


@implementation DTWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    ALog(@"Hello world!");
    
    // Create our models and show their different impl's of modifiedOn
    id<DTWVersionable> car = [[DTWCar alloc] init];
    ALog(@"%@ (Base Class) ", [[car modifiedOn] description]);
    
    id<DTWVersionable> person = [[DTWPerson alloc] init];
    ALog(@"%@ (Overridden) ", [[person modifiedOn] description]);
    
    id<DTWVersionable> tpc = [[TPCSomeThirdPartyObject alloc] init];
    ALog(@"%@ (Different base class)", [[tpc modifiedOn] description]);

    

    id<DTWPersonCrudRepository> repo = [[DTWPersonInMemoryRepository alloc] init];
    DTWPersonService* service = [[DTWPersonService alloc] initWithRepository:repo];
    [service testMethodWithPerson:person];
    
    return YES;
}

@end
