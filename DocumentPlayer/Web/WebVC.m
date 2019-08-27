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
        [BaseCellModel modelWithTitle:@"App Store Connect API" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Apple Music API" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Apple Pay on the Web" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"CloudKit JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"LinkPresentation" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"LivePhotosKt JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MapKit JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Maps WebSnapshots" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MusicKit JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Safari Extensions JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Sign in with Apple JS" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Sign in with Apple REST API" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"WebKit JS" jumpClass:@"ContactsVC"],
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
