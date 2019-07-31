//
//  LifeCycleVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/30.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "LifeCycleVC.h"

@interface LifeCycleVC ()

@end

@implementation LifeCycleVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Life Cycle";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"UIApplication" jumpClass:@"UIApplicationVC"],
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
