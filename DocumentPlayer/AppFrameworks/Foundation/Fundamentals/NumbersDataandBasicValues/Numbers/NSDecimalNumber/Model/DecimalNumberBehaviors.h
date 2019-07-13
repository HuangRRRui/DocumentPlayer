//
//  DecimalNumberBehaviors.h
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/13.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DecimalNumberBehaviors : NSObject <NSDecimalNumberBehaviors>

+ (instancetype)behavior;

@property (nonatomic, assign) NSRoundingMode roundingMode;
@property (nonatomic, assign) NSInteger scale;

@end

NS_ASSUME_NONNULL_END
