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
        [BaseCellModel modelWithTitle:@"CFNetwork" jumpClass:@"CFNetworkVC"],
        [BaseCellModel modelWithTitle:@"SystemConfiguration" jumpClass:@"SystemConfigurationVC"],
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
