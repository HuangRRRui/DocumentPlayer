//
//  NSPredicateVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/22.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "NSPredicateVC.h"

@interface NSPredicateVC ()

@property (nonatomic, strong) NSArray <NSNumber *> *exampleList;

@end

@implementation NSPredicateVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"NSPredicate";
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
- (NSArray <NSNumber *> *)exampleList
{
    if (!_exampleList)
    {
        _exampleList = @[@(0), @(1), @(2), @(3), @(4)];
    }
    return _exampleList;
}


@end
