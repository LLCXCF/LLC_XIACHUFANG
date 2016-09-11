//
//  LLCMeViewController.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCMeViewController.h"

@interface LLCMeViewController ()

@end

@implementation LLCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNavigationBarItem];
    
}

- (void)setupNavigationBarItem
{
    UIBarButtonItem *addFriendItem = [UIBarButtonItem itemWithImage:@"navFindFriendsImage" target:self action:@selector(rightBarButtonItemLeft)];
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"rightPageSetting" target:self action:@selector(rightBarButtonItemsRight)];
    self.navigationItem.rightBarButtonItems = @[settingItem, addFriendItem];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(leftBarButtonItem)];
}

#pragma mark -- UIBarButtonItem -- action

- (void)leftBarButtonItem
{
    NSLog(@"...");
}

- (void)rightBarButtonItemLeft
{
    
}

- (void)rightBarButtonItemsRight
{
    
}

@end
