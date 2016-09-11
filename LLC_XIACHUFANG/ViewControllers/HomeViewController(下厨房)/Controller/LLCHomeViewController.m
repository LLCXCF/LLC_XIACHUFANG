//
//  LLCHomeViewController.m
//  LLC_XIACHUFANG
//
//  Created by bbigcd on 16/9/6.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCHomeViewController.h"

@interface LLCHomeViewController ()

@end

@implementation LLCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setupNavigationBarItem];
}

- (void)setupNavigationBarItem
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"buylistButtonImage" target:self action:@selector(rightBarButtonItemClick)];
}

#pragma mark -- UIBarButtonItem -- action

- (void)leftBarButtonItemClick
{
    
}

- (void)rightBarButtonItemClick
{
    
}

@end
