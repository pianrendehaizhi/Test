//
//  ViewController.m
//  test2017-07-19
//
//  Created by BiShuai on 2017/7/19.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // A present B
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[BViewController alloc] init]];
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController pushViewController:[[BViewController alloc] init] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
