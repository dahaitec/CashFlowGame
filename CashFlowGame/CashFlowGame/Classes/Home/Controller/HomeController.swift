//
//  HomeControllerViewController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit





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
        detailUIView.addSubview(chengjiuText)
        detailUIView.addSubview(fangchanText)
        detailUIView.addSubview(sijiacheText)
        detailUIView.addSubview(nvpengyouText)
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
        
        
        
        bankButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        yuleButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        houseButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        hospitalButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        shopingButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        cishanButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        xiangqinButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        carShopButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        //MARK: -  功能模块
        buttionUIView.addSubview(bankButton)
        buttionUIView.addSubview(yuleButton)
        buttionUIView.addSubview(houseButton)
        buttionUIView.addSubview(hospitalButton)
        buttionUIView.addSubview(shopingButton)
        buttionUIView.addSubview(cishanButton)
        buttionUIView.addSubview(xiangqinButton)
        buttionUIView.addSubview(carShopButton)
        self.view.addSubview(buttionUIView)

    }
    

    @objc func onClickPopButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print(sender.currentTitle ?? " ")
            popViewWithType(type:.left)
        case 2:
            print(sender.currentTitle ?? " ")
            popViewWithType(type: .right)
        case 3:
            print(sender.currentTitle ?? " ")
            popViewWithType(type:.left)
        case 4:
            print(sender.currentTitle ?? " ")
            popViewWithType(type: .right)
        case 5:
            print(sender.currentTitle ?? " ")
            popViewWithType(type:.left)
        case 6:
            print(sender.currentTitle ?? " ")
            popViewWithType(type: .right)
        case 7:
            print(sender.currentTitle ?? " ")
            popViewWithType(type:.left)
        case 8:
            print(sender.currentTitle ?? " ")
            popViewWithType(type: .right)
        default:
            break
        }
    }
    
    public func popViewWithType(type: PopViewType) {
        let popView = CRPopView.init(frame: self.view.frame,type:type)
        print(type)
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
