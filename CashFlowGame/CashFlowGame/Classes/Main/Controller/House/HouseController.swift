//
//  WorkingController.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation
import UIKit

class HouseController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageArray = ["header_0", "header_1", "header_2", "header_3", "header_4", "header_5", "header_6", "header_7", "header_8", "header_9", "header_10"]
    var titleArray = ["出租屋", "酒店式公寓", "二手旧房", "高层新房", "复式洋房", "高层豪宅", "海景房", "联排别墅", "海景别墅", "海岛庄园", "豪华宫殿式城堡"]
    let decArray = ["方便，想租哪里就租哪里，去到哪里工作都不怕，不过要看房东的脸色，一言不合就加你租，甚至逼你走。",
                    "总价并不是很高，装修方便，比出租房的看上去好一点",
                    "这种可以说是普通百姓向往的，比较实用，说贵不贵，说便宜它又便宜不了那里去",
                    "都是一些精装修楼盘，有一定收入的人才能够买得起啊",
                    "房屋里面空间大，视野采光好，不过贵，有点浪费空间资源",
                    "房屋里面空间大，视野采光好，不过贵，有点浪费空间资源",
                    "上有阳台，下有花园，不过容易受上下户的影响，有钱人的象征啊",
                    "楼上楼下全部都是自己的，居住环境舒适，但还是贵",
                    "独栋，什么都是独立，私密性好，不受上下左右户邻居的影响，超级贵",
                    "独栋，什么都是独立，私密性好，不受上下左右户邻居的影响，超级贵",
                    "独栋，什么都是独立，私密性好，不受上下左右户邻居的影响，超级贵"]
    var moneyArray: [String] = []
    
    
    lazy var tableView: UITableView = {
        
        let tableview = UITableView(frame: self.view.bounds)
        tableview.separatorStyle = .none
        return tableview
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        
        self.setNeedsStatusBarAppearanceUpdate()
        
     }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - 设置界面
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

       for index in 0...self.imageArray.count {
            self.moneyArray.append(self.obtainRandomMoney(index: index))
        }

        self.view.addSubview(self.tableView)
        self.tableView.register(UINib(nibName: "HouseTableViewCell", bundle: nil), forCellReuseIdentifier: "cellId")
        self.tableView.delegate = self
        self.tableView.dataSource = self

        
        // 设置导航栏
        setUpUI()
    }
    


    // MARK: - 设置导航栏
    private func setUpUI() -> Void
    {
        self.navigationItem.title = "售楼部"
        let buttonItem: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "Working.bundle/edit_undo.png"), style: .plain, target: self, action: #selector(leftBtnAction))
        buttonItem.tintColor = UIColor.black

        self.navigationItem.leftBarButtonItem = buttonItem
        let buttonItem2: UIBarButtonItem = UIBarButtonItem(title: "可用资金：10000", style: .plain, target: self, action: nil)
        buttonItem2.tintColor = UIColor.white
        self.navigationItem.rightBarButtonItem = buttonItem2

    }
    
    @objc func leftBtnAction() {
        self.navigationController?.popViewController(animated: true)
    }
    

    func obtainRandomMoney(index: Int) -> String {
        return "\(arc4random()%2 == 0 ? "1000万" : "31000万")" 
    }
}

extension HouseController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! HouseTableViewCell
        cell.headerImgView.image = UIImage(named: self.imageArray[indexPath.row])
        cell.nameLabel.text = self.titleArray[indexPath.row]
        cell.decLabel.text = self.decArray[indexPath.row]
        cell.moneyLabel.text = self.moneyArray[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("您当前点击了第 \(indexPath.row + 1) 行")
        titleArray[indexPath.row] = titleArray[indexPath.row] + " 【已购买】"
        tableView.reloadData()

    }
}
