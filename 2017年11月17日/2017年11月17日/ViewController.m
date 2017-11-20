//
//  ViewController.m
//  2017年11月17日
//
//  Created by BiShuai on 2017/11/17.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import <PDFKit/PDFKit.h>
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)setupView {
    PDFView *pdfView = [[PDFView alloc] init];
    [self.view addSubview:pdfView];
    [pdfView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.trailing.leading.bottom.mas_equalTo(0);
    }];
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"第一行代码——Android(全书)" ofType:@"pdf"]];
    pdfView.document = [[PDFDocument alloc] initWithData:data];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
