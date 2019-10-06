//
//  HomeControllerViewController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit
import AVFoundation

var musicPlayer:AVAudioPlayer!
let homecontroller  = HomeController()
class HomeController: UIViewController {


    
    // MARK: - 事件监听
    
    @objc private func ShangdianAction() -> Void
    {

        SettingController.show()
        homecontroller.buttonSound()
    }
    
    @objc private func SettingAction() -> Void
    {
        SettingController.show()
        homecontroller.buttonSound()
    }
    


// MARK: - 设置界面


    private func setUpUI() -> Void
    {
        // 设置导航栏
        self.navigationItem.title = "小智理财记"
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

    //MARK: -   背景图片
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //播放背景音乐
        //openBGSound()

        //个人信息初始化
        
        
        if !defaults.bool(forKey: "isStore") {
        let person = PersonModel()
        person.initData()
        }

        //背景图片
        self.view.addSubview(backImageView)
        backImageView.frame = self.view.frame
        
        //设置布局
        drawMyView()
        
        //设置导航栏
        setUpUI()
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: -   背景音乐
    func openBGSound() {
        musicPlayer = setupAudioPlayerWithFile("loginMusic", type: "mp3")
        musicPlayer.numberOfLoops = -1
        musicPlayer.play()
        
    }
    func setupAudioPlayerWithFile(_ file:NSString, type:NSString) -> AVAudioPlayer  {
        let url = Bundle.main.url(forResource: file as String, withExtension: type as String)
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url!)
        } catch {
            print("NO AUDIO PLAYER")
        }
        
        return audioPlayer!
    }
    
    //个人数据更新
    func  updatePersonData(){
        
        let xianjinValue    = defaults.float(forKey: "xianjin")   // 现金
        let xianjinliuValue = defaults.float(forKey: "xianjinliu")// 现金流
        let jiankangValue   = defaults.integer(forKey: "jiankang")  // 健康
        let xinqingValue    = defaults.integer(forKey: "xinqing")   // 心情
        let mingshengValue  = defaults.integer(forKey: "mingsheng") // 名声
        cashTextField.text      =  String(xianjinValue)
        cashFLowTextField.text  =  String(xianjinliuValue)
        jiankangTextField.text  =  String(jiankangValue)
        xinqingTextField.text   =  String(xinqingValue)
        mingshengTextField.text =  String(mingshengValue)
        
    }
    
    func OnOffMuisc(){
        let shengyinFlag = defaults.string(forKey: "yinyue")
        if  shengyinFlag == "off" {
             musicPlayer.stop()
        }else{
            musicPlayer.play()
        }
    }
 }

