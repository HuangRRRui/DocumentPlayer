//
//  AppServicesVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/17.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "AppServicesVC.h"

@interface AppServicesVC ()

@end

@implementation AppServicesVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"App Service";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"Accounts" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AddressBook" jumpClass:@"AddressBookVC"],
        [BaseCellModel modelWithTitle:@"AddressBookUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AdSupport" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"App Store Receipts" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ApplicationServices" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"BackgroundTasks" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Business Chat" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Business Chat REST API" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CallKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CarPlay" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ClassKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ClockKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CloudKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Combine" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Contacts" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ContactsUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Data" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Foundation" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Location" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core ML" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Motion" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Spotlight" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Text" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Create ML" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"DeviceCheck" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"EventKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"EventKitUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"FileProvider" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"FileProviderUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"HealthKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"HomeKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"iAd" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"JavaScriptCore" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MapKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Message" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MessageUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MultipeerConnectivity" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Natural Language" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"NewsstandKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"NotificationCenter" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PassKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PushKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"QuickLook" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"QuickLookThumbnailing" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SafariServices" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SiriKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SMS and Call Reporting" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Social" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Speech" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"StoreKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"TVServices" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"UserNotifications" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"UserNotificationsUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"WatchConnectivity" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"WebKit" jumpClass:@""],
    ];
}

@end
