//
//  ThreeViewController.swift
//  2017-03-22
//
//  Created by BiShuai on 2017/3/22.
//  Copyright © 2017年 shuai. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = NSLocalizedString("tabitem2", comment: "")
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        flowLayout.scrollDirection = .vertical
        
        let collection = UICollectionView(frame: view.bounds, collectionViewLayout: flowLayout)
        collection.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        view.addSubview(collection)
        collection.dataSource = self
        collection.delegate = self
        collection.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
}

extension ThreeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TitleCollectionViewCell
        cell.titleLabel?.text = "\(indexPath.row)"
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(Float(arc4random_uniform(255))/255.0), green: CGFloat(Float(arc4random_uniform(255))/255.0), blue: CGFloat(Float(arc4random_uniform(255))/255.0), alpha: 1)
        return cell
    }
}

extension ThreeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}
