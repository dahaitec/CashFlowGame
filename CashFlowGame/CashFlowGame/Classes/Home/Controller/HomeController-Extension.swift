//
//  HomeController-Extension.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/2.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit
import AVFoundation


extension HomeController{

        @objc func onClickPopButton(_ sender: UIButton) {
            switch sender.tag {

            case 1:
                // MARK: -  银行按钮
                BankController.show()
                buttonSound()
            case 2:
                // MARK: -  医院按钮
                HospitalController.show()
                buttonSound()
            case 3:
                // MARK: -  购物按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)
                buttonSound()
            case 4:
                // MARK: -  买房按钮
               self.navigationController?.pushViewController(HouseController(), animated: true)
                buttonSound()
            case 5:
                // MARK: -  娱乐按钮
                let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                    print("结束游戏")

                }, cancelBlock: { (popupView, index, title) in
                    print("点击了取消")
                })
                alertView.show()
                buttonSound()
            case 6:
                // MARK: -  慈善按钮
                let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                    print("结束游戏")

                }, cancelBlock: { (popupView, index, title) in
                    print("点击了取消")
                })
                alertView.show()
                buttonSound()
            case 7:
                // MARK: -  相亲按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)
                buttonSound()
            case 8:
                // MARK: -  买车按钮
               self.navigationController?.pushViewController(CarController(), animated: true)
                buttonSound()
            case 9:
                // MARK: -  休息一下
               let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                   print("结束游戏")

               }, cancelBlock: { (popupView, index, title) in
                   print("点击了取消")
               })
               alertView.show()
                buttonSound()
            case 10:
                // MARK: -  投资理财
               self.navigationController?.pushViewController(ToziController(), animated: true)
                buttonSound()
            case 11:
                // MARK: -  职场打工
               self.navigationController?.pushViewController(DagongController(), animated: true)
                buttonSound()
            default:
                break
            }
        }
                

        


        func resizableImage(imageName: String, edgeInsets: UIEdgeInsets) -> UIImage? {
            
            let image = UIImage(named: imageName)
            if image == nil {
                return nil
            }
            let imageW = image!.size.width
            let imageH = image!.size.height
            
            return image?.resizableImage(withCapInsets: UIEdgeInsets(top: imageH * edgeInsets.top, left: imageW * edgeInsets.left, bottom: imageH * edgeInsets.bottom, right: imageW * edgeInsets.right), resizingMode: .stretch)
        }

    func buttonSound(){
        let shengyinFlag = defaults.string(forKey: "shengyin")
        if  shengyinFlag == "on" {
        let result = "click.mp3"
        if let urlstr = Bundle.main.path(forResource: result, ofType: nil) {
            let fileURL = NSURL(fileURLWithPath: urlstr)
            var soundID:SystemSoundID = 0;
            AudioServicesCreateSystemSoundID(fileURL, &soundID)
            AudioServicesPlaySystemSound(soundID)
          }
        }
    }
 }

