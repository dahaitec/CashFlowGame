//
//  DagongCell.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/3.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit
import SnapKit

class DagongCell: UICollectionViewCell {
    
    var moneyName: UILabel!
    var moneyImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        moneyName = UILabel()
        moneyName.textColor = UIColor(red: 224/255.0, green: 142/255.0, blue: 40/255.0, alpha: 1)
        moneyName.font = UIFont.systemFont(ofSize: 16)
        moneyName.textAlignment = .center
        moneyName.adjustsFontSizeToFitWidth = true
        contentView.addSubview(moneyName)
        
        moneyImage = UIImageView()
        moneyImage.contentMode = .scaleAspectFit
        contentView.addSubview(moneyImage)
        
        moneyName.snp.makeConstraints {
            $0.left.bottom.right.equalTo(contentView)
            $0.height.equalTo(20)
        }
        
        moneyImage.snp.makeConstraints {
            $0.top.left.right.equalTo(contentView)
            $0.bottom.equalTo(moneyName.snp.top)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
