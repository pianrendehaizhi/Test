//
//  ViewController.m
//  test2017-10-25
//
//  Created by BiShuai on 2017/10/25.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import <UIImageView+WebCache.h>

@interface ViewController ()<UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
    UILabel *titleLabel = [cell viewWithTag:111];
    UIImageView *iconImageView = [cell viewWithTag:222];
    titleLabel.text = [NSString stringWithFormat:@"第%ld行", indexPath.row];
    [iconImageView sd_setImageWithURL:[NSURL URLWithString:@"http://mpic.tiankong.com/397/0e1/3970e127ca6491f17ad355feb2ff79d6/640.jpg"]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
