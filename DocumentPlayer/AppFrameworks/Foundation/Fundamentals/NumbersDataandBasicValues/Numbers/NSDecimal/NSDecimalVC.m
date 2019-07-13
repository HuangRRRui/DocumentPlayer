//
//  NSDecimalVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "NSDecimalVC.h"

@interface NSDecimalVC ()

<
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation NSDecimalVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"NSDecimalVC";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configTableView];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 17;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"NSDecimalCopy";
            cell.detailTextLabel.text = [self NSDecimalCopy];;
            break;
        case 1:
            cell.textLabel.text = @"NSDecimalString";
            cell.detailTextLabel.text = [self NSDecimalString];;
            break;
        case 2:
            cell.textLabel.text = @"NSDecimalCompact";
            cell.detailTextLabel.text = [self NSDecimalCompact];
            break;
        case 3:
            cell.textLabel.text = @"NSDecimalAdd";
            cell.detailTextLabel.text = [self NSDecimalAdd];
            break;
        case 4:
            cell.textLabel.text = @"NSDecimalSubtract";
            cell.detailTextLabel.text = [self NSDecimalSubtract];
            break;
        case 5:
            cell.textLabel.text = @"NSDecimalDivide";
            cell.detailTextLabel.text = [self NSDecimalDivide];
            break;
        case 6:
            cell.textLabel.text = @"NSDecimalMultiply";
            cell.detailTextLabel.text = [self NSDecimalMultiply];
            break;
        case 7:
            cell.textLabel.text = @"NSDecimalMultiplyByPowerOf10";
            cell.detailTextLabel.text = [self NSDecimalMultiplyByPowerOf10];
            break;
        case 8:
            cell.textLabel.text = @"NSDecimalRound";
            cell.detailTextLabel.text = [self NSDecimalRound];
            break;
        case 9:
            cell.textLabel.text = @"NSDecimalPower";
            cell.detailTextLabel.text = [self NSDecimalPower];
            break;
        case 10:
            cell.textLabel.text = @"NSDecimalNormalize";
            cell.detailTextLabel.text = [self NSDecimalNormalize];
            break;
        case 11:
            cell.textLabel.text = @"NSCalculationNoError";
            cell.detailTextLabel.text = [self NSCalculationNoError];
            break;
        case 12:
            cell.textLabel.text = @"NSCalculationLossOfPrecision";
            cell.detailTextLabel.text = [self NSCalculationLossOfPrecision];
            break;
        case 13:
            cell.textLabel.text = @"NSCalculationOverflow";
            cell.detailTextLabel.text = [self NSCalculationOverflow];
            break;
        case 14:
            cell.textLabel.text = @"NSCalculationUnderflow";
            cell.detailTextLabel.text = [self NSCalculationUnderflow];
            break;
        case 15:
            cell.textLabel.text = @"NSCalculationDivideByZero";
            cell.detailTextLabel.text = [self NSCalculationDivideByZero];
            break;
        case 16:
            cell.textLabel.text = @"NSDecimalCompare";
            cell.detailTextLabel.text = [self NSDecimalCompare];
            break;
    }
    return cell;
}

#pragma mark - Other
- (NSString *)NSDecimalCopy
{
    NSDecimalNumber *num = [[NSDecimalNumber alloc] initWithString:@"1.2345"];
    NSDecimal src = num.decimalValue;
    NSDecimal dst;
    NSDecimalCopy(&dst, &src);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@", dstNum];
}

- (NSString *)NSDecimalString
{
    NSDecimalNumber *num = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimal src = num.decimalValue;
    return NSDecimalString(&src, [NSLocale currentLocale]);
}

- (NSString *)NSDecimalCompact
{
    NSDecimalNumber *num = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimal src = num.decimalValue;
    NSDecimalCompact(&src);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:src];
    return [NSString stringWithFormat:@"%@", dstNum];
}

- (NSString *)NSDecimalAdd
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSDecimalAdd(&dst, &dcm1, &dcm2, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ + %@ = %@", n1, n2, dstNum];
}

- (NSString *)NSDecimalSubtract
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSDecimalSubtract(&dst, &dcm1, &dcm2, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ - %@ = %@", n1, n2, dstNum];
}

- (NSString *)NSDecimalDivide
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSDecimalDivide(&dst, &dcm1, &dcm2, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ / %@ = %@", n1, n2, dstNum];
}

- (NSString *)NSDecimalMultiply
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSDecimalMultiply(&dst, &dcm1, &dcm2, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ / %@ = %@", n1, n2, dstNum];
}

- (NSString *)NSDecimalMultiplyByPowerOf10
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dst;
    short power = 2;
    
    NSDecimalMultiplyByPowerOf10(&dst, &dcm1, power, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ * 10 ^ %d = %@", n1, power, dstNum];
}

- (NSString *)NSDecimalRound
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dst;
    NSInteger scale = 2;
    
    NSDecimalRound(&dst, &dcm1, scale, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ round by %ld = %@", n1, scale, dstNum];
}

- (NSString *)NSDecimalPower
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dst;
    NSUInteger power = 2;
    
    NSDecimalPower(&dst, &dcm1, power, NSRoundDown);
    NSDecimalNumber *dstNum = [NSDecimalNumber decimalNumberWithDecimal:dst];
    return [NSString stringWithFormat:@"%@ ^ %lu = %@", n1, power, dstNum];
}

- (NSString *)NSDecimalNormalize
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    
    NSDecimalNormalize(&dcm1, &dcm2, NSRoundDown);
    n1 = [NSDecimalNumber decimalNumberWithDecimal:dcm1];
    n2 = [NSDecimalNumber decimalNumberWithDecimal:dcm2];
    return [NSString stringWithFormat:@"%@ and %@", n1, n2];
}

- (NSString *)NSCalculationNoError
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSCalculationError error = NSDecimalAdd(&dst, &dcm1, &dcm2, NSRoundDown);
    return error == NSCalculationNoError ? @"NSCalculationNoError" : @"Other Error";
}

- (NSString *)NSCalculationLossOfPrecision
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.34556456189748941563189489456489415614894616"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSCalculationError error = NSDecimalDivide(&dst, &dcm1, &dcm2, NSRoundDown);
    return error == NSCalculationLossOfPrecision ? @"NSCalculationLossOfPrecision" : @"Other Error";
}

- (NSString *)NSCalculationOverflow
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"123.45"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dst;
    
    NSCalculationError error = NSDecimalPower(&dst, &dcm1, 1000, NSRoundDown);
    return error == NSCalculationOverflow ? @"NSCalculationOverflow" : @"Other Error";
}

- (NSString *)NSCalculationUnderflow
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"123.45"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789.0123456789"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSCalculationError error = NSDecimalDivide(&dst, &dcm1, &dcm2, NSRoundDown);
    return error == NSCalculationUnderflow ? @"NSCalculationUnderflow" : @"Other Error";
}

- (NSString *)NSCalculationDivideByZero
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"12.345"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"0.0"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    NSDecimal dst;
    
    NSCalculationError error = NSDecimalDivide(&dst, &dcm1, &dcm2, NSRoundDown);
    return error == NSCalculationDivideByZero ? @"NSCalculationDivideByZero" : @"Other Error";
}

- (NSString *)NSDecimalCompare
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"123.45"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"1.2345"];
    NSDecimal dcm1 = n1.decimalValue;
    NSDecimal dcm2 = n2.decimalValue;
    
    NSString *returnString = @"";
    NSComparisonResult result = NSDecimalCompare(&dcm1, &dcm2);
    NSString *resultString;
    if (result == NSOrderedAscending)
    {
        resultString = @"<";
    }
    else if (result == NSOrderedSame)
    {
        resultString = @"=";
    }
    else
    {
        resultString = @">";
    }
    returnString = [returnString stringByAppendingFormat:@"%@ %@ %@", n1, resultString, n2];
    
    result = NSDecimalCompare(&dcm2, &dcm1);
    if (result == NSOrderedAscending)
    {
        resultString = @"<";
    }
    else if (result == NSOrderedSame)
    {
        resultString = @"=";
    }
    else
    {
        resultString = @">";
    }
    returnString = [returnString stringByAppendingFormat:@", %@ %@ %@", n2, resultString, n1];
    
    result = NSDecimalCompare(&dcm1, &dcm1);
    if (result == NSOrderedAscending)
    {
        resultString = @"<";
    }
    else if (result == NSOrderedSame)
    {
        resultString = @"=";
    }
    else
    {
        resultString = @">";
    }
    returnString = [returnString stringByAppendingFormat:@", %@ %@ %@", n1, resultString, n1];
    
    return returnString;
}

#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
