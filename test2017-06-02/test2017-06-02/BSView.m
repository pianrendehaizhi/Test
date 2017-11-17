//
//  BSView.m
//  test2017-06-02
//
//  Created by BiShuai on 2017/6/2.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "BSView.h"

@implementation BSView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    /*
    // 矩形
    [[UIColor redColor] setFill];
    UIRectFill(CGRectMake(20, 20, 100, 50));
     
    UIColor *orange = [UIColor orangeColor];
    [orange set];
//    UIBezierPath *aPath = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 50)];
    UIBezierPath *aPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, 50, 150)];
    aPath.lineWidth = 5.;
    aPath.lineCapStyle = kCGLineCapRound;
    aPath.lineJoinStyle = kCGLineCapRound;
    [aPath stroke];
     */
    
    UIColor *color = [UIColor yellowColor];
    [color set];
    [[UIColor redColor] setFill];
    
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 4.0;
    
    [aPath moveToPoint:CGPointMake(120, 120)];
    [aPath addLineToPoint:CGPointMake(120, 160)];
    [aPath addLineToPoint:CGPointMake(140, 150)];
    [aPath closePath];
    
    [aPath stroke];
    [aPath fill];
    
}


@end
