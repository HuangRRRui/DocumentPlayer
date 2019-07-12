//
//  BaseCellModel.h
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseCellModel : NSObject

@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *jumpClass;

+ (instancetype)modelWithTitle:(NSString *)title jumpClass:(NSString *)jumpClass;

@end

NS_ASSUME_NONNULL_END
