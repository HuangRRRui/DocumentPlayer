//
//  DeveloperToolsVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "DeveloperToolsVC.h"

@interface DeveloperToolsVC ()

@end

@implementation DeveloperToolsVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Developer Tools";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"Automator" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Code Diagnostics" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"InstallerJS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Playground Support" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PlaygroundBluetooth" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ScriptngBridge" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Swift Packages" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Swift Playgrounds" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"XcodeKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"XCTest" jumpClass:@""],
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
