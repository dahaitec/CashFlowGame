//
//  buttonView.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/26.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit


//Mark：- 系统按钮
public let  shangdian :  String = "商  店"
public let  setting :    String = "设  置"


//MARK：- 个人情况按钮
public let  bank :     String = "银  行" // 1
public let  hospital : String = "医  院" // 2
public let  shoping :  String = "购  物" // 3
public let  house :    String = "买  房" // 4


public let  yule :     String = "娱  乐" // 5
public let  cishan :   String = "慈  善" // 6
public let  xiangqin : String = "相  亲" // 7
public let  carShop :  String = "买  车" // 8
 


//MARK：- 按钮长宽
public let  buttonWidth :  CGFloat = 100
public let  buttonHeight : CGFloat = 20
public let  buttonX1 : CGFloat = 10
public let  buttonY1 : CGFloat = 10
public let  buttonX2 : CGFloat = kScreenW/2 - 100
public let  buttonY2 : CGFloat = 20

// MARK: -  银行按钮 第一排 1
let bankButton: UIButton = {
    let button = UIButton(frame: CGRect(x: buttonX1, y: buttonY1, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(bank, for: .normal)
    button.sizeToFit()
    button.tag = 1
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()

// MARK: -  医院按钮 第一排 2
let hospitalButton: UIButton = {
    let button = UIButton(frame: CGRect(x: buttonX1, y: buttonY1 + 40, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(hospital, for: .normal)
    button.sizeToFit()
    button.tag = 2
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()

// MARK: -  购物按钮 第一排 3
let shopingButton: UIButton = {

    let button = UIButton(frame: CGRect(x: buttonX1, y: buttonY1 + 80, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(shoping, for: .normal)
    button.sizeToFit()
    button.tag = 3
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  买房按钮 第一排 4
let houseButton: UIButton = {

        let button = UIButton(frame: CGRect(x: buttonX1, y: buttonY1 + 120 , width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(house, for: .normal)
    button.sizeToFit()
    button.tag = 4
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

// MARK: -  娱乐按钮 第二排 1
let yuleButton: UIButton = {

    let button = UIButton(frame: CGRect(x: buttonX2, y: buttonY1, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(yule, for: .normal)
    button.sizeToFit()
    button.tag = 5
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  慈善按钮 第二排 2
let cishanButton: UIButton = {

    let button = UIButton(frame: CGRect(x: buttonX2, y: buttonY1 + 40, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(cishan, for: .normal)
    button.sizeToFit()
    button.tag = 6
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  相亲按钮 第二排 3
let xiangqinButton: UIButton = {
    let button = UIButton(frame: CGRect(x: buttonX2, y:buttonY1  + 80, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(xiangqin, for: .normal)
    button.sizeToFit()
    button.tag = 7
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()


// MARK: -  买车按钮 第二排 4
let carShopButton: UIButton = {
    let button = UIButton(frame: CGRect(x: buttonX2, y: buttonY1 + 120, width: buttonWidth, height: buttonHeight))
    button.layer.cornerRadius = 5.0
    button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
    button.setTitle(carShop, for: .normal)
    button.sizeToFit()
    button.tag = 8
    //button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
    return button
}()




// MARK: -  个人情况
let buttionUIView: UIView = {
    let  buttonView = UIView(frame: CGRect(x:kScreenW/2 + 20, y: 30, width:kScreenH/2 - 30, height: 170))
    
    //设置背景色
    
    let roundLayer = CAShapeLayer()
    roundLayer.fillColor = UIColor.init(r: 255, g: 210, b: 102, alpha: 1).cgColor
    let rect = buttonView.bounds
    roundLayer.frame = rect
    let roundPath = UIBezierPath(roundedRect: rect, cornerRadius: 20)
    roundLayer.path = roundPath.cgPath
    buttonView.layer.mask = roundLayer
    buttonView.layer.addSublayer(roundLayer)
    
    return buttonView
}()
