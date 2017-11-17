//
//  SecondViewController.m
//  test2017-06-29
//
//  Created by BiShuai on 2017/6/29.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test];
}

- (void)test {
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:testView];
    
    testView.backgroundColor = [UIColor orangeColor];
    
    testView.layer.borderWidth = 1.;
    testView.layer.borderColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Group 2"]].CGColor;
    testView.layer.cornerRadius = 5.;
    
    self.shapeLayer = [CAShapeLayer layer];
    self.shapeLayer.frame = testView.bounds;
    self.shapeLayer.strokeStart = 0;
    self.shapeLayer.strokeEnd = 0.1;
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:testView.bounds];
    self.shapeLayer.path = path.CGPath;
    self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
    self.shapeLayer.lineWidth = 2.0f;
    self.shapeLayer.strokeColor = [UIColor redColor].CGColor;
    [testView.layer addSublayer:self.shapeLayer];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.shapeLayer.strokeEnd = 0.7;
    
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
