//
//  MenuViewController.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/17.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "MenuViewController.h"
#import <Masonry.h>

@interface MenuViewController ()<
UITableViewDelegate,
UITableViewDataSource>

@property (nonatomic, strong)UIButton *blackBtn;
@property (nonatomic, strong)NSArray *menuArray;
@property (nonatomic, strong)UITableView *tableView;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackView];
    [self setupTableView];
}

- (void)setupBackView {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.blackBtn = btn;
    [self.view addSubview:btn];
    btn.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    btn.alpha = 0;
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.trailing.leading.bottom.mas_equalTo(0);
    }];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setupTableView {
    UITableView *tableView = [[UITableView alloc] init];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_bottom);
        make.trailing.leading.mas_equalTo(0);
        make.height.mas_equalTo(44 * 3);
    }];
    tableView.rowHeight = 44.0;
    tableView.delegate = self;
    tableView.dataSource = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIView animateWithDuration:0.25 animations:^{
        self.blackBtn.alpha = 1.0;
        self.tableView.transform = CGAffineTransformMakeTranslation(0, -44 * 3);
    }];
}

- (void)showMenuWith:(UIViewController *)vc {
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [vc presentViewController:self animated:NO completion:nil];
}

- (void)btnAction:(UIButton *)btn {
    [UIView animateWithDuration:0.25 animations:^{
        self.blackBtn.alpha = 0;
        self.tableView.transform = CGAffineTransformIdentity;
    }completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
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
