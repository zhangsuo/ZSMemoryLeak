//
//  AppDelegate.m
//  ZSMemoryLeak
//
//  Created by zenking on 2022/4/25.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    ViewController  *VC = [[ViewController alloc]init];
    UINavigationController *naVC= [[UINavigationController alloc]initWithRootViewController:VC];
    self.window.rootViewController = naVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle







@end
