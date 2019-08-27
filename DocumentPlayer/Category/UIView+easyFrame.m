//
//  UIView+easyFrame.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "UIView+easyFrame.h"

@implementation UIView (easyFrame)

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

@end
