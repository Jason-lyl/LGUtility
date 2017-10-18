//
//  LGOCLatestModel.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/22.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit
import ObjectMapper


class LGOCLatestModel: Mappable {

    var titles: String?
    var tags: NSArray?
    var profile: String?
    var counter:NSDictionary?
    var create_date: Int?
    var suggestions: String?
    var teacherProfiles: String?
    var eid: String?
    var lessonStartTime:Int?
    var author: NSArray?
    var images: NSArray?
    var price: Int?
    var one2OnePrice: Int?
    var living: Bool?
    var isLiving: Bool?
    var succession :Bool?
    var lessonEndTime: Int?
    var periods: NSArray?
    var joinCamp: Int?
    var buy: Bool?
    var orderInfo: NSDictionary?
    required init?(map: Map) {
        
    }

    func mapping(map: Map) {
        titles <- map["title"]
        tags <- map["tags"]
        profile <- map["profile"]
        counter <- map["counter"]
        create_date <- map["create_date"]
        succession <- map["succession"]
        teacherProfiles <- map["teacherProfiles"]
        eid <- map["eid"]
        lessonStartTime <- map["lessonStartTime"]
        author <- map["author"]
        images <- map["images"]
        price <- map["price"]
        one2OnePrice <- map["one2OnePrice"]
        living <- map["living"]
        isLiving <- map["isLiving"]
        succession <- map["succession"]
        lessonEndTime <- map["lessonEndTime"]
        periods <- map["periods"]
        joinCamp <- map["joinCamp"]
        buy <- map["buy"]
        orderInfo <- map["orderInfo"]
        
    }
    
}
