//
//  BaseTabBar.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/15.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "BaseTabBar.h"
#import <Masonry.h>

@interface BaseTabBar()

@end

@implementation BaseTabBar

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    UITabBarItem *item = nil;
    if (self.items.count == 5) {
        item = [self.items objectAtIndex:2];
    }
    
//    CGPoint pointTemp = [self convertPoint:point toView:];
    //若触摸点在CricleButton上则返回YES
    
    if ([self touchPointInsideCircle:self.center radius:30 targetPoint:[self.superview convertPoint:point toView:self]]) {
        return YES;
    }
    //否则返回默认的操作
    return [super pointInside:point withEvent:event];
}

- (BOOL)touchPointInsideCircle:(CGPoint)center radius:(CGFloat)radius targetPoint:(CGPoint)point
{
    CGFloat dist = sqrtf((point.x - center.x) * (point.x - center.x) +
                         (point.y - center.y) * (point.y - center.y));
    return (dist <= radius);
}

@end
