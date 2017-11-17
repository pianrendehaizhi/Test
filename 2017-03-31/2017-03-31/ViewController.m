//
//  ViewController.m
//  2017-03-31
//
//  Created by BiShuai on 2017/3/31.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "PhotoPreview.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImage:)];
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:tap];
    
}

- (void)tapImage:(UITapGestureRecognizer *)tap {
    UIImageView *imageView = (UIImageView *)tap.view;
    PhotoPreview *photoPreview = [[PhotoPreview alloc] init];
    [photoPreview previewImageView:imageView inView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
