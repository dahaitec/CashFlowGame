//
//  PersonModel.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/28.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit


class PersonModel: NSObject {

    
    //存储判断
    public var isStore: Bool = false
    //周数
    public var week: Int = 1
    // 现金
    public var cash:CGFloat = 2233200.0
    // 存款
    public var cunkuan:CGFloat = 0
    // 利率
    public var lilv:Int = 4
    // 现金流
    public var cashFlow:CGFloat = 100
    // 健康
    public var jiankang:Int = 100
    // 心情
    public var xinqing:Int = 100
    // 名声
    public var mingsheng:Int = 0
    // 信用度
    public var xinyong:CGFloat = 0
    
    //创业公司数组
    var chuangyeGouMaiArrayS :[String]  = ["未购买", "未购买", "未购买", "未购买", "未购买", "未购买", "未购买",  "未购买","未购买", "未购买"]
    override init()
    {
        print("创建对象")
    }

    //MARK: -  数据初始化
    func initData () {
        
        //存储判断
        defaults.set(false,       forKey: "isStore")
        // 周目
        defaults.set(week,       forKey: "zhoumu")
        // 现金
        defaults.set(cash,       forKey: "xianjin")
        // 存款
        defaults.set(cunkuan,    forKey: "cunkuan")
        // 利率
        defaults.set(lilv,       forKey: "lilv")
        // 现金流
        defaults.set(cashFlow,   forKey: "xianjinliu")
        // 健康
        defaults.set(jiankang,   forKey: "jiankang")
        // 心情
        defaults.set(xinqing,    forKey: "xinqing")
        // 名声
        defaults.set(mingsheng,  forKey: "mingsheng")
        // 信用度
        defaults.set(xinyong,    forKey: "xinyong")
        // 音乐
        defaults.set("on",       forKey: "yinyue")
        // 声音
        defaults.set("on",       forKey: "shengyin")
        //创业公司数组
        defaults.set(chuangyeGouMaiArrayS, forKey: "chuangyeGouMaiArrayS")
    }
    
    func removeAll() {
        guard let appDomainString = Bundle.main.bundleIdentifier else { return  }
        defaults.removePersistentDomain(forName: appDomainString)
    }
}
