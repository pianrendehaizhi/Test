//
//  ViewController.m
//  test2017-06-29
//
//  Created by BiShuai on 2017/6/29.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *item = self.navigationController.tabBarItem;
    item.badgeColor = [UIColor clearColor];
    item.badgeValue = @"😍";
}

- (void)touchItem {
    
}

- (IBAction)btnAction:(UIButton *)sender {
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.img = sender.imageView.image;
    [self.navigationController pushViewController:detailVC animated:YES];
}


@end
