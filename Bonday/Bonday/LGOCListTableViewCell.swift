//
//  LGOCListTableViewCell.swift
//  Bonday
//
//  Created by bonday012 on 2017/6/6.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire
import SwiftyJSON
class LGOCListTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        creatUI()

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func creatUI() {
        
        self.contentView.addSubview(self.myCollectionView)
        
        myCollectionView.snp.makeConstraints { (make) in
            make.size.equalTo(self.contentView)
        }
        addDownLoadTask()
    }
    func addDownLoadTask() {
        let url = KBonDay + KHot_OpenCourse_latest
        //        let params = ["gender":1]
        let headers:HTTPHeaders = [
            "Authorization":"",
            "Accept":"application/json"
        ]
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers)
        .responseJSON { (response) in
            if let value = response.result.value{
                let dict = JSON(value)
                let code = dict["code"].intValue
                guard code == 200 else{
                  return
                }
                let data = dict["data"].arrayValue
                let number = 0 ..< data.count
                let arr:NSMutableArray = []
                for i in number{
                    let titleDic = ["title":data[i],"imageStr":self.imageArr[i]]
                    arr .add(titleDic)
                }
                    for item in arr{
                        let homeItem = LGOCListModel(dict :item as! [String:AnyObject])
                        self.dataArr.add(homeItem)
               }
                self.myCollectionView.reloadData()
            }
        }
    }
    
//懒加载
    lazy var myCollectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        var myCollectionView = UICollectionView.init(frame: self.contentView.bounds, collectionViewLayout: layout)
        myCollectionView.register(LGOCListCollectionViewCell.self, forCellWithReuseIdentifier: "LGOCListCollectionViewCell")
        myCollectionView.delegate =  self
        myCollectionView.dataSource = self
        myCollectionView.backgroundColor = kCommenColor_whiteColor
        return myCollectionView
    }()
    lazy var dataArr: NSMutableArray = {
        var dataArr = NSMutableArray.init()
      
        return dataArr
    }()
    lazy var imageArr: NSArray = {
        let imageArr = ["oc_sat","oc_AP","oc_tl","oc_R","oc_IB","oc_al","oc_diling","oc_tuozhan"]
        return imageArr as NSArray
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let listCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LGOCListCollectionViewCell", for:indexPath) as!LGOCListCollectionViewCell
        listCell.model  = self.dataArr[indexPath.row] as? LGOCListModel
        
        return listCell
        
    }
    
}
