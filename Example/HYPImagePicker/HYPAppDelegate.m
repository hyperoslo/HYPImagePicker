//
//  HYPAppDelegate.m
//  HYPImagePicker
//
//  Created by CocoaPods on 10/16/2014.
//  Copyright (c) 2014 Elvis Nuñez. All rights reserved.
//

#import "HYPAppDelegate.h"
#import "HYPViewController.h"

@implementation HYPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    HYPViewController *controller = [[HYPViewController alloc] init];

    self.window.rootViewController = controller;

    [self.window makeKeyAndVisible];

    return YES;
}
							
@end
