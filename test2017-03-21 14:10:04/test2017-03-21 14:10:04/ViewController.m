//
//  ViewController.m
//  test2017-03-21 14:10:04
//
//  Created by BiShuai on 2017/3/21.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(UIButton *)sender {
    [self showAlertWithBtnTitle:@"1", @"2", @"3", @"4", nil];
}

- (void)showAlertWithBtnTitle:(NSString *)title,...{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alert"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    va_list argsList;
    [alertController addAction:[UIAlertAction actionWithTitle:title
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction * _Nonnull action) {
                                                          NSLog(@"💥%@", title);
                                                      }]];
    va_start(argsList, title);
    while ((title = va_arg(argsList, NSString *))) {
        [alertController addAction:[UIAlertAction actionWithTitle:title
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             NSLog(@"💥%@", title);
                                                         }]];
    }
    va_end(argsList);
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
