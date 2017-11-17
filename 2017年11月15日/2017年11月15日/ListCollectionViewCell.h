//
//  ListCollectionViewCell.h
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TitleModel.h"

@protocol ListCollectionCellDelegate<NSObject>

- (void)didSelectedCell:(NSIndexPath *)indexPath;

@end

@interface ListCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) id <ListCollectionCellDelegate> delegate;
- (void)updateWithModel:(TitleModel *)model;

@end
