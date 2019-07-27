//
//  AppFrameworksVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/12.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "AppFrameworksVC.h"

@interface AppFrameworksVC ()

@end

@implementation AppFrameworksVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"App Frameworks";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"AppKit" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Bundle Resources" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"Foundation" jumpClass:@"FoundationVC"],
                       [BaseCellModel modelWithTitle:@"Swift" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"SwiftUI" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"TVML" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"TVMLKit" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"TVMLKit JS" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"TVUIKit" jumpClass:@""],
                       [BaseCellModel modelWithTitle:@"UIKit" jumpClass:@"UIKitVC"],
                       [BaseCellModel modelWithTitle:@"WatchKit" jumpClass:@""],
                       ];
}

@end
