//
//  HomeView-Extension.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/2.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

extension HomeController{
    func drawMyView() {
        

        

        
        
        //MARK: -  每月现金流详情
        
        detailUIView.addSubview(xianjinliuText)
        detailUIView.addSubview(fangzuLabel)
        detailUIView.addSubview(fangzuText)
        detailUIView.addSubview(shuidianfeiLabel)
        detailUIView.addSubview(shuidianfeiText)
        detailUIView.addSubview(shenghuofeiLabel)
        detailUIView.addSubview(shenghuofeiText)
        detailUIView.addSubview(dagongshouruLabel)
        detailUIView.addSubview(dagongshouruText)
        detailUIView.addSubview(beidongshouruLabel)
        detailUIView.addSubview(beidongshouruText)
        
        detailUIView.addSubview(chengjiuText)
        detailUIView.addSubview(fangchanLabel)
        detailUIView.addSubview(fangchanText)
        detailUIView.addSubview(sijiacheLabel)
        detailUIView.addSubview(sijiacheText)
        detailUIView.addSubview(nvpengyouLabel)
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
        
        
        //MARK: -  功能模块
        bankButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        yuleButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        houseButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        hospitalButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        shopingButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        cishanButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        xiangqinButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        carShopButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        buttionUIView.addSubview(bankButton)
        buttionUIView.addSubview(yuleButton)
        buttionUIView.addSubview(houseButton)
        buttionUIView.addSubview(hospitalButton)
        buttionUIView.addSubview(shopingButton)
        buttionUIView.addSubview(cishanButton)
        buttionUIView.addSubview(xiangqinButton)
        buttionUIView.addSubview(carShopButton)
        self.view.addSubview(buttionUIView)
        
        //MARK: -  理财模块
        xiuxiButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        touziButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        dagongButton.addTarget(self, action: #selector(onClickPopButton(_:)), for: .touchUpInside)
        licailUIView.addSubview(xiuxiButton)
        licailUIView.addSubview(touziButton)
        licailUIView.addSubview(dagongButton)
        self.view.addSubview(licailUIView)
    }
}
