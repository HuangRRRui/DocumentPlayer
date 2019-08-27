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
        [BaseCellModel modelWithTitle:@"Accounts" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AddressBook" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AddressBookUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AdSupport" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"App Store Receipts" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ApplicationServices" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"BackgroundTasks" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Business Chat" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Business Chat REST API" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"CallKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"CarPlay" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ClassKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ClockKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"CloudKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Combine" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Contacts" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ContactsUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Data" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Foundation" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Location" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core ML" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Motion" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Spotlight" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Text" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Create ML" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"DeviceCheck" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"EventKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"EventKitUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"FileProvider" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"FileProviderUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"HealthKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"HomeKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"iAd" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"JavaScriptCore" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MapKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Message" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MessageUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MultipeerConnectivity" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Natural Language" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"NewsstandKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"NotificationCenter" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"PassKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"PushKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"QuickLook" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"QuickLookThumbnailing" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"SafariServices" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"SiriKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"SMS and Call Reporting" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Social" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Speech" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"StoreKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"TVServices" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"UserNotifications" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"UserNotificationsUI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"WatchConnectivity" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"WebKit" jumpClass:@"ContactsVC"],
    ];
}

@end
