//
//  detailView.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/26.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//


import UIKit


//MARK：- 长宽
public let  xianjinliuWidth  : CGFloat = 70
public let  xianjinliuHeight : CGFloat = 20


public let  xianjinliuFieldWidth  : CGFloat = 150
public let  xianjinliuFieldHeight : CGFloat = 20

public let  xianjinliuLabelX      : CGFloat = 10
public let  xianjinliuFieldX      : CGFloat = 90

// MARK: -  现金流
let xianjinliuText: UITextField = {
    let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2 - 70, y: 10, width: xianjinliuFieldWidth, height: xianjinliuHeight))
    textField.text = "每周现金流详情"
    textField.isEnabled = false

    return textField
}()

// MARK: -  房租
let fangzuLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 30, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "房租"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()

let fangzuText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 30, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "100"
    //textField.textColor=UIColor.red
    //textField.backgroundColor = UIColor.white
    textField.isEnabled = false

    return textField
}()

// MARK: -  水电费
let shuidianfeiLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 50, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "水电费"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()

let shuidianfeiText: UITextField = {
    let textField = UITextField(frame: CGRect(x:xianjinliuFieldX, y: 50, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "100"
    textField.isEnabled = false

    return textField
}()

// MARK: -  生活费

let shenghuofeiLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 70, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "生活费"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()

let shenghuofeiText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 70, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "100"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  打工收入
let dagongshouruLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 90, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "打工收入"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()
let dagongshouruText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 90, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "100"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  被动收入

let beidongshouruLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 110, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "被动收入"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()
let beidongshouruText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 110, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "11111110"
    textField.isEnabled = false
    
    return textField
}()



// MARK: -  成就
let chengjiuText: UITextField = {
    let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2 - 20, y: 130, width: xianjinliuWidth, height: xianjinliuFieldHeight))
    textField.text = "成就"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  房产
let fangchanLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 150, width: xianjinliuFieldWidth, height: xianjinliuHeight))
    label.text = "房产"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()
let fangchanText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 150, width: xianjinliuWidth, height: xianjinliuFieldHeight))
    textField.text = "10 栋"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  汽车
let sijiacheLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 170, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "私家车"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()
let sijiacheText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 170, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "5 辆"
    textField.isEnabled = false
    
    return textField
}()

// MARK: -  女朋友
let nvpengyouLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: xianjinliuLabelX, y: 190, width: xianjinliuWidth, height: xianjinliuHeight))
    label.text = "女朋友"
    label.textColor=UIColor.black
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()
let nvpengyouText: UITextField = {
    let textField = UITextField(frame: CGRect(x: xianjinliuFieldX, y: 190, width: xianjinliuFieldWidth, height: xianjinliuFieldHeight))
    textField.text = "1 位"
    textField.isEnabled = false
    
    return textField
}()


// MARK: -  详情
let detailUIView: UIView = {
    let detailView = UIView(frame: CGRect(x: 10, y: ScreenInfo.Height/2  , width: ScreenInfo.Width - 20, height: 250))

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

