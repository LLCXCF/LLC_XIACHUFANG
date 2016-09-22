//
//  LLCOneTableViewCell.h
//  LLC_XIACHUFANG
//
//  Created by Liwen on 16/9/20.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LLCOneTableViewCellDelegeta <NSObject>

- (void)CollectionViewTapClick;

- (void)OrderViewTapClick;

- (void)PreferentialViewTapClick;

- (void)IntegralViewTapClick;


@end


@interface LLCOneTableViewCell : UITableViewCell

@property(nonatomic, strong) UIView *collectionView;

@property(nonatomic, strong) UIView *orderView;

@property(nonatomic, strong) UIView *preferentialView;

@property(nonatomic, strong) UIView *integralView;

@property(nonatomic, weak) id<LLCOneTableViewCellDelegeta> delegate;

@end
