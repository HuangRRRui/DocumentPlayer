//
//  BundleResourcesVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "BundleResourcesVC.h"

@interface BundleResourcesVC ()

@end

@implementation BundleResourcesVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Bundle Resources";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"Entitlements" jumpClass:@"EntitlementsVC"],
        [BaseCellModel modelWithTitle:@"Information Property List" jumpClass:@"InformationPropertyListVC"],
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
