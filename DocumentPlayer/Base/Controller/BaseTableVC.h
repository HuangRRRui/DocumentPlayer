//
//  BaseTableVC.h
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableVC : UIViewController

@property (nonatomic, strong) NSArray <BaseCellModel *> *titleList;

@end

NS_ASSUME_NONNULL_END
