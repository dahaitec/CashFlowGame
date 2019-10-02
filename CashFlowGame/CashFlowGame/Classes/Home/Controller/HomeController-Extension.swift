//
//  HomeController-Extension.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/10/2.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit

extension HomeController{

        @objc func onClickPopButton(_ sender: UIButton) {
            switch sender.tag {

            case 1:
                // MARK: -  银行按钮
                let alertView = FWAlertView.alert(title: "银  行", detail: "你点击了银行") { (popupView, index, title) in
                    print("点击了确定")
                }
                alertView.show()


            case 2:
                // MARK: -  医院按钮
                let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                    print("结束游戏")

                }, cancelBlock: { (popupView, index, title) in
                    print("点击了取消")
                })
                alertView.show()

            case 3:
                // MARK: -  购物按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)

            case 4:
                // MARK: -  买房按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)

            case 5:
                // MARK: -  娱乐按钮
                let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                    print("结束游戏")

                }, cancelBlock: { (popupView, index, title) in
                    print("点击了取消")
                })
                alertView.show()

            case 6:
                // MARK: -  慈善按钮
                let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                    print("结束游戏")

                }, cancelBlock: { (popupView, index, title) in
                    print("点击了取消")
                })
                alertView.show()

            case 7:
                // MARK: -  相亲按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)

            case 8:
                // MARK: -  买车按钮
               self.navigationController?.pushViewController(WorkingController(), animated: true)
            case 9:
                // MARK: -  休息一下
               // MARK: -  慈善按钮
               let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                   print("结束游戏")

               }, cancelBlock: { (popupView, index, title) in
                   print("点击了取消")
               })
               alertView.show()

            case 10:
                // MARK: -  投资理财
               self.navigationController?.pushViewController(ToziController(), animated: true)
            case 11:
                // MARK: -  职场打工
               self.navigationController?.pushViewController(DagongController(), animated: true)
            default:
                break
            }
        }
                
        public func popViewWithType(type: PopViewType) {
            let popView = CRPopView.init(frame: self.view.frame,type:type)
            print(type)
            switch type {
            case .left:
                popView.backBlockLeft = {
                    print(1)
                }
                popView.backBlockRight = {
                    print(2)
                }
            case .right:
                popView.backBlockLeft = {
                    print(3)
                }
                popView.backBlockRight = {
                    print(4)
                }
            }
            popView.showToView(view: self.view)
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

    }

