//
//  GestureSamplesAppDelegate_iPad.m
//  GestureSamples
//
//  Created by Navarro on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GestureSamplesAppDelegate_iPad.h"

@implementation GestureSamplesAppDelegate_iPad

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    SwipeGestureController *gesture_controller = [[SwipeGestureController alloc]initWithNibName:@"SwipeGestureView" bundle:nil];
    
    [self.window addSubview:gesture_controller.view];
    
    return YES;
}

- (void)dealloc
{
	[super dealloc];
}

@end
