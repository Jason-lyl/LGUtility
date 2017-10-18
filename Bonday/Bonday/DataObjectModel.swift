//
//  DataModel.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/25.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import ObjectMapper

class DataObjectModel: Mappable {
    var code:Int?
    var datas: [LGOCLatestModel]?
    required init?(map: Map) {
        
    }
 //
    func mapping(map: Map) {
        code <- map["code"]
        datas <- map["data"]
    }
    
}

