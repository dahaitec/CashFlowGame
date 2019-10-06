//
//  ToziController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class ToziController: UIViewController {
    
    
    var collection: UICollectionView!
    var touziImage = ["header_0", "testyuan", "chuangye", "header_3", "header_4", "header_5", "header_6", "header_7", "header_8"]
    var touziName = ["资产管理",    //1
                     "创业",    //2
                     "股市", //3
                     "基金",    //4
                     "赌场",  //5
                     "高利贷",    //6
                     "贵金属",    //7
                     "外汇",    //8
                     "期货"]  //9
    //MARK: -   背景图片
    // MARK: -  投资建议
    let titleLabel: UILabel = {

        let label = UILabel(frame: CGRect(x: 0, y: 0 , width: kScreenW, height: 20))
        label.text = "【理财建议】"//今日理财新闻
        label.textColor = UIColor.red
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        label.layer.cornerRadius = 5

        label.textAlignment = .center
        return label
    }()
    
    // MARK: -  投资建议
    let contentLabel: UILabel = {

        let label = UILabel(frame: CGRect(x: 0, y: 20 , width: kScreenW, height: 65))
        label.text = "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。"
        label.textColor = UIColor.red
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.layer.cornerRadius = 5

        label.textAlignment = .center
        return label
    }()
    // MARK: -  分割线
    let lineLabel: UILabel = {
        let line = UILabel(frame:CGRect(x:0,y:85,width:kScreenW,height:0.5))
        line.backgroundColor = UIColor.lightGray
        return line
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        contentLabel.text = getContent(range: 0..<100)
        view.addSubview(titleLabel)
        view.addSubview(contentLabel)
        view.addSubview(lineLabel)
        //导航栏
        setUpUI()
        
        
        view.backgroundColor = .white
        edgesForExtendedLayout = .init(rawValue: 0)

        let width = (UIScreen.main.bounds.width-60)/3
        let flow = UICollectionViewFlowLayout()
        flow.itemSize = CGSize(width: width, height: width+20)
        collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: flow)
        
        collection.backgroundColor = .white

        collection.delegate = self
        collection.dataSource = self
        collection.register(ToziCell.self, forCellWithReuseIdentifier: "ToziCell")
        view.addSubview(collection)
        collection.snp.makeConstraints {
            $0.left.equalTo(view).offset(5)
            $0.top.equalTo(lineLabel.snp.bottom).offset(5)
            $0.right.bottom.equalTo(view).offset(-5)
        }
        

        

    }
    
     // MARK: - 随机获得理财建议
    public func getContent(range: Range<Int>) -> String {
            let count = UInt32(range.endIndex - range.startIndex)
            return  ToZiContents[Int(arc4random_uniform(count)) + range.startIndex]
        }
    
    // MARK: - 设置导航栏
    private func setUpUI() -> Void
    {
          self.navigationItem.title = "投资理财"


        let buttonItem2: UIBarButtonItem = UIBarButtonItem(title: "可用资金：\(Tools.MoneyFormat(money: CGFloat(xianjinValue)))", style: .plain, target: self, action: nil)
          buttonItem2.tintColor = UIColor.white
          self.navigationItem.rightBarButtonItem = buttonItem2

    }

    @objc func leftBtnAction() {
        self.navigationController?.popViewController(animated: true)
    }

}

extension ToziController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return touziImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToziCell", for: indexPath) as! ToziCell

        let image = UIImage(named: touziImage[indexPath.row])
        cell.moneyImage.image = image
        cell.moneyName.text = touziName[indexPath.row]

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        switch indexPath.row {


                    case 0:
                        // MARK: - 资产管理
                        BankController.show()
                        homecontroller.buttonSound()
                    case 1:
                        // MARK: - 创业
                       self.navigationController?.pushViewController(ChuangyeController(), animated: true)
                        homecontroller.buttonSound()
                    case 2:
                        // MARK: -  基金
                        HospitalController.show()
                        homecontroller.buttonSound()
                    case 3:
                        // MARK: -  赌场
                       self.navigationController?.pushViewController(ChuangyeController(), animated: true)
                        homecontroller.buttonSound()
                    case 4:
                        // MARK: -  基金
                       self.navigationController?.pushViewController(HouseController(), animated: true)
                        homecontroller.buttonSound()
                    case 5:
                        // MARK: -  高利贷
                        let alertView = FWAlertView.alert(title: "温馨提示", detail: "您确认结束游戏吗？", confirmBlock: { (popupView, index, title) in
                            print("结束游戏")

                        }, cancelBlock: { (popupView, index, title) in
                            print("点击了取消")
                        })
                        alertView.show()
                        homecontroller.buttonSound()
                    case 6:
                        // MARK: -  贵金属
                        let alert = UIAlertView.init(title: "提示", message: "没权限", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                        homecontroller.buttonSound()
                    case 7:
                        // MARK: -  外汇
                       let alert = UIAlertView.init(title: "提示", message: "没权限", delegate: self, cancelButtonTitle: "OK")
                       alert.show()
                        homecontroller.buttonSound()
                    case 8:
                        // MARK: -  期货
                       let alert = UIAlertView.init(title: "提示", message: "没权限", delegate: self, cancelButtonTitle: "OK")
                       alert.show()
                        homecontroller.buttonSound()

                    default:
                        break
             }
    }




}
