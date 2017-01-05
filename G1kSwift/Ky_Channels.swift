//
//  Ky_Channels.swift
//  G1kSwift
//
//  Created by Sobf Sunshinking on 17/1/4.
//  Copyright © 2017年 SOBF. All rights reserved.
//

import Foundation

class Ky_Channels: NSObject {
    var editable : Bool?
    var id : Int?
    var name : String?
    init(dict : [String : AnyObject]) {
        id = dict["id"] as? Int
        editable = dict["editable"] as? Bool
        name = dict["name"] as? String
    }
}
