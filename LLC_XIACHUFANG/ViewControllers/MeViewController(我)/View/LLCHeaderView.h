//
//  LLCHeaderView.h
//  LLC_XIACHUFANG
//
//  Created by Liwen on 16/9/18.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LLCHeaderViewDelegate <NSObject>

- (void)bandagePhoneButtonBeClick;

- (void)meAttentionButtonBeClick;

@end

@interface LLCHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *headerImgView;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *attentionCount;

@property (weak, nonatomic) IBOutlet UILabel *fansCount;

@property (weak, nonatomic) IBOutlet UILabel *informationLable;
@property (weak, nonatomic) IBOutlet UILabel *honmeAddressLable;
@property (weak, nonatomic) IBOutlet UILabel *presentAddressLable;

@property (weak, nonatomic) IBOutlet UIButton *bandagePhoneButton;
@property (weak, nonatomic) IBOutlet UIButton *meAttentionBtn;

@property (weak, nonatomic) id<LLCHeaderViewDelegate> delegate;

@end
