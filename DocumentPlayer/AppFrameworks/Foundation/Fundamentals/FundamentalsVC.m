//
//  FundamentalsVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "FundamentalsVC.h"

@interface FundamentalsVC ()

@end

@implementation FundamentalsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Fundamentals";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Numbers, Data, and Basic Values" jumpClass:@"NumbersDataandBasicValuesVC"],
                       [BaseCellModel modelWithTitle:@"Strings and Text" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Collections" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Dates and Times" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Units and Measurement" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Data Formatting" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Filters and Sorting" jumpClass:@""],
                       ];
}

@end
