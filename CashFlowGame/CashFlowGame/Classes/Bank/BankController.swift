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


fileprivate let  btnWidth  : CGFloat   = 100
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

            let label = UILabel(frame: CGRect(x: (screenWidth  - 80)/2  - 100, y: 40 , width: 200, height: btnHeight))
            label.text = "信用等级    3"
            label.font = UIFont.systemFont(ofSize: 30)
            label.layer.cornerRadius = 5
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor.orange
//            label.layer.borderWidth = 2
//            label.layer.borderColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1).cgColor
//            label.textColor=UIColor.white
//            label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)

            return label
        }()
    

    
        // MARK: -  资金
        let zijinLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 10, y: 85 , width: 150, height: btnHeight))

            label.text = "资金  ¥ 100.42"
            label.font = UIFont.systemFont(ofSize: 17)
            label.layer.cornerRadius = 5
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor.orange

            return label
        }()

            
        // MARK: -  余额
        let yuerLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: (screenWidth  - 80)  - 160, y: 85 , width: 150, height: btnHeight))
            label.text = "余额  ¥ 100.42"
            label.font = UIFont.systemFont(ofSize: 17)
            label.layer.cornerRadius = 5
            label.textColor=UIColor.white
            label.backgroundColor =  UIColor.orange

            return label
        }()
    


    
        let cunqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 10, y:150, width: btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("存钱", for: .normal)
            button.addTarget(self, action: #selector(CunqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let quqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x:  (screenWidth  - 80)/2  - 50, y: 150, width: btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("取钱", for: .normal)
            button.addTarget(self, action: #selector(CunqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let daikuanButton: UIButton = {
            let button = UIButton(frame: CGRect(x: screenWidth  - 80 - 110, y: 150, width:btnWidth, height: btnHeight))
            button.clipsToBounds = true
             button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("贷款", for: .normal)
            button.addTarget(self, action: #selector(DaikuanAction), for: UIControl.Event.touchUpInside)
            return button
        }()



        // MARK: - 初始化
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
            contentView.backgroundColor = UIColor.init(white: 1.0, alpha: 0.95)

            contentView.layer.cornerRadius = 50.0

            self.addSubview(contentView)
       

            contentView.addSubview(zijinLabel)
            contentView.addSubview(yuerLabel)
            contentView.addSubview(xinyongLabel)

            contentView.addSubview(cunqianButton)
            contentView.addSubview(quqianButton)
            contentView.addSubview(daikuanButton)

            
            let imageIcon = UIButton(type: .system)
            imageIcon.bounds = CGRect.init(x: 0, y: 0, width: 200, height: 100)
            imageIcon.center = CGPoint.init(x: contentView.frame.midX, y: contentView.frame.minY - 20)
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

            let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
            simAlert.moneyInfor = "可存金额：¥ 100.42"
            simAlert.alertText = "请输入存款金额"
            simAlert.moneyF = 100.42
            simAlert.show()
            simAlert.completeHandle = {(complete) -> Void in
                print("存款成功！")
            }
         
        }
        

        @objc private func QuqianAction() -> Void
        {

            let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
            simAlert.moneyInfor = "可存金额：¥ 100.42"
            simAlert.alertText = "请输取款金额"
            simAlert.moneyF = 100.42
            simAlert.show()
            simAlert.completeHandle = {(complete) -> Void in
                print("存款成功！")
            }

        }
        

        @objc private func DaikuanAction() -> Void
        {
                let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
                simAlert.moneyInfor = "可存金额：¥ 100.42"
                simAlert.alertText = "请输入贷款金额"
                simAlert.moneyF = 100.42
                simAlert.show()
                simAlert.completeHandle = {(complete) -> Void in
                    print("存款成功！")
                }
        }


    }
