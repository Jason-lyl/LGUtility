//
//  LGOCListCollectionViewCell.swift
//  Bonday
//
//  Created by bonday012 on 2017/6/6.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import Kingfisher
import SnapKit


class LGOCListCollectionViewCell: UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        creatUI()
        
    }
    var model: LGOCListModel?{
        didSet{
            
        let url = model?.imagStr
        myImageView.image = UIImage.init(named: url!)
        titleLabel.text = model?.titleStr
        }
    }
    
    func creatUI() {
     self.contentView.addSubview(myImageView)
     self.contentView.addSubview(titleLabel)
        
        myImageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.contentView)
            make.width.height.equalTo(36)
            make.top.equalTo(10)
        }
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(myImageView).offset(15)
            make.height.equalTo(20)
            make.left.equalTo(0)
            make.right.equalTo(0)
        }
    }


    //图片
    lazy var myImageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        return myImageView
    }()
    //title
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 11.2)
        titleLabel.textColor = kCommenColor_74_74_74
        return titleLabel
    }()
}
