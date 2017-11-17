//
//  DetailViewController.m
//  test2017-06-29
//
//  Created by BiShuai on 2017/6/29.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIImageView   *imgView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupUI];
}

- (void)setupUI {
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.scrollView];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.scrollView.bounds.size;
    self.scrollView.backgroundColor = [UIColor blackColor];
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 1.0;
    self.imgView = [[UIImageView alloc] initWithImage:self.img];
    [self.scrollView addSubview:self.imgView];
    self.imgView.frame = self.scrollView.bounds;
    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imgView;
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
