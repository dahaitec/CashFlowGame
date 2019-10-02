//
//  HeroCell.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit
import SnapKit

class HeroCell: UICollectionViewCell {
    
    var heroName: UILabel!
    var heroImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heroName = UILabel()
        heroName.textColor = UIColor(red: 224/255.0, green: 142/255.0, blue: 40/255.0, alpha: 1)
        heroName.font = UIFont.systemFont(ofSize: 16)
        heroName.textAlignment = .center
        heroName.adjustsFontSizeToFitWidth = true
        contentView.addSubview(heroName)
        
        heroImage = UIImageView()
        heroImage.contentMode = .scaleAspectFit
        contentView.addSubview(heroImage)
        
        heroName.snp.makeConstraints {
            $0.left.bottom.right.equalTo(contentView)
            $0.height.equalTo(20)
        }
        
        heroImage.snp.makeConstraints {
            $0.top.left.right.equalTo(contentView)
            $0.bottom.equalTo(heroName.snp.top)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
