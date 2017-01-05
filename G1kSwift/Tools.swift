//
//  Tools.swift
//  G1kSwift
//
//  Created by Sobf Leo on 16/11/14.
//  Copyright © 2016年 SOBF. All rights reserved.
//

import UIKit
import Foundation
/// RGBA的颜色设置
func Ky_Color(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}
/// 红色
func Ky_GlobalRedColor() -> UIColor {
    return Ky_Color(r: 245, g: 80, b: 83, a: 1.0)
}


/// 基地址
let BASE_URL = "http://api.dantangapp.com/"

let SCREEN_WIDTH = UIScreen.main.bounds.width
