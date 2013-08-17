//
//  DTWAppDelegate.m
//  Inheritance Playground
//
//  Created by Dave Welch on 8/16/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "DTWAppDelegate.h"
#import "DTWVersionable.h"
#import "DTWCar.h"
#import "DTWPerson.h"
#import "TPCSomeThirdPartyObject.h"


@implementation DTWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    NSLog(@"Hello world!");
    
    id<DTWVersionable> car = [[DTWCar alloc] init];
    NSLog(@"%@ (Base Class) ", [[car modifiedOn] description]);
    
    id<DTWVersionable> person = [[DTWPerson alloc] init];
    NSLog(@"%@ (Overridden) ", [[person modifiedOn] description]);
    
    id<DTWVersionable> tpc = [[TPCSomeThirdPartyObject alloc] init];
    NSLog(@"%@ (Different base class)", [[tpc modifiedOn] description]);

    
    
    return YES;
}

@end
