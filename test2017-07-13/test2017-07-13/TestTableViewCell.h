//
//  TestTableViewCell.h
//  test2017-07-13
//
//  Created by BiShuai on 2017/7/13.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestModel.h"

@interface TestTableViewCell : UITableViewCell

@property (nonatomic, copy) void(^arrowAction)();
- (void)updateCell:(TestModel *)model;

@end
