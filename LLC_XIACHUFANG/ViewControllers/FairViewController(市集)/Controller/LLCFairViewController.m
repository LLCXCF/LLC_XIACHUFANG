//
//  LLCFairViewController.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCFairViewController.h"

@interface LLCFairViewController ()

@end

@implementation LLCFairViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
