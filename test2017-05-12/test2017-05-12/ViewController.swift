//
//  ViewController.swift
//  test2017-05-12
//
//  Created by BiShuai on 2017/5/12.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let reuseIdentifier = "cell"
    let arr1 = ["111","222"]
    let arr2 = ["333","444","555"]
    var tempArr: [String]! = []
    
    let indexArr1 = [NSIndexPath.init(row: 0, section: 0),
                     NSIndexPath.init(row: 1, section: 0)]
    let indexArr2 = [NSIndexPath.init(row: 0, section: 0),
                     NSIndexPath.init(row: 1, section: 0),
                     NSIndexPath.init(row: 2, section: 0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tempArr.append(contentsOf: arr1)
        tableView.dataSource = self;
        hell
    }
    
    /// 你好
    func hello() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let temp = tempArr
        tempArr.removeAll()
        tableView.deleteRows(at: ((temp! == arr1) ? indexArr1 : indexArr2) as [IndexPath], with: .fade)
        tempArr.append(contentsOf: (temp! == arr1) ? arr2 : arr1)
        tableView.insertRows(at: ((temp! == arr1) ? indexArr2 : indexArr1) as [IndexPath], with: .fade)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempArr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tempArr[indexPath.row])
        return cell!;
    }
}
