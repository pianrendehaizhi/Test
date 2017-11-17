//
//  TitleCollectionViewCell.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "TitleCollectionViewCell.h"

@interface TitleCollectionViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation TitleCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)updateWithModel:(TitleModel *)model {
    self.titleLabel.text = model.title;
    self.titleLabel.textColor = model.heighlight ? [UIColor redColor] : [UIColor lightGrayColor];
}

@end
