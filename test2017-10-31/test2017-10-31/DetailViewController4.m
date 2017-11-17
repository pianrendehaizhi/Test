//
//  DetailViewController4.m
//  test2017-10-31
//
//  Created by BiShuai on 2017/11/3.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "DetailViewController4.h"

@interface DetailViewController4 ()

@property (weak, nonatomic) IBOutlet UIView *myContainerView;
#warning 更改约束的active导致此属性被提前释放
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *helloTopConstraint;
@property (nonatomic, strong) NSLayoutConstraint *containerViewHeight;

@end

@implementation DetailViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchButton:(UIButton *)sender {
    if (!self.containerViewHeight) {
        self.containerViewHeight = [self.myContainerView.heightAnchor constraintEqualToConstant:0];
    }
    BOOL shuldShow = !self.helloTopConstraint.isActive;
    if (shuldShow) {
        self.containerViewHeight.active = NO;
        self.helloTopConstraint.active = YES;
    } else {
        self.helloTopConstraint.active = NO;
        self.containerViewHeight.active = YES;
    }
    
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
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
