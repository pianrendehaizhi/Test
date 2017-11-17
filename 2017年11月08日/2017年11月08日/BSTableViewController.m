//
//  BSTableViewController.m
//  2017年11月08日
//
//  Created by BiShuai on 2017/11/8.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "BSTableViewController.h"
#import "BSTableViewCell.h"

@interface BSTableViewController ()

@property (nonatomic, strong)NSIndexPath *selectedIndexPath;

@end

@implementation BSTableViewController

static NSString *reuseIdentifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"BSTableViewCell" bundle:nil] forCellReuseIdentifier:reuseIdentifier];
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 1.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BSTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    [cell updateWithSingular:indexPath.row % 2];
   
    return cell;
}

@end
