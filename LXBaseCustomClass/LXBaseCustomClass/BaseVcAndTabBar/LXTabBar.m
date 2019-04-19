//
//  LXAppDelegate.m
//  LXProject
//
//  Created by liuxia55 on 10/22/2017.
//  Copyright (c) 2017 liuxia55. All rights reserved.

#import "LXTabBar.h"

#import "UIView+Size.h"
#import "UIButton+Edge.h"
#import "NSString+Size.h"
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

@interface LXTabBar()
@property (nonatomic, strong) UIButton *middleBtn;
@end

@implementation LXTabBar

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat w = self.bounds.size.width/5.0;
    
    UIButton *sendBtn = [[UIButton alloc] init];
    [sendBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
//    [sendBtn setTitle:@"搜索" forState:UIControlStateNormal];
    sendBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [sendBtn addTarget:self action:@selector(didClickPublishBtn:) forControlEvents:UIControlEventTouchUpInside];
    sendBtn.adjustsImageWhenHighlighted = NO;
    sendBtn.size = CGSizeMake(w, 70);
    sendBtn.centerX = self.width / 2;
    sendBtn.centerY = 12;
    [sendBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:sendBtn];
    self.middleBtn = sendBtn;

    [sendBtn setImagePositionWithType:SSImagePositionTypeTop spacing:4];
    // 其他位置按钮
    NSUInteger count = self.subviews.count;
    for (NSUInteger i = 0,j=0; i < count; i++)
    {
        UIView *view = self.subviews[i];
        Class class = NSClassFromString(@"UITabBarButton");
        if ([view isKindOfClass:class])
        {
             if (IS_IPAD) {//iPad
                 if (j==0) {
                     view.width = 76;
                     view.x = self.width/2-38-34-76;
                 }else{
                     view.width = 76;
                     view.x = self.width/2+38+34;
                 }
             }else{
                 view.width = self.width / 3.0;
                 view.x = self.width * j / 3.0;
             }

            j++;
            if (j == 1)
            {
                j++;
            }
        }
    }

}
// 
- (void)didClickPublishBtn:(UIButton*)sender {
    if (self.didMiddBtn) {
        self.didMiddBtn();
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (self.isHidden == NO)
    {
        CGPoint newP = [self convertPoint:point toView:self.middleBtn];
        if ( [self.middleBtn pointInside:newP withEvent:event])
        {
            return self.middleBtn;
        }else
        {
            return [super hitTest:point withEvent:event];
        }
    }
    else
    {
        return [super hitTest:point withEvent:event];
    }
}

@end
