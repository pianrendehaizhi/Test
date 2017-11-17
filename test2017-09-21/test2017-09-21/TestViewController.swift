//
//  TestViewController.swift
//  test2017-09-21
//
//  Created by BiShuai on 2017/9/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollContentViewHeight: NSLayoutConstraint!
    
    var dataArray = [String]()
    var tableViewMixHeight: CGFloat = 0.0
    let collectionViewHeight: CGFloat = 250.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        configureTableView()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func configureTableView() {
        dataArray = ["A", "B", "C", "D", "E"]
        tableView.reloadData()
        //MARK: - 通过数据源计算tableview高度
        tableViewMixHeight = min(30.0 * CGFloat(dataArray.count) + 44.0 * 5.0 * CGFloat(dataArray.count), CGFloat(scrollView.frame.height))
        let navgiationHeight: CGFloat = 64.0
        scrollContentViewHeight.constant = min(view.frame.height - navgiationHeight, tableViewMixHeight) + collectionViewHeight
        tableView.isScrollEnabled = !scrollView.isScrollEnabled
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension TestViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArray.count
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return dataArray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell()
            cell?.textLabel?.text = "第\(indexPath.section + 1)组，\(indexPath.row + 1)个"
        }
        return cell!
    }
}

extension TestViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataArray[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}

extension TestViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.scrollView {
            scrollView.isScrollEnabled = (collectionViewHeight - scrollView.contentOffset.y) > 0
            self.tableView.isScrollEnabled = !scrollView.isScrollEnabled
        } else if scrollView == self.tableView {
            scrollView.isScrollEnabled = scrollView.contentOffset.y > 0
            self.scrollView.isScrollEnabled = !scrollView.isScrollEnabled
        }
    }
}
