//
//  personView.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/26.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit


//MARK：- 个人情况标签
public let  CashLabel :         String = "现  金"
public let  CashfLowLabel :     String = "现金流"
public let  JiankangLabel :     String = "健  康"
public let  XinqingLabel :      String = "心  情"
public let  MingshengLabel :    String = "名  声"

//MARK：- 个人情况长宽
public let  PersonWidth :  CGFloat = 60
public let  PersonHeight : CGFloat = 20


//MARK：- 标签长宽
public let  LabelWidth :  CGFloat = 60
public let  LabelHeight : CGFloat = 20
public let  LabelFieldX : CGFloat = 10
public let  LabelFieldY : CGFloat = 10


//MARK：- 文本输入框长宽
public let  TextFieldWidth :  CGFloat = kScreenW/2 - 100
public let  TextFieldHeight : CGFloat = 20
public let  TextFieldX : CGFloat = 90
public let  TextFieldY : CGFloat = 10

// MARK: -  现金
let cashLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: LabelFieldX, y: LabelFieldY, width: LabelWidth, height: LabelHeight))
    label.text = CashLabel
    label.textColor=UIColor.red
    label.backgroundColor = UIColor.white
    //label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}()

// MARK: -  现金流
let cashFLowLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: LabelFieldX, y: LabelFieldY + 30, width: LabelWidth, height: LabelHeight))
    label.text = CashfLowLabel
    label.textColor=UIColor.red
    label.backgroundColor = UIColor.white
    return label
}()

// MARK: -  健康
let jiankangLabel: UILabel = {
    let label = UILabel(frame: CGRect(x:LabelFieldX, y:  LabelFieldY + 60, width: LabelWidth, height: LabelHeight))
    label.text = JiankangLabel
    label.textColor=UIColor.red
    label.backgroundColor = UIColor.white
    return label
}()

// MARK: -  心情
let xinqingLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: LabelFieldX, y:  LabelFieldY + 90, width: LabelWidth, height: LabelHeight))
    label.text = XinqingLabel
    label.textColor=UIColor.red
    label.backgroundColor = UIColor.white
    return label
}()

// MARK: -  名声
let mingshengLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: LabelFieldX, y:  LabelFieldY + 120, width: LabelWidth, height: LabelHeight))
    label.text = MingshengLabel
    label.textColor=UIColor.red
    label.backgroundColor = UIColor.white
    return label
}()

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------




// MARK: -  现金
let cashTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x: TextFieldX, y: TextFieldY, width: TextFieldWidth, height: TextFieldHeight))
    textField.text = String(xianjinValue)
    textField.isEnabled = false
    //textField.backgroundColor = UIColor.green
    return textField
}()

// MARK: -  现金流
let cashFLowTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x: TextFieldX, y: TextFieldY + 30, width: TextFieldWidth, height: TextFieldHeight))
    textField.text = String(xianjinliuValue)
    textField.isEnabled = false
    //textField.backgroundColor = UIColor.green
    return textField
}()

// MARK: -  健康
let jiankangTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x: TextFieldX, y: TextFieldY + 60, width: TextFieldWidth, height: TextFieldHeight))
    textField.text = String(jiankangValue)
    textField.isEnabled = false
    //textField.backgroundColor = UIColor.green
    return textField
}()

// MARK: -  心情
let xinqingTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x:TextFieldX, y: TextFieldY + 90, width: TextFieldWidth, height: TextFieldHeight))
    textField.text = String(xinqingValue)
    textField.isEnabled = false
    //textField.backgroundColor = UIColor.green
    return textField
}()

// MARK: -  名声
let mingshengTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x: TextFieldX, y: TextFieldY + 120, width: TextFieldWidth, height: TextFieldHeight))
    textField.text = String(mingshengValue)
    textField.isEnabled = false
    //textField.backgroundColor = UIColor.green
    return textField
}()

// MARK: -  个人情况
let personUIView: UIView = {
    let  personView = UIView(frame: CGRect(x: 10, y: 30, width: kScreenW/2, height: 170))
    
    //设置背景色
    
    let roundLayer = CAShapeLayer()
    roundLayer.fillColor = UIColor.init(r: 255, g: 210, b: 102, alpha: 1).cgColor
    let rect = personView.bounds
    roundLayer.frame = rect
    let roundPath = UIBezierPath(roundedRect: rect, cornerRadius: 20)
    roundLayer.path = roundPath.cgPath
    personView.layer.mask = roundLayer
    personView.layer.addSublayer(roundLayer)
    
    return personView
}()
