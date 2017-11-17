//
//  TitleModel.h
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GoodsModel.h"
#import <UIKit/UIKit.h>

@interface TitleModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) BOOL heighlight;
@property (nonatomic, strong) NSMutableArray <GoodsModel *>*listArray;
@property (nonatomic) CGPoint pageOffset;

@end
