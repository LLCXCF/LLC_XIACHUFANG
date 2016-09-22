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
    [self setupWebView];
}
#pragma mark --UIViewController--
- (void)setupNavigationBarItem
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"homepageCreateRecipeButton" target:self action:@selector(rightBarButtonItemClick)];
}

- (void)setupWebView
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    NSURL *url = [NSURL URLWithString:@"http://www.xiachufang.com/page/ec-tab/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

#pragma mark --UIBarButtonItem-- action

- (void)leftBarButtonItemClick
{
    
}

- (void)rightBarButtonItemClick
{
    
}

@end
