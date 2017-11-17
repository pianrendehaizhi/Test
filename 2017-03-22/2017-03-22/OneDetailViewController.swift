//
//  OneDetailViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class OneDetailViewController: UIViewController {

    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "one details"
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        let tableView = UITableView(frame: view.bounds, style: .plain)
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
}

extension OneDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell!;
    }
}
