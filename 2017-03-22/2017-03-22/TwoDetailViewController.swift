//
//  TwoDetailViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/23.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

// 递归枚举
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

class TwoDetailViewController: UIViewController {
    
    var clickCallBack = {}

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 偏移64的问题 1.automaticallyAdjustsScrollViewInsets = false 2.Storyboard上将ViewController 的Under Top Bar勾去掉也可以解决，tabbar的问题同理
//        automaticallyAdjustsScrollViewInsets = false
        navigationItem.title = "Two Detail"
        configureScrollView()
    }

    @IBAction func clickButton(_ sender: UIButton) {
        /*
        // 初始化数组
        var arr = [Int]()
        arr = [1, 2, 3]
        print(arr)
        print(arr[2])
        arr = []
        if arr.isEmpty {
            arr.append(666)
        }
        arr += [7, 8, 9]
        print(arr)
        arr = Array(repeating: 23333, count: 4)
        print(arr)
        arr[1...3] = [555, 444, 999, 666]
        print(arr)
        arr.insert(111, at: 1)
        print(arr)
        print(arr.removeLast())
        print(arr)
        // 遍历数组
        for item in arr {
            print(item)
        }
        
        for (index, value) in arr.enumerated() {
            print("item\(index + 1):\(value)")
        }
 */
        /*
        // 初始化字典
        var dic = [Int: String]()
        dic = [1: "one", 2: "two", 3: "💥"]
        print(dic)
        if let value = dic[2] {
            print(value)
        }
        dic = [:]
        print(dic)
 */
        /*
        // 集合
        var set1 = Set<String>()
        set1 = ["one", "two", "three"]
        print(set1)
        var set2: Set = ["1", "2"]
        set2.insert("3")
        print(set2)
        if set2.contains("3") {
            print("true")
        } else {
            print("false")
        }
 */
        clickCallBack()
        /*
        let five = ArithmeticExpression.number(5)
        let four = ArithmeticExpression.number(4)
        let sum = ArithmeticExpression.addition(five, four)
        let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
        func evaluate(_ expression: ArithmeticExpression) -> Int {
            switch expression {
            case let .number(value):
                return value
            case let .addition(left, right):
                return evaluate(left) + evaluate(right)
            case let .multiplication(left, right):
                return evaluate(left) * evaluate(right)
            }
        }
        
        print(evaluate(product))*/
    }
    
    func configureScrollView() {
        scrollView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        let imgArr = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3")]
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(imgArr.count), height: scrollView.frame.size.height)
        for i in 0..<imgArr.count {
            let imageView = UIImageView(image: imgArr[i])
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: scrollView.frame.size.width * CGFloat(i),
                                     y: 0.0,
                                     width: scrollView.frame.size.width,
                                     height: scrollView.frame.size.height)
        }
        scrollView.isPagingEnabled = true
        scrollView.contentOffset = CGPoint(x: scrollView.frame.size.width, y: 0.0)
    }
}

class Name: AnyObject {
    var str: String?
    var str2: String?
    
}
