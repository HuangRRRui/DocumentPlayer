//
//  FoundationVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "FoundationVC.h"

@interface FoundationVC ()

@end

@implementation FoundationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Foundation";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Fundamentals" jumpClass:@"FundamentalsVC"],
                       [BaseCellModel modelWithTitle:@"App Support" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Files and Data Persistence" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Networking" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Low-Level Utilities" jumpClass:@""],
                       ];
}

@end
