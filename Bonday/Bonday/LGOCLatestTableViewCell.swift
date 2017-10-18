//
//  LGOCLatestTableViewCell.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/22.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher
class LGOCLatestTableViewCell: UITableViewCell {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createUI()
    }
    var  dataDic:LGOCLatestModel?{
    
        didSet{
            if (dataDic?.living)! {
              typeImageView.image = UIImage.init(named: "Course_live_record")
                endTimeLaebl.isHidden = false
            }else{
             typeImageView.image = UIImage.init(named: "Course_record_symbol")
            }
        
            moneyLabel.text = (dataDic?.price == 0) ? "免费" : "￥" +  String(describing: dataDic?.price);
            if ((dataDic?.images?[0]) != nil) {
                let urls:String = dataDic?.images?[0] as! String
                let url = KimageUrl + urls + KimageCaiJian(nuber: 350)
                myImageView.kf.setImage(with: URL(string: url)!, placeholder: nil, options: nil, progressBlock: nil) { (image, error, cacheType, imageURL) in
                }
                
            }
            titleLabel.text = dataDic?.titles
            countLabel.text =  "\(dataDic?.counter?["joinedQty"] ?? "")人已学习"
            typeLabel.text = "单次课程"
            for dic in (dataDic?.tags)! {
                let dic = dic as! NSDictionary
            
                if (String(describing: dic["enName"]) == "sucssion") {
                  typeLabel.text = "\(dic["cnName"] ?? "")课程"
                }
            }
//            if ((dataDic?.suggestions) != nil) {
//                jianyiImageView.isHidden = true
//            }else{
//             jianyiLabel.text = dataDic?.suggestions
//                jianyiImageView.isHidden = false
//            }
            jianyiLabel.text = dataDic?.suggestions

        }
        
    }

    func createUI()  {
        
        self.contentView.addSubview(backView)
        backView.addSubview(myImageView)
        myImageView.addSubview(endTimeLaebl)
        myImageView.addSubview(typeImageView)
        myImageView.addSubview(musicPlayImageV)
        myImageView.addSubview(countLabel)
        backView.addSubview(titleLabel)
        backView.addSubview(moneyLabel)
        backView.addSubview(typeLabel)
        backView.addSubview(jianyiImageView)
        backView.addSubview(jianyiLabel)
        backView.addSubview(bottomView)
        backView.addSubview(bottomView1)
        
        //布局
        backView.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(0)
        }

        myImageView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(myImageView.snp.width).multipliedBy(0.5)
        }
        typeImageView.snp.makeConstraints { (make) in
            make.right.top.equalTo(0)
            make.width.equalTo(45)
            make.height.equalTo(20)
        }
        endTimeLaebl.snp.makeConstraints { (make) in
            make.left.top.equalTo(0)
            make.height.equalTo(15)
        }
        musicPlayImageV.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.bottom.equalTo(-10)
            make.width.height.equalTo(20)
        }
        countLabel.snp.makeConstraints { (make) in
            make.right.bottom.equalTo(-11)
            make.height.equalTo(18)
        }
        jianyiImageView.snp.makeConstraints { (make) in
            make.left.equalTo(backView.snp.left).offset(11)
            make.bottom.equalTo(-11)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
        jianyiLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(jianyiImageView)
            make.left.equalTo(5)
            make.right.equalTo(-5)
            make.height.equalTo(15)
        }
        bottomView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.bottom.equalTo(jianyiImageView).offset(-7)
            make.height.equalTo(1)
        }
        typeLabel.snp.makeConstraints { (make) in
            make.right.equalTo(-7)
            make.bottom.equalTo(-10)
            make.width.equalTo(66)
            make.height.equalTo(20)
        }
        bottomView1.snp.makeConstraints { (make) in
            make.right.equalTo(typeLabel.snp.left).offset(-5)
            make.width.equalTo(1)
            make.height.equalTo(30)
            make.top.equalTo(myImageView.snp.bottom).offset(17)
        }
        moneyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(myImageView.snp.bottom).offset(10)
            make.right.equalTo(-7)
            make.height.equalTo(20)
        }
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.right.equalTo(bottomView1.snp.left).offset(-5)
            make.top.equalTo(myImageView.snp.bottom).offset(0)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
        }

    }
    
    //懒加载
//背景view
    lazy var backView: UIView = {
        let backView = UIView()
        return backView
    }()
    //建议图片icon
    lazy var jianyiImageView: UIImageView = {
        let jianyiImageView = UIImageView()
        jianyiImageView.contentMode = .scaleToFill
        jianyiImageView.image = UIImage.init(named: "oc_zhuyi")
        return jianyiImageView
    }()
    //结束时间
    lazy var endTimeLaebl: UILabel = {
        let endTimeLaebl = UILabel()
        endTimeLaebl.font = UIFont.systemFont(ofSize: 12)
        endTimeLaebl.textAlignment = .right
        endTimeLaebl.textColor = kCommenColor_whiteColor
        endTimeLaebl.backgroundColor = UIColor.black
        endTimeLaebl.sizeToFit()
        return endTimeLaebl
    }()
    //图片
    lazy var myImageView: UIImageView = {
        let myImageView = UIImageView()
        return myImageView
    }()
//多少人学习
    lazy var countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.font = UIFont.systemFont(ofSize: 13)
        countLabel.textColor = kCommenColor_whiteColor
        countLabel.textAlignment = .right
        return countLabel
    }()
    //标题
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .left
        titleLabel.textColor = kCommenColor_74_74_74
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        return titleLabel
    }()
    //什么类型课程
    lazy var typeLabel: UILabel = {
        let typeLabel = UILabel()
        typeLabel.textColor = kCommenColor_146_146_146
        typeLabel.textAlignment = .right
        typeLabel.font = UIFont.systemFont(ofSize: 12)
        return typeLabel
    }()
    //建议label
    lazy var jianyiLabel: UILabel = {
        let jianyiLabel = UILabel()
        jianyiLabel.textAlignment = .left
        jianyiLabel.font = UIFont.systemFont(ofSize: 14)
        jianyiLabel.textColor = kCommenColor_104_104_104
        return jianyiLabel
    }()
    //价格
    lazy var moneyLabel: UILabel = {
        let moneyLabel = UILabel()
        moneyLabel.font = UIFont.systemFont(ofSize: 16)
        moneyLabel.textColor = kCommenColor_themeColor
        moneyLabel.textAlignment = .right
        return moneyLabel
    }()
    
    lazy var placeHoldeView: UIView = {
        let placeHoldeView = UIView()
        return placeHoldeView
    }()
    //什么类型的图片标签
    lazy var typeImageView: UIImageView = {
        let typeImageView = UIImageView()
        typeImageView.image = UIImage.init(named: "")
        return typeImageView
    }()
    //播放图片icon
    lazy var musicPlayImageV: UIImageView = {
        let musicPlayImageV = UIImageView()
        musicPlayImageV.image = UIImage.init(named: "music_play")
        return musicPlayImageV
    }()
    lazy var bottomView: UIView = {
        let bottomView = UIView()
        bottomView.backgroundColor = kCommenColor_237_237_237
        return bottomView
    }()
    lazy var bottomView1: UIView = {
        let bottomView1 = UIView()
        bottomView1.backgroundColor = kCommenColor_237_237_237
        return bottomView1
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
