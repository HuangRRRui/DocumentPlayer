//
//  PlaybackandEditingVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/28.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "PlaybackandEditingVC.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface PlaybackandEditingVC ()

@end

@implementation PlaybackandEditingVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Playback and Editing";
    self.view.backgroundColor = [UIColor whiteColor];
    [self configPlayButton];
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
- (void)onPlayButtonClicked:(UIButton *)sender
{
    NSURL *url = [NSURL URLWithString:@"https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8"];
    AVPlayer *player = [AVPlayer playerWithURL:url];
    AVPlayerViewController *vc = [[AVPlayerViewController alloc] init];
    vc.player = player;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - Other
#pragma mark - UI config
- (void)configPlayButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Play" forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(onPlayButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    button.center = self.view.center;
    [self.view addSubview:button];
}

#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
