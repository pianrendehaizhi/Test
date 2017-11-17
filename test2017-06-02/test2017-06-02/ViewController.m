//
//  ViewController.m
//  test2017-06-02
//
//  Created by BiShuai on 2017/6/2.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import <CoreGraphics/CoreGraphics.h>
#import "BSView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)setupView {
    BSView *view = [[BSView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
