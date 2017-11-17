//
//  ViewController3.m
//  test2017-10-31
//
//  Created by BiShuai on 2017/10/31.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureImgView];
}

- (void)configureImgView {
    self.imgView.layer.shadowColor = [UIColor redColor].CGColor;
    self.imgView.layer.shadowOffset = CGSizeMake(10, 10);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)panImg:(UIPanGestureRecognizer *)sender {
    switch (sender.state) {
        case UIGestureRecognizerStateChanged:
            sender.view.transform = [self moveImg:[sender translationInView:self.view]];
            break;
        case UIGestureRecognizerStateEnded:
        {
            [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:1.0 options:0 animations:^{
                self.imgView.transform = CGAffineTransformIdentity;
            } completion:nil];
        }
            break;
            
        default:
            break;
    }
}

- (CGAffineTransform)moveImg:(CGPoint)point {
    CGAffineTransform transform = CGAffineTransformMakeTranslation(point.x, point.y);
    CGFloat rotation = -sin(point.x / (self.imgView.frame.size.width * 4.0));
    return CGAffineTransformRotate(transform, rotation);
    return transform;
    
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
