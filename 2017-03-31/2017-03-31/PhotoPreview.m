//
//  PhotoPreview.m
//  2017-03-31
//
//  Created by BiShuai on 2017/3/31.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "PhotoPreview.h"

#define kScreenBounds [UIScreen mainScreen].bounds
#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height

@interface PhotoPreview () <UIScrollViewDelegate>

@property (nonatomic, strong)UIView         *containerView;
@property (nonatomic, strong)UIImageView    *imageView;
@property (nonatomic, strong)UIImageView    *tempImageView;
@property (nonatomic, strong)UIScrollView   *scrollView;
@property (nonatomic, strong)UIVisualEffectView *back;

@end

@implementation PhotoPreview

- (instancetype)init {
    if ([super init]) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    self.frame = kScreenBounds;
    self.backgroundColor = [UIColor clearColor];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapAction:)];
    [self addGestureRecognizer:singleTap];
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapAction:)];
    doubleTap.numberOfTapsRequired = 2;
    [singleTap requireGestureRecognizerToFail:doubleTap];
    [self addGestureRecognizer:doubleTap];
    
    UIVisualEffectView *back = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    self.back = back;
    back.frame = self.bounds;
    [self addSubview:back];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    [self addSubview:scrollView];
    self.scrollView = scrollView;
    scrollView.delegate = self;
    scrollView.maximumZoomScale = 3;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.multipleTouchEnabled = YES;
    scrollView.contentSize = kScreenBounds.size;
    
    self.containerView = [[UIView alloc] init];
    [scrollView addSubview:self.containerView];
    
    self.imageView = [[UIImageView alloc] init];
    [self.containerView addSubview:self.imageView];
}

- (void)previewImageView:(UIImageView *)imageView inView:(UIView *)superView {
    self.back.alpha = 0;
    imageView.hidden = YES;
    self.tempImageView = imageView;
    [superView addSubview:self];
    
    UIImage *image = imageView.image;
    if (image.size.height / image.size.width >= kScreenH / kScreenW) {
        self.containerView.frame = CGRectMake(self.containerView.frame.origin.x, self.containerView.frame.origin.y, kScreenH / image.size.height * image.size.width, kScreenH);
    } else {
        self.containerView.frame = CGRectMake(self.containerView.frame.origin.x, self.containerView.frame.origin.y, kScreenW, kScreenW / image.size.width * image.size.height);
    }
    self.containerView.center = self.center;
    
    CGRect tempRect = [self.tempImageView.superview convertRect:self.tempImageView.frame toView:self];
    self.imageView.frame = tempRect;
    self.imageView.image = image;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.imageView.frame = self.containerView.bounds;
        self.containerView.transform = CGAffineTransformMakeScale(1.1, 1.1);
        self.back.alpha = 1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.18 animations:^{
            self.containerView.transform = CGAffineTransformIdentity;
        }];
    }];
}

- (void)singleTapAction:(UITapGestureRecognizer *)tap {
    
}

- (void)doubleTapAction:(UITapGestureRecognizer *)tap {
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.containerView;
}

@end
