//
//  Item5CollectionViewController.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "Item5CollectionViewController.h"
#import "TitleCollectionViewCell.h"
#import "ListCollectionViewCell.h"

@interface Item5CollectionViewController ()<UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSMutableArray <TitleModel *>*titleArray;

@end

@implementation Item5CollectionViewController

static NSString * const titleReuseIdentifier = @"TitleCell";
static NSString * const listReuseIdentifier = @"ListCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"TitleCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:titleReuseIdentifier];
    [self.collectionView registerNib:[UINib nibWithNibName:@"ListCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:listReuseIdentifier];
    
    [self pageData];
}

- (void)pageData {
    self.titleArray = [NSMutableArray array];
    for (int i = 1; i < 11; i++) {
        TitleModel *model = [[TitleModel alloc] init];
        model.title = [NSString stringWithFormat:@"分类%d", i];
        [self.titleArray addObject:model];
    }
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        NSString *string = self.titleArray[indexPath.row].title;
        CGSize size = [string sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17]}];
        return CGSizeMake(size.width + 10, size.height);
    } else if (indexPath.section == 1) {
        return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height - 100);
    } else {
        return CGSizeZero;
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        TitleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:titleReuseIdentifier forIndexPath:indexPath];
        [cell updateWithModel:self.titleArray[indexPath.row]];
        return cell;
    } else if (indexPath.section == 1) {
        ListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:listReuseIdentifier forIndexPath:indexPath];
        return cell;
    } else {
        return nil;
    }
}

#pragma mark <UICollectionViewDelegate>

@end
