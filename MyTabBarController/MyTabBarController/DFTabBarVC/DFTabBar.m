//
//  DFTabBar.m
//  MyTabBarController
//
//  Created by MyMacBook on 16/5/4.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import "DFTabBar.h"
#import "UIView+Extension.h"

@interface DFTabBar ()

@property (nonatomic, strong) UIButton *plusButton;
@end
@implementation DFTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupPlusButton];
    }
    return self;
}

- (void)setupPlusButton
{
    UIButton *plusButton = [[UIButton alloc] init];
    plusButton.alpha = 0.8;
    [plusButton setBackgroundImage:[UIImage imageNamed:@"postnomal"] forState:UIControlStateNormal];
    [plusButton setBackgroundImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateHighlighted];
    [plusButton addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:plusButton];
    self.plusButton = plusButton;
//    self.backgroundColor = [UIColor yellowColor];
}

- (void)plusClick
{
    if ([self.tabBarDelegate respondsToSelector:@selector(tabBarDidClick:)]) {
        [self.tabBarDelegate tabBarDidClick:self];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setupPlusButtonFrame];
    [self setupAllTabBarButtonsFrame];
}


- (void)setupPlusButtonFrame
{
    self.plusButton.size = self.plusButton.currentBackgroundImage.size;
    self.plusButton.center = CGPointMake(self.width * 0.5, self.height * 0.5 - 15);
}


- (void)setupAllTabBarButtonsFrame
{
    int index = 0;
    
    for (UIView *tabBarButton in self.subviews) {
        if (![tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        [self setupTabBarButtonFrame:tabBarButton atIndex:index];
        index++;
    }
}

- (void)setupTabBarButtonFrame:(UIView *)tabBarButton atIndex:(int)index
{
    CGFloat buttonW = self.width / (self.items.count + 1);
    CGFloat buttonH = self.height;
    
    tabBarButton.width = buttonW;
    tabBarButton.height = buttonH;
    if (index >= 2) {
        tabBarButton.x = buttonW * (index + 1);
    } else {
        tabBarButton.x = buttonW * index;
    }
    tabBarButton.y = 0;
}



@end
