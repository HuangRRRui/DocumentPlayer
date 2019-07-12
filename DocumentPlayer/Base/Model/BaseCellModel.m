//
//  BaseCellModel.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "BaseCellModel.h"

@interface BaseCellModel ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *jumpClass;

@end

@implementation BaseCellModel

+ (instancetype)modelWithTitle:(NSString *)title jumpClass:(NSString *)jumpClass
{
    BaseCellModel *model = [[BaseCellModel alloc] init];
    model.title = title;
    model.jumpClass = jumpClass;
    return model;
}

@end
