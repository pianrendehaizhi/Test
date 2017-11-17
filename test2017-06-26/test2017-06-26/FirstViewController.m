//
//  FirstViewController.m
//  test2017-06-26
//
//  Created by BiShuai on 2017/6/26.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "FirstViewController.h"
#import "Calculator.h"

@interface FirstViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UIView *imgContainerView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self setupUI];
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imgContainerView;
}

- (void)setupUI {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 50, 50);
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickBtn {
    Calculator *calculator = [[Calculator alloc] init];
    calculator.result = calculator.test;
    calculator.add(10).multiply(10).divide(12).multiply(12);
    NSLog(@"%ld", calculator.result);
    
    /*
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *dicPath = [path stringByAppendingString:@"/dic.plist"];
    NSDictionary *dic = @{@"1" : @"11",
                          @"2" : @"22"};
    [dic writeToFile:dicPath atomically:YES];
    
    NSDictionary *myDic = [NSDictionary dictionaryWithContentsOfFile:dicPath];
    
    NSArray *array = @[@"1", @"2", @"3"];
    NSString *archiverPath = [path stringByAppendingString:@"/array.archive"];
    [NSKeyedArchiver archiveRootObject:array toFile:archiverPath];
    NSArray *temp = [NSKeyedUnarchiver unarchiveObjectWithFile:archiverPath];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
