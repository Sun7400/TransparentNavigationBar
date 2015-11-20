//
//  TransparentView.h
//  TransparentNavigationBar
//
//  Created by Michael on 15/11/20.
//  Copyright © 2015年 com.51fanxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransparentView : UIView

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *stretchView;
+ (instancetype)dropHeaderViewWithFrame:(CGRect)frame contentView:(UIView *)contentView stretchView:(UIView *)stretchView;


@end
