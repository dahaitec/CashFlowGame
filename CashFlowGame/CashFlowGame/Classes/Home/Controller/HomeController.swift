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

        SettingController.show()
    }
    
    @objc private func SettingAction() -> Void
    {
        SettingController.show()
    }
    


// MARK: - 设置界面


    private func setUpUI() -> Void
    {
        // 设置导航栏
        self.navigationItem.title = "25岁"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: shangdian, style: .plain, target: self, action: #selector(ShangdianAction))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: setting, style: .plain, target: self, action: #selector(SettingAction))
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar
            .setBackgroundImage(resizableImage(imageName: "header_bg_message", edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)), for: .default)
        
    }
    
    //MARK: -   背景图片
    let backImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "haozhai")
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: -   背景图片
        self.view.addSubview(backImageView)
        backImageView.frame = self.view.frame
        
        drawMyView()
        //MARK: -  设置导航栏
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 }

