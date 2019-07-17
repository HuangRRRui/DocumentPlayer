//
//  AppServicesVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/17.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "AppServicesVC.h"

@interface AppServicesVC ()

@end

@implementation AppServicesVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"App Service";
    self.titleList = @[
                       [BaseCellModel modelWithTitle:@"Contacts" jumpClass:@"ContactsVC"],
                       ];
}

@end
