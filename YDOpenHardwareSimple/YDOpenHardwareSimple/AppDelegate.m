//
//  AppDelegate.m
//  YDOpenHardwareSimple
//
//  Created by 张旻可 on 16/2/2.
//  Copyright © 2016年 YD. All rights reserved.
//

#import "AppDelegate.h"
#import <YDOpenHardwareThirdPart/YDOpenHardwareThirdPart.h>
#import <YDOpenHardwareCore/YDOpenHardwareCoreLoader.h>

#import <YDOpenHardwareSDK/YDOpenHardwareUser.h>



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [YDOpenHardwareCoreLoader load];
    [ThirdPartSDK registerApp: @"test" registerAppBlock: ^(RegisterAppState registerAppState) {
        YDOpenHardwareUser *user = [[YDOpenHardwareUser alloc] init];
        user.province = @"广东省";
        user.city = @"深圳市";
        user.userID = @133;
        user.rank = @1;
        user.sex = @0;
        user.nick = @"test";
        user.loveSports = @"乒乓球";
        user.phone = @"13311112222";
        user.signature = @"这是签名";
        user.height = @170;
        user.birth = [NSDate dateWithTimeIntervalSince1970: 694195200];
        [[NSNotificationCenter defaultCenter] postNotificationName: NtfOpenHardwareUserChange object: user];
    }];
    
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
