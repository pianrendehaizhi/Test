//
//  TwoViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = NSLocalizedString("tabitem1", comment: "")
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        let btn = UIButton(type: .custom)
        view.addSubview(btn)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("click", for: .normal)
        btn.layer.cornerRadius = 50
        btn.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        btn.addTarget(self, action: #selector(clickButton(_:)), for: .touchUpInside)
        
        let btn2 = UIButton(type: .custom)
        view.addSubview(btn2)
        btn2.frame = CGRect(x: 300, y: 100, width: 100, height: 100)
        btn2.setTitle("while", for: .normal)
        btn2.layer.cornerRadius = 50
        btn2.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        btn2.addTarget(self, action: #selector(clickBtn2(_:)), for: .touchUpInside)
        
        let btn3 = UIButton(type: .custom)
        view.addSubview(btn3)
        btn3.frame = CGRect(x: 500, y: 100, width: 100, height: 100)
        btn3.setTitle("switch", for: .normal)
        btn3.layer.cornerRadius = 50
        btn3.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btn3.addTarget(self, action: #selector(clickBtn3(_:)), for: .touchUpInside)
        
        let btn4 = UIButton(type: .custom)
        view.addSubview(btn4)
        btn4.frame = CGRect(x: 700, y: 100, width: 100, height: 100)
        btn4.setTitle("给语句打标签", for: .normal)
        btn4.layer.cornerRadius = 50
        btn4.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        btn4.addTarget(self, action: #selector(clickBtn4(_:)), for: .touchUpInside)
        
        let btn5 = UIButton(type: .custom)
        view.addSubview(btn5)
        btn5.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
        btn5.setTitle("函数", for: .normal)
        btn5.layer.cornerRadius = 50
        btn5.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        btn5.addTarget(self, action: #selector(clickBtn5(_:)), for: .touchUpInside)
        
        let btn6 = UIButton(type: .custom)
        view.addSubview(btn6)
        btn6.frame = CGRect(x: 300, y: 300, width: 100, height: 100)
        btn6.setTitle("闭包", for: .normal)
        btn6.layer.cornerRadius = 50
        btn6.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        btn6.addTarget(self, action: #selector(clickBtn6(_:)), for: .touchUpInside)
    }
    
    func clickButton(_ btn: UIButton) {
        btn.backgroundColor = UIColor(displayP3Red: CGFloat(Float(arc4random_uniform(255))/255.0),
                                      green: CGFloat(Float(arc4random_uniform(255))/255.0),
                                      blue: CGFloat(Float(arc4random_uniform(255))/255.0),
                                      alpha: 1)
        
        let vc = UIStoryboard.init(name: "TwoDetails", bundle: nil).instantiateInitialViewController() as! TwoDetailViewController?
        if let detailVC = vc {
            hidesBottomBarWhenPushed = true
            detailVC.clickCallBack = {
                print("点击了Button1")
            }
            navigationController?.pushViewController(detailVC, animated: true)
            hidesBottomBarWhenPushed = false
        }
    }
    
    func clickBtn2(_ btn: UIButton) {
        let finalSquare = 25
        var board = [Int](repeatElement(0, count: finalSquare + 1))
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square = 0
        /*
        // while循环
        while square < finalSquare {
            let diceRoll = Int(arc4random_uniform(6) + 1)
            print("💥\(diceRoll)")
            square += diceRoll
            if square < board.count {
                square += board[square]
            }
            print(square)
        }*/
        // repeat-while循环 相当于其他语言的do-while，在这里先执行循环不需要再做安全处理
        repeat {
            let diceRoll = Int(arc4random_uniform(6) + 1)
            print("💥\(diceRoll)")
            square += diceRoll
            square += board[square]
            print(square)
        } while square < finalSquare
        print("Game over!")
    }
    
    func clickBtn3(_ btn: UIButton) {
        /*
        // 尽管 break 在 Swift 里不是必须的，你仍然可以使用 break 语句来匹配和忽略特定的情况，或者在某个情况执行完成之前就打断它。移步 Switch 语句中的 Break 来了解更多。
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a", "A":
            print(anotherCharacter)
            fallthrough // 没有隐式贯穿，如果需要贯穿用fallthrough关键字
        case "z":
            print("z")
        default:
            print("Not the letter A")
        }*/
        
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        default:
            print("(\(yetAnotherPoint)) is just some arbitrary point")
        }
    }
    
    func clickBtn4(_ btn: UIButton) {
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square = 0
        var diceRoll = 0
        
        // while 循环条件是 while square != finaleSquare ，用来反映你必须精确地落在第25格上
        gameLoop: while square != finalSquare {
            diceRoll = Int(arc4random_uniform(6) + 1)
            print(square)
            print("💥\(diceRoll)")
            switch square + diceRoll {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
            }
        }
        print("Game over!")
    }
    
    func clickBtn5(_ btn: UIButton) {
        //print(greet("world"))
        //print(sayHelloWorld())
        /*
        if let bounds = minMax(array: [100, 2, 45]) {
            print("min: \(bounds.min), max: \(bounds.max)")
        }*/
        var a = 100
        var b = 666
        swapTwoInts(&a, &b)
        print("a:\(a)\nb:\(b)")
    }
    
    func greet(_ str: String) -> String {
        return "hello," + str + "!"
    }
    
    // 没有形式参数
    func sayHelloWorld() -> String {
        return "Hello world!"
    }
    
    func minMax(array: [Int]) -> (min: Int,max: Int)? {
        if array.isEmpty {
            return nil
        }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in 1...array.count {
            if value < currentMin {
                currentMin = value
            }
            if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    // 输入输出形式参数
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temp = a
        a = b
        b = temp
    }
    
    func clickBtn6(_ btn: UIButton) {
        //let names = ["Chris","Alex","Ewa","Barry","Daniella"]
        //let reversedNames = names.sorted(by: backward)
        /*
        let reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in
            return s1 > s2
        })
        */
        //let reversedNames = names.sorted(by: {s1, s2 in return s1 > s2})
        //let reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
        //let reversedNames = names.sorted(by: {$0 > $1})
        //let reversedNames = names.sorted(by: >)
        //print(reversedNames)
        /*
        block {
            
        }
        print("hello")
 */
        let digitNames = [
            0: "Zero",1: "One",2: "Two",  3: "Three",4: "Four",
            5: "Five",6: "Six",7: "Seven",8: "Eight",9: "Nine"
        ]
        let numbers = [23, 58, 199, 100]
        let strings = numbers.map {
            (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
        print(strings)
    }
    
    func block(click:() -> Void){
        print("world")
    }
    
    func backward(_ s1: String, _ s2: String) -> Bool {
        return s1 > s2
    }
}
