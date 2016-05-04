//
//  DFTabBar.h
//  MyTabBarController
//
//  Created by MyMacBook on 16/5/4.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DFTabBar;

@protocol DFTabBarDelegate <NSObject>

- (void)tabBarDidClick:(DFTabBar *)tabBar;

@end
@interface DFTabBar : UITabBar

@property (nonatomic, weak) id<DFTabBarDelegate> tabBarDelegate;
@end
