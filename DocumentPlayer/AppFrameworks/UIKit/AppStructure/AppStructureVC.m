//
//  AppStructureVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/30.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "AppStructureVC.h"

@interface AppStructureVC ()

@end

@implementation AppStructureVC

#pragma mark - View did load
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"App Structure";
    
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Life Cycle" jumpClass:@"LifeCycleVC"],
                       [BaseCellModel modelWithTitle:@"Device Environment" jumpClass:@"DeviceEnvironmentVC"],
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
