//
//  HomeControllerViewController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit


//Mark：- 系统按钮
public let  shangdian :  String = "商  店"
public let  setting :    String = "设  置"


//MARK：- 个人情况按钮
public let  bank :     String = "银  行"
public let  yule :     String = "娱  乐"
public let  house :    String = "售楼部"
public let  hospital : String = "医  院"
public let  shoping :  String = "购  物"
public let  cishan :   String = "慈  善"
public let  xiangqin : String = "相  亲"
public let  carShop :  String = "4S 店"
public let  zichan :   String = "资  产"
public let  cashFlow : String = "支  出"

//MARK：- 按钮长宽
public let  buttonWidth :  CGFloat = 100
public let  buttonHeight : CGFloat = 20



//MARK：- 个人情况标签
public let  CashLabel :         String = "现  金:"
public let  CashfLowLabel :     String = "现金流:"
public let  JiankangLabel :     String = "健  康:"
public let  XinqingLabel :      String = "心  情:"
public let  MingshengLabel :    String = "名  声:"

//MARK：- 标签长宽
public let  LabelWidth :  CGFloat = 60
public let  LabelHeight : CGFloat = 20

//MARK：- 文本输入框长宽
public let  TextFieldWidth :  CGFloat = 60
public let  TextFieldHeight : CGFloat = 20



class HomeController: UIViewController {

    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    
    // MARK: -  系统商店
    let shangdianButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 - 170, y: ScreenInfo.Height/2 - 300, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(shangdian, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    // MARK: -  系统设置
    let settingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 130, y: ScreenInfo.Height/2 - 300, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(setting, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    
    // MARK: -  银行按钮 第一排 1
    let bankButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 - 170, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(bank, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()

    // MARK: -  娱乐按钮 第一排 2
    let yuleButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 - 120, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(yule, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  售楼部按钮 第一排 3
    let houseButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 - 70, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(house, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  医院按钮 第一排 4
    let hospitalButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 , width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(hospital, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    // MARK: -  购物按钮 第一排 5
    let shopingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 + 70, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(shoping, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    // MARK: -  慈善按钮 第二排 6
    let cishanButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 170, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(cishan, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    

    // MARK: -  相亲按钮 第二排 7
    let xiangqinButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 120, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(xiangqin, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  4S店按钮 第二排 8
    let carShopButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 70, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(carShop, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  资产按钮 第二排 9
    let zichanButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 , width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(zichan, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  支出详情 第二排 10
    let cashFlowButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 + 70, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(cashFlow, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------

    // MARK: -  现金
    let cashLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: ScreenInfo.Width/2 - 170, y: ScreenInfo.Height/2 - 170, width: LabelWidth, height: LabelHeight))
        label.text = CashLabel
        label.backgroundColor = UIColor.orange
        return label
    }()
    
    // MARK: -  现金流
    let cashFLowLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: ScreenInfo.Width/2  - 170, y: ScreenInfo.Height/2 - 130, width: LabelWidth, height: LabelHeight))
        label.text = CashfLowLabel
        label.backgroundColor = UIColor.orange
        return label
    }()
    
    // MARK: -  健康
    let jiankangLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: ScreenInfo.Width/2 - 170, y: ScreenInfo.Height/2 - 100, width: LabelWidth, height: LabelHeight))
        label.text = JiankangLabel
        label.backgroundColor = UIColor.orange
        return label
    }()
    
    // MARK: -  心情
    let xinqingLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: ScreenInfo.Width/2  - 170, y: ScreenInfo.Height/2 - 70, width: LabelWidth, height: LabelHeight))
        label.text = XinqingLabel
        label.backgroundColor = UIColor.orange
        return label
    }()
    
    // MARK: -  名声
    let mingshengLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: ScreenInfo.Width/2  - 170, y: ScreenInfo.Height/2 - 40, width: LabelWidth, height: LabelHeight))
        label.text = MingshengLabel
        label.backgroundColor = UIColor.orange
        return label
    }()
    
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    // MARK: -  现金
    let cashTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2 - 100, y: ScreenInfo.Height/2 - 170, width: TextFieldWidth, height: TextFieldHeight))
        textField.text = "100"
        textField.isEnabled = false
        textField.backgroundColor = UIColor.green
        return textField
    }()
    
    // MARK: -  现金流
    let cashFLowTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2  - 100, y: ScreenInfo.Height/2 - 130, width: TextFieldWidth, height: TextFieldHeight))
        textField.text = "100"
        textField.isEnabled = false
        textField.backgroundColor = UIColor.green
        return textField
    }()
    
    // MARK: -  健康
    let jiankangTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2 - 100, y: ScreenInfo.Height/2 - 100, width: TextFieldWidth, height: TextFieldHeight))
        textField.text = "100"
        textField.isEnabled = false
        textField.backgroundColor = UIColor.green
        return textField
    }()
    
    // MARK: -  心情
    let xinqingTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2  - 100, y: ScreenInfo.Height/2 - 70, width: TextFieldWidth, height: TextFieldHeight))
        textField.text = "100"
        textField.isEnabled = false
        textField.backgroundColor = UIColor.green
        return textField
    }()
    
    // MARK: -  名声
    let mingshengTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: ScreenInfo.Width/2  - 100, y: ScreenInfo.Height/2 - 40, width: TextFieldWidth, height: TextFieldHeight))
        textField.text = "100"
        textField.backgroundColor = UIColor.green
        return textField
    }()
    
    
    
    let backImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Default-568h")
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawMyView()
    }
    

    func drawMyView() {
        self.view.addSubview(backImageView)
        backImageView.frame = self.view.frame
        
        self.view.addSubview(shangdianButton)
        self.view.addSubview(settingButton)

        self.view.addSubview(cashLabel)
        self.view.addSubview(cashFLowLabel)
        self.view.addSubview(jiankangLabel)
        self.view.addSubview(xinqingLabel)
        self.view.addSubview(mingshengLabel)
        
        
        self.view.addSubview(cashTextField)
        self.view.addSubview(cashFLowTextField)
        self.view.addSubview(jiankangTextField)
        self.view.addSubview(xinqingTextField)
        self.view.addSubview(mingshengTextField)
        
        self.view.addSubview(bankButton)
        self.view.addSubview(yuleButton)
        self.view.addSubview(houseButton)
        self.view.addSubview(hospitalButton)
        self.view.addSubview(shopingButton)
        self.view.addSubview(cishanButton)
        self.view.addSubview(xiangqinButton)
        self.view.addSubview(carShopButton)
        self.view.addSubview(zichanButton)
        self.view.addSubview(cashFlowButton)
    }
    
    @objc func onClickPopButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            popViewWithType(type:.left)
        case 2:
            popViewWithType(type: .right)
        default:
            break
        }
    }
    
    private func popViewWithType(type: PopViewType) {
        let popView = CRPopView.init(frame: self.view.frame,type:type)
        switch type {
        case .left:
            popView.backBlockLeft = {
                print(1)
            }
            popView.backBlockRight = {
                print(2)
            }
        case .right:
            popView.backBlockLeft = {
                print(3)
            }
            popView.backBlockRight = {
                print(4)
            }
        }
        popView.showToView(view: self.view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
