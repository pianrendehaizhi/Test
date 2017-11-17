//
//  OneViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class OneViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let reuseidentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()

        title = NSLocalizedString("tabitem0", comment: "")
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        let tableView = UITableView(frame: view.bounds, style: .plain)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseidentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseidentifier)
        cell?.textLabel?.text = "第\(indexPath.row)行"
        cell?.backgroundColor = UIColor(displayP3Red: CGFloat(Float(arc4random_uniform(255))/255.0), green: CGFloat(Float(arc4random_uniform(255))/255.0), blue: CGFloat(Float(arc4random_uniform(255))/255.0), alpha: 1)
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(OneDetailViewController(), animated: true)
        hidesBottomBarWhenPushed = false
    }
}
