//
//  MediaVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/23.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "MediaVC.h"

@interface MediaVC ()

@end

@implementation MediaVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Media";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Core Audio" jumpClass:@"CoreAudioVC"],
                       [BaseCellModel modelWithTitle:@"Core Audio Kit" jumpClass:@"CoreAudioKitVC"],
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
