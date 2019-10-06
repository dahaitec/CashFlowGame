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



fileprivate var lilvValue    : Int = 0
fileprivate var xinyongText  : String  = "非VIP"
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
        
        // MARK: - 初始化
        init() {
            super.init(frame: CGRect.zero)
            // 现金
            xianjinValue      = defaults.float(forKey: "xianjin")
            // 存款
            cunkuanValue      = defaults.float(forKey: "cunkuan")

            lilvValue       = defaults.integer(forKey: "lilv")             // 利率

            xinyongText = xinyongName(xinyongV: CGFloat(xinyongValue))
            makeUI()
        }
    
    
    
        
        // MARK: -  信用
        let xinyongLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: 30, y: 30 , width: screenWidth  - 140, height: 30))
            label.text = "信用等级  \(xinyongText)"
            label.font = UIFont.systemFont(ofSize: 25)
            label.layer.cornerRadius = 5
            label.textColor=UIColor.red
            label.backgroundColor =  UIColor.yellow
            label.textAlignment = .center
//            label.layer.borderWidth = 2
//            label.layer.borderColor = UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1).cgColor
//            label.textColor=UIColor.white
//            label.backgroundColor =  UIColor(red: 34 / 255, green: 153 / 255, blue: 238 / 255, alpha: 1)

            return label
        }()
    
        // MARK: -  分割线
            let lineLabel2: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:30 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()
    
        // MARK: -  利率
        let lilvLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 30, y:60 , width: screenWidth - 140, height: btnHeight))

            label.text = "存款利率   \(xianjinValue)% | 贷款利率\(xianjinValue)%"
            label.font = UIFont.systemFont(ofSize: 20)
            label.textColor=UIColor.red
            label.backgroundColor =  UIColor.yellow
            label.layer.cornerRadius = 5
            label.layer.masksToBounds = true
            label.textAlignment = .center
            return label
        }()
    
    
        // MARK: -  分割线
            let lineLabel1: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:60 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()
    
        // MARK: -  资金
        let zijinLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 10, y: 100 , width: screenWidth - 100, height: btnHeight))

            label.text = "资金  ¥ \(xianjinValue)"
            label.font = UIFont.systemFont(ofSize: 20)
            label.layer.cornerRadius = 5
            label.layer.masksToBounds = true
            label.textAlignment = .center
            return label
        }()
    

    
        // MARK: -  分割线
        let lineLabel3: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:100 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()
    
        // MARK: -  余额
        let yuerLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: 10, y: 140 , width: screenWidth - 100, height: btnHeight))
            label.text = "余额  ¥ \(cunkuanValue)"
            label.font = UIFont.systemFont(ofSize: 20)
            label.layer.cornerRadius = 5

            label.textAlignment = .center
            return label
        }()
        // MARK: -  分割线
        let lineLabel4: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:140 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()


    
        let cunqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 10, y:175, width: btnWidth, height: 30))
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("存钱", for: .normal)
            button.addTarget(self, action: #selector(CunqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let quqianButton: UIButton = {
            let button = UIButton(frame: CGRect(x:  (screenWidth  - 80)/2  - 50, y: 175, width: btnWidth, height: 30))
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("取钱", for: .normal)
            button.addTarget(self, action: #selector(QuqianAction), for: UIControl.Event.touchUpInside)
            return button
        }()

        let daikuanButton: UIButton = {
            let button = UIButton(frame: CGRect(x: screenWidth  - 80 - 110, y: 175, width:btnWidth, height: 30))
            button.clipsToBounds = true
             button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("贷款", for: .normal)
            button.addTarget(self, action: #selector(DaikuanAction), for: UIControl.Event.touchUpInside)
            return button
        }()


        required public init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
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
       
            zijinLabel.text   = "资金  ¥ \(xianjinValue)"
            yuerLabel.text    = "余额  ¥ \(cunkuanValue)"
            xinyongLabel.text = "信用等级  \(xinyongText)"
            lilvLabel.text = "存款利率   \(lilvValue)% | 贷款利率\(lilvValue*3)%"
            contentView.addSubview(zijinLabel)
            contentView.addSubview(yuerLabel)
            contentView.addSubview(lilvLabel)
            contentView.addSubview(lineLabel1)
            contentView.addSubview(lineLabel2)
            contentView.addSubview(lineLabel3)
            contentView.addSubview(lineLabel4)
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
            xianjinValue    = defaults.float(forKey: "xianjin")   // 现金
            cunkuanValue    = defaults.float(forKey: "cunkuan")   // 存款
            
            let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
            if xianjinValue == 0 {
                    simAlert.alertText = "银行提示:无钱可存"
            } else {
                    simAlert.alertText = "请输入存款金额"
            }
            simAlert.moneyInfor = "可存金额：¥ \(xianjinValue)"

            simAlert.moneyF = CGFloat(xianjinValue)
            simAlert.show()
            simAlert.completeHandle = {(complete) -> Void in
                
                print("存款成功！")
                let xianjinCunkuan = CGFloat.init(xianjinValue) - CGFloat.init(Float(complete)!)
                let yuerCunkuan    = CGFloat.init(cunkuanValue) + CGFloat.init(Float(complete)!)
                // 存款
                defaults.set(xianjinCunkuan, forKey: "xianjin")
                self.zijinLabel.text = "资金  ¥ \(xianjinCunkuan)"
                defaults.set(yuerCunkuan, forKey: "cunkuan")
                self.yuerLabel.text = "余额  ¥ \(yuerCunkuan)"
            }
         
        }
        

        @objc private func QuqianAction() -> Void
        {
            xianjinValue    = defaults.float(forKey: "xianjin")   // 现金
            cunkuanValue    = defaults.float(forKey: "cunkuan")   // 存款
            let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
            if cunkuanValue == 0 {
                    simAlert.alertText = "银行提示:无钱可取"
            } else {
                    simAlert.alertText = "请输入取款金额"
            }
            simAlert.moneyInfor = "可取金额：¥ \(cunkuanValue)"

            simAlert.moneyF = CGFloat(cunkuanValue)
            simAlert.show()
            simAlert.completeHandle = {(complete) -> Void in
                            
                print("取款成功！")
                let xianjinCunkuan = CGFloat.init(xianjinValue) + CGFloat.init(Float(complete)!)
                let yuerCunkuan    = CGFloat.init(cunkuanValue) - CGFloat.init(Float(complete)!)
                // 存款
                defaults.set(xianjinCunkuan, forKey: "xianjin")
                self.zijinLabel.text = "资金  ¥ \(xianjinCunkuan)"
                defaults.set(yuerCunkuan, forKey: "cunkuan")
                self.yuerLabel.text = "余额  ¥ \(yuerCunkuan)"
            }

        }
        

        @objc private func DaikuanAction() -> Void
        {

            xinyongValue    = Int(CGFloat(defaults.float(forKey: "xinyong")))   // 信用度
            let xinyongdu = xinyongMoney(xinyongV: CGFloat(xinyongValue))
            
            let simAlert = BankAlertView.init(frame: UIScreen.main.bounds)
            
            if xinyongValue == 0 {
                    simAlert.alertText = "银行提示:无法为您提供贷款"
            } else {
                    simAlert.alertText = "请输入贷款金额"
            }

            simAlert.moneyInfor = "可存金额：¥ \(xinyongdu)"

            simAlert.moneyF = xinyongdu
            simAlert.show()
            simAlert.completeHandle = {(complete) -> Void in
                print("存款成功！")
            }
        }

        // MARK: - 关闭更新
        
        @objc private func cancelAlertAction() {
            UIView.animate(withDuration: 0.3, animations: {
                self.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
                self.backgroundColor = UIColor.clear
                self.alpha = 0
            }) { _ in
                self.removeFromSuperview()
                let home =  HomeController()
                home.updatePersonData()
            }
        }
    
    func xinyongMoney(xinyongV: CGFloat) -> CGFloat {
         let xinyongdu = CGFloat.init(xinyongV)
            switch xinyongdu {
            case 0:
                return 0
            case 1:
                return 1000
            case 2:
                return 10000
            case 3:
                return 50000
            case 4:
                return 200000
            case 5:
                return 500000
            case 6:
                return 2000000
            case 7:
                //黄金VIP
                return 5000000
            case 8:
                //铂金VIP
                return 10000000
            case 9:
                //钻石VIP
                return 50000000
            case 10:
                //至尊VIP
                return 100000000
            default:
                break
                
            }
         return 0
        }
    
    func xinyongName(xinyongV: CGFloat) -> String {
         let xinyongdu = CGFloat.init(xinyongV)
            switch xinyongdu {
            case 0:
                return "【非VIP】"
            case 1:
                return "【普通VIP1】"
            case 2:
                return "【普通VIP2】"
            case 3:
                return "【普通VIP3】"
            case 4:
                return "【贵宾VIP1】"
            case 5:
                return "【贵宾VIP2】"
            case 6:
                return "【贵宾VIP3】"
            case 7:
                //黄金VIP
                return "【黄金VIP】"
            case 8:
                //铂金VIP
                return "【铂金VIP】"
            case 9:
                //钻石VIP
                return "【钻石VIP】"
            case 10:
                //至尊VIP
                return "【至尊VIP】"
            default:
                break
                
            }
         return "非VIP"
        }
}
