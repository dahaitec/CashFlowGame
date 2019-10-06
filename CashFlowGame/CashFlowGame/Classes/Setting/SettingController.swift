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
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("重新开始", for: .normal)
        button.addTarget(self, action: #selector(ReStartAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let EndButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y:90, width: btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("结束游戏", for: .normal)
        button.addTarget(self, action: #selector(EndAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    let LearnButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y: 150, width: btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("游戏教程", for: .normal)
        button.addTarget(self, action: #selector(LearnAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    let ReviewButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 290 - 150, y: 150, width:btnWidth, height: btnHeight))
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("评   论", for: .normal)
        button.addTarget(self, action: #selector(ReviewAction), for: UIControl.Event.touchUpInside)
        return button
    }()

    // MARK: -  音乐
    let YinyueLabel: UIButton = {

        let button = UIButton(frame: CGRect(x: 290 - 150, y: 30, width:50, height: btnHeight))
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("音乐", for: .normal)
        button.addTarget(self, action: #selector(YinYueBAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let YinyueButton: UISwitch = {
        let button = UISwitch(frame: CGRect(x: 290 - 80, y: 30, width:btnWidth, height: btnHeight))
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
    let ShengyinLabel: UIButton = {

        let button = UIButton(frame: CGRect(x: 290 - 150, y: 90, width:50, height: btnHeight))
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.backgroundColor =  UIColor.orange
        button.setTitle("声音", for: .normal)
        button.addTarget(self, action: #selector(ShengyinBAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let ShengyinButton: UISwitch = {
        let button = UISwitch(frame: CGRect(x: 290 - 80, y: 90, width:btnWidth, height: btnHeight))
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
        
        let contentView = UIView(frame: CGRect.init(x: 0, y: 0, width: 290, height: 220))
        contentView.center = self.center
        contentView.backgroundColor = UIColor.init(white: 1.0, alpha: 0.95)
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
        
        let imageIcon = UIButton(type: .system)
        imageIcon.bounds = CGRect.init(x: 0, y: 0, width: 200, height: 100)
        imageIcon.center = CGPoint.init(x: contentView.frame.midX, y: contentView.frame.minY - 20)
        imageIcon.setImage(UIImage(named: "Setting.bundle/setting.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
        imageIcon.isEnabled = false
        self.addSubview(imageIcon)
        
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

        let appUrl = String(format:"https://www.apple.com")
        let url = URL(string: appUrl)
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url!)
        }
    }
    
    @objc private func YinYueBAction() -> Void {
            if YinyueButton.isOn {
               YinyueButton.setOn(false, animated: true)

            }else {
               YinyueButton.setOn(true, animated: true)
        }
                YinyueAction()
    }
    
    @objc private func ShengyinBAction() -> Void {
            if ShengyinButton.isOn {
               ShengyinButton.setOn(false, animated: true)

            }else {
               ShengyinButton.setOn(true, animated: true)
        }
                ShengyinAction()
    }
    
    @IBAction func YinyueAction() {
        if YinyueButton.isOn {

            defaults.set("on", forKey: "yinyue")
            print("yinyue on")
        }else{
            defaults.set("off", forKey: "yinyue")
            print("yinyue off")
        }
            homecontroller.OnOffMuisc()
    }
    
    @IBAction func ShengyinAction() {
        if ShengyinButton.isOn {
           defaults.set("on", forKey: "shengyin")
           print("shengyin on")
        }else{
           defaults.set("off", forKey: "shengyin")
           print("shengyin off")
        }
          homecontroller.buttonSound()
    }
}
