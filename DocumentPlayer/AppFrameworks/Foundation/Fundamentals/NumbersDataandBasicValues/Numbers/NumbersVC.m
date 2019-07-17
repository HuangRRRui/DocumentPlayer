//
//  NumbersVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "NumbersVC.h"

@interface NumbersVC ()

@end

@implementation NumbersVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Numbers";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"NSInteger" jumpClass:@"NSIntegerVC"],
                       [BaseCellModel modelWithTitle:@"NSUInteger" jumpClass:@"NSUIntegerVC"],
                       [BaseCellModel modelWithTitle:@"NSDecimal" jumpClass:@"NSDecimalVC"],
                       [BaseCellModel modelWithTitle:@"NSDecimalNumber" jumpClass:@"NSDecimalNumberVC"],
                       [BaseCellModel modelWithTitle:@"NSNumber" jumpClass:@"NSNumberVC"],
                       [BaseCellModel modelWithTitle:@"NSNumberFormatter" jumpClass:@""],
                       ];
}

@end
