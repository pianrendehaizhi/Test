//
//  Item2ViewController.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/17.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "Item2ViewController.h"
#import "MenuViewController.h"

@interface Item2ViewController ()

@end

@implementation Item2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnAction:(UIButton *)sender {
    MenuViewController *vc = [[MenuViewController alloc] init];
    [vc showMenuWith:self];
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
