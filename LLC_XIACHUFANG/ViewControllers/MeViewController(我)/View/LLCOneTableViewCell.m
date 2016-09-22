//
//  LLCOneTableViewCell.m
//  LLC_XIACHUFANG
//
//  Created by Liwen on 16/9/20.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCOneTableViewCell.h"

#define kWidth KSCREENWIDTH/4

@interface LLCOneTableViewCell ()

/** 设置UI布局 */
- (void)setupUI;

/** 设置收藏布局 */
- (void)setupCollectionView;

/** 设置订单布局 */
- (void)setupOrderView;

/** 设置优惠布局 */
- (void)setupPreferentialView;

/** 设置积分布局 */
- (void)setupIntegralView;

@end

@implementation LLCOneTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

/** 设置UI布局 */
- (void)setupUI
{
    [self setupCollectionView];
    
    [self setupOrderView];
    
    [self setupPreferentialView];

    [self setupIntegralView];
}

- (void)setupCollectionView
{
    if (!_collectionView) {
        _collectionView = [[UIView alloc] init];
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(CollectionViewTap)]];
        [self.contentView addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.bottom.mas_equalTo(@0);
            make.width.mas_equalTo(kWidth);
        }];
        
        UIImageView *imgView = [[UIImageView alloc] init];
        [_collectionView addSubview:imgView];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_collectionView.mas_centerX);
            make.top.equalTo(_collectionView.mas_top).offset(12.0f);
        }];
        
        UILabel *lable = [[UILabel alloc] init];
        lable.text = @"收藏";
        lable.font = [UIFont systemFontOfSize:13];
        [_collectionView addSubview:lable];
        [lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_collectionView.mas_centerX);
            make.bottom.equalTo(_collectionView.mas_bottom).offset(-12.0f);
        }];
        
    }
}

- (void)setupOrderView
{
    if (!_orderView) {
        _orderView = [[UIView alloc] init];
        _orderView.backgroundColor = [UIColor whiteColor];
        [_orderView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OrderViewTap)]];
        [self.contentView addSubview:_orderView];
        [_orderView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(@0);
            make.left.equalTo(_collectionView.mas_right);
            make.width.mas_equalTo(kWidth);
        }];
        
        UIImageView *imgView = [[UIImageView alloc] init];
        [_orderView addSubview:imgView];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_orderView.mas_centerX);
            make.top.equalTo(_orderView.mas_top).offset(12.0f);
        }];
        
        UILabel *lable = [[UILabel alloc] init];
        lable.text = @"订单";
        lable.font = [UIFont systemFontOfSize:13];
        [_orderView addSubview:lable];
        [lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_orderView.mas_centerX);
            make.bottom.equalTo(_orderView.mas_bottom).offset(-12.0f);
        }];
        
    }
}

- (void)setupPreferentialView
{
    if (!_preferentialView) {
        _preferentialView = [[UIView alloc] init];
        _preferentialView.backgroundColor = [UIColor whiteColor];
        [_preferentialView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(PreferentialViewTap)]];
        [self.contentView addSubview:_preferentialView];
        [_preferentialView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(@0);
            make.left.equalTo(_orderView.mas_right);
            make.width.mas_equalTo(kWidth);
        }];
        
        UIImageView *imgView = [[UIImageView alloc] init];
        [_preferentialView addSubview:imgView];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_preferentialView.mas_centerX);
            make.top.equalTo(_preferentialView.mas_top).offset(12.0f);
        }];
        
        UILabel *lable = [[UILabel alloc] init];
        lable.text = @"优惠";
        lable.font = [UIFont systemFontOfSize:13];
        [_preferentialView addSubview:lable];
        [lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_preferentialView.mas_centerX);
            make.bottom.equalTo(_preferentialView.mas_bottom).offset(-12.0f);
        }];
        
    }
}

- (void)setupIntegralView
{
    if (!_integralView) {
        _integralView = [[UIView alloc] init];
        _integralView.backgroundColor = [UIColor whiteColor];
        [_integralView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(IntegralViewTap)]];
        [self.contentView addSubview:_integralView];
        [_integralView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(@0);
            make.left.equalTo(_preferentialView.mas_right);
            make.width.mas_equalTo(kWidth);
        }];
        
        UIImageView *imgView = [[UIImageView alloc] init];
        [_integralView addSubview:imgView];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_integralView.mas_centerX);
            make.top.equalTo(_integralView.mas_top).offset(12.0f);
        }];
        
        UILabel *lable = [[UILabel alloc] init];
        lable.text = @"积分";
        lable.font = [UIFont systemFontOfSize:13];
        [_integralView addSubview:lable];
        [lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_integralView.mas_centerX);
            make.bottom.equalTo(_integralView.mas_bottom).offset(-12.0f);
        }];
        
    }
}


//收藏View被点击
- (void)CollectionViewTap
{
    if ([self.delegate respondsToSelector:@selector(CollectionViewTapClick)]) {
        [self.delegate CollectionViewTapClick];
    }
}

//订单View被点击
- (void)OrderViewTap
{
    if ([self.delegate respondsToSelector:@selector(OrderViewTapClick)]) {
        [self.delegate OrderViewTapClick];
    }
}

//优惠View被点击
- (void)PreferentialViewTap
{
    if ([self.delegate respondsToSelector:@selector(PreferentialViewTapClick)]) {
        [self.delegate PreferentialViewTapClick];
    }
}

//积分View被点击
- (void)IntegralViewTap
{
    if ([self.delegate respondsToSelector:@selector(IntegralViewTapClick)]) {
        [self.delegate IntegralViewTapClick];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
