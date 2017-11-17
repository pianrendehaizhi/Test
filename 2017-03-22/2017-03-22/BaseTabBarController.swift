//
//  BaseTabBarontroller.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createSubViewConrollers()
    }
    
    func createSubViewConrollers() {
        let one = OneViewController()
        let itemOne = UITabBarItem(title: NSLocalizedString("tabitem0", comment: ""), image: nil, selectedImage: nil)
        let navOne = BaseNavgationController.init(rootViewController: one)
        navOne.tabBarItem = itemOne
        
        let two = TwoViewController()
        let itemTwo = UITabBarItem(title: NSLocalizedString("tabitem1", comment: ""), image: nil, selectedImage: nil)
        let navTwo = BaseNavgationController.init(rootViewController: two)
        navTwo.tabBarItem = itemTwo
        
        let three = ThreeViewController()
        let itemThree = UITabBarItem(title: NSLocalizedString("tabitem2", comment: ""), image: nil, selectedImage: nil)
        let navThree = BaseNavgationController.init(rootViewController: three)
        navThree.tabBarItem = itemThree
        
        self.viewControllers = [navOne, navTwo, navThree]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
