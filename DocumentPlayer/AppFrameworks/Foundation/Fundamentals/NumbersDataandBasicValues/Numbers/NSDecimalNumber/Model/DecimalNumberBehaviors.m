//
//  DecimalNumberBehaviors.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/13.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "DecimalNumberBehaviors.h"

@implementation DecimalNumberBehaviors

+ (instancetype)behavior
{
    DecimalNumberBehaviors *behavior = [[DecimalNumberBehaviors alloc] init];
    behavior.scale = 2;
    behavior.roundingMode = NSRoundPlain;
    return behavior;
}

- (NSInteger)scale
{
    return _scale;
}

- (NSRoundingMode)roundingMode
{
    return _roundingMode;
}

- (NSDecimalNumber *)exceptionDuringOperation:(SEL)operation error:(NSCalculationError)error leftOperand:(NSDecimalNumber *)leftOperand rightOperand:(NSDecimalNumber *)rightOperand
{
    return NSDecimalNumber.notANumber;
}

@end
