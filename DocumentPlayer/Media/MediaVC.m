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
        [BaseCellModel modelWithTitle:@"Apple News" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AssetsLibrary" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AudioToolbox" jumpClass:@"AudioToolboxVC"],
        [BaseCellModel modelWithTitle:@"AudioUnit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"AVFoundation" jumpClass:@"AVFoundationVC"],
        [BaseCellModel modelWithTitle:@"AVKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Audio" jumpClass:@"CoreAudioVC"],
        [BaseCellModel modelWithTitle:@"Core Audio Kit" jumpClass:@"CoreAudioKitVC"],
        [BaseCellModel modelWithTitle:@"Core Audio Types" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Haptics" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Media" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core MIDI" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Video" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"FxPlug" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"HTTP Live Streaming" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"iTunesLibrary" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Media Player" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MediaAccessibility" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MediaLibrary" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PhotoKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Professional Video Applications" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"QTKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ScreenSaver" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SoundAnalysis" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"VideoToolbox" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"VisionKit" jumpClass:@""],
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
