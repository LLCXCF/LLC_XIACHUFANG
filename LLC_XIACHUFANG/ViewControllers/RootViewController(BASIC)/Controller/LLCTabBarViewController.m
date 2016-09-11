//
//  LLCTabBarViewController.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCTabBarViewController.h"
#import "LLCHomeViewController.h"
#import "LLCFairViewController.h"
#import "LLCMailBoxViewController.h"
#import "LLCMeViewController.h"

@interface LLCTabBarViewController ()

@end

@implementation LLCTabBarViewController

+ (void)initialize
{
    /* 
     * 通过appearance统一设置所有UITabBarItem的文字属性
     * 后面带有UI_APPEARANCE_SELECTOR的方法，都可以通过appearance对象来统一设置
     * NSForegroundColorAttributeName 相对于 NSBackgroundColorAttributeName
     */
    // 常态属性
    NSMutableDictionary *normalAttribute = [NSMutableDictionary dictionary];
    normalAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    normalAttribute[NSForegroundColorAttributeName] = [UIColor grayColor];
    // 选中属性
    NSMutableDictionary *selectedAttribute = [NSMutableDictionary dictionary];
    selectedAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    selectedAttribute[NSForegroundColorAttributeName] = [UIColor tabBarIconSeletedColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:normalAttribute forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttribute forState:UIControlStateSelected];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupChildViewController:[[LLCHomeViewController alloc] init] title:@"下厨房" image:@"tab_home_normal" selectedImage:@"tab_home_selected"];
    [self setupChildViewController:[LLCFairViewController new] title:@"市集" image:@"tab_fair_normal" selectedImage:@"tab_fair_selected"];
    [self setupChildViewController:[LLCMailBoxViewController new] title:@"信箱" image:@"tab_mailbox_normal" selectedImage:@"tab_mailbox_selected"];
    [self setupChildViewController:[LLCMeViewController new] title:@"我" image:@"tab_me_normal" selectedImage:@"tab_me_selected"];
}
/**
 *  初始化TabBar控制器
 *
 *  @param UIViewController 子控制器
 *  @param title            控制器的标签
 *  @param image            控制器的常态图片
 *  @param selectedImage    控制器的被选中图片
 */
- (void)setupChildViewController:(UIViewController *)ViewController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    ViewController.tabBarItem.title = title;
    ViewController.tabBarItem.image = [UIImage imageNamed:image];
    ViewController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    // 包装一个导航控制器， 添加导航控制器为tabBarViewcontroller的子控制器
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:ViewController];
    [self addChildViewController:navi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
