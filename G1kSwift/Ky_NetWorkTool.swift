//
//  Ky_NetWorkTool.swift
//  G1kSwift
//
//  Created by Sobf Sunshinking on 17/1/4.
//  Copyright © 2017年 SOBF. All rights reserved.
//

import UIKit
import Alamofire
class Ky_NetWorkTool: NSObject {
    static let shareInstance = Ky_NetWorkTool();
    //首页标签 
    func loadHomeTopData(finished:(_ chnnels:[Ky_Channels]) -> ()){
        let baseUrl = BASE_URL +  "v2/channels/preset"
        
        let params = ["gender":1,
                       "generation": 1]
     
//        Alamofire
//        .request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
    }
    
}
