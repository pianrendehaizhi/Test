//
//  ViewController.m
//  test2017-06-19
//
//  Created by BiShuai on 2017/6/19.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger k;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)test {
    dispatch_group_t group = dispatch_group_create();
    for (int i = 0; i < 10; i++) {
        dispatch_group_enter(group);
        [self upload:^(NSInteger j) {
            NSLog(@"%d, %ld", i, j);
            dispatch_group_leave(group);
        }];
    }
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"finish");
    });
}

- (void)upload:(void(^)(NSInteger j))block {
    NSInteger num = arc4random() % 4;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(num * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        block(self.k);
    });
    self.k++;
}

- (IBAction)btnAction:(UIButton *)sender {
    [self test];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
