//
//  GraphicsandGamesVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/8/26.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "GraphicsandGamesVC.h"

@interface GraphicsandGamesVC ()

@end

@implementation GraphicsandGamesVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Graphics and Games";
    self.titleList = @[
        [BaseCellModel modelWithTitle:@"AGL" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ARKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ColorSync" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Animation" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Graphics" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Core Image" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Game Controller" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"GameKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"GameplayKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"GLKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Image I/O" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Metal" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"GameKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Metal Performace Shaders" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"MetalKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Model I/O" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"OpenGL ES" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PDFKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"PencilKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Quartz" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"RealityKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"ReplayKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SceneKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"SpriteKit" jumpClass:@""],
        [BaseCellModel modelWithTitle:@"Vision" jumpClass:@""],
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
