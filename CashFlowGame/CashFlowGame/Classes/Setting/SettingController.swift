//
//  WorkingController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation
import UIKit


fileprivate let screenWidth = UIScreen.main.bounds.width
fileprivate let screenHeight = UIScreen.main.bounds.height


fileprivate let  btnWidth  : CGFloat   = 100
fileprivate let  btnHeight : CGFloat   = 30.0


public class SettingController: UIView {
    
    /// 特别说明：appId可以是app的唯一标志(跳转到appStore)，也可以是http地址(跳转到Safari)
    @discardableResult
    public class func show()->SettingController? {
        let alert = SettingController()
        // 延迟添加到window上，防止在root视图还没有显示出来时，导致更新视图被root视图覆盖
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.168) {
            UIApplication.shared.delegate?.window!!.addSubview(alert)
        }
        return alert
    }
    
    private let btnUpdateHeight:CGFloat = 40
    private let btnCancelWidth:CGFloat = 36
    private var upMustUpdate = false
    
    

    let ReStartButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y: 30 , width: btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.layer.cornerRadius = 20.0
        button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("重新开始", for: .normal)
        button.addTarget(self, action: #selector(ReStartAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let EndButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y:90, width: btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.layer.cornerRadius = 20.0
        button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("结束游戏", for: .normal)
        button.addTarget(self, action: #selector(EndAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    let LearnButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y: 150, width: btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.layer.cornerRadius = 20.0
        button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("游戏教程", for: .normal)
        button.addTarget(self, action: #selector(LearnAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    let ReviewButton: UIButton = {
        let button = UIButton(frame: CGRect(x: screenWidth  - 80 - 150, y: 150, width:btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.layer.cornerRadius = 20.0
        button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("评   论", for: .normal)
        button.addTarget(self, action: #selector(ReviewAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    // MARK: -  音乐
    let YinyueLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: screenWidth  - 80 - 150, y: 30, width:40, height: btnHeight))
        label.text = "音乐"
        label.layer.cornerRadius = 30.0
        label.textColor=UIColor.white
        label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        //label.font = UIFont.boldSystemFont(ofSize: 18)

        return label
    }()
    
    let YinyueButton: UISwitch = {
        let button = UISwitch(frame: CGRect(x: screenWidth  - 80 - 80, y: 30, width:btnWidth, height: btnHeight))
        button.clipsToBounds = true
        let shengyinFlag = defaults.string(forKey: "yinyue")
        if shengyinFlag == nil || shengyinFlag == "on" {
            button.isOn = true
        } else {
            button.isOn = false
        }
        button.addTarget(self, action: #selector(YinyueAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    
    // MARK: -  声音
    let ShengyinLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: screenWidth  - 80 - 150, y: 90, width:40, height: btnHeight))
        label.text = "声音"
        label.layer.cornerRadius = 30.0
        label.textColor=UIColor.white
        label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
        //label.font = UIFont.boldSystemFont(ofSize: 18)

        return label
    }()
    
    let ShengyinButton: UISwitch = {
        let button = UISwitch(frame: CGRect(x: screenWidth - 80 - 80, y: 90, width:btnWidth, height: btnHeight))
        button.clipsToBounds = true
        
        let shengyinFlag = defaults.string(forKey: "shengyin")
        if shengyinFlag == nil || shengyinFlag == "on" {
            button.isOn = true
        } else {
            button.isOn = false
        }
        button.addTarget(self, action: #selector(ShengyinAction), for: UIControl.Event.touchUpInside)
        return button
    }()


    
    init() {
        super.init(frame: CGRect.zero)
        makeUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    
    @objc private func cancelAlertAction() {
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
            self.backgroundColor = UIColor.clear
            self.alpha = 0
        }) { _ in
            self.removeFromSuperview()
        }
    }
    

    // MARK: - Methods
    
    private func makeUI() {
        self.frame = UIScreen.main.bounds
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        
        let contentView = UIView(frame: CGRect.init(x: 0, y: 0, width: screenWidth - 80, height: screenHeight/2 - 130))
        contentView.center = self.center
        contentView.backgroundColor = UIColor.init(r: 255, g: 210, b: 102, alpha: 1)
        contentView.layer.cornerRadius = 50.0
        self.addSubview(contentView)
   
        contentView.addSubview(ReStartButton)
        contentView.addSubview(EndButton)
        contentView.addSubview(LearnButton)
        contentView.addSubview(ReviewButton)
        
        contentView.addSubview(ShengyinLabel)
        contentView.addSubview(YinyueLabel)
        contentView.addSubview(YinyueButton)
        contentView.addSubview(ShengyinButton)
        
        if !upMustUpdate {
            let btnCancel = UIButton(type: .system)
            btnCancel.bounds = CGRect.init(x: 0, y: 0, width: btnCancelWidth, height: btnCancelWidth)
            btnCancel.center = CGPoint.init(x: contentView.frame.maxX, y: contentView.frame.minY)
            btnCancel.setImage(UIImage(named: "Setting.bundle/zas_cancel.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
            btnCancel.addTarget(self, action: #selector(cancelAlertAction), for: UIControl.Event.touchUpInside)
            self.addSubview(btnCancel)
            
        }
    }
    
    @objc private func ReStartAction() -> Void
    {

        let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认重新开始吗？", confirmBlock: { (popupView, index, title) in
            print("点击了确定")
        }, cancelBlock: { (popupView, index, title) in
            print("点击了取消")
        })
        alertView.show()
     
    }
    

    @objc private func EndAction() -> Void
    {

        let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
            print("结束游戏")
            exit(0)
        }, cancelBlock: { (popupView, index, title) in
            print("点击了取消")
        })
        alertView.show()

    }
    
    @objc private func LearnAction() -> Void
    {
            print("游戏教程")
    }
    
    @objc private func ReviewAction() -> Void
    {
            print("评   论")
        let appUrl = String(format:"https://www.apple.com")
        let url = URL(string: appUrl)
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url!)
        }
    }
    @IBAction func YinyueAction(_ sender: Any) {
        if YinyueButton.isOn {
            defaults.set("on", forKey: "yinyue")
            print("yinyue on")
        }else{
            defaults.set("off", forKey: "yinyue")
            print("yinyue off")

        }
    }
    
    @IBAction func ShengyinAction(_ sender: Any) {
        if YinyueButton.isOn {
           defaults.set("on", forKey: "shengyin")
           print("shengyin on")
        }else{
           defaults.set("off", forKey: "shengyin")
           print("shengyin off")
        }
    }
}
