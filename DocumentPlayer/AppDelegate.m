//
//  AppDelegate.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "AppDelegate.h"
#import "DocumentVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%s", __func__);
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%s", __func__);
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[DocumentVC alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationProtectedDataDidBecomeAvailable:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationSignificantTimeChange:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder
{
    NSLog(@"%s", __func__);
    return YES;
}

- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder
{
    NSLog(@"%s", __func__);
    [application ignoreSnapshotOnNextApplicationLaunch];
    return YES;
}

- (UIViewController *)application:(UIApplication *)application viewControllerWithRestorationIdentifierPath:(NSArray<NSString *> *)identifierComponents coder:(NSCoder *)coder
{
    NSLog(@"%s", __func__);
    NSLog(@"identifierComponents = %@", identifierComponents);
    return nil;
}

- (void)application:(UIApplication *)application willEncodeRestorableStateWithCoder:(NSCoder *)coder
{
    NSLog(@"%s", __func__);
}

- (void)application:(UIApplication *)application didDecodeRestorableStateWithCoder:(NSCoder *)coder
{
    NSLog(@"%s", __func__);
}

- (void)application:(UIApplication *)application handleEventsForBackgroundURLSession:(NSString *)identifier completionHandler:(void (^)(void))completionHandler
{
    NSLog(@"%s", __func__);
    completionHandler();
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSLog(@"%s", __func__);
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"%s error = %@", __func__, error);
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    NSLog(@"%s", __func__);
    completionHandler(UIBackgroundFetchResultNewData);
}

- (BOOL)application:(UIApplication *)application willContinueUserActivityWithType:(NSString *)userActivityType
{
    NSLog(@"%s", __func__);
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler
{
    NSLog(@"%s", __func__);
    restorationHandler(nil);
    return YES;
}

- (void)application:(UIApplication *)application didUpdateUserActivity:(NSUserActivity *)userActivity
{
    NSLog(@"%s", __func__);
}

- (void)application:(UIApplication *)application didFailToContinueUserActivityWithType:(NSString *)userActivityType error:(NSError *)error
{
    NSLog(@"%s", __func__);
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSLog(@"%s", __func__);
    completionHandler(YES);
}

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void (^)(NSDictionary * _Nullable))reply
{
    NSLog(@"%s", __func__);
    reply(nil);
}

- (void)applicationShouldRequestHealthAuthorization:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    NSLog(@"%s", __func__);
    NSLog(@"app = %@", app);
    NSLog(@"url = %@", url);
    NSLog(@"options = %@", options);
    return NO;
}

- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(UIApplicationExtensionPointIdentifier)extensionPointIdentifier
{
    NSLog(@"%s", __func__);
    return YES;
}

- (void)application:(UIApplication *)application handleIntent:(INIntent *)intent completionHandler:(void (^)(INIntentResponse * _Nonnull))completionHandler
{
    NSLog(@"%s", __func__);
    completionHandler((INIntentResponse *)[NSObject new]);
}

- (void)application:(UIApplication *)application userDidAcceptCloudKitShareWithMetadata:(CKShareMetadata *)cloudKitShareMetadata
{
    NSLog(@"%s", __func__);
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    NSLog(@"%s", __func__);
    return UIInterfaceOrientationMaskAll;
}

@end
