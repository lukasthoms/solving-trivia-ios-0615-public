//
//  FISAppDelegate.m
//  solving-trivia
//
//  Created by iOS Staff on 9/30/14
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end
@implementation FISAppDelegate

-(NSString*) solveTrivia
{

    NSArray *states = @[@"Alabama",
                        @"Alaska",
                        @"Arizona",
                        @"Arkansas",
                        @"California",
                        @"Colorado",
                        @"Connecticut",
                        @"Delaware",
                        @"Florida",
                        @"Georgia",
                        @"Hawaii",
                        @"Idaho",
                        @"Illinois",
                        @"Indiana",
                        @"Iowa",
                        @"Kansas",
                        @"Kentucky",
                        @"Louisiana",
                        @"Maine",
                        @"Maryland",
                        @"Massachusetts",
                        @"Michigan",
                        @"Minnesota",
                        @"Mississippi",
                        @"Missouri",
                        @"Montana",
                        @"Nebraska",
                        @"Nevada",
                        @"New Hampshire",
                        @"New Jersey",
                        @"New Mexico",
                        @"New York",
                        @"North Carolina",
                        @"North Dakota",
                        @"Ohio",
                        @"Oklahoma",
                        @"Oregon",
                        @"Pennsylvania",
                        @"Rhode Island",
                        @"South Carolina",
                        @"South Dakota",
                        @"Tennessee",
                        @"Texas",
                        @"Utah",
                        @"Vermont",
                        @"Virginia",
                        @"Washington",
                        @"West Virginia",
                        @"Wisconsin",
                        @"Wyoming"];
    
    NSArray *capitals = @[
                          @"Montgomery",
                          @"Juneau",
                          @"Phoenix",
                          @"Little Rock",
                          @"Sacramento",
                          @"Denver",
                          @"Hartford",
                          @"Dover",
                          @"Tallahassee",
                          @"Atlanta",
                          @"Honolulu",
                          @"Boise",
                          @"Springfield",
                          @"Indianapolis",
                          @"Des Moines",
                          @"Topeka",
                          @"Frankfort",
                          @"Baton Rouge",
                          @"Augusta",
                          @"Annapolis",
                          @"Boston",
                          @"Lansing",
                          @"St. Paul",
                          @"Jackson",
                          @"Jefferson City",
                          @"Helena",
                          @"Lincoln",
                          @"Carson City",
                          @"Concord",
                          @"Trenton",
                          @"Santa Fe",
                          @"Albany",
                          @"Raleigh",
                          @"Bismarck",
                          @"Columbus",
                          @"Oklahoma City",
                          @"Salem",
                          @"Harrisburg",
                          @"Providence",
                          @"Columbia",
                          @"Pierre",
                          @"Nashville",
                          @"Austin",
                          @"Salt Lake City",
                          @"Montpelier",
                          @"Richmond",
                          @"Olympia",
                          @"Charleston",
                          @"Madison",
                          @"Cheyenne"];

    NSMutableString *solution = [[NSMutableString alloc] init];
    
    for (NSUInteger i=0; i<states.count; i++) {
        
        NSString *lowercaseState = [[states objectAtIndex:i] lowercaseString];
        NSMutableArray *stateLetters = [[NSMutableArray alloc] init];
        for (NSUInteger y=0; y<lowercaseState.length; y++) {
            
            NSString *letter = [[NSString alloc] initWithFormat:@"%C",[lowercaseState characterAtIndex:y] ];
            [stateLetters addObject:letter];
        }
        
        NSString *lowercaseCapital = [[capitals objectAtIndex:i] lowercaseString];
        NSMutableArray *capitalLetters = [[NSMutableArray alloc] init];
        for (NSUInteger y=0; y<lowercaseCapital.length; y++) {
            NSString *letter = [[NSString alloc] initWithFormat:@"%C",[lowercaseCapital characterAtIndex:y] ];
            [capitalLetters addObject:letter];
        } NSLog(@"%@", capitalLetters);
        
        BOOL match = NO;
        for (NSUInteger y=0; y<stateLetters.count; y++) {
            for (NSUInteger j=0; j<capitalLetters.count; j++) {
                if ([stateLetters[y] isEqualToString:capitalLetters[j]]) {
                    match = YES;
                    NSLog(@"A match was found.");
                }
            }
        }
        if (match == NO) {
            [solution appendString:states[i]];
        } else {
            match = YES;
        }
    }
    NSLog(@"%@", solution);
    
    return solution;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self solveTrivia];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
@end
