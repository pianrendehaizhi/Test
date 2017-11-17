//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func swapTwoValue<T>(_ a: inout T, _ b: inout T) {
    let temp = a;
    a = b;
    b = temp;
}

var a = "hello"
var b = "world"

print(a, b)
