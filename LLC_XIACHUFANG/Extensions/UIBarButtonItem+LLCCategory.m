//
//  UIBarButtonItem+LLCCategory.m
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/11.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "UIBarButtonItem+LLCCategory.h"

@implementation UIBarButtonItem (LLCCategory)
+ (instancetype)itemWithImage:(NSString *)image target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
