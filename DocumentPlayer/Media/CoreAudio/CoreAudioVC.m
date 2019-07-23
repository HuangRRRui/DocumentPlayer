//
//  CoreAudioVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/23.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "CoreAudioVC.h"

@interface CoreAudioVC ()

@end

@implementation CoreAudioVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Core Audio";
    
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Core Audio Structures" jumpClass:@"CoreAudioStructuresVC"],
                       [BaseCellModel modelWithTitle:@"Core Audio Data Types" jumpClass:@"CoreAudioDataTypesVC"],
                       [BaseCellModel modelWithTitle:@"Core Audio Functions" jumpClass:@"CoreAudioFunctionsVC"],
                       [BaseCellModel modelWithTitle:@"Core Audio Constants" jumpClass:@"CoreAudioConstantsVC"],
                       [BaseCellModel modelWithTitle:@"Core Audio Enumerations" jumpClass:@"CoreAudioEnumerationsVC"],
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
