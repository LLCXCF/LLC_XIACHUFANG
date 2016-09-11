//
//  UIBarButtonItem+LLCCategory.h
//  LLC_XIACHUFANG
//
//  Created by bigcd on 16/9/11.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LLCCategory)
+ (instancetype)itemWithImage:(NSString *)image target:(id)target action:(SEL)action;
@end
