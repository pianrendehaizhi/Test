//
//  Calculator.m
//  test2017-06-26
//
//  Created by BiShuai on 2017/6/26.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init {
    if (self = [super init]) {
        self.result = 0;
    }
    return self;
}

- (Calculator *(^)(NSInteger))add {
    return ^(NSInteger num) {
        self.result += num;
        return self;
    };
}

- (Calculator *(^)(NSInteger))minus {
    return ^(NSInteger num) {
        self.result -= num;
        return self;
    };
}

- (Calculator *(^)(NSInteger))multiply {
    return ^(NSInteger num) {
        self.result *= num;
        return self;
    };
}

- (Calculator *(^)(NSInteger))divide {
    return ^(NSInteger num) {
        NSAssert(num != 0, @"0不能作为除数");
        self.result /= num;
        return self;
    };
}

- (NSInteger)test {
    return 666;
}

@end
