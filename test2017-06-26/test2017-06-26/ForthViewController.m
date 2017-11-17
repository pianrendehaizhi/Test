//
//  ForthViewController.m
//  test2017-06-26
//
//  Created by BiShuai on 2017/6/26.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ForthViewController.h"

@interface ForthViewController ()

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindSegueForthViewController:(UIStoryboardSegue *)sender {
    
}

- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    [super performSegueWithIdentifier:identifier sender:sender];
    
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
