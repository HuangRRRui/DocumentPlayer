//
//  SystemConfigurationVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/5.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "SystemConfigurationVC.h"
#import <SystemConfiguration/CaptiveNetwork.h>

@interface SystemConfigurationVC ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SystemConfigurationVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"SystemConfiguration";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configTableView];
    
    NSArray *arr = CFBridgingRelease(CNCopySupportedInterfaces());
    for (NSString *interfaceName in arr)
    {
        NSLog(@"%@", interfaceName);
        NSDictionary *info = CFBridgingRelease(CNCopyCurrentNetworkInfo((__bridge CFStringRef)interfaceName));
        NSLog(@"info = %@", info);
    }
    
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] init];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
