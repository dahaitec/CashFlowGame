//
//  personModel.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/28.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

class personModel: NSObject {

    
    //周数
    public var week: Int = 1
    // 现金
    public var cash:CGFloat?
    // 现金流
    public var cashFlot:CGFloat?
    // 健康
    public var jiankang:CGFloat?
    // 心情
    public var xinqing:CGFloat?
    // 名声
    public var mingsheng:CGFloat?
    // 信用度
    public var xinyong:CGFloat?
    
    override init()
    {
        print("创建对象")
    }
    
}
