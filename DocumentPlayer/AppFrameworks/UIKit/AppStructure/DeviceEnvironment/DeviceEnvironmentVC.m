//
//  DeviceEnvironmentVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/30.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "DeviceEnvironmentVC.h"

@interface DeviceEnvironmentVC ()

@end

@implementation DeviceEnvironmentVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Device Environment";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"UIDevice" jumpClass:@"UIDeviceVC"],
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
