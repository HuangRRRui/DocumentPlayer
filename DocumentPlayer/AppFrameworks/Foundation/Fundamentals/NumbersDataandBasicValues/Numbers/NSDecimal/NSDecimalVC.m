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
    [self NSDecimalCopy];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
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
    }
    return cell;
}

#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

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
    return [NSString stringWithFormat:@"%@", dstNum];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
