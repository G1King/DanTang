//
//  Ky_HomeViewController.swift
//  G1kSwift
//
//  Created by Sobf Kyle on 16/11/14.
//  Copyright © 2016年 SOBF. All rights reserved.
//

import UIKit


class Ky_HomeViewController: UIViewController{
    
    var channels = [String]();
    
    var titleView = UIView();//
    var indictorView = UIView();// 底部指示器
    var contView = UIScrollView();//
    var selectButton = UIButton();// 选中的button
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       // 
        let array = ["精选","美食","家居","数码","美物","杂货"]
        channels.append(contentsOf: array)
        self.setChildView()
    }
  
    func  setChildView(){
        self.view.addSubview(self.topView)
        self.topView.backgroundColor = UIColor.groupTableViewBackground
        var i : Int = 0
        let height:CGFloat = 44
        let width = SCREEN_WIDTH / CGFloat(self.channels.count);
        
        for index in 0..<self.channels.count {
            
            let button = UIButton();
            button.tag = index
            button.frame = CGRect(x: (CGFloat(index) * width), y: 0, width: width, height: height);
            button.setTitle(self.channels[index], for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.setTitleColor(UIColor.red, for: .selected)
            button.addTarget(self, action: #selector(clickButton(button:)), for: .touchUpInside)
            
            self.topView .addSubview(button)
            if index == 0 {
                button.isEnabled = false
                selectButton = button
                
            }
         i += 1;
        }
    }
    
    func clickButton(button : UIButton) {
        
    }
    
      lazy var topView = UIScrollView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 100))
    
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
