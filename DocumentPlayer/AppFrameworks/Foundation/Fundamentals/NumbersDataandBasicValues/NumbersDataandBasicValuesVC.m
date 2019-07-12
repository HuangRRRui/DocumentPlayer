//
//  NumbersDataandBasicValuesVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "NumbersDataandBasicValuesVC.h"

@interface NumbersDataandBasicValuesVC ()

@end

@implementation NumbersDataandBasicValuesVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Numbers, Data, and Basic Values";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Numbers" jumpClass:@"NumbersVC"],
                       [BaseCellModel modelWithTitle:@"Binary Data" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"URLs" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Unique Identifiers" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Geometry" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Ranges" jumpClass:@""],
                       ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
