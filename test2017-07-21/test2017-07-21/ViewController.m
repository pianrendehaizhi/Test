//
//  ViewController.m
//  test2017-07-21
//
//  Created by BiShuai on 2017/7/21.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"

#define ANavID      @"ANavgationID"
#define BTabbarID   @"BTabbarID"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Test" bundle:nil];
    UIViewController *vc1 = [sb instantiateViewControllerWithIdentifier:ANavID];
    if (vc1) {
        [self addChildViewController:vc1];
        vc1.view.frame = self.view.bounds;
        [self.view addSubview:vc1.view];
    }*/
//    UIViewController *vc2 = [sb instantiateViewControllerWithIdentifier:BTabbarID];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)topBtnAction:(UIButton *)sender {
}

- (IBAction)bottomBtnAction:(UIButton *)sender {
}

@end
