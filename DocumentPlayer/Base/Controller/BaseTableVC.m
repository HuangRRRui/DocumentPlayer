//
//  BaseTableVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "BaseTableVC.h"

@interface BaseTableVC ()

<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation BaseTableVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configTableView];
}
#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaseCellModel *model = self.titleList[indexPath.row];
    if ([model.jumpClass isEqualToString:@""])
    {
        return;
    }
    else
    {
        [self.navigationController pushViewController:[[NSClassFromString(model.jumpClass) alloc] init] animated:YES];
    }
}

#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    BaseCellModel *model = self.titleList[indexPath.row];
    cell.textLabel.text = model.title;
    if ([model.jumpClass isEqualToString:@""])
    {
        cell.textLabel.textColor = [UIColor lightGrayColor];
    }
    else
    {
        cell.textLabel.textColor = [UIColor darkTextColor];
    }
    return cell;
}

#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set
- (void)setTitleList:(NSArray<BaseCellModel *> *)titleList
{
    _titleList = titleList;
    [self.tableView reloadData];
}

@end
