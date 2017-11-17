//
//  SelectMenuViewController.h
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SelectMenuCallBack)(NSUInteger index);

@interface SelectMenuViewController : UIViewController

- (void)showWithController:(UIViewController *)vc selectMenuArray:(NSArray *)menuArray selectedCallBack:(SelectMenuCallBack)callBack;

@end
