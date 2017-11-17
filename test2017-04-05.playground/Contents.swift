//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Int.max

Int.min

// 元祖
var (x,y,z) = (1,2,3)
x
y
z

// 通过前缀或者序号获取值
let man = (身高:172, 体重: 67, 年龄: 25)

man.体重

man.0

// 数组
let array: [Int]

array = [Int](repeatElement(666, count: 10))
let array2 = Array(1...100)

let set: Set = [12, 34, 45]


let array = set.sorted()
 */

/*
enum 怪物经验表: Int {
    case 骷髅 = 80, 掷斧骷髅 = 100, 骷髅王 = 300
}

struct 服务器经验倍数 {
    var 开启 = false
    var 倍数 = 1
}

class 人民币玩家 {
    var 经验值 = 0
    var 经验倍数 = 服务器经验倍数()
    
    func 挂机经验() {
        经验值 += 500
        print("挂机成功，经验为\(经验值)")
    }
    func 打怪经验(怪物: 怪物经验表, 经验倍数: Int) {
        let <#name#> = <#value#>
        
    }
}
*/

// 可失败初始化方法
let tempAge = 23.4
let tempHeight = 172.00000

let age = Int(exactly: tempAge)
let height = Int(exactly: tempHeight)

struct Cycle {
    func area(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    subscript(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
}

let cycle = Cycle()

cycle.area(radius: 3)
cycle[3]




