//
//  CoreAudioKitVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/23.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "CoreAudioKitVC.h"

@interface CoreAudioKitVC ()

@end

@implementation CoreAudioKitVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Core Audio Kit";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"AUGenericView" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"AUPannerView" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"AUViewController" jumpClass:@"AUViewControllerVC"],
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
