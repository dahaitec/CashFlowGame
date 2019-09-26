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



//MARK：- 按钮长宽
public let  buttonWidth :  CGFloat = 100
public let  buttonHeight : CGFloat = 20






class HomeController: UIViewController {


    
    // MARK: - 事件监听
    
    @objc private func ShangdianAction() -> Void
    {
        print(shangdian)
    }
    
    @objc private func SettingAction() -> Void
    {
        print(setting)
    }
    


// MARK: - 设置界面


    private func setUpUI() -> Void
    {
        // 设置导航栏
        self.navigationItem.title = "25岁"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: shangdian, style: .plain, target: self, action: #selector(ShangdianAction))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: setting, style: .plain, target: self, action: #selector(SettingAction))

    }
    
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
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 30, y: ScreenInfo.Height/2 - 20  , width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(hospital, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()

    
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------------------------------
    // MARK: -  慈善按钮 第二排 1
    let cishanButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 170, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(cishan, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    

    // MARK: -  相亲按钮 第二排 2
    let xiangqinButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 120, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(xiangqin, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  4S店按钮 第二排 3
    let carShopButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 70, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = UIColor.blue
        button.setTitle(carShop, for: .normal)
        button.sizeToFit()
        button.tag = 1
        button.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: -  购物按钮 第二排 4
    let shopingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: ScreenInfo.Width/2 + 120, y: ScreenInfo.Height/2 - 20 , width: buttonWidth, height: buttonHeight))
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



    //MARK: -   背景图片
    let backImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "haozhai")
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawMyView()
    }
    

    func drawMyView() {
        
        //MARK: -  设置导航栏
        setUpUI()
        
        //MARK: -   背景图片
        self.view.addSubview(backImageView)
        backImageView.frame = self.view.frame
        
        
        //MARK: -  每月现金流详情
        detailUIView.addSubview(xianjinliuText)
        detailUIView.addSubview(fangzuText)
        detailUIView.addSubview(shuidianfeiText)
        detailUIView.addSubview(shenghuofeiText)
        detailUIView.addSubview(dagongshouruText)
        detailUIView.addSubview(beidongshouruText)
        self.view.addSubview(detailUIView)
        
        
        //MARK: -  个人信息
        personUIView.addSubview(cashLabel)
        personUIView.addSubview(cashFLowLabel)
        personUIView.addSubview(jiankangLabel)
        personUIView.addSubview(xinqingLabel)
        personUIView.addSubview(mingshengLabel)
        personUIView.addSubview(cashTextField)
        personUIView.addSubview(cashFLowTextField)
        personUIView.addSubview(jiankangTextField)
        personUIView.addSubview(xinqingTextField)
        personUIView.addSubview(mingshengTextField)
        self.view.addSubview(personUIView)
        
        self.view.addSubview(bankButton)
        self.view.addSubview(yuleButton)
        self.view.addSubview(houseButton)
        self.view.addSubview(hospitalButton)
        self.view.addSubview(shopingButton)
        self.view.addSubview(cishanButton)
        self.view.addSubview(xiangqinButton)
        self.view.addSubview(carShopButton)

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
