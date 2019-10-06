//
//  HospitalController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/4.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

fileprivate let screenWidth = UIScreen.main.bounds.width
fileprivate let screenHeight = UIScreen.main.bounds.height


fileprivate let  btnWidth  : CGFloat   = 150
fileprivate let  btnHeight : CGFloat   = 30.0


fileprivate var yiyaofei : CGFloat = 0
fileprivate var jiankangText  : String  = "红光满面"

class HospitalController: UIView {
        
        /// 特别说明
        @discardableResult
        public class func show()->HospitalController? {
            let alert = HospitalController()
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
            // 健康
            jiankangValue     = defaults.integer(forKey: "jiankang")
            jiankangText    = jiankangName( xinyongV: CGFloat(jiankangValue))        // 健康状况
            yiyaofei        = jiankangMoney(xinyongV: CGFloat(jiankangValue))        // 医药费
            
            makeUI()
        }
    
    
    
        
        // MARK: - 健康
        let xinyongLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: 30, y: 40 , width: screenWidth  - 140, height: btnHeight))
            label.text = "健康状况  \(jiankangText)"
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
            let lineLabel0: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:40 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()
    
        // MARK: -  普通门诊
        let putongLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 10, y: 85 , width: screenWidth - 100, height: btnHeight))

            label.text = "普通门诊   医疗费：¥ \(yiyaofei)"//碰到庸医
            label.font = UIFont.systemFont(ofSize: 20)
            label.layer.cornerRadius = 5
            label.layer.masksToBounds = true
            label.textAlignment = .center
            return label
        }()
    
        // MARK: -  分割线
        let lineLabel: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:85 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()
    
        // MARK: -  专家门诊
        let zhuanjiaLabel: UILabel = {

            let label = UILabel(frame: CGRect(x: 10, y: 125 , width: screenWidth - 100, height: btnHeight))
            label.text = "专家门诊   医疗费：¥ \(yiyaofei*5)"//+10
            label.font = UIFont.systemFont(ofSize: 20)
            label.layer.cornerRadius = 5

            label.textAlignment = .center
            return label
        }()
        // MARK: -  分割线
        let lineLabel1: UILabel = {
            let line = UILabel(frame:CGRect(x:0,y:125 + btnHeight,width:screenWidth  - 80,height:0.5))
            line.backgroundColor = UIColor.lightGray
            return line
        }()


    
        let putongButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 10, y:165, width: btnWidth, height: btnHeight))
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("普通门诊", for: .normal)
            button.addTarget(self, action: #selector(PutongAction), for: UIControl.Event.touchUpInside)
            return button
        }()



        let zhuanjiaButton: UIButton = {
            let button = UIButton(frame: CGRect(x: screenWidth  - 80 - 160, y: 165, width:btnWidth, height: btnHeight))
            button.clipsToBounds = true
             button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button.layer.cornerRadius = 5
            button.backgroundColor =  UIColor.orange
            button.setTitle("专家门诊", for: .normal)
            button.addTarget(self, action: #selector(ZhuanjiaAction), for: UIControl.Event.touchUpInside)
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
       
            putongLabel.text   = "普通门诊 ：¥ \(yiyaofei)"//碰到庸医
            zhuanjiaLabel.text = "专家门诊 ：¥ \(yiyaofei*5)"//+10
            xinyongLabel.text  = "健康状况  \(jiankangText)"
            contentView.addSubview(putongLabel)
            contentView.addSubview(zhuanjiaLabel)
            contentView.addSubview(lineLabel0)
            contentView.addSubview(lineLabel)
            contentView.addSubview(lineLabel1)
            contentView.addSubview(xinyongLabel)

            contentView.addSubview(putongButton)
            contentView.addSubview(zhuanjiaButton)

            
            let imageIcon = UIButton(type: .system)
            imageIcon.bounds = CGRect.init(x: 0, y: 0, width: 200, height: 100)
            imageIcon.center = CGPoint.init(x: contentView.frame.midX, y: contentView.frame.minY - 20)
            imageIcon.setImage(UIImage(named: "Hospital.bundle/hospital.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
            imageIcon.isEnabled = false
            self.addSubview(imageIcon)

            if !upMustUpdate {
                let btnCancel = UIButton(type: .system)
                btnCancel.bounds = CGRect.init(x: 0, y: 0, width: btnCancelWidth, height: btnCancelWidth)
                btnCancel.center = CGPoint.init(x: contentView.frame.maxX, y: contentView.frame.minY)
                btnCancel.setImage(UIImage(named: "Hospital.bundle/zas_cancel.png", in: Bundle(for: SettingController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal), for: .normal)
                btnCancel.addTarget(self, action: #selector(cancelAlertAction), for: UIControl.Event.touchUpInside)
                self.addSubview(btnCancel)
                
            }
        }
        // MARK: - 普通门诊事件
        @objc private func PutongAction() -> Void
        {
            if judgePrice(yiyaoM: yiyaofei) {
                //现金
                let xianjin = CGFloat.init(xianjinValue) - CGFloat.init(yiyaofei)
                defaults.set(xianjin, forKey: "xianjin")
                //健康
                jiankangValue   = defaults.integer(forKey: "jiankang")
                let randomInt = getrandomInRange(range: 0..<100)
                var jiankangPutongText = CGFloat.init(jiankangValue) + CGFloat.init(randomInt)

                if  jiankangPutongText  > 100 {
                    jiankangPutongText = 100
                    let alert = UIAlertView.init(title: "医生技术高超", message: "健康恢复!请注意休息", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                }else{
                    if randomInt > 0 {
                    let alert = UIAlertView.init(title: "医生技术高超", message: "（健康+\(randomInt)），请注意调养", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                    }else if randomInt == 0 {
                    let alert = UIAlertView.init(title: "碰到实习医生病情毫无起色", message: "（健康+\(randomInt)）", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                    }else{
                    let alert = UIAlertView.init(title: "倒霉！碰到了庸医！", message: "（健康-\(randomInt)）", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                    }
                }
                print(jiankangPutongText)
                defaults.set(CGFloat(jiankangPutongText), forKey: "jiankang")
                cancelAlertAction()
            }else{
                let alert = UIAlertView.init(title: "提示", message: "对不起，金额不足！", delegate: self, cancelButtonTitle: "OK")
                           alert.show()
            }
       }
        // MARK: - 专家门诊事件
        @objc private func ZhuanjiaAction() -> Void
        {
            if judgePrice(yiyaoM: yiyaofei*5) {
                
                //现金
                let xianjin = CGFloat.init(xianjinValue) - CGFloat.init(yiyaofei*5)
                defaults.set(xianjin, forKey: "xianjin")
                //健康
                jiankangValue   = defaults.integer(forKey: "jiankang")
                var jiankangZhuanjiaText = jiankangValue + 5
                if jiankangZhuanjiaText  > 100 {
                    jiankangZhuanjiaText = 100

                    defaults.set(CGFloat(jiankangZhuanjiaText), forKey: "jiankang")

                    let alert = UIAlertView.init(title: "专家技术高超", message: "健康恢复!请注意休息", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                }else{
                    let alert = UIAlertView.init(title: "专家技术高超", message: "（健康+5），请注意调养", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                }

                print(jiankangZhuanjiaText)
                defaults.set(CGFloat(jiankangZhuanjiaText), forKey: "jiankang")
                cancelAlertAction()
            }else{
                let alert = UIAlertView.init(title: "提示", message: "对不起，金额不足！", delegate: self, cancelButtonTitle: "OK")
                           alert.show()

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
    
    func jiankangMoney(xinyongV: CGFloat) -> CGFloat {
         let xinyongdu = CGFloat.init(xinyongV)
            switch xinyongdu {
            case 90...100:
                return 200
            case 80...89:
                return 1000
            case 70...79:
                return 10000
            case 60...69:
                return 100000
            case 50...60:
                return 500000
            case 0...50:
                return 1000000
            default:
                break
                
            }
         return 0
        }
    
    func jiankangName(xinyongV: CGFloat) -> String {
         let xinyongdu = CGFloat.init(xinyongV)
            switch xinyongdu {
            case 90...100:
                return "【身强体壮】"
            case 80...89:
                return "【容易疲惫】"
            case 70...79:
                return "【面黄肌瘦】"
            case 60...69:
                return "【瘦骨嶙峋】"
            case 50...60:
                return "【病入膏肓】"
            case 0...50:
                return "【奄奄一息】"
            default:
                break
                
            }
         return "红光满面"
        }
    
    
    func judgePrice(yiyaoM : CGFloat) -> Bool {

        let yiyaoP   = CGFloat.init(Float(yiyaoM))
        let xianjinP = CGFloat.init(Float(xianjinValue))
        
        if xianjinP >= yiyaoP {
            
            return true
            
        }else{
            
            return false
        }
        }
    
    //1到6之间的随机数
    public func getrandomInRange(range: Range<Int>) -> Int {
        let count = UInt32(range.endIndex - range.startIndex)
           switch Int(arc4random_uniform(count)) + range.startIndex {
           case 80...100:
               return 3
           case 50...79:
               return 2
           case 30...49:
               return 1
           case 10...29:
               return -1
           case 0...9:
               return -2
           default:
               break
               
           }

        return 0
    }
}
