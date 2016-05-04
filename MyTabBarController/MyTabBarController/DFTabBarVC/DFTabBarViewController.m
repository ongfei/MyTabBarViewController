//
//  DFTabBarViewController.m
//  MyTabBarController
//
//  Created by MyMacBook on 16/5/4.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import "DFTabBarViewController.h"
#import "DFTabBar.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface DFTabBarViewController ()<DFTabBarDelegate>

@end

@implementation DFTabBarViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpViewController:[[FirstViewController alloc] init] title:@"第一页" imageName:@"iconfont-zhuye-1"  selectimage:@"iconfont-zhuye"];
    [self setUpViewController:[[SecondViewController alloc] init] title:@"第二页" imageName:@"iconfont-6"  selectimage:@"iconfont-6-1"];
    [self setUpViewController:[[ThirdViewController alloc] init] title:@"第三页" imageName:@"iconfont-crmtubiao25-1" selectimage:@"iconfont-crmtubiao25"];
    [self setUpViewController:[[FourthViewController alloc] init] title:@"第四页" imageName:@"iconfont-wo-1" selectimage:@"iconfont-wo"];
    
    [self setupSupViews];
    
}

//设置tabbar的VC和图标的方法
- (void)setUpViewController:(UIViewController *)tableVC title:(NSString *)title imageName:(NSString *)image selectimage:(NSString *)iamgeSel
{
    tableVC.tabBarItem.title = title;
    tableVC.tabBarItem.image = [UIImage imageNamed:image];
    UIImage *select = [UIImage imageNamed:iamgeSel];
    // 不渲染
    select = [select imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    tableVC.tabBarItem.selectedImage = select;
    UINavigationController *naviNC = [[UINavigationController alloc] initWithRootViewController:tableVC];
    tableVC.navigationItem.title = title;
    [self addChildViewController:naviNC];
   
}

//设置中间的按钮
- (void)setupSupViews
{
    DFTabBar *customTabBar = [[DFTabBar alloc] init];
    customTabBar.tabBarDelegate = self;
    // 更换系统自带的tabbar
    [self setValue:customTabBar forKeyPath:@"tabBar"];
}

//设置中间按钮点击事件
#pragma mark -
- (void)tabBarDidClick:(DFTabBar *)tabBar
{
    //以下是推出一个控制器 根据需要 可以动画 出一个view
    FifthViewController *fifthVC = [[FifthViewController alloc] init];
    UIViewController *appRootViewController;
    UIWindow *window;
    window = [UIApplication sharedApplication].keyWindow;
    appRootViewController = window.rootViewController;
    [appRootViewController presentViewController:fifthVC animated:YES completion:^{
        
    }];
    
}

@end
