//
//  LLCCreateMenuViewController.m
//  LLC_XIACHUFANG
//
//  Created by Liwen on 16/9/22.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCCreateMenuViewController.h"

@interface LLCCreateMenuViewController ()

@end

@implementation LLCCreateMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"菜谱名称";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"OriyaSangamMN" size:16.0f]}];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    [self setupLeftAndRightNavigation];
}

- (void)setupLeftAndRightNavigation
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonBeClick)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor colorWithRed:0.96 green:0.41 blue:0.30 alpha:1.00];
    [self.navigationItem.leftBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"OriyaSangamMN" size:16.0f]} forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一步" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonBeClick)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor colorWithRed:0.96 green:0.41 blue:0.30 alpha:1.00];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"OriyaSangamMN" size:16.0f]} forState:UIControlStateNormal];
}

- (void)leftBarButtonBeClick
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightBarButtonBeClick
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
