//
//  EntitlementsVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "EntitlementsVC.h"
#import <SystemConfiguration/CaptiveNetwork.h>

@interface EntitlementsVC ()

<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation EntitlementsVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configTableView];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 32;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.width, 32)];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, view.width - 32, view.height)];
    [view addSubview:lb];
    switch (section)
    {
        case 0:
            lb.text = @"Access WiFi Information Entitlement";
            break;
        case 1:
            lb.text = @"App Groups Entitlement";
            break;
        default:
            break;
    }
    
    return view;
}

#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        cell.textLabel.numberOfLines = 99;
        cell.detailTextLabel.numberOfLines = 99;
    }
    
    switch (indexPath.section)
    {
        case 0:
        {
            // 只有当给予了 Access WiFi Information Entitlement 权限后，才能读取到网络信息
            NSArray *wifiInfoList = (__bridge NSArray *)CNCopySupportedInterfaces();
            for (NSString *name in wifiInfoList)
            {
                NSDictionary *dic = (__bridge NSDictionary *)CNCopyCurrentNetworkInfo((__bridge CFStringRef)name);
                NSMutableString *title = [[NSMutableString alloc] initWithString:@""];
                for (NSString *key in dic.allKeys)
                {
                    [title appendFormat:@"%@ = %@\n", key, dic[key]];
                }
                cell.detailTextLabel.text = title;
            }
            cell.textLabel.text = @"只有当给予了 Access WiFi Information Entitlement 权限后，才能读取到网络信息";
        }
            break;
        case 1:
        {
            cell.textLabel.text = @"App Groups Enttilement Identifier = group.com.huangruii.documentplayer";
        }
        default:
            break;
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.allowsSelection = NO;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
