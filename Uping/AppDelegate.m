//
//  AppDelegate.m
//  Uping
//
//  Created by gejiangs on 2019/11/25.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "WXApi.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    BOOL succ = [WXApi registerApp:@"wxe9b3cca4b046f7d9"];
    NSLog(@"success:%d", succ);
    
    return YES;
}

#pragma mark 打开第三方应用
-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    NSString *source = options[UIApplicationOpenURLOptionsSourceApplicationKey];
    NSLog(@"sourceApplication = %@",source);
    
    return YES;
}
@end
