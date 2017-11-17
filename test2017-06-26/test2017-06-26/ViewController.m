//
//  ViewController.m
//  test2017-06-26
//
//  Created by BiShuai on 2017/6/26.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Calculator *calculator = [[Calculator alloc] init];
    calculator.result = calculator.test;
    calculator.add(10).multiply(10).divide(12).multiply(12);
    NSLog(@"%ld", calculator.result);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
