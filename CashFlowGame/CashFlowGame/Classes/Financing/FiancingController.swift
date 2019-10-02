//
//  FiancingController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class FiancingController: UIViewController {
    var collection: UICollectionView!
    var heros = ["header_0", "header_1", "header_2", "header_3", "header_4", "header_5", "header_6", "header_7", "header_8", "header_9", "header_9", "header_10"]
    var hero = ["出租屋", "酒店式公寓", "二手旧房", "高层新房", "复式洋房", "高层豪宅", "海景房", "联排别墅", "海景别墅", "海景别墅", "海岛庄园", "豪华宫殿式城堡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        edgesForExtendedLayout = .init(rawValue: 0)
        print("2")
        
        
        let width = (UIScreen.main.bounds.width-60)/2
        let flow = UICollectionViewFlowLayout()
        flow.itemSize = CGSize(width: width, height: width+20)
        collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: flow)
        collection.backgroundColor = .white
        collection.delegate = self
        collection.dataSource = self
        collection.register(HeroCell.self, forCellWithReuseIdentifier: "HeroCell")
        view.addSubview(collection)
        collection.snp.makeConstraints {
            $0.left.equalTo(view).offset(5)
            $0.top.equalTo(view).offset(5)
            $0.right.bottom.equalTo(view).offset(-5)
        }
        
                print("3")
        

    }
    

}

extension FiancingController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return heros.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCell", for: indexPath) as! HeroCell


        
        let ima = UIImage(named: heros[indexPath.row])
        cell.heroImage.image = ima

        cell.heroName.text = hero[indexPath.row]

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
            print(indexPath.row)
    }

}
