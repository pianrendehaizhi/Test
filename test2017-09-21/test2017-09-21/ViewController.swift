//
//  ViewController.swift
//  test2017-09-21
//
//  Created by BiShuai on 2017/9/21.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let tableView       = UITableView();
    private let reuseIdentifier = "tableViewCell"
    private var favoriteArray   = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "table view"
        setupTableView()
    }
    
    fileprivate func setupTableView() {
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib.init(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! TestTableViewCell
        if favoriteArray.contains(indexPath.row) {
            cell.backgroundColor = UIColor(named: "favorite")
        } else {
            cell.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
        var string = "第\(indexPath.row + 1)行"
        for _ in 0...Int(arc4random() % 20) {
            string.append("\n😍")
        }
        cell.contentLabel.text = string
        return cell;
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "favorite") { (action, view, completionHandler) in
            self.updateFavoriteState(indexPath)
            completionHandler(true)
        }
        action.backgroundColor = UIColor(named: "favorite")
        action.title = "喜欢"
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "delete") { (action, view, completionHandler) in
            self.remove(indexPath)
            completionHandler(true)
        }
        action.backgroundColor = UIColor(named: "delete")
        action.title = "删除"
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Test", bundle: nil).instantiateViewController(withIdentifier: "test")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    fileprivate func updateFavoriteState(_ indexPath: IndexPath) {
        print("收藏")
        favoriteArray.append(indexPath.row)
        self.tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    fileprivate func remove(_ indexPath: IndexPath) {
        print("删除")
    }
}

