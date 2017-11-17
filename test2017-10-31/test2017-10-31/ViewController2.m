//
//  ViewController2.m
//  test2017-10-31
//
//  Created by BiShuai on 2017/10/31.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController2.h"
#import <Masonry.h>
#import "BSTouchView.h"

@interface ViewController2 ()<UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet BSTouchView *scrollView1contentView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView1;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView2;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UITableView *tableView1;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;
@property (weak, nonatomic) IBOutlet UIView *scrollView2contentView;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView1.delegate = self;
    self.scrollView2.delegate = self;
}

- (void)layoutUI {
    CGFloat height = self.scrollView1.frame.size.height + self.topView.frame.size.height;
    [self.scrollView1contentView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@(height));
    }];
    
    CGFloat width = self.scrollView1.frame.size.width * 2;
    [self.scrollView2contentView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@(width));
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self layoutUI];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.tableView1) {
        return 20;
    } else if (tableView == self.tableView2) {
        return 5;
    } else {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if (tableView == self.tableView1) {
        cell.textLabel.text = [NSString stringWithFormat:@"tableView1:第%ld行", indexPath.row + 1];
    } else if (tableView == self.tableView2) {
        cell.textLabel.text = [NSString stringWithFormat:@"tableView2:第%ld行", indexPath.row + 1];
    }
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat temp = self.topView.frame.size.height;
    if (scrollView.tag == 777) { // 滑动tableview
        if (self.scrollView1.contentOffset.y <= temp) { // topview可见的情况下
            CGFloat y = self.scrollView1.contentOffset.y + scrollView.contentOffset.y;
            if (scrollView.contentOffset.y > 0) { // 上拉
                self.scrollView1.contentOffset = CGPointMake(self.scrollView1.contentOffset.x, MIN(y, temp));
                if (y < temp) {
                    scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x, 0);
                }
            } else if (scrollView.contentOffset.y < 0) { // 下拉
                if (y > 0) {
                    self.scrollView1.contentOffset = CGPointMake(self.scrollView1.contentOffset.x, MAX(y, 0));
                } else {
//                    self.scrollView1contentView.block = ^UIView *(CGPoint point, UIEvent *event) {
//                        return self.scrollView1;
//                    };
//                    self.scrollView1.contentOffset = CGPointMake(self.scrollView1.contentOffset.x, y);
                }
                scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x, 0);
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
