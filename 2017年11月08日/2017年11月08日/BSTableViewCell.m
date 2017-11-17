//
//  BSTableViewCell.m
//  2017年11月08日
//
//  Created by BiShuai on 2017/11/8.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "BSTableViewCell.h"

@interface BSTableViewCell ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineLeftConstraint;
@property (weak, nonatomic) IBOutlet UIView *lineView;

@end

@implementation BSTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.lineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"line"]];
}

- (void)updateWithSingular:(BOOL)singular {
    self.lineLeftConstraint.constant = singular ? 4.0 : 0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
