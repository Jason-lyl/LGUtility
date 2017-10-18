//
//  LGOCListModel.swift
//  Bonday
//
//  Created by bonday012 on 2017/6/8.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class LGOCListModel: NSObject {
    var imagStr :String?
    var titleStr:String?
    
    init(dict:[String:AnyObject]) {
        super.init()
        imagStr = dict["imageStr"] as? String
        titleStr = dict["titleStr"] as? String
    }

}
