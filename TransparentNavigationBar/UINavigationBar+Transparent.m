//
//  UINavigationBar+Transparent.m
//  TransparentNavigationBar
//
//  Created by Michael on 15/11/20.
//  Copyright © 2015年 com.51fanxing. All rights reserved.
//

#import "UINavigationBar+Transparent.h"
#import <objc/runtime.h>

@implementation UINavigationBar (Transparent)

static const void *KCustomViewKey = @"KCustomViewKey";

- (void)js_setBackgroundColor:(UIColor *)backgroundColor
{
    if (!self.customView) {
        [self setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        [self setShadowImage:[[UIImage alloc] init]];
        self.customView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
        self.customView.backgroundColor = [UIColor clearColor];
        [self addSubview:self.customView];
    }
    self.customView.backgroundColor = backgroundColor;
}

- (void)js_reset
{
    [self setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self setShadowImage:nil];
    
    [self.customView removeFromSuperview];
    self.customView = nil;
}


#pragma mark - get和set方法
- (UIView *)customView
{
    return objc_getAssociatedObject(self, &KCustomViewKey);
}

- (void)setCustomView:(UIView *)customView
{
    objc_setAssociatedObject(self, &KCustomViewKey, customView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
