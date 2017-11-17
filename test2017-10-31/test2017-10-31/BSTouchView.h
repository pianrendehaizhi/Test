//
//  BSTouchView.h
//  test2017-10-31
//
//  Created by BiShuai on 2017/11/7.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIView *(^TouchViewCallBack)(CGPoint point, UIEvent *event);

@interface BSTouchView : UIView

@property (nonatomic, copy) TouchViewCallBack block;

@end
