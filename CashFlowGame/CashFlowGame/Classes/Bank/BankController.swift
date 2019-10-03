//
//  BankController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/3.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

fileprivate let screenWidth = UIScreen.main.bounds.width
fileprivate let screenHeight = UIScreen.main.bounds.height


fileprivate let  btnWidth  : CGFloat   = 60
fileprivate let  btnHeight : CGFloat   = 30.0
class BankController: UIView {
        
        /// 特别说明
        @discardableResult
        public class func show()->BankController? {
            let alert = BankController()
            // 延迟添加到window上，防止在root视图还没有显示出来时，导致更新视图被root视图覆盖
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.168) {
                UIApplication.shared.delegate?.window!!.addSubview(alert)
            }
            return alert
        }
        
        private let btnUpdateHeight:CGFloat = 40
        private let btnCancelWidth:CGFloat = 36
        private var upMustUpdate = false
        
        
        // MARK: -  信用
        let xinyongLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: (screenWidth  - 80)/2  - 55, y: 35 , width: 70, height: btnHeight))
            label.text = "信用等级"

            label.textColor=UIColor.red
//            label.layer.borderWidth = 2
//            label.layer.borderColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1).cgColor
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
            return label
        }()
    
        let xinyongText: UITextField = {
            let textField = UITextField(frame: CGRect(x: (screenWidth  - 80)/2  + 15, y: 35 , width: 40, height: btnHeight))

            textField.text = "3"
            textField.textColor=UIColor.red


            return textField
        }()
    
        // MARK: -  资金
        let zijinLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 30, y: 85 , width: 40, height: btnHeight))

            label.text = "资金"
            label.layer.cornerRadius = 30.0
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)

            return label
        }()
    
        let zijinText: UITextField = {
            let textField = UITextField(frame: CGRect(x: 75, y: 85 , width: 80, height: btnHeight))

            textField.text = "30.0"
            textField.textColor=UIColor.black


            return textField
        }()
            
        // MARK: -  余额
        let yuerLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: (screenWidth  - 80)  - 150, y: 85 , width: 40, height: btnHeight))
            label.text = "余额"
            label.layer.cornerRadius = 30.0
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)

            return label
        }()
    
        let yuerText: UITextField = {

            let textField = UITextField(frame: CGRect(x:  (screenWidth  - 80)  - 105, y: 85 , width: 80, height: btnHeight))
            textField.text = "30.0"
            textField.textColor=UIColor.black


            return textField
        }()


    
        let cunqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 30, y:150, width: btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.layer.cornerRadius = 10.0
            button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
            button.setTitleColor(UIColor.white, for: .normal)
            button.setTitle("存钱", for: .normal)
            button.addTarget(self, action: #selector(CunqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let quqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x:  (screenWidth  - 80)/2  - 50, y: 150, width: btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.layer.cornerRadius = 10.0
            button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
            button.setTitleColor(UIColor.white, for: .normal)
            button.setTitle("取钱", for: .normal)
            button.addTarget(self, action: #selector(CunqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let daikuanButton: UIButton = {
            let button = UIButton(frame: CGRect(x: screenWidth  - 80 - 130, y: 150, width:btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.layer.cornerRadius = 10.0
            button.backgroundColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)
            button.setTitleColor(UIColor.white, for: .normal)
            button.setTitle("贷款", for: .normal)
            button.addTarget(self, action: #selector(DaikuanAction), for: UIControl.Event.touchUpInside)
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
       

            contentView.addSubview(zijinLabel)
            contentView.addSubview(zijinText)
            contentView.addSubview(yuerLabel)
            contentView.addSubview(yuerText)
            contentView.addSubview(xinyongLabel)
            contentView.addSubview(xinyongText)
            contentView.addSubview(cunqianButton)
            contentView.addSubview(quqianButton)
            contentView.addSubview(daikuanButton)

            
            let imageIcon = UIButton(type: .system)
            imageIcon.bounds = CGRect.init(x: 0, y: 0, width: contentView.frame.width/2, height: contentView.frame.width/4)
            imageIcon.center = CGPoint.init(x: contentView.frame.midX, y: contentView.frame.minY)
            imageIcon.setImage(UIImage(named: "Bank.bundle/bankText.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
            imageIcon.isEnabled = false
            self.addSubview(imageIcon)

            if !upMustUpdate {
                let btnCancel = UIButton(type: .system)
                btnCancel.bounds = CGRect.init(x: 0, y: 0, width: btnCancelWidth, height: btnCancelWidth)
                btnCancel.center = CGPoint.init(x: contentView.frame.maxX, y: contentView.frame.minY)
                btnCancel.setImage(UIImage(named: "Bank.bundle/zas_cancel.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
                btnCancel.addTarget(self, action: #selector(cancelAlertAction), for: UIControl.Event.touchUpInside)
                self.addSubview(btnCancel)
                
            }
        }
        
        @objc private func CunqianAction() -> Void
        {

            let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认重新开始吗？", confirmBlock: { (popupView, index, title) in
                print("点击了确定")
            }, cancelBlock: { (popupView, index, title) in
                print("点击了取消")
            })
            alertView.show()
         
        }
        

        @objc private func QuqianAction() -> Void
        {

            let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                print("结束游戏")
                exit(0)
            }, cancelBlock: { (popupView, index, title) in
                print("点击了取消")
            })
            alertView.show()

        }
        
        @objc private func DaikuanAction() -> Void
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

    }
