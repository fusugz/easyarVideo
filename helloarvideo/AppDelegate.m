//
//  AppDelegate.m
//  tangar
//
//  Created by Murphy Zheng on 2018/4/25.
//

#import "AppDelegate.h"

#import <easyar/engine.oc.h>

/*
 * Steps to create the key for this sample:
 *  1. login www.easyar.com
 *  2. create app with
 *      Name: HelloARVideo
 *      Bundle ID: cn.easyar.samples.helloarvideo
 *  3. find the created item in the list and show key
 *  4. set key string bellow
 */
NSString * key = @"===PLEASE ENTER YOUR KEY HERE===";

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    (void)application;
    (void)launchOptions;
    if (![easyar_Engine initialize:key]) {
        NSLog(@"Initialization Failed.");
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    (void)application;
    [easyar_Engine onPause];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    (void)application;
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    (void)application;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    (void)application;
    [easyar_Engine onResume];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    (void)application;
}

@end
