//
//  UIApplicationVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/30.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "UIApplicationVC.h"
#import "ChangeAppIconVC.h"

@interface UIApplicationVC ()

<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation UIApplicationVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"UIApplication";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configTableView];
    
    [UIApplication.sharedApplication registerForRemoteNotifications];
    [UIApplication.sharedApplication unregisterForRemoteNotifications];
    __block UIBackgroundTaskIdentifier identifier = [UIApplication.sharedApplication beginBackgroundTaskWithName:@"test" expirationHandler:^{
        [UIApplication.sharedApplication endBackgroundTask:identifier];
    }];
    identifier = [UIApplication.sharedApplication beginBackgroundTaskWithExpirationHandler:^{
        [UIApplication.sharedApplication endBackgroundTask:identifier];
    }];
    [UIApplication.sharedApplication extendStateRestoration];
    [UIApplication.sharedApplication completeStateRestoration];
    UIApplication.sharedApplication.shortcutItems = @[];
    [UIApplication.sharedApplication beginReceivingRemoteControlEvents];
    [UIApplication.sharedApplication endReceivingRemoteControlEvents];
    [UIApplication.sharedApplication sendEvent:[UIEvent new]];
    NSLog(@"UIApplication.sharedApplication.windows = %@", UIApplication.sharedApplication.windows);
    NSLog(@"UIApplication.sharedApplication.preferredContentSizeCategory = %@", UIApplication.sharedApplication.preferredContentSizeCategory);
    
    NSLog(@"supportedInterfaceOrientations = %@", ({
        NSString *str;
        switch ([UIApplication.sharedApplication supportedInterfaceOrientationsForWindow:UIApplication.sharedApplication.keyWindow])
        {
            case UIInterfaceOrientationMaskPortrait:
                str = @"UIInterfaceOrientationMaskPortrait";
                break;
            case UIInterfaceOrientationMaskLandscapeLeft:
                str = @"UIInterfaceOrientationMaskLandscapeLeft";
                break;
            case UIInterfaceOrientationMaskLandscapeRight:
                str = @"UIInterfaceOrientationMaskLandscapeRight";
                break;
            case UIInterfaceOrientationMaskPortraitUpsideDown:
                str = @"UIInterfaceOrientationMaskPortraitUpsideDown";
                break;
            case UIInterfaceOrientationMaskLandscape:
                str = @"UIInterfaceOrientationMaskLandscape";
                break;
            case UIInterfaceOrientationMaskAll:
                str = @"UIInterfaceOrientationMaskAll";
                break;
            case UIInterfaceOrientationMaskAllButUpsideDown:
                str = @"UIInterfaceOrientationMaskAllButUpsideDown";
                break;
        }
        str;
    }));
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row)
    {
        case 3:
        {
            NSURL *url = [NSURL URLWithString:@"aabs://www.baidu.com"];
            [UIApplication.sharedApplication openURL:url options:@{} completionHandler:^(BOOL success) {
                NSLog(@"openURL:options:completionHandler: = %@", success ? @"true" : @"false");
            }];
        }
            break;
        case 6:
        {
            NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            [UIApplication.sharedApplication openURL:url options:@{} completionHandler:^(BOOL success) {
            }];
        }
            break;
        case 7:
        {
            UIApplication.sharedApplication.idleTimerDisabled = !UIApplication.sharedApplication.isIdleTimerDisabled;
            NSArray *arr = @[
                [NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section],
            ];
            [tableView reloadRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationAutomatic];
        }
            break;
        case 8:
        {
            [UIApplication.sharedApplication ignoreSnapshotOnNextApplicationLaunch];
        }
            break;
        case 12:
        {
            NSInteger badgeNumber = UIApplication.sharedApplication.applicationIconBadgeNumber;
            badgeNumber++;
            UIApplication.sharedApplication.applicationIconBadgeNumber = badgeNumber;
            NSArray *arr = @[
                [NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section],
            ];
            [tableView reloadRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationAutomatic];
        }
            break;
        case 15:
        {
            ChangeAppIconVC *vc = [[ChangeAppIconVC alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        default:
            break;
    }
}

#pragma mark - Data source
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 16;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        cell.textLabel.font = [UIFont systemFontOfSize:14];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
    }
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    switch (indexPath.row)
    {
        case 0:
        {
            cell.textLabel.text = @"backgroundRefreshStatus";
            cell.detailTextLabel.text = ({
                NSString *str;
                switch (UIApplication.sharedApplication.backgroundRefreshStatus)
                {
                    case UIBackgroundRefreshStatusRestricted:
                        str = @"UIBackgroundRefreshStatusRestricted";
                        break;
                    case UIBackgroundRefreshStatusDenied:
                        str = @"UIBackgroundRefreshStatusDenied";
                        break;
                    case UIBackgroundRefreshStatusAvailable:
                        str = @"UIBackgroundRefreshStatusAvailable";
                        break;
                }
                str;
            });
        }
            break;
        case 1:
        {
            cell.textLabel.text = @"UIApplicationBackgroundFetchIntervalMinimum";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%.f", UIApplicationBackgroundFetchIntervalMinimum];
        }
            break;
        case 2:
        {
            cell.textLabel.text = @"UIApplicationBackgroundFetchIntervalNever";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%.f", UIApplicationBackgroundFetchIntervalNever];
        }
            break;
        case 3:
        {
            cell.textLabel.text = @"openURL:options:completionHandler:";
        }
            break;
        case 4:
        {
            cell.textLabel.text = @"openOpenURL:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"abs:// = %@", [UIApplication.sharedApplication canOpenURL:[NSURL URLWithString:@"abs://"]] ? @"true" : @"false"];
        }
            break;
        case 5:
        {
            cell.textLabel.text = @"UIApplicationOpenExternalURLOptionsKey";
        }
            break;
        case 6:
        {
            // 打开 App 设置页面
            cell.textLabel.text = @"UIApplicationOpenSettingsURLString";
        }
            break;
        case 7:
        {
            // 无操作时，屏幕亮度是否降低
            cell.textLabel.text = @"idleTimerDisabled";
            cell.detailTextLabel.text = UIApplication.sharedApplication.isIdleTimerDisabled ? @"true" : @"false";
        }
            break;
        case 8:
        {
            cell.textLabel.text = @"ignoreSnapshotOnNextApplicationLaunch";
        }
            break;
        case 9:
        {
            cell.textLabel.text = @"protectedDataAvailable";
            cell.detailTextLabel.text = UIApplication.sharedApplication.isProtectedDataAvailable ? @"true" : @"false";
        }
            break;
        case 10:
        {
            cell.textLabel.text = @"userInterfaceLayoutDirection";
            cell.detailTextLabel.text = ({
                NSString *str;
                switch (UIApplication.sharedApplication.userInterfaceLayoutDirection)
                {
                    case UIUserInterfaceLayoutDirectionLeftToRight:
                        str = @"UIUserInterfaceLayoutDirectionLeftToRight";
                        break;
                    case UIUserInterfaceLayoutDirectionRightToLeft:
                        str = @"UIUserInterfaceLayoutDirectionRightToLeft";
                        break;
                }
                str;
            });
        }
            break;
        case 11:
        {
            cell.textLabel.text = @"applicationSupportsShakeToEdit";
            cell.detailTextLabel.text = UIApplication.sharedApplication.applicationSupportsShakeToEdit ? @"true" : @"false";
        }
            break;
        case 12:
        {
            cell.textLabel.text = @"applicationIconBadgeNumber";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", UIApplication.sharedApplication.applicationIconBadgeNumber];
        }
            break;
        case 13:
        {
            cell.textLabel.text = @"supportsAlternateIcons";
            cell.detailTextLabel.text = UIApplication.sharedApplication.supportsAlternateIcons ? @"true" : @"false";
        }
            break;
        case 14:
        {
            cell.textLabel.text = @"alternateIconName";
            cell.detailTextLabel.text = UIApplication.sharedApplication.alternateIconName;
        }
            break;
        case 15:
        {
            // 改变 App 图标
            cell.textLabel.text = @"setAlternateIconName:completionHandler:";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
            break;
        default:
            break;
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

@end
