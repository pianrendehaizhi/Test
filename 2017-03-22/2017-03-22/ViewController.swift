//
//  ViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view1 = UIView()
        view1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(view1)
        view1.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        let btn = UIButton()
        btn.frame = CGRect(x: 300, y: 100, width: 100, height: 100)
        view.addSubview(btn)
        btn.setTitle("button", for: .normal)
        btn.showsTouchWhenHighlighted = true
        btn.setTitleColor(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), for: .selected)
        btn.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        btn.addTarget(self, action: #selector(touchBtn), for: .touchUpInside)
    }
    
    func touchBtn(btn: UIButton) {
        btn.isSelected = !btn.isSelected
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

