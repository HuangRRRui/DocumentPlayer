//
//  WebVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "WebVC.h"

@interface WebVC ()

@end

@implementation WebVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Web";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"App Store Connect API" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Apple Music API" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Apple Pay on the Web" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"CloudKit JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"LinkPresentation" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"LivePhotosKt JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MapKit JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Maps WebSnapshots" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MusicKit JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Safari Extensions JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Sign in with Apple JS" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Sign in with Apple REST API" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"WebKit JS" jumpClass:@""],
    ];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - Other
#pragma mark - UI config
#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
