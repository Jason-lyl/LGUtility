//
//  NetInterface.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/22.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class NetInterface: NSObject {

}
let KBonDay =  "http://101.81.18.134:7088/api/"//测试服请求头
let KimageUrl = "https://image.bonday.cn/"//图片请求头
//正常图
func KimageCaiJian(nuber:Int) -> String {
    return "@700w_\(nuber)h_1e_1c"
}
