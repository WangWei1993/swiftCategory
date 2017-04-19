//
//  ViewController.swift
//  Category
//
//  Created by 王伟 on 2017/4/19.
//  Copyright © 2017年 王伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /// 1. UIView分类的使用
        let myView = UIView()
        print(myView.x)
        print(myView.y)
        print(myView.centerX)
        print(myView.centerY)
        print(myView.maxX)
        print(myView.maxY)
        
        
        /// 2. UIDevice分类的使用
        debugPrint(UIDevice.current.appName)
        debugPrint(UIDevice.current.modelName)
        debugPrint(UIDevice.current.deviceModel)
        
        
        /// 3. UIBarButtonItem分类的使用
        let barButtonItem = UIBarButtonItem.itemWithTarget(target: self, action: #selector(ViewController.backClick), image: "", title: "", selectImage: "")
        print(barButtonItem)
        
    }
    
    func backClick()  {
        print()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

