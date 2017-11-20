//
//  ViewController2.m
//  2017年11月17日
//
//  Created by BiShuai on 2017/11/17.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController2.h"
#import "ListViewController.h"

@interface ViewController2 ()

@property (nonatomic, strong) ListViewController *listVC;
@property (nonatomic, strong) UIViewController *firstVC;
@property (nonatomic, strong) UIViewController *currentVC;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!self.listVC) {
        self.listVC = [[ListViewController alloc] init];
    }
    if (!self.firstVC) {
        self.firstVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"first"];
    }
    [self addChildViewController:self.firstVC];
    [self addChildViewController:self.listVC];
    self.firstVC.view.frame = self.view.bounds;
    [self.view addSubview:self.firstVC.view];
    self.currentVC = self.firstVC;
}

- (IBAction)rightAction:(UISegmentedControl *)sender {
    UIViewController *vc = sender.selectedSegmentIndex == 1 ? self.listVC : self.firstVC;
    vc.view.frame = self.view.bounds;
    self.segmentedControl.userInteractionEnabled = NO;
    [self transitionFromViewController:self.currentVC
                      toViewController:vc
                              duration:0
                               options:UIViewAnimationOptionTransitionNone
                            animations:nil
                            completion:^(BOOL finished) {
                                if (finished) {
                                    self.segmentedControl.userInteractionEnabled = YES;
                                    self.currentVC = vc;
                                }
                            }];
}

@end
