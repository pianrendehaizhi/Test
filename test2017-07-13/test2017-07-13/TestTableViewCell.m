//
//  TestTableViewCell.m
//  test2017-07-13
//
//  Created by BiShuai on 2017/7/13.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "TestTableViewCell.h"

@interface TestTableViewCell ()

@property (weak, nonatomic) IBOutlet UIButton *arrowBtn;
@property (nonatomic, strong) TestModel *model;

@end

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateCell:(TestModel *)model {
    self.model = model;
    
    self.arrowBtn.imageView.transform = CGAffineTransformIdentity;
    [self.arrowBtn setImage:[UIImage imageNamed:model.expand ? @"上箭头" : @"下箭头"] forState:UIControlStateNormal];
}

- (IBAction)btnAction:(UIButton *)sender {
    self.model.expand = !self.model.expand;
    [UIView animateWithDuration:0.3 animations:^{
        self.arrowBtn.imageView.transform = CGAffineTransformRotate(self.arrowBtn.imageView.transform, M_PI);
    }];
    if (self.arrowAction) {
        self.arrowAction();
    }
}

@end
