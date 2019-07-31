//
//  UIDeviceVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/30.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "UIDeviceVC.h"

@interface UIDeviceVC ()

<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation UIDeviceVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"UIDevice";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configTableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onOrientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

#pragma mark - NSNotification method
- (void)onOrientationDidChange:(NSNotification *)notification
{
    NSLog(@"%s", __func__);
    NSLog(@"userInfo = %@", notification.userInfo);
}

#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 8:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 16:
            [tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section]] withRowAnimation:UITableViewRowAnimationAutomatic];
            break;
        case 15:
        {
            UIDevice.currentDevice.batteryMonitoringEnabled = !UIDevice.currentDevice.isBatteryMonitoringEnabled;
            NSArray *arr = @[
                             [NSIndexPath indexPathForRow:15 inSection:0],
                             [NSIndexPath indexPathForRow:14 inSection:0]
                             ];
            [tableView reloadRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationAutomatic];
        }
            break;
        case 17:
        {
            UIDevice.currentDevice.proximityMonitoringEnabled = !UIDevice.currentDevice.isProximityMonitoringEnabled;
            NSArray *arr = @[
                             [NSIndexPath indexPathForRow:17 inSection:0],
                             [NSIndexPath indexPathForRow:18 inSection:0],
                             ];
            [tableView reloadRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationAutomatic];
        }
            break;
        case 19:
        {
            [UIDevice.currentDevice playInputClick];
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
    return 20;
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
    
    switch (indexPath.row)
    {
        case 0:
        {
            cell.textLabel.text = @"multitaskingSupported";
            cell.detailTextLabel.text = UIDevice.currentDevice.isMultitaskingSupported ? @"true" : @"false";
        }
            break;
        case 1:
        {
            cell.textLabel.text = @"name";
            cell.detailTextLabel.text = UIDevice.currentDevice.name;
        }
            break;
        case 2:
        {
            cell.textLabel.text = @"systemName";
            cell.detailTextLabel.text = UIDevice.currentDevice.systemName;
        }
            break;
        case 3:
        {
            cell.textLabel.text = @"systemVersion";
            cell.detailTextLabel.text = UIDevice.currentDevice.systemVersion;
        }
            break;
        case 4:
        {
            cell.textLabel.text = @"model";
            cell.detailTextLabel.text = UIDevice.currentDevice.model;
        }
            break;
        case 5:
        {
            cell.textLabel.text = @"localizedModel";
            cell.detailTextLabel.text = UIDevice.currentDevice.localizedModel;
        }
            break;
        case 6:
        {
            cell.textLabel.text = @"userInterfaceIdiom";
            cell.detailTextLabel.text = ({
                NSString *str;
                switch (UIDevice.currentDevice.userInterfaceIdiom)
                {
                    case UIUserInterfaceIdiomUnspecified:
                        str = @"UIUserInterfaceIdiomUnspecified";
                        break;
                    case UIUserInterfaceIdiomPhone:
                        str = @"UIUserInterfaceIdiomPhone";
                        break;
                    case UIUserInterfaceIdiomPad:
                        str = @"UIUserInterfaceIdiomPad";
                        break;
                    case UIUserInterfaceIdiomTV:
                        str = @"UIUserInterfaceIdiomTV";
                        break;
                    case UIUserInterfaceIdiomCarPlay:
                        str = @"UIUserInterfaceIdiomCarPlay";
                        break;
                    default:
                        str = @"";
                        break;
                }
                str;
            });
        }
            break;
        case 7:
        {
            cell.textLabel.text = @"identifierForVendor";
            cell.detailTextLabel.text = UIDevice.currentDevice.identifierForVendor.UUIDString;
        }
            break;
        case 8:
        {
            cell.textLabel.text = @"orientation";
            cell.detailTextLabel.text = ({
                NSString *str;
                switch (UIDevice.currentDevice.orientation)
                {
                    case UIDeviceOrientationUnknown:
                        str = @"UIDeviceOrientationUnknown";
                        break;
                    case UIDeviceOrientationPortrait:
                        str = @"UIDeviceOrientationPortrait";
                        break;
                    case UIDeviceOrientationPortraitUpsideDown:
                        str = @"UIDeviceOrientationPortraitUpsideDown";
                        break;
                    case UIDeviceOrientationLandscapeLeft:
                        str = @"UIDeviceOrientationLandscapeLeft";
                        break;
                    case UIDeviceOrientationLandscapeRight:
                        str = @"UIDeviceOrientationLandscapeRight";
                        break;
                    case UIDeviceOrientationFaceUp:
                        str = @"UIDeviceOrientationFaceUp";
                        break;
                    case UIDeviceOrientationFaceDown:
                        str = @"UIDeviceOrientationFaceDow";
                        break;
                }
                str;
            });
        }
            break;
        case 9:
        {
            cell.textLabel.text = @"generatesDeviceOrientationNotifications";
            cell.detailTextLabel.text = UIDevice.currentDevice.generatesDeviceOrientationNotifications ? @"true" : @"false";
        }
            break;
        case 10:
        {
            cell.textLabel.text = @"UIDeviceOrientationIsPortrait";
            cell.detailTextLabel.text = UIDeviceOrientationIsPortrait(UIDevice.currentDevice.orientation) ? @"true" : @"false";
        }
            break;
        case 11:
        {
            cell.textLabel.text = @"UIDeviceOrientationIsLandscape";
            cell.detailTextLabel.text = UIDeviceOrientationIsLandscape(UIDevice.currentDevice.orientation) ? @"true" : @"false";
        }
            break;
        case 12:
        {
            cell.textLabel.text = @"UIDeviceOrientationIsFlat";
            cell.detailTextLabel.text = UIDeviceOrientationIsFlat(UIDevice.currentDevice.orientation) ? @"true" : @"false";
        }
            break;
        case 13:
        {
            cell.textLabel.text = @"UIDeviceOrientationIsValidInterfaceOrientation";
            cell.detailTextLabel.text = UIDeviceOrientationIsValidInterfaceOrientation(UIDevice.currentDevice.orientation) ? @"true" : @"false";
        }
            break;
        case 14:
        {
            cell.textLabel.text = @"batteryLevel";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", UIDevice.currentDevice.batteryLevel];
        }
            break;
        case 15:
        {
            cell.textLabel.text = @"isBatteryMonitoringEnabled";
            cell.detailTextLabel.text = UIDevice.currentDevice.isBatteryMonitoringEnabled ? @"true" : @"false";
        }
            break;
        case 16:
        {
            cell.textLabel.text = @"batteryState";
            cell.detailTextLabel.text = ({
                NSString *str;
                switch (UIDevice.currentDevice.batteryState)
                {
                    case UIDeviceBatteryStateUnknown:
                        str = @"UIDeviceBatteryStateUnknown";
                        break;
                    case UIDeviceBatteryStateUnplugged:
                        str = @"UIDeviceBatteryStateUnplugged";
                        break;
                    case UIDeviceBatteryStateCharging:
                        str = @"UIDeviceBatteryStateCharging";
                        break;
                    case UIDeviceBatteryStateFull:
                        str = @"UIDeviceBatteryStateFull";
                        break;
                }
                str;
            });
        }
            break;
        case 17:
        {
            cell.textLabel.text = @"proximityMonitoringEnabled";
            cell.detailTextLabel.text = UIDevice.currentDevice.isProximityMonitoringEnabled ? @"true" : @"false";
        }
            break;
        case 18:
        {
            cell.textLabel.text = @"proximityState";
            cell.detailTextLabel.text = UIDevice.currentDevice.proximityState ? @"true" : @"false";
        }
            break;
        case 19:
        {
            cell.textLabel.text = @"playInputClick";
        }
            break;
    }
    return cell;
}

#pragma mark - Other
#pragma mark - UI config
- (void)configTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.separatorInset = UIEdgeInsetsZero;
    self.tableView.rowHeight = 36;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
