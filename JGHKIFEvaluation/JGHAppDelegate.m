//
//  JGHAppDelegate.m
//  JGHKIFEvaluation
//
//  Created by Julian Grosshauser on 11/02/15.
//  Copyright (c) 2015 Julian Grosshauser. All rights reserved.
//

#import "JGHAppDelegate.h"
#import "JGHViewController.h"

@implementation JGHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    JGHViewController *viewController = [JGHViewController new];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];


    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
