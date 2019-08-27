//
//  SystemVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/5.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "SystemVC.h"

@interface SystemVC ()

@end

@implementation SystemVC

#pragma mark - View did load
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"System";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"Accelerate" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Apple CryptoKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AuthenticationServices" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CFNetwork" jumpClass:@"CFNetworkVC"],
        [BaseCellModel modelWithTitle:@"Collaboration" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Compression" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Bluetooth" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core NFC" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Services" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Telephony" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core WLAN" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CryptoTokenKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"DarwinNotify" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Device Management" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"DiskArbitratiion" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Dispatch" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"dnssd" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"DriverKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"EndpointSecurity" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ExceptionHandling" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ExecutionPolicy" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ExternalAccessory" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"FinderSync" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ForceFeedback" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"FWAUserLib" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"GSS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"HIDDriverKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Hypervisor" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"InputMethodKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"IOBluetooth" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"IOBluetoothUI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"IOKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"IOSurface" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"IOUSBHost" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Kernel" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"LatentSemanticMapping" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"LocalAuthentication" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MetricKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MobileCoreServices" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Network" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"NetworkExtension" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"NetworkingDriverKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Objective-C Runtime" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"OpenDirectory" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"os" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"OSLog" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Security" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SecurityFoundation" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SecurityInterface" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ServiceManagement" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"siimd" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SystemConfiguration" jumpClass:@"SystemConfigurationVC"],
        [BaseCellModel modelWithTitle:@"SystemExtensions" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"USBDriverKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"vmnet" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"XPC" jumpClass:@""],
    ];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - Other
#pragma mark - UI config
#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
