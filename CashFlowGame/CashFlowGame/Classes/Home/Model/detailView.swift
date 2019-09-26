//
//  detailView.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/26.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//


import UIKit


//MARK：- 长宽
public let  xianjinliuWidth :  CGFloat = 260
public let  xianjinliuHeight : CGFloat = 20

// MARK: -  现金流
let xianjinliuText: UITextField = {
    let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2 - 70, y: 10, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "每周现金流详情"
    textField.isEnabled = false

    return textField
}()


// MARK: -  房租
let fangzuText: UITextField = {
    let textField = UITextField(frame: CGRect(x: 10, y: 30, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "房租：100"
    textField.isEnabled = false

    return textField
}()

// MARK: -  水电费
let shuidianfeiText: UITextField = {
    let textField = UITextField(frame: CGRect(x:10, y: 50, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "水电费：100"
    textField.isEnabled = false

    return textField
}()

// MARK: -  生活费
let shenghuofeiText: UITextField = {
    let textField = UITextField(frame: CGRect(x: 10, y: 70, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "生活费：100"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  打工收入
let dagongshouruText: UITextField = {
    let textField = UITextField(frame: CGRect(x: 10, y: 90, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "打工收入：100"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  被动收入
let beidongshouruText: UITextField = {
    let textField = UITextField(frame: CGRect(x: 10, y: 110, width: xianjinliuWidth, height: xianjinliuHeight))
    textField.text = "被动收入：0"
    textField.isEnabled = false
    
    return textField
}()




// MARK: -  详情
let detailUIView: UIView = {
    let detailView = UIView(frame: CGRect(x: 10, y: ScreenInfo.Height/2 + 70, width: ScreenInfo.Width - 20, height: 170))

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

