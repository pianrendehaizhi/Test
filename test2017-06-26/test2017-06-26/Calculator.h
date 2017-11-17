//
//  Calculator.h
//  test2017-06-26
//
//  Created by BiShuai on 2017/6/26.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Calculator;
typedef Calculator *(^CalculatorBlock)(NSInteger num);
@interface Calculator : NSObject

@property (nonatomic, assign) NSInteger result;

@property (nonatomic, readonly, copy) CalculatorBlock add;
@property (nonatomic, readonly, copy) CalculatorBlock minus;
@property (nonatomic, readonly, copy) CalculatorBlock multiply;
@property (nonatomic, readonly, copy) CalculatorBlock divide;


//- (Calculator * (^)(NSInteger num)) add;
//- (Calculator * (^)(NSInteger num)) minus;
//- (Calculator * (^)(NSInteger num)) multiply;
//- (Calculator * (^)(NSInteger num)) divide;

- (NSInteger)test;

@end
