//
//  SelectMenuViewController.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "SelectMenuViewController.h"
#import <Masonry.h>

@interface SelectMenuViewController ()<
UITableViewDelegate,
UITableViewDataSource>

@property (nonatomic, strong)NSArray *menuArray;
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, copy)SelectMenuCallBack callBack;
@property (nonatomic, strong)UIButton *backBtn;

@end

@implementation SelectMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackView];
    [self setupTableView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIView animateWithDuration:0.25 animations:^{
        self.backBtn.alpha = 1.0;
        self.tableView.transform = CGAffineTransformMakeTranslation(0, -44 * 3);
    }];
}

- (void)setupBackView {
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:backBtn];
    self.backBtn = backBtn;
    backBtn.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    backBtn.alpha = 1.0;
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.trailing.leading.bottom.mas_equalTo(0);
    }];
    [backBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setupTableView {
    UITableView *tableView = [[UITableView alloc] init];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_bottom);
        make.trailing.leading.mas_equalTo(0);
    }];
    tableView.rowHeight = 44.0;
    tableView.delegate = self;
    tableView.dataSource = self;
}

- (void)btnAction {
    [self dismissSelectMenuWithIndex:INT_MAX];
}

- (void)showWithController:(UIViewController *)vc selectMenuArray:(NSArray *)menuArray selectedCallBack:(SelectMenuCallBack)callBack; {
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(132);
    }];
    [vc presentViewController:self animated:NO completion:nil];
    
    if (callBack) {
        self.callBack = callBack;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = [NSString stringWithFormat:@"第%ld行", (long)indexPath.row];
        cell.backgroundColor = [UIColor redColor];
    }
    return cell;
}

- (void)dismissSelectMenuWithIndex:(NSUInteger)index {
    [UIView animateWithDuration:0.25 animations:^{
        self.tableView.transform = CGAffineTransformIdentity;
        self.backBtn.alpha = 0;
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:^{
            if (index != INT_MAX) {
                self.callBack(index);
            }
        }];
    }];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self dismissSelectMenuWithIndex:indexPath.row];
}

@end
