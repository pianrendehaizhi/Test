//
//  Item4ViewController.m
//  2017年11月15日
//
//  Created by BiShuai on 2017/11/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "Item4ViewController.h"
#import "TitleCollectionViewCell.h"
#import "ListCollectionViewCell.h"
#import "SelectMenuViewController.h"

@interface Item4ViewController ()<
UICollectionViewDelegateFlowLayout,
UICollectionViewDelegate,
UICollectionViewDataSource,
ListCollectionCellDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *titleCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *listCollectionView;
@property (nonatomic, strong) NSMutableArray <TitleModel *>*titleArray;
@property (nonatomic, assign) NSUInteger currentPageIndex;

@end

static NSString * const titleReuseIdentifier = @"TitleCell";
static NSString * const listReuseIdentifier = @"ListCell";

@implementation Item4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.titleCollectionView registerNib:[UINib nibWithNibName:@"TitleCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:titleReuseIdentifier];
    [self.listCollectionView registerNib:[UINib nibWithNibName:@"ListCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:listReuseIdentifier];
    
    [self pageData];
}

- (void)pageData {
    self.titleArray = [NSMutableArray array];
    for (int i = 1; i < 110; i++) {
        TitleModel *model = [[TitleModel alloc] init];
        model.title = [NSString stringWithFormat:@"分类%d", i];
        model.heighlight = (i == 1);
        model.listArray = [NSMutableArray array];
        for (int j = 1; j < (arc4random() % 100); j++) {
            GoodsModel *goods = [[GoodsModel alloc] init];
            goods.goodsID = j;
            goods.goodsName = [NSString stringWithFormat:@"第%d组第%d行", i, j];
            [model.listArray addObject:goods];
        }
        [self.titleArray addObject:model];
    }
    self.currentPageIndex = 0;
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.titleCollectionView) {
        NSString *string = self.titleArray[indexPath.row].title;
        CGSize size = [string sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17]}];
        return CGSizeMake(size.width + 10, size.height);
    } else if (collectionView == self.listCollectionView) {
        return collectionView.frame.size;
    } else {
        return CGSizeZero;
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.titleCollectionView) {
        TitleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:titleReuseIdentifier forIndexPath:indexPath];
        [cell updateWithModel:self.titleArray[indexPath.row]];
        return cell;
    } else if (collectionView == self.listCollectionView) {
        ListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:listReuseIdentifier forIndexPath:indexPath];
        cell.delegate = self;
        [cell updateWithModel:self.titleArray[indexPath.row]];
        return cell;
    } else {
        return nil;
    }
}

#pragma mark <UICollectionViewDelegate>
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.titleCollectionView) {
        [self.listCollectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:YES];
        [self changeCurrentPageIndex:indexPath.row];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView == self.listCollectionView) {
        CGFloat i = scrollView.contentOffset.x / scrollView.frame.size.width;
        if (i == (int)i) {
            [self changeCurrentPageIndex:i];
        }
    }
}

- (void)changeCurrentPageIndex:(NSUInteger)index {
    if (index != self.currentPageIndex) {
        self.titleArray[index].heighlight = YES;
        self.titleArray[self.currentPageIndex].heighlight = NO;
        [self.titleCollectionView reloadItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:index inSection:0], [NSIndexPath indexPathForItem:self.currentPageIndex inSection:0]]];
        [self.titleCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionLeft animated:YES];
        self.currentPageIndex = index;
    }
}

#pragma mark <ListCollectionCellDelegate>
- (void)didSelectedCell:(NSIndexPath *)indexPath {
    SelectMenuViewController *vc = [[SelectMenuViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [vc showWithController:self selectMenuArray:@[] selectedCallBack:^(NSUInteger index) {
        NSLog(@"💥%lu", (unsigned long)index);
    }];
}

@end
