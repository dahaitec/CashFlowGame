//
//  ToziController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class ToziController: UIViewController {
    
    var collection: UICollectionView!
    var touziImage = ["header_0", "header_1", "header_2", "header_3", "header_4", "header_5", "header_6", "header_7", "header_8", "header_9", "header_9", "header_10"]
    var touziName = ["出租屋", "酒店式公寓", "二手旧房", "高层新房", "复式洋房", "高层豪宅", "海景房", "联排别墅", "海景别墅", "海景别墅", "海岛庄园", "豪华宫殿式城堡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //导航栏
        setUpUI()
        
        
        view.backgroundColor = .white
        edgesForExtendedLayout = .init(rawValue: 0)

        let width = (UIScreen.main.bounds.width-60)/3
        let flow = UICollectionViewFlowLayout()
        flow.itemSize = CGSize(width: width, height: width+20)
        collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: flow)
        collection.backgroundColor = .white
        collection.delegate = self
        collection.dataSource = self
        collection.register(ToziCell.self, forCellWithReuseIdentifier: "ToziCell")
        view.addSubview(collection)
        collection.snp.makeConstraints {
            $0.left.equalTo(view).offset(5)
            $0.top.equalTo(view).offset(5)
            $0.right.bottom.equalTo(view).offset(-5)
        }
        

        

    }
    
    // MARK: - 设置导航栏
    private func setUpUI() -> Void
    {
          self.navigationItem.title = "投资理财"
          let buttonItem: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "Working.bundle/edit_undo.png"), style: .plain, target: self, action: #selector(leftBtnAction))
          buttonItem.tintColor = UIColor.black

          self.navigationItem.leftBarButtonItem = buttonItem
          let buttonItem2: UIBarButtonItem = UIBarButtonItem(title: "可用资金：10000", style: .plain, target: self, action: nil)
          buttonItem2.tintColor = UIColor.white
          self.navigationItem.rightBarButtonItem = buttonItem2

    }

    @objc func leftBtnAction() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension ToziController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return touziImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToziCell", for: indexPath) as! ToziCell

        let image = UIImage(named: touziImage[indexPath.row])
        cell.moneyImage.image = image
        cell.moneyName.text = touziName[indexPath.row]

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
            print(indexPath.row)
    }

}
