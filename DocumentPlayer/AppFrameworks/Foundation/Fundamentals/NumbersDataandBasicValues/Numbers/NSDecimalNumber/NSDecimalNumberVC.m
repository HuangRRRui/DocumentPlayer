//
//  NSDecimalNumberVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/13.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "NSDecimalNumberVC.h"
#import "DecimalNumberBehaviors.h"

@interface NSDecimalNumberVC ()

<
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation NSDecimalNumberVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"NSDecimalNumber";
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
    return 99;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"+ decimalNumberWithDecimal:";
            cell.detailTextLabel.text = [self decimalNumberWithDecimal];
            break;
        case 1:
            cell.textLabel.text = @"+ decimalNumberWithMantissa:exponent:isNegative:";
            cell.detailTextLabel.text = [self decimalNumberWithMantissa_exponent_isNegative_];
            break;
        case 2:
            cell.textLabel.text = @"+ decimalNumberWithString:";
            cell.detailTextLabel.text = [self decimalNumberWithString_];
            break;
        case 3:
            cell.textLabel.text = @"+ decimalNumberWithString:locale:";
            cell.detailTextLabel.text = [self decimalNumberWithString_locale_];
            break;
        case 4:
            cell.textLabel.text = @"one";
            cell.detailTextLabel.text = [self one];
            break;
        case 5:
            cell.textLabel.text = @"zero";
            cell.detailTextLabel.text = [self zero];
            break;
        case 6:
            cell.textLabel.text = @"notANumber";
            cell.detailTextLabel.text = [self notANumber];
            break;
        case 7:
            cell.textLabel.text = @"- initWithDecimal:";
            cell.detailTextLabel.text = [self initialWithDecimal_];
            break;
        case 8:
            cell.textLabel.text = @"- initWithMantissa:exponent:isNegative:";
            cell.detailTextLabel.text = [self initialWithMantissa_exponent_isNegative_];
            break;
        case 9:
            cell.textLabel.text = @"- initWithString:";
            cell.detailTextLabel.text = [self initialWithString_];
            break;
        case 10:
            cell.textLabel.text = @"- initWithString:locale:";
            cell.detailTextLabel.text = [self initialWithString_locale_];
            break;
        case 11:
            cell.textLabel.text = @"- decimalNumberByAdding:";
            cell.detailTextLabel.text = [self decimalNumberByAdding_];
            break;
        case 12:
            cell.textLabel.text = @"- decimalNumberBySubtracting:";
            cell.detailTextLabel.text = [self decimalNumberBySubtracting_];
            break;
        case 13:
            cell.textLabel.text = @"- decimalNumberByMultiplyingBy:";
            cell.detailTextLabel.text = [self decimalNumberByMultiplyingBy_];
            break;
        case 14:
            cell.textLabel.text = @"- decimalNumberByDividingBy:";
            cell.detailTextLabel.text = [self decimalNumberByDividingBy_];
            break;
        case 15:
            cell.textLabel.text = @"- decimalNumberByRaisingToPower:";
            cell.detailTextLabel.text = [self decimalNumberByRaisingToPower_];
            break;
        case 16:
            cell.textLabel.text = @"- decimalNumberByMultiplyingByPowerOf10:";
            cell.detailTextLabel.text = [self decimalNumberByMultiplyingByPowerOf10_];
            break;
        case 17:
            cell.textLabel.text = @"- decimalNumberByAdding:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByAdding_withBehavior_];
            break;
        case 18:
            cell.textLabel.text = @"- decimalNumberBySubtracting:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberBySubtracting_withBehavior_];
            break;
        case 19:
            cell.textLabel.text = @"- decimalNumberByMultiplyingBy:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByMultiplyingBy_withBehavior_];
            break;
        case 20:
            cell.textLabel.text = @"- decimalNumberByDividingBy:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByDividingBy_withBehavior_];
            break;
        case 21:
            cell.textLabel.text = @"- decimalNumberByRaisingToPower:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByRaisingToPower_withBehavior_];
            break;
        case 22:
            cell.textLabel.text = @"- decimalNumberByMultiplyingByPowerOf10:withBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByMultiplyingByPowerOf10_withBehavior_];
            break;
        case 23:
            cell.textLabel.text = @"- decimalNumberByRoundingAccordingToBehavior:";
            cell.detailTextLabel.text = [self decimalNumberByRoundingAccordingToBehavior_];
            break;
    }
    return cell;
}

#pragma mark - Other
- (NSString *)decimalNumberWithDecimal
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2345"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithDecimal:n1.decimalValue];
    return [NSString stringWithFormat:@"src = %@, dst = %@", n1, n2];
}

- (NSString *)decimalNumberWithMantissa_exponent_isNegative_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithMantissa:12345 exponent:-4 isNegative:NO];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithMantissa:12345 exponent:4 isNegative:YES];
    return [NSString stringWithFormat:@"%@, %@", n1, n2];
}

- (NSString *)decimalNumberWithString_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"12.345"];
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)decimalNumberWithString_locale_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"12,345" locale:@{NSLocaleDecimalSeparator:@","}];
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)one
{
    NSDecimalNumber *n1 = NSDecimalNumber.one;
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)zero
{
    NSDecimalNumber *n1 = NSDecimalNumber.zero;
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)notANumber
{
    NSDecimalNumber *n1 = NSDecimalNumber.notANumber;
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)initialWithDecimal_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"12.345"];
    NSDecimalNumber *n2 = [[NSDecimalNumber alloc] initWithDecimal:n1.decimalValue];
    return [NSString stringWithFormat:@"%@", n2];
}

- (NSString *)initialWithMantissa_exponent_isNegative_
{
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithMantissa:12345 exponent:-3 isNegative:NO];
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)initialWithString_
{
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithString:@"12345E-3"];
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)initialWithString_locale_
{
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithString:@"1,2345E1" locale:@{NSLocaleDecimalSeparator:@","}];
    return [NSString stringWithFormat:@"%@", n1];
}

- (NSString *)decimalNumberByAdding_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n2 = [n1 decimalNumberByAdding:n1];
    return [NSString stringWithFormat:@"%@ + %@ = %@", n1, n1, n2];
}

- (NSString *)decimalNumberBySubtracting_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.3"];
    NSDecimalNumber *n3 = [n1 decimalNumberBySubtracting:n2];
    return [NSString stringWithFormat:@"%@ - %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByMultiplyingBy_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.3"];
    NSDecimalNumber *n3 = [n1 decimalNumberByMultiplyingBy:n2];
    return [NSString stringWithFormat:@"%@ x %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByDividingBy_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.44"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n3 = [n1 decimalNumberByDividingBy:n2];
    return [NSString stringWithFormat:@"%@ / %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByRaisingToPower_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n2 = [n1 decimalNumberByRaisingToPower:2];
    return [NSString stringWithFormat:@"%@ ^ 2 = %@", n1, n2];
}

- (NSString *)decimalNumberByMultiplyingByPowerOf10_
{
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2345"];
    NSDecimalNumber *n2 = [n1 decimalNumberByMultiplyingByPowerOf10:3];
    return [NSString stringWithFormat:@"%@ * 10 ^ 3 = %@", n1, n2];
}

- (NSString *)decimalNumberByAdding_withBehavior_
{
    DecimalNumberBehaviors *b = [DecimalNumberBehaviors behavior];
    b.scale = 1;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.234"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.345"];
    NSDecimalNumber *n3 = [n1 decimalNumberByAdding:n2 withBehavior:b];
    return [NSString stringWithFormat:@"%@ + %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberBySubtracting_withBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 1;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2345"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"2.3456"];
    NSDecimalNumber *n3 = [n1 decimalNumberBySubtracting:n2 withBehavior:behavior];
    return [NSString stringWithFormat:@"%@ - %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByMultiplyingBy_withBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 1;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.23"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"1.23"];
    NSDecimalNumber *n3 = [n1 decimalNumberByMultiplyingBy:n2 withBehavior:behavior];
    return [NSString stringWithFormat:@"%@ x %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByDividingBy_withBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 10;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.44"];
    NSDecimalNumber *n2 = [NSDecimalNumber decimalNumberWithString:@"1.2"];
    NSDecimalNumber *n3 = [n1 decimalNumberByDividingBy:n2 withBehavior:behavior];
    return [NSString stringWithFormat:@"%@ / %@ = %@", n1, n2, n3];
}

- (NSString *)decimalNumberByRaisingToPower_withBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 3;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.23"];
    NSDecimalNumber *n2 = [n1 decimalNumberByRaisingToPower:2 withBehavior:behavior];
    return [NSString stringWithFormat:@"%@ ^ 2 = %@", n1, n2];
}

- (NSString *)decimalNumberByMultiplyingByPowerOf10_withBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 2;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"12345"];
    NSDecimalNumber *n2 = [n1 decimalNumberByMultiplyingByPowerOf10:-4 withBehavior:behavior];
    return [NSString stringWithFormat:@"%@ x 10 ^ -4 = %@", n1, n2];
}

- (NSString *)decimalNumberByRoundingAccordingToBehavior_
{
    DecimalNumberBehaviors *behavior = [DecimalNumberBehaviors behavior];
    behavior.scale = 4;
    NSDecimalNumber *n1 = [NSDecimalNumber decimalNumberWithString:@"1.2345678"];
    NSDecimalNumber *n2 = [n1 decimalNumberByRoundingAccordingToBehavior:behavior];
    return [NSString stringWithFormat:@"%@", n2];
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
