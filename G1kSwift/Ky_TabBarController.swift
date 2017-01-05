//
//  Ky_TabBarController.swift
//  G1kSwift
//
//  Created by Sobf Leo on 16/11/14.
//  Copyright © 2016年 SOBF. All rights reserved.
//

import UIKit

class Ky_TabBarController: UITabBarController {
    var ky_array = NSMutableArray()
 
    override func viewDidLoad() {
        super.viewDidLoad()
     tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        // Do any additional setup after loading the view.
        // 读取plist文件
        let str = Bundle.main.path(forResource: "Tools", ofType: "plist");
        ky_array = NSMutableArray.init(contentsOfFile: str!)!
        for i in 0..<ky_array.count {
            let obj  = ky_array.object(at: i) as! Dictionary<String,String>
            let titles = obj["title"]
            let vc = obj["viewcontroller"]
            let image = obj["image"]
            let selectImage = obj["selectImage"]
          
            let aitem = UITabBarItem(title: title, image: UIImage.init(named: image!), selectedImage: UIImage.init(named: selectImage!))
            let nsmespce = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
            let ky_Vc : AnyClass = NSClassFromString(nsmespce + "." + vc!)!
            let viewcontroller = (ky_Vc as! UIViewController.Type).init()
            viewcontroller.tabBarItem = aitem
            viewcontroller.title = titles
            let nav = Ky_NavigationController(rootViewController: viewcontroller)
        
           addChildViewController(nav)
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
