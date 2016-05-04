//
//  FifthViewController.m
//  MyTabBarController
//
//  Created by MyMacBook on 16/5/4.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256 / 255.0 green:arc4random()%256 / 255.0 blue:arc4random()%256 / 255.0 alpha:0.8];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    [self.view addGestureRecognizer:tap];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
