//
//  FiltersandSortingVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/22.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "FiltersandSortingVC.h"

@interface FiltersandSortingVC ()

@end

@implementation FiltersandSortingVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Filters and Sorting";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"NSPredicate" jumpClass:@"NSPredicateVC"],
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
