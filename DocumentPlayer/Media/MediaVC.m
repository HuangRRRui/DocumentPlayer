//
//  MediaVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/23.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "MediaVC.h"

@interface MediaVC ()

@end

@implementation MediaVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Media";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"Apple News" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AssetsLibrary" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AudioiToolbox" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AudioUnit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AVFoundation" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"AVKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Audio" jumpClass:@"CoreAudioVC"],
        [BaseCellModel modelWithTitle:@"Core Audio Kit" jumpClass:@"CoreAudioKitVC"],
        [BaseCellModel modelWithTitle:@"Core Audio Types" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Haptics" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Media" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core MIDI" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Core Video" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"FxPlug" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"HTTP Live Streaming" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"iTunesLibrary" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Media Player" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MediaAccessibility" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"MediaLibrary" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"PhotoKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"Professional Video Applications" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"QTKit" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"ScreenSaver" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"SoundAnalysis" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"VideoToolbox" jumpClass:@"ContactsVC"],
        [BaseCellModel modelWithTitle:@"VisionKit" jumpClass:@"ContactsVC"],
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
