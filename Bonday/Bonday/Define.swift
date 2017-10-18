//
//  Define.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/22.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class Define: NSObject {

}
/// RGBA的颜色设置
func UIColorWithRGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}
//获取屏幕大小
//宽度
let kScreenWidth =  UIScreen.main.bounds.size.width
//高度
let kScreenHeight =  UIScreen.main.bounds.size.height


// 定义常用的颜色

let kCommenColor_whiteColor =   UIColor.white
let kCommenColor_themeColor =   UIColorWithRGBA(r: 255,g: 81,b: 12,a: 1)
let kCommenColor_74_74_74  =    UIColorWithRGBA(r: 74,g: 74,b: 74,a: 1)
let kCommenColor_74_144_226 =   UIColorWithRGBA(r: 74,g: 144,b: 226,a: 1)
let kCommenColor_104_104_104 =  UIColorWithRGBA(r: 104,g: 104,b: 104,a: 1)
let kCommenColor_237_237_237 =  UIColorWithRGBA(r: 237,g: 237,b: 237,a: 1)
let kCommenColor_240_240_240 =  UIColorWithRGBA(r: 240,g: 240,b: 240,a: 1)
let kCommenColor_229_229_229 =  UIColorWithRGBA(r: 229,g: 229,b: 229,a: 1)
let kCommenColor_245_245_245 =  UIColorWithRGBA(r: 245,g: 245,b: 245,a: 1)
let kCommenColor_105_105_105 =  UIColorWithRGBA(r: 105,g: 105,b: 105,a: 1)
let kCommenColor_146_146_146 =  UIColorWithRGBA(r: 146,g: 146,b: 146,a: 1)
let kCommenColor_92_92_92  =    UIColorWithRGBA(r: 92,g: 92,b: 92,a: 1)
let kCommenColor_150_150_150 =  UIColorWithRGBA(r: 150,g: 150,b: 150,a: 1)
let kCommenColor_255_81_12  =   UIColorWithRGBA(r: 255,g: 81,b: 12,a: 1)
let kCommenColor_210_210_210 =  UIColorWithRGBA(r: 210,g: 210,b: 210,a: 1)
let kCommenColor_221_221_221 =  UIColorWithRGBA(r: 221,g: 221,b: 221,a: 1)
let kCommenColor_243_243_243 =  UIColorWithRGBA(r: 243,g: 243,b: 243,a: 1)
//导航条高度
let kNavBarHeight:CGFloat = 64.0
//标签栏的高度
let kTabBarHeight:CGFloat = 49.0
