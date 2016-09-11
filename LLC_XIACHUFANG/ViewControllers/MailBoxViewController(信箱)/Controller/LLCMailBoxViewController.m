//
//  LLCMailBoxViewController.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCMailBoxViewController.h"

@interface LLCMailBoxViewController ()

@end

@implementation LLCMailBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"信箱";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setupNavigationBarItem];
}

- (void)setupNavigationBarItem
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(rightBarButtonItemClick)];
}

#pragma mark -- UIBarButtonItem -- action

- (void)leftBarButtonItemClick
{
    
}

- (void)rightBarButtonItemClick
{
    
}

@end
