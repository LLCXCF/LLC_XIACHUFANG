//
//  LLCMeViewController.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCMeViewController.h"
#import "LLCHeaderView.h"
#import "LLCOneTableViewCell.h"
#import "LLCCreateMenuViewController.h"

@interface LLCMeViewController ()<UITableViewDelegate, UITableViewDataSource, LLCHeaderViewDelegate, LLCOneTableViewCellDelegeta, UIActionSheetDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) LLCHeaderView  *headerView;

@end

@implementation LLCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"OriyaSangamMN" size:16.0f]}];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNavigationBarItem];
    
    self.view.backgroundColor = [UIColor greenColor];
    _headerView = [[LLCHeaderView alloc] init];
    _headerView.delegate = self;
    [self setupTableView];
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
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"创建菜谱", @"上传作品", nil];
    
    [sheet showInView:self.view];
}

#pragma mark - UIActionSheetDelegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        LLCCreateMenuViewController *createMenuVC = [[LLCCreateMenuViewController alloc] init];
        [createMenuVC setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:createMenuVC animated:YES];
        NSLog(@"创建");
    }else if (buttonIndex == 1)
    {
        NSLog(@"上传");
    }
}

- (void)rightBarButtonItemLeft
{
    
}

- (void)rightBarButtonItemsRight
{
    
}

- (void)setupTableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, kSCREENHEIGHT) style:UITableViewStylePlain];
        _tableView.delegate   = self;
        _tableView.dataSource = self;
        _tableView.tableHeaderView = _headerView;
        _tableView.tableFooterView = [UIView new];
        [_tableView registerClass:[LLCOneTableViewCell class] forCellReuseIdentifier:@"CellView"];
        
        [self.view addSubview:_tableView];
    }
}

- (void)headeViewLayout
{
    if (!_headerView) {
        _headerView = [[LLCHeaderView alloc] init];
    }
}


#pragma mark - tableViewDelgate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{  
    LLCOneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellView"];
    
    cell.delegate = self;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

#pragma mark - LLCHeaderViewDelegate
- (void)bandagePhoneButtonBeClick
{
    NSLog(@"绑定电话");
}

- (void)meAttentionButtonBeClick
{
    NSLog(@"我关注的人");
}

#pragma mark - LLCOneTableViewCellDelegeta
- (void)CollectionViewTapClick
{
    NSLog(@"收藏");
}

- (void)OrderViewTapClick
{
     NSLog(@"订单");
}

- (void)PreferentialViewTapClick
{
     NSLog(@"优惠");
}

- (void)IntegralViewTapClick
{
     NSLog(@"积分");
}
@end
