//
//  ChangeAppIconVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/31.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "ChangeAppIconVC.h"

@interface ChangeAppIconVC ()

<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray <NSString *> *iconList;
@end

@implementation ChangeAppIconVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Change Icon";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.iconList = @[
        @"one",
        @"two",
        @"three",
        @"four",
    ];
    [self configTableView];
    
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *name;
    if (indexPath.row == self.iconList.count)
    {
        name = nil;
    }
    else
    {
        name = self.iconList[indexPath.row];
    }
    [UIApplication.sharedApplication setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
    }];
}

#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.iconList.count + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        CGFloat imageW = 64;
        CGFloat margin = 8;
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(tableView.frame.size.width - imageW - margin, margin, imageW, imageW)];
        imageView.tag = 9;
        imageView.layer.cornerRadius = 5.0;
        imageView.layer.masksToBounds = YES;
        [cell.contentView addSubview:imageView];
    }
    
    UIImageView *imageView = [cell.contentView viewWithTag:9];
    if (indexPath.row == self.iconList.count)
    {
        imageView.image = [UIImage imageNamed:@"AppIcon"];
        cell.textLabel.text = @"Original icon";
    }
    else
    {
        imageView.image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:self.iconList[indexPath.row] ofType:@"png"]];
        cell.textLabel.text = self.iconList[indexPath.row];
    }
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"需要配合 Info.plist 文件中的 CFBundleIcons 这个 key 使用，图片需要放在 Bundle 中，而不是 Asset 文件中";
}

#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.rowHeight = 80;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
