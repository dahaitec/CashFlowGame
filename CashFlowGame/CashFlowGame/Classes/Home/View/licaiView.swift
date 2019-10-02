//
//  earning.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/2.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

public let  xiuxi  :  String = "休息一下"
public let  touzi  :  String = "投资理财"
public let  dagong :  String = "职场打工"

//MARK：- 长宽
public let  licaiWidth :  CGFloat = 100
public let  licaiHeight : CGFloat = 20


// MARK: - 休息一下
let xiuxiButton: UIButton = {

    let button = UIButton(frame: CGRect(x: 30, y: 10, width: licaiWidth, height: licaiHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(xiuxi, for: .normal)
    button.sizeToFit()
    button.tag = 9
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  投资理财
let touziButton: UIButton = {

    let button = UIButton(frame: CGRect(x: CGFloat(ScreenInfo.Width/2) - 50 , y: 10, width: licaiWidth, height: licaiHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(touzi, for: .normal)
    button.sizeToFit()
    button.tag = 10
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  职场打工
let dagongButton: UIButton = {
    let button = UIButton(frame: CGRect(x: CGFloat(ScreenInfo.Width) - licaiWidth - 30  , y:10, width: licaiWidth, height: licaiHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(dagong, for: .normal)
    button.sizeToFit()
    button.tag = 11
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()





// MARK: -  理财
let licailUIView: UIView = {
    let detailView = UIView(frame: CGRect(x: 10, y: ScreenInfo.Width/2 + 50  , width: ScreenInfo.Width - 20, height: 50))

    //设置背景色
   
    let roundLayer = CAShapeLayer()
    roundLayer.fillColor = UIColor.init(r: 255, g: 210, b: 102, alpha: 1).cgColor
    let rect = detailView.bounds
    roundLayer.frame = rect
    let roundPath = UIBezierPath(roundedRect: rect, cornerRadius: 20)
    roundLayer.path = roundPath.cgPath
    detailView.layer.mask = roundLayer
    detailView.layer.addSublayer(roundLayer)
    
    return detailView
}()

