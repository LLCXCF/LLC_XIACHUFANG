//
//  LLCHeaderView.m
//  LLC_XIACHUFANG
//
//  Created by Liwen on 16/9/18.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "LLCHeaderView.h"

@implementation LLCHeaderView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self = [[NSBundle mainBundle] loadNibNamed:@"LLCHeaderView" owner:self options:nil].firstObject;
        self.frame = CGRectMake(0, 0, KSCREENWIDTH, 210);
        [self setupInitDealWithUILayout];
    }
    return self;
}

- (void)setupInitDealWithUILayout
{
    self.headerImgView.layer.cornerRadius  = 50;
    self.headerImgView.layer.masksToBounds = YES;
    [self.bandagePhoneButton addTarget:self action:@selector(bandagePhoneButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.meAttentionBtn addTarget:self action:@selector(meAttentionButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)bandagePhoneButtonClick
{
    if ([self.delegate respondsToSelector:@selector(bandagePhoneButtonBeClick)]) {
        
        [self.delegate bandagePhoneButtonBeClick];
    }
}

- (void)meAttentionButtonClick
{
    if ([self.delegate respondsToSelector:@selector(meAttentionButtonBeClick)]) {
        [self.delegate meAttentionButtonBeClick];
    }
}


@end
