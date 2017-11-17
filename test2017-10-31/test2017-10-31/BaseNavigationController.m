//
//  BaseNavigationController.m
//  test2017-10-31
//
//  Created by BiShuai on 2017/11/10.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UIImage+Color.h"
#define kNavColor1 [UIColor colorWithRed:255 / 255.0 green:70 / 255.0 blue:93 / 255.0 alpha:1.0]
#define kNavColor2 [UIColor colorWithRed:251 / 255.0 green:108 / 255.0 blue:42 / 255.0 alpha:1.0]

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.translucent = NO;
    /*
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(__bridge id)kNavColor1.CGColor, (__bridge id)kNavColor2.CGColor];
    gradientLayer.locations = @[@0.5, @1.0];
    gradientLayer.startPoint = CGPointZero;
    gradientLayer.endPoint = CGPointMake(1.0, 0);
    CGRect statusRect = [UIApplication sharedApplication].statusBarFrame;
    CGRect tabbarRect = self.navigationBar.frame;
    gradientLayer.frame = CGRectMake(0, -statusRect.size.height, tabbarRect.size.width, tabbarRect.size.height + statusRect.size.height);*/
    [self.navigationBar setBackgroundImage:[UIImage imageWithColors:@[kNavColor1, kNavColor2] size:self.navigationBar.frame.size] forBarMetrics:UIBarMetricsDefault];
//    [self.navigationBar.layer addSublayer:gradientLayer];
    
//    [self.view.layer insertSublayer:gradientLayer above:self.navigationBar.layer];
//    [self.navigationBar.layer insertSublayer:gradientLayer atIndex:0];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
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
