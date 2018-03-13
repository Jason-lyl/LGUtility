//
//  CourseViewController.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/17.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import SVProgressHUD
import SwiftyJSON
let tableViews = UITableView()
let courceCellID = "courceCellID"

class CourseViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    var type = Int()
    //数据      
    var items = [LGOCLatestModel]()
    var dataArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = kCommenColor_whiteColor
        createTableView()
       addDownLoadTask()
        
        
        

        // Do any additional setup after loading the view.
    }
    func addDownLoadTask() {
        let url = KBonDay + KHot_OpenCourse_latest
//        let params = ["gender":1]
        let headers:HTTPHeaders = [
        "Authorization":"",
        "Accept":"application/json"
        ]
        SVProgressHUD.show(withStatus: "正在加载...")

Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers)
        .responseObject { (response:DataResponse<DataObjectModel>) in
            guard response.result.isSuccess else{
            SVProgressHUD.showError(withStatus: "加载失败....")
                return
            }
            let dataModel = response.result.value
             let code = dataModel?.code
            if code == 200{
            if let data = dataModel?.datas{
                for model in data{
                    self.dataArr.add(model)
                }
                tableViews.reloadData()
                }
                SVProgressHUD.dismiss()
            }
        }
        
        
    }
    func createTableView() {
        tableViews.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight-kNavBarHeight)
        tableViews.rowHeight = 160
        tableViews.separatorStyle = .none
        tableViews.dataSource = self
        tableViews.delegate = self
        tableViews.backgroundColor = kCommenColor_whiteColor
        tableViews.register(LGOCLatestTableViewCell.self, forCellReuseIdentifier: courceCellID)
        tableViews.register(LGOCListTableViewCell.self, forCellReuseIdentifier: "LGOCListTableViewCell")
        self.view.addSubview(tableViews)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 183-36
        }
     return 106+(kScreenWidth-20)/2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let listCell = tableView.dequeueReusableCell(withIdentifier: "LGOCListTableViewCell", for: indexPath) as!LGOCListTableViewCell
            listCell.selectionStyle = .none
            return listCell
        }
        let courceCell = tableView.dequeueReusableCell(withIdentifier: courceCellID) as! LGOCLatestTableViewCell
        courceCell.selectionStyle = .none
        courceCell.dataDic = self.dataArr[indexPath.row] as? LGOCLatestModel
        return courceCell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
