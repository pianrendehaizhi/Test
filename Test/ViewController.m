//
//  ViewController.m
//  Test
//
//  Created by BiShuai on 2017/2/9.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController ()

@property (nonatomic, strong) UIView* containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.containerView = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 300, 300)];
    [self.view addSubview:self.containerView];
    self.containerView.backgroundColor = [UIColor grayColor];
    
    ViewController1* vc1 = [[UIStoryboard storyboardWithName:@"vc1" bundle:nil] instantiateInitialViewController];
    vc1.view.frame = self.containerView.bounds;
    [self addChildViewController:vc1];
    [self.containerView addSubview:vc1.view];
}


- (IBAction)next:(id)sender {
    ViewController2* vc2 = [[UIStoryboard storyboardWithName:@"vc2" bundle:nil] instantiateInitialViewController];
    vc2.view.frame = self.containerView.bounds;
    vc2.view.alpha = 0;
    [self addChildViewController:vc2];
    ViewController1* vc1 = self.childViewControllers[0];
    [self transitionFromViewController:vc1
                      toViewController:vc2
                              duration:1
                               options:UIViewAnimationOptionCurveEaseIn
                            animations:^{
                                vc1.view.alpha = 0;
                                vc2.view.alpha = 1;
                            } completion:^(BOOL finished) {
                                [vc1 removeFromParentViewController];
                                NSLog(@"%@", self.childViewControllers);
                            }];
}


@end
